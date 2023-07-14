// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Voltage_Meas
// 
// Author: Step
// 
// Description: Voltage Measure system
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.1     |2016/10/30   |Initial ver
// --------------------------------------------------------------------
module Voltage_Meas
(
input				clk,		//系统时钟
input				rst_n,		//系统复位，低有效

output				adc_cs,		//SPI总线CS
output				adc_clk,	//SPI总线SCK
input				adc_dat,	//SPI总线SDA

output		[8:0]	seg_1,  	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
output		[8:0]	seg_2   	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);
	
/*
为了验证PCF8591的ADC功能I2C驱动的设计，我们增加了这个top文件、BCD转码模块文件和数码管显示模块文件
通过驱动ADC采样获取对应的采样值，通过对采样数据的运算及BCD转码的操作得到我们方便读取的电压数据数据
将最后的电压值通过数码管动态的显示出来，实现电压信号采集的设计
*/

wire clk_24mhz,locked;
pll u1
(
.areset				(!rst_n			), //pll模块的复位为高有效
.inclk0				(clk			), //12MHz系统时钟输入
.c0					(clk_24mhz		), //24MHz时钟输出
.locked				(locked			)  //pll lock信号输出
);

wire adc_done;
wire [7:0] adc_data;
//使用I2C总线驱动PCF8591的ADC功能，例化
ADC081S101_driver u2
(
.clk				(clk_24mhz		),	//系统时钟
.rst_n				(rst_n			),	//系统复位，低有效
.adc_cs				(adc_cs			),	//SPI总线CS
.adc_clk			(adc_clk		),	//SPI总线SCK
.adc_dat			(adc_dat		),	//SPI总线SDA
.adc_done			(adc_done		),	//ADC采样完成标志
.adc_data			(adc_data		)	//ADC采样数据
);

//将ADC采样数据按规则转换为电压数据（乘以0.0129），这里我们直接乘以129，得到的数据经过BCD转码后小数点左移4位即可
wire [15:0]	bin_code = adc_data * 16'd129;
wire [19:0]	bcd_code;

//将处理后的ADC数据进行BCD转码，例化
bin_to_bcd u3
(
.rst_n				(rst_n			),	//系统复位，低有效
.bin_code			(bin_code		),	//需要进行BCD转码的二进制数据
.bcd_code			(bcd_code		)	//转码后的BCD码型数据输出
);

//个位数码管模块例化	
Segment_led u4
(
.seg_dot			(1'b1			),	//seg_dot input
.seg_data			(bcd_code[19:16]),	//seg_data input
.segment_led		(seg_1			)	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

//分位数码管模块例化
Segment_led u5
(
.seg_dot			(1'b0			),	//seg_dot input
.seg_data			(bcd_code[15:12]),	//seg_data input
.segment_led		(seg_2			)	//MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);	
	
endmodule
