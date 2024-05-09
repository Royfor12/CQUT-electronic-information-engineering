// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : divide_tb.v
// Module name  : divide_tb
// Author       : STEP
// Description  : clock divider
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:divide.v时钟分频器的测试文件
 
`timescale 1ns/100ps            //仿真时间单位/时间精度，时间单位要大于或者等于时间精度
 
module divide_tb();             //测试文件也是一个module，因为用于仿真所以无需输入输出信号
 
	reg    clk,rst_n;           //需要产生的激励信号定义，激励信号需要过程块产生所以定义为reg型变量
	wire   clkout;              //需要观察的输出信号定义，定义为wire型变量
 
	//初始化过程块
	initial 
		begin 
			clk = 0;
			rst_n = 0;
			#25                            //#表示延时25个时间单位
			rst_n = 1;                     //产生了一个初始25ns低电平，然后变高电平的复位信号
		end
 
	always #10 clk = ~clk;                 //每隔10ns翻转一次clk信号，也就是产生一个时钟周期20ns的clk，频率为50MHz  
 
	//module调用例化格式
	divide  #(.WIDTH(4),.N(11))  u1 (      //#后面的（）中为参数传递，如果不传递参数就是所调用模块中的参数默认值
                                           //divide表示所要例化的module名称，u1是我们定义的例化名称，必须以字母开头
						.clk	(clk),     //输入输出信号连接。 .clk表示module本身定义的信号名称；（clk）表示我们在这里定义的激励信号
						.rst_n	(rst_n),   //在testbench里定义的信号名称可以与所要调用module的端口信号名称不同
						.clkout	(clkout)   
					  );
	endmodule