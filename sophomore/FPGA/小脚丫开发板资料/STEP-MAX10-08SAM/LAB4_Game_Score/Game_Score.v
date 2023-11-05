// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Game_Score
// 
// Author: Step
// 
// Description: Score for game
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Game_Score
(
input					clk,		//系统时钟 12MHz
input					rst_n,		//系统复位 低有效
input					key_red,	//红队得分按钮，用K3
input					key_blue,	//蓝队得分按钮，用K4
output					seg_rck,	//74HC595的RCK管脚
output					seg_sck,	//74HC595的SCK管脚
output					seg_din		//74HC595的SER管脚
);

wire			[1:0]	key_jit,key_pulse,key_state;
//key debounce module
Debounce #
(
.KEY_WIDTH				(2'd2			)
)
u1
(
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位 低有效
.key_n					({key_red,key_blue}),	//按键信号输入
.key_jit				(key_jit		),	//延时消抖输出
.key_pulse				(key_pulse		),	//消抖脉冲输出
.key_state				(key_state		)	//消抖翻转输出
);

wire	[11:0]	red_seg;
//count for key_pulse
Counter u2
(
.key_in					(key_jit[1]		),	//加分按键
.rst_n					(rst_n			),	//系统复位 低有效
.score_data				(red_seg		)	//分值 最高999分
);

wire	[11:0]	blue_seg;
//count for key_pulse
Counter u3
(
.key_in					(key_jit[0]		),	//加分按键
.rst_n					(rst_n			),	//系统复位 低有效
.score_data				(blue_seg		)	//分值 最高999分
);

wire	[7:0]	dat_en;		//控制数码管点亮
assign	dat_en[7] = 1'b0;
assign	dat_en[6] = red_seg[11:8]? 1'b1:1'b0;
assign	dat_en[5] = red_seg[11:4]? 1'b1:1'b0;
assign	dat_en[4] = 1'b1;

assign	dat_en[3] = 1'b0;
assign	dat_en[2] = blue_seg[11:8]? 1'b1:1'b0;
assign	dat_en[1] = blue_seg[11:4]? 1'b1:1'b0;
assign	dat_en[0] = 1'b1;

//segment_scan display module
Segment_scan u4
(
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位 低有效
.dat_1					(0				),	//SEG1 显示的数据输入
.dat_2					(red_seg[11:8]	),	//SEG2 显示的数据输入
.dat_3					(red_seg[7:4]	),	//SEG3 显示的数据输入
.dat_4					(red_seg[3:0]	),	//SEG4 显示的数据输入
.dat_5					(0				),	//SEG5 显示的数据输入
.dat_6					(blue_seg[11:8]	),	//SEG6 显示的数据输入
.dat_7					(blue_seg[7:4]	),	//SEG7 显示的数据输入
.dat_8					(blue_seg[3:0]	),	//SEG8 显示的数据输入
.dat_en					(dat_en			),	//数码管数据位显示使能，[MSB~LSB]=[SEG1~SEG8]
.dot_en					(8'b0001_0001	),	//数码管小数点位显示使能，[MSB~LSB]=[SEG1~SEG8]
.seg_rck				(seg_rck		),	//74HC595的RCK管脚
.seg_sck				(seg_sck		),	//74HC595的SCK管脚
.seg_din				(seg_din		)	//74HC595的SER管脚
);

endmodule
