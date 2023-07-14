// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Signal_Generator
// 
// Author: Step
// 
// Description: Signal_Generator
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Signal_Generator
(
input				clk,		//系统时钟
input				rst_n,  	//系统复位，低有效

input				key_a,		//旋转编码器EC11的A脚 
input				key_b,		//旋转编码器EC11的B脚 
input				key_o,		//旋转编码器EC11的D脚

output				dac_sync,	//SPI总线CS
output				dac_clk,	//SPI总线SCLK
output				dac_dat		//SPI总线MOSI
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

wire key_jit,key_pulse,key_state;
//key debounce module
Debounce u2
(
.clk				(clk		),	//系统时钟 12MHz
.rst_n				(rst_n		),	//系统复位 低有效
.key_n				(key_o		),	//按键信号输入
.key_jit			(key_jit	),	//延时消抖输出
.key_pulse			(key_pulse	),	//消抖脉冲输出
.key_state			(key_state	)	//消抖翻转输出
);

wire [1:0] wave;
wire [23:0] f_inc;
logic_ctrl u3
(
.clk				(clk		),	//12MHz系统时钟
.rst_n				(rst_n		),	//系统复位，低有效
.L_pulse			(L_pulse	),	//编码器左旋脉冲
.R_pulse			(R_pulse	),	//编码器右旋脉冲
.O_pulse			(key_pulse	),	//编码器按动脉冲
.wave				(wave		),	//波形输出
.f_inc				(f_inc		)	//频率控制字
);

wire dac_done,sps_clk;
wire [7:0] sps_dat;
DDS u4
(
.clk				(dac_done	),	//
.rst_n				(rst_n		),	//
.wave				(wave		),	//
.f_inc				(f_inc		),	//
.p_inc				(1'b0		),	//
.dac_clk			(sps_clk	),	//
.dac_dat			(sps_dat	)	//
);

DAC081S101_driver u5
(
.clk				(clk		),	//系统时钟
.rst_n				(rst_n		),  //系统复位，低有效
.dac_done			(dac_done	),	//DAC采样完成标志
.dac_data			(sps_dat	),	//DAC采样数据
.dac_sync			(dac_sync	),	//SPI总线CS
.dac_clk			(dac_clk	),	//SPI总线SCLK
.dac_dat			(dac_dat	)	//SPI总线MOSI
);

endmodule
