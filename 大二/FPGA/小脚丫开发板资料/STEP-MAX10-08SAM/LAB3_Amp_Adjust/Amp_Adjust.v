// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Amp_Adjust
// 
// Author: Step
// 
// Description: Amp_Adjust
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Amp_Adjust 
(
input					clk,		//系统时钟 12MHz
input					rst_n,		//系统复位 低有效
input					key_a,		//旋转编码器EC11的A脚 
input					key_b,		//旋转编码器EC11的B脚  
output			[8:0]	seg_1,		//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
output			[8:0]	seg_2		//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

wire L_pulse,R_pulse;
//Encoder module
Encoder u1
(
.clk					(clk		),	//系统时钟 12MHz
.rst_n					(rst_n		),	//系统复位 低有效
.key_a					(key_a		),	//旋转编码器EC11的A脚 
.key_b					(key_b		),	//旋转编码器EC11的B脚 
.L_pulse				(L_pulse	),	//左旋脉冲输出
.R_pulse				(R_pulse	)	//右旋脉冲输出
);

wire [7:0] seg_data;
//Decoder
Decoder u2
(
.clk					(clk		),	//系统时钟 12MHz
.rst_n					(rst_n		),	//系统复位 低有效
.L_pulse				(L_pulse	),	//左旋脉冲输出
.R_pulse				(R_pulse	),	//右旋脉冲输出
.seg_data				(seg_data	)	//高4位代表十位，低4位代表个位
);

//Segment led display module
Segment_led u3
(
.seg_data				(seg_data[7:4]	),	//seg_data input
.segment_led			(seg_1			)	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

//Segment led display module
Segment_led u4
(
.seg_data				(seg_data[3:0]	),	//seg_data input
.segment_led			(seg_2			)	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

endmodule
