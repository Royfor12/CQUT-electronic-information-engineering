// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: DDS 
// 
// Author: Step
// 
// Description: Direct Digital Synthesizer, generate sin signal with 10 bits dac
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2015/11/11   |Initial ver
// --------------------------------------------------------------------
module DDS
(
input				clk,		//
input				rst_n,		//
input		[1:0]	wave,		//
input		[23:0]	f_inc,		//
input		[23:0]	p_inc,		//
output				dac_clk,	//
output	reg	[7:0]	dac_dat		//
);

assign dac_clk = clk;

reg [23:0] phase_acc;

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) phase_acc <= 24'b0;
	else phase_acc <= phase_acc + f_inc;
end

wire [23:0] phase = phase_acc + p_inc; // phase is the high 8 bits

wire [7:0] sin_dat;	//正弦波
wire [7:0] saw_dat = phase[23:16];	//锯齿波
wire [7:0] tri_dat = phase[23]? (~phase[22:15]) : phase[22:15];	//三角波
wire [7:0] squ_dat = phase[23]? 8'hff : 8'h00;	//方波

always @(*) begin
	case(wave)
		2'b00: dac_dat = sin_dat;	//正弦波
		2'b01: dac_dat = saw_dat;	//锯齿波
		2'b10: dac_dat = tri_dat;	//三角波
		2'b11: dac_dat = squ_dat;	//方波
		default: dac_dat = sin_dat;	//正弦波
	endcase
end

rom u1
(
.clock		(clk			),
.address	(phase[23:16]	),
.q			(sin_dat		)
);

endmodule
