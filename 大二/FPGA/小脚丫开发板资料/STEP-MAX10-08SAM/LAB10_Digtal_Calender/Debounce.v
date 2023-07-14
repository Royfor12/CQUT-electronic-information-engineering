// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Debounce
// 
// Author: Step
// 
// Description: Debounce for button with FPGA/CPLD
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2015/11/11   |Initial ver
// --------------------------------------------------------------------
module Debounce #
(
parameter	KEY_WIDTH = 1				//消抖按键数量
)
(
input   					clk,		//系统时钟 12MHz
input   					rst_n,		//系统复位 低有效
input   	[KEY_WIDTH-1:0]	key_n,		//按键信号输入
output  reg	[KEY_WIDTH-1:0]	key_jit,	//延时消抖输出
output  wire[KEY_WIDTH-1:0]	key_pulse,	//消抖脉冲输出
output	reg	[KEY_WIDTH-1:0]	key_state	//消抖翻转输出
); 

localparam	CNT_NUM = 18'd240000;		//基于系统时钟的20ms计数终值

reg [KEY_WIDTH-1:0] key_n_r,key_n_r1,key_n_r2;   
//延迟锁存，消除亚稳态
always @(posedge clk) begin
	key_n_r <= key_n;
	key_n_r1 <= key_n_r;
	key_n_r2 <= key_n_r1;
end

//边沿检测
wire  key_edge = (key_n_r1 == key_n_r2)? 1'b0:1'b1;

reg [17:0]  cnt;
//20ms延时计数器
always @(posedge clk or negedge rst_n)
    if (!rst_n) cnt <= 18'd0;
    else if(key_edge) cnt <=18'd0;
    else cnt <= cnt + 1'b1;

//延时20ms时间采样，得到延时消抖输出
always @(posedge clk or negedge rst_n)
    if (!rst_n)  key_jit <= {KEY_WIDTH{1'b1}};
	else if (cnt == CNT_NUM-1) key_jit <= key_n_r2;

reg [KEY_WIDTH-1:0] key_jit_r;
//对延时消抖输出key_jit延迟锁存
always @(posedge clk or negedge rst_n)
    if (!rst_n) key_jit_r <= {KEY_WIDTH{1'b1}};
    else  key_jit_r <= key_jit;

//检测延时消抖输出key_jit下降沿，得到消抖脉冲输出
assign key_pulse = key_jit_r & ( ~key_jit);

//根据消抖脉冲信号，对应按键输出翻转，像自锁开关一样
always @(posedge clk or negedge rst_n)
	if (!rst_n) key_state <= {KEY_WIDTH{1'b1}};
    else if(key_pulse) key_state <= key_state ^ key_pulse;
	else key_state <= key_state;

endmodule
