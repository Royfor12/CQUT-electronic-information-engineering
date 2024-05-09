// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module:Digtal_Calender 
// 
// Author: Step
// 
// Description: Digital clock with RTC DS1340Z
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2015/11/11   |Initial ver
// --------------------------------------------------------------------
module Digtal_Calender
(
input				clk,		//系统时钟
input				rst_n,		//系统复位，低有效

input				key_a,		//旋转编码器A管脚
input				key_b,		//旋转编码器B管脚
input				key_o,		//旋转编码器D管脚

output				i2c_scl,	//I2C总线SCL
inout				i2c_sda,	//I2C总线SDA

output				seg_rck,	//74HC595的RCK管脚
output				seg_sck,	//74HC595的SCK管脚
output				seg_din		//74HC595的SER管脚
);

wire L_pulse,R_pulse;
Encoder u1
(
.clk				(clk		),	//系统时钟 12MHz
.rst_n				(rst_n		),	//系统复位 低有效
.key_a				(key_a		),	//旋转编码器EC11的A脚
.key_b				(key_b		),	//旋转编码器EC11的B脚
.L_pulse			(L_pulse	),	//左旋脉冲输出
.R_pulse			(R_pulse	)	//右旋脉冲输出
);

wire O_jit,O_pulse,O_state;
//key debounce module
Debounce u2
(
.clk				(clk		),	//系统时钟 12MHz
.rst_n				(rst_n		),	//系统复位 低有效
.key_n				(key_o		),	//按键信号输入
.key_jit			(O_jit		),	//延时消抖输出
.key_pulse			(O_pulse	),	//消抖脉冲输出
.key_state			(O_state	)	//消抖翻转输出
);

wire [2:0] state;
wire [3:0] disp_en;
wire [7:0] adj_sec,adj_min,adj_hour,adj_week,adj_day,adj_mon,adj_year;
wire [7:0] rtc_sec,rtc_min,rtc_hour,rtc_week,rtc_day,rtc_mon,rtc_year;
mode_ctrl u3
(
.clk				(clk		),		//系统时钟
.rst_n				(rst_n		),		//系统复位，低有效
.L_pulse			(L_pulse	),		//左旋转脉冲输入
.R_pulse			(R_pulse	),		//右旋转脉冲输入
.O_pulse			(O_pulse	),		//按动脉冲输入
		
.rtc_sec			(rtc_sec	),		//实时秒钟输入
.rtc_min			(rtc_min	),		//实时分钟输入
.rtc_hour			(rtc_hour	),		//实时时钟输入
.rtc_week			(rtc_week	),		//实时星期输入
.rtc_day			(rtc_day	),		//实时日期输入
.rtc_mon			(rtc_mon	),		//实时月份输入
.rtc_year			(rtc_year	),		//实时年份输入
		
.state				(state		),		//运行状态输出
.disp_en			(disp_en	),		//显示控制输出
.adj_sec			(adj_sec	),		//秒钟调整输出
.adj_min			(adj_min	),		//分钟调整输出
.adj_hour			(adj_hour	),		//时钟调整输出
.adj_week			(adj_week	),		//星期调整输出
.adj_day			(adj_day	),		//日期调整输出
.adj_mon			(adj_mon	),		//月份调整输出
.adj_year			(adj_year	)		//年份调整输出
);

DS1340Z_driver u4
(
.clk				(clk		),		//系统时钟
.rst_n				(rst_n		),		//系统复位，低有效
.key_set			(O_pulse	),		//按动脉冲输入
.i2c_scl			(i2c_scl	),		//I2C总线SCL
.i2c_sda			(i2c_sda	),		//I2C总线SDA
		
.adj_sec			(adj_sec	),		//秒钟调整输入
.adj_min			(adj_min	),      //分钟调整输入
.adj_hour			(adj_hour	),      //时钟调整输入
.adj_week			(adj_week	),      //星期调整输入
.adj_day			(adj_day	),      //日期调整输入
.adj_mon			(adj_mon	),      //月份调整输入
.adj_year			(adj_year	),      //年份调整输入
		
.rtc_sec			(rtc_sec	),		//实时秒钟输出
.rtc_min			(rtc_min	),      //实时分钟输出
.rtc_hour			(rtc_hour	),      //实时时钟输出
.rtc_week			(rtc_week	),      //实时星期输出
.rtc_day			(rtc_day	),      //实时日期输出
.rtc_mon			(rtc_mon	),      //实时月份输出
.rtc_year			(rtc_year	)       //实时年份输出
);

wire [3:0] data_1,data_2,data_3,data_4,data_5,data_6,data_7,data_8;
wire [7:0] data_en = {{2{disp_en[3]}},{2{disp_en[2]}},{2{disp_en[1]}},{2{disp_en[0]}}};				//数码管位选控制
wire [7:0] dot_en = {1'b0,disp_en[3],1'b0,disp_en[2],1'b0,disp_en[1],1'b0,disp_en[0]};				//数码管小数点显示控制
assign {data_1,data_2} = state? adj_year:rtc_year;													//显示控制
assign {data_3,data_4} = state? ((state>=3'd4)? adj_mon:adj_hour):((&disp_en)? rtc_mon:rtc_hour);	//显示控制
assign {data_5,data_6} = state? ((state>=3'd4)? adj_day:adj_min):((&disp_en)? rtc_day:rtc_min);		//显示控制
assign {data_7,data_8} = state? ((state>=3'd4)? adj_week:adj_sec):((&disp_en)? rtc_week:rtc_sec);	//显示控制

Segment_scan u5
(
.clk				(clk		),	//系统时钟
.rst_n				(rst_n		),	//系统复位，低有效
.dat_1				(data_1		),	//SEG1 数码管要显示的数据
.dat_2				(data_2		),	//SEG2 数码管要显示的数据
.dat_3				(data_3		),	//SEG3 数码管要显示的数据
.dat_4				(data_4		),	//SEG4 数码管要显示的数据
.dat_5				(data_5		),	//SEG5 数码管要显示的数据
.dat_6				(data_6		),	//SEG6 数码管要显示的数据
.dat_7				(data_7		),	//SEG7 数码管要显示的数据
.dat_8				(data_8		),	//SEG8 数码管要显示的数据
.dat_en				(data_en	),	//各位数码管数据显示使能，[MSB~LSB]=[SEG8~SEG1]
.dot_en				(dot_en		),	//各位数码管小数点显示使能，[MSB~LSB]=[SEG8~SEG1]
.seg_rck			(seg_rck	),	//74HC595的RCK管脚
.seg_sck			(seg_sck	),	//74HC595的SCK管脚
.seg_din			(seg_din	)	//74HC595的SER管脚
);

endmodule
