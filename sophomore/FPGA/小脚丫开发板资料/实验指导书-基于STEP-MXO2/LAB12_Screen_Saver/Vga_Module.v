// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Vga_Module
// 
// Author: Step
// 
// Description: Vga_Module
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.1     |2016/10/30   |Initial ver
// --------------------------------------------------------------------
module Vga_Module
(
input 				clk,		// system clock, 40MHz
input 				rst_n,		// system reset, active low

output 	reg	[6:0]	rom_addr,		// sync_v
input 		[127:0]	rom_data,		// sync_h

output 	reg			sync_v,		// sync_v
output 	reg			sync_h,		// sync_h
output  reg	[2:0]	vga			// vga,MSB~LSB = {R,G,B}
);

reg			[18:0]	cnt;
reg 		[15:0] 	x_cnt,y_cnt;
reg 		[15:0]	x_set,y_set;
reg					x_flag,y_flag;
reg					change_en;
reg			[2:0]	color;
	
localparam	RED = 3'b100;
localparam	GREEN = 3'b010;
localparam	BLUE = 3'b001;
localparam	YELLOW = 3'b110;
localparam	CYAN = 3'b011;
localparam	PURPLE = 3'b101;
localparam	BLACK = 3'b000;
	
// Count for HSYNC
always @ (posedge clk or negedge rst_n)
	if(!rst_n) x_cnt <= 16'd1;
	else if(x_cnt == `HSYNC_D) x_cnt <= 16'd1;
	else x_cnt <= x_cnt + 1'b1;

// Count for VSYNC
always @ (posedge clk or negedge rst_n)
	if(!rst_n) y_cnt <= 16'd1;
	else if(x_cnt == `HSYNC_D) begin
		if(y_cnt == `VSYNC_R) y_cnt <= 16'd1;
		else y_cnt <= y_cnt + 1'b1;
	end else y_cnt <= y_cnt;

// HSYNC signal
always @ (posedge clk or negedge rst_n)
	if(!rst_n) sync_h <= 1'b1;
	else if(x_cnt <= `HSYNC_A) sync_h <= 1'b0;
	else sync_h <= 1'b1;	

// VSYNC signal
always @ (posedge clk or negedge rst_n)
	if(!rst_n) sync_v <= 1'b1;
	else if(y_cnt <= `VSYNC_O) sync_v <= 1'b0;
	else sync_v <= 1'b1;	

// rom address
always @ (posedge clk or negedge rst_n)
	if(!rst_n) 
		rom_addr <= 1'b0;
	else if((x_cnt >= x_set) && (x_cnt < (x_set + `P_WIDTH)) && (y_cnt >= y_set) && (y_cnt < (y_set + `P_DEPTH)))
		rom_addr <= y_cnt - y_set;
	else
		rom_addr <= rom_addr;

// rom data display
always @ (posedge clk or negedge rst_n)
	if(!rst_n) 
		vga <= BLACK;
	else if((x_cnt >= x_set) && (x_cnt < (x_set + `P_WIDTH)) && (y_cnt >= y_set) && (y_cnt < (y_set + `P_DEPTH)))
		if(rom_data[x_cnt - x_set]) vga <= color;
		else vga <= BLACK;
	else
		vga <= BLACK;

// delay count
always @ (posedge clk or negedge rst_n)
	if(!rst_n) cnt <= 1'b0;
	else cnt <= cnt + 1'b1;
	
// shift left or right flag
always @ (posedge clk or negedge rst_n)
	if(!rst_n) x_flag <= 1'b1;
	else if(x_set == `HSYNC_B) x_flag <= 1'b1;
	else if(x_set == (`HSYNC_C - `P_WIDTH)) x_flag <= 1'b0;
	else x_flag <= x_flag;
	
// shift left or right with flag
always @ (posedge clk or negedge rst_n)
	if(!rst_n) 
		x_set <= `HSYNC_B;
	else if(!cnt)
		if(x_flag) x_set <= x_set + 1'b1;
		else x_set <= x_set - 1'b1;
	else x_set <= x_set;
	
// shift up or down flag
always @ (posedge clk or negedge rst_n)
	if(!rst_n) y_flag <= 1'b1;
	else if(y_set == `VSYNC_P) y_flag <= 1'b1;
	else if(y_set == (`VSYNC_Q - `P_DEPTH)) y_flag <= 1'b0;
	else y_flag <= y_flag;
	
// shift up or down with flag
always @ (posedge clk or negedge rst_n)
	if(!rst_n) 
		y_set <= `VSYNC_P;
	else if(!cnt)
		if(y_flag) y_set <= y_set + 1'b1;
		else y_set <= y_set - 1'b1;
	else y_set <= y_set;
	
// color change
always @ (posedge clk or negedge rst_n)
	if(!rst_n) 
		change_en <= 1'b0;
	else if((x_set == `HSYNC_B)||(x_set == (`HSYNC_C - `P_WIDTH))||(y_set == `VSYNC_P)||(y_set == (`VSYNC_Q - `P_DEPTH))) 
		change_en <= 1'b1;
	else 
		change_en <= 1'b0;
	
// color change
always @ (posedge change_en or negedge rst_n)
	if(!rst_n) color <= RED;
	else case(color)
			RED:	color <= GREEN;
			GREEN:	color <= BLUE;
			BLUE:	color <= YELLOW;
			YELLOW:	color <= CYAN;
			CYAN:	color <= PURPLE;
			PURPLE:	color <= RED;
			default:color <= RED;
		endcase

endmodule
