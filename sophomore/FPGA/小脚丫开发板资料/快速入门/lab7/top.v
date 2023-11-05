// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : top.v
// Module name  : top
// Author       : STEP
// Description  : 
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:进过按键消抖后控制led显示翻转
 
module top (clk,rst,key,led);
 
	input             clk;
	input             rst;
	input 	          key;                      				
	output   reg      led;        
 
	wire              key_pulse;
 
	//当按键按下时产生一个高脉冲，翻转一次led
	always @(posedge clk  or  negedge rst)
		begin
			if (!rst) 
				led <= 1'b1;
			else if (key_pulse)
				led <= ~led;
			else
                led <= led;
	   end    
	//例化消抖module，这里没有传递参数N，采用了默认的N=1     
	debounce  u1 (                               
				.clk (clk),
				.rst (rst),
				.key (key),
				.key_pulse (key_pulse)
				);
endmodule