// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: DAC081S101_driver
// 
// Author: Step
// 
// Description: DAC081S101_driver
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.1     |2016/10/30   |Initial ver
// --------------------------------------------------------------------
module DAC081S101_driver
(
input				clk,		//系统时钟
input				rst_n,  	//系统复位，低有效

output	reg			dac_done,	//DAC采样完成标志
input		[7:0]	dac_data,	//DAC采样数据

output	reg			dac_sync,	//SPI总线CS
output	reg			dac_clk,	//SPI总线SCLK
output	reg			dac_dat		//SPI总线MOSI
);

localparam	HIGH = 1'b1;
localparam	LOW  = 1'b0;

reg [7:0] cnt;
always @(posedge clk or negedge rst_n)
	if(!rst_n) cnt <= 1'b0;
	else if(cnt >= 8'd34) cnt <= 1'b0;
	else cnt <= cnt + 1'b1;
	
reg [7:0] data;
always @(posedge clk or negedge rst_n)
	if(!rst_n) begin
		dac_sync <= HIGH; dac_clk <= LOW; dac_dat <= LOW;
	end else case(cnt)
		8'd0 : begin dac_sync <= HIGH; dac_clk <= LOW; data <= dac_data; end
		8'd1,8'd3,8'd5,8'd7,8'd9,8'd11,8'd13,8'd15,
		8'd17,8'd19,8'd21,8'd23,8'd25,8'd27,8'd29,8'd31,
		8'd33: begin dac_sync <= LOW; dac_clk <= LOW; end
		8'd2 : begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= LOW; end //15
		8'd4 : begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= LOW; end //14
		8'd6 : begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= LOW; end //13
		8'd8 : begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= LOW; end //12
		8'd10: begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= data[7]; end //11
		8'd12: begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= data[6]; end //10
		8'd14: begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= data[5]; end //9
		8'd16: begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= data[4]; end //8
		8'd18: begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= data[3]; end //7
		8'd20: begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= data[2]; end //6
		8'd22: begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= data[1]; end //5
		8'd24: begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= data[0]; end //4
		8'd26: begin dac_sync <= LOW; dac_clk <= HIGH; dac_dat <= LOW; end //3
		8'd28: begin dac_sync <= LOW; dac_clk <= HIGH; dac_done <= HIGH; end //2
		8'd30: begin dac_sync <= LOW; dac_clk <= HIGH; dac_done <= LOW; end //1
		8'd32: begin dac_sync <= LOW; dac_clk <= HIGH; end //0
		8'd34: begin dac_sync <= HIGH; dac_clk <= LOW; end
		default : begin dac_sync <= HIGH; dac_clk <= LOW;  end
	endcase

endmodule
