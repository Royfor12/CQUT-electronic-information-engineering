// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Counter
// 
// Author: Step
// 
// Description: counter for key_in
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2015/11/11   |Initial ver
// --------------------------------------------------------------------
module Counter
(
input					key_in,			//加分按键
input					rst_n,		//系统复位 低有效
output	reg	[11:0]		score_data		//分值 最高999分
);

//count for key_in
always @(negedge key_in  or negedge rst_n) begin
	if(!rst_n) score_data <= 12'h000;
	else begin
		if(score_data[3:0] == 4'd9) begin
			score_data[3:0] <= 4'd0;
			if(score_data[7:4] == 4'd9) begin
				score_data[7:4] <= 4'd0;
				if(score_data[11:8] == 4'd9) 
					score_data[11:8] <= 4'd0;
				else score_data[11:8] <= score_data[11:8] + 1'b1;
			end else score_data[7:4] <= score_data[7:4] + 1'b1;
		end else score_data[3:0] <= score_data[3:0] + 1'b1;
	end
end

endmodule
