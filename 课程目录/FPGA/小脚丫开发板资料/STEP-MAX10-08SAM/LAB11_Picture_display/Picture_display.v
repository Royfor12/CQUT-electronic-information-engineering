// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Picture_display
// 
// Author: Step
// 
// Description: Picture_display
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.1     |2016/10/30   |Initial ver
// --------------------------------------------------------------------
module Picture_display
(
input					clk,			//12MHz系统时钟
input					rst_n,			//系统复位，低有效

output					lcd_res,		//LCD液晶屏复位
output					lcd_bl,			//LCD背光控制
output					lcd_dc,			//LCD数据指令控制
output					lcd_clk,		//LCD时钟信号
output					lcd_din			//LCD数据信号
);

/*
本例程使用小脚丫核心板驱动底板上的液晶屏（1.8寸 128*160 RGB TFT_LCD）实现单色图片显示
设计中包含两部分：
1.串行液晶屏驱动模块，屏参数配置和数据的传输；
2.RAM模块，这里使用的分布式RAM，存储图片数据；
首先将图片取模生成mem文件，RAM初始化为mem文件的数据，LCD驱动模块上电初始化LCD，然后从RAM中读取数据通过SPI时序发给LCD。
*/

wire			ram_clk_en;
wire	[7:0]	ram_addr;
wire	[132:0]	ram_data;
LCD_RGB LCD_RGB_uut
(
.clk				(clk		),	//12MHz系统时钟
.rst_n				(rst_n		),	//系统复位，低有效

.ram_clk_en			(ram_clk_en	),  //RAM时钟使能
.ram_addr			(ram_addr	),  //RAM地址信号
.ram_data			(ram_data	),  //RAM数据信号

.lcd_res			(lcd_res	),  //LCD液晶屏复位
.lcd_bl				(lcd_bl		),  //LCD背光控制
.lcd_dc				(lcd_dc		),  //LCD数据指令控制
.lcd_clk			(lcd_clk	),	//LCD时钟信号
.lcd_din			(lcd_din	)	//LCD数据信号
);

LCD_RAM LCD_RAM_uut
( 
.Address			(ram_addr	),	//RAM地址信号
.Q					(ram_data	)	//RAM数据信号
);

endmodule
