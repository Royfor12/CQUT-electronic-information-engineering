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
input 		[3:0]	seg_data,		//seg_data input
output reg	[8:0]	segment_led		//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

always@(seg_data)
	case(seg_data)
		4'd0: segment_led = 9'h3f;
		4'd1: segment_led = 9'h06;
		4'd2: segment_led = 9'h5b;
		4'd3: segment_led = 9'h4f;
		4'd4: segment_led = 9'h66;
		4'd5: segment_led = 9'h6d;
		4'd6: segment_led = 9'h7d;
		4'd7: segment_led = 9'h07;
		4'd8: segment_led = 9'h7f;
		4'd9: segment_led = 9'h6f;
		default: segment_led = 9'h00;
	endcase

endmodule 