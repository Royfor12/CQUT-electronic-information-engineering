// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: PWM
// 
// Author: Step
// 
// Description: PWM
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2015/11/11   |Initial ver
// --------------------------------------------------------------------
module PWM #
(
parameter	WIDTH = 32	//ensure that 2**WIDTH > cycle
)
(
input					clk,
input					rst_n,
input		[WIDTH-1:0]	cycle,	//cycle > duty
input		[WIDTH-1:0]	duty,	//duty < cycle
output	reg				pwm_out
);

reg	[WIDTH-1:0]	cnt;
//counter for cycle
always @(posedge clk or negedge rst_n)
	if(!rst_n) cnt <= 1'b1;
	else if(cnt >= cycle) cnt <= 1'b1;
	else cnt <= cnt + 1'b1;

//pulse with duty
always @(posedge clk or negedge rst_n)
	if(!rst_n) pwm_out <= 1'b1;
	else if(cnt < duty) pwm_out <= 1'b1;
	else pwm_out <= 1'b0;

endmodule
