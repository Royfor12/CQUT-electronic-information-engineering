// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Display_Ctl
// 
// Author: Step
// 
// Description: Real time display with segment led_out
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Display_Ctl 
(
input					clk,			//系统时钟 12MHz
input					rst_n,			//系统复位，低有效

input					uart_rx,		//UART接收输入

output					seg_rck,		//74HC595的RCK管脚
output					seg_sck,		//74HC595的SCK管脚
output					seg_din			//74HC595的SER管脚
);	

//`define HEX_FORMAT  //串口助手使用Hex格式发送时定义HEX_FORMAT，否则不定义

wire rx_data_valid;
wire [7:0]	rx_data_out;
//Uart_Bus module
Uart_Bus u1
(	
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位，低有效
.uart_rx				(uart_rx		),	//UART接收输入
.rx_data_valid			(rx_data_valid	),	//接收数据有效脉冲
.rx_data_out			(rx_data_out	)	//接收到的数据
);

wire [7:0] data_en;
wire [31:0] seg_data;
//
Decoder u2
(
.rst_n					(rst_n			),
.rx_data_valid			(rx_data_valid	),	//接收数据有效脉冲
.rx_data_out			(rx_data_out	),	//接收到的数据
.data_en				(data_en		),	//数码管数据显示使能
.seg_data				(seg_data		)	//数码管数据BCD码
);

//segment_scan display module
Segment_scan u3
(
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位 低有效
.dat_1					(seg_data[31:28]),	//SEG1 显示的数据输入
.dat_2					(seg_data[27:24]),	//SEG2 显示的数据输入
.dat_3					(seg_data[23:20]),	//SEG3 显示的数据输入
.dat_4					(seg_data[19:16]),	//SEG4 显示的数据输入
.dat_5					(seg_data[15:12]),	//SEG5 显示的数据输入
.dat_6					(seg_data[11: 8]),	//SEG6 显示的数据输入
.dat_7					(seg_data[ 7: 4]),	//SEG7 显示的数据输入
.dat_8					(seg_data[ 3: 0]),	//SEG8 显示的数据输入
.dat_en					(data_en		),	//数码管数据位显示使能，[MSB~LSB]=[SEG1~SEG8]
.dot_en					(8'b0000_0000	),	//数码管小数点位显示使能，[MSB~LSB]=[SEG1~SEG8]
.seg_rck				(seg_rck		),	//74HC595的RCK管脚
.seg_sck				(seg_sck		),	//74HC595的SCK管脚
.seg_din				(seg_din		)	//74HC595的SER管脚
);

endmodule
