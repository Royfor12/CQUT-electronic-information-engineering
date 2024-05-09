// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Decoder
// 
// Author: Step
// 
// Description: Decoder
// 
// Web: www.stepfapga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2015/11/11   |Initial ver
// --------------------------------------------------------------------
module Decoder
(
input					clk,
input					rst_n,
input			[15:0]	key_pulse,
output	reg		[7:0]	seg_data	//高4位代表十位，低4位代表个位
);

//key_pulse transfer to seg_data
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		seg_data <= 8'h00;
	end else begin
		case(key_pulse)  //key_pulse脉宽等于clk_in的周期
			16'h0001: seg_data <= 8'h01;  //编码
			16'h0002: seg_data <= 8'h02;
			16'h0004: seg_data <= 8'h03;
			16'h0008: seg_data <= 8'h04;
			16'h0010: seg_data <= 8'h05;
			16'h0020: seg_data <= 8'h06;
			16'h0040: seg_data <= 8'h07;
			16'h0080: seg_data <= 8'h08;
			16'h0100: seg_data <= 8'h09;
			16'h0200: seg_data <= 8'h10;
			16'h0400: seg_data <= 8'h11;
			16'h0800: seg_data <= 8'h12;
			16'h1000: seg_data <= 8'h13;
			16'h2000: seg_data <= 8'h14;
			16'h4000: seg_data <= 8'h15;
			16'h8000: seg_data <= 8'h16;
			default:  seg_data <= seg_data;   //无按键按下时保持
		endcase
	end
end

endmodule
