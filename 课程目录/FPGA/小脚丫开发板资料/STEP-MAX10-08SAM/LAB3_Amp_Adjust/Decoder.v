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
input				clk,
input				rst_n,
input				L_pulse,
input				R_pulse,
output	reg	[7:0]	seg_data	//高4位代表十位，低4位代表个位
);

//key_pulse transfer to seg_data
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		seg_data <= 8'h50;
	end else begin
		if(L_pulse) begin
			if(seg_data[3:0]==4'd0) begin
				seg_data[3:0] <= 4'd9;
				if(seg_data[7:4]==4'd0) seg_data[7:4] <= 4'd9;
				else seg_data[7:4] <= seg_data[7:4] - 1'b1;
			end else seg_data[3:0] <= seg_data[3:0] - 1'b1;
		end else if(R_pulse) begin
			if(seg_data[3:0]==4'd9) begin
				seg_data[3:0] <= 4'd0;
				if(seg_data[7:4]==4'd9) seg_data[7:4] <= 4'd0;
				else seg_data[7:4] <= seg_data[7:4] + 1'b1;
			end else seg_data[3:0] <= seg_data[3:0] + 1'b1;
		end else begin
			seg_data <= seg_data;
		end
	end
end

endmodule
