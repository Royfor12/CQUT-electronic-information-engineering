// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Segment_scan 
// 
// Author: Step
// 
// Description: Display with Segment tube
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2015/11/11   |Initial ver
// --------------------------------------------------------------------
module Decoder
(
input				dat_valid,
input		[15:0]	prox_dat,
output	reg	[7:0]	Y_out
);

reg	[15:0] prox_dat0,prox_dat1,prox_dat2;
always @(posedge dat_valid) begin
	prox_dat0 <= prox_dat;
	prox_dat1 <= prox_dat0;
	if(((prox_dat1-prox_dat0) >= 16'h200)||((prox_dat1-prox_dat0) >= 16'h200)) prox_dat2 <= prox_dat2;
	else prox_dat2 <= prox_dat0;
end

always@(prox_dat2[9:7]) begin
	case (prox_dat2[9:7])
		3'b000: Y_out = 8'b11111110;
		3'b001: Y_out = 8'b11111100;
		3'b010: Y_out = 8'b11111000;
		3'b011: Y_out = 8'b11110000;
		3'b100: Y_out = 8'b11100000;
		3'b101: Y_out = 8'b11000000;
		3'b110: Y_out = 8'b10000000;
		3'b111: Y_out = 8'b00000000;
		default:Y_out = 8'b11111111;
	endcase
end

endmodule
