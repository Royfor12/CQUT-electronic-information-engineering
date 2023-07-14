// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : flashled.v
// Module name  : flashled
// Author       : STEP
// Description  : segment initial
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:流水灯的模块化设计
 
module flashled (clk,rst,led);
 
	input clk,rst;						
	output [7:0] led;				
 
 
	reg   [2:0] cnt ;         //定义了一个3位的计数器，输出可以作为3-8译码器的输入
 
	wire clk1h;               //定义一个中间变量，表示分频得到的时钟，用作计数器的触发        
 
	//例化module decode38，相当于调用
	decode38 u1 (                                   
			.sw(cnt),         //例化的输入端口连接到cnt，输出端口连接到led  
			.led(led)
			);
 
	//例化分频器模块，产生一个1Hz时钟信号		
	divide #(.WIDTH(32),.N(12000000)) u2 (         //传递参数
			.clk(clk),
			.rst_n(rst),      //例化的端口信号都连接到定义好的信号
			.clkout(clk1h)
			);                             
 
	//1Hz时钟上升沿触发计数器，循环计数		
	always @(posedge clk1h or negedge rst)
		if (!rst)
			cnt <= 0;
		else
			cnt <= cnt +1;
 
	endmodule