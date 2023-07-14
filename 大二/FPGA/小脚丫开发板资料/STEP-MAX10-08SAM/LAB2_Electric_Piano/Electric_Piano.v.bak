// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Electric_Piano
// 
// Author: Step
// 
// Description: Electric_Piano
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Electric_Piano
(
input					clk,			//system clock
input					rst_n,		//system reset
input			[3:0]	col,
output			[3:0]	row,
output					beeper
);

wire			[15:0]	key_out;
wire			[15:0]	key_pulse;
//Array_KeyBoard 
Array_KeyBoard u1
(
.clk					(clk			),
.rst_n					(rst_n			),
.col					(col			),
.row					(row			),
.key_out				(key_out		),
.key_pulse				(key_pulse		)
);

//beeper module
Beeper u2
(
.clk					(clk			),
.rst_n					(rst_n			),
.key_out				(~key_out		),
.beeper					(beeper			)
);

endmodule
