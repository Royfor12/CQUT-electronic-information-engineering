// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Segment_led
// 
// Author: Step
// 
// Description: Segment_led
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Segment_led
(
input				seg_dot,		//seg_dot input
input 		[3:0]	seg_data,		//seg_data input
output 		[8:0]	segment_led		//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

reg [6:0] segment;
always@(seg_data)
	case(seg_data)
		4'd0: segment = 7'h3f;
		4'd1: segment = 7'h06;
		4'd2: segment = 7'h5b;
		4'd3: segment = 7'h4f;
		4'd4: segment = 7'h66;
		4'd5: segment = 7'h6d;
		4'd6: segment = 7'h7d;
		4'd7: segment = 7'h07;
		4'd8: segment = 7'h7f;
		4'd9: segment = 7'h6f;
		default: segment = 7'h00;
	endcase

assign segment_led = {1'b0,seg_dot,segment};

endmodule
