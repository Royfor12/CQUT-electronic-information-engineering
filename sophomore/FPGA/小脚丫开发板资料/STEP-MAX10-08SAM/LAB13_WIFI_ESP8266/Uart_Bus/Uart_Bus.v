// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Uart_Bus
// 
// Author: Step
// 
// Description: The module for uart communication
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Uart_Bus #
(
parameter				BPS_PARA = 1250 	//12MHz时钟时参数1250对应9600的波特率
)
(
input					clk,			//系统时钟 12MHz
input					rst_n,			//系统复位，低有效

input					uart_rx,		//UART接收输入
output					rx_data_valid,	//接收数据有效脉冲
output			[7:0]	rx_data_out,		//接收到的数据

input					tx_data_valid,	//发送数据有效脉冲
input			[7:0]	tx_data_in,		//要发送的数据
output					uart_tx			//UART发送输出
);	
	
/////////////////////////////////UART接收功能模块例化////////////////////////////////////

wire					bps_en_rx,bps_clk_rx;

//UART接收波特率时钟控制模块 例化
Baud #
(
.BPS_PARA				(BPS_PARA		)
)
Baud_rx
(	
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位，低有效
.bps_en					(bps_en_rx		),	//接收时钟使能
.bps_clk				(bps_clk_rx		)	//接收时钟输出
);

//UART接收数据模块 例化
Uart_Rx Uart_Rx_uut
(
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位，低有效

.bps_en					(bps_en_rx		),	//接收时钟使能
.bps_clk				(bps_clk_rx		),	//接收时钟输入

.uart_rx				(uart_rx		),	//UART接收输入
.rx_data_valid			(rx_data_valid	),	//接收数据有效脉冲
.rx_data_out			(rx_data_out	)	//接收到的数据
);
	
/////////////////////////////////UART发送功能模块例化////////////////////////////////////

wire					bps_en_tx,bps_clk_tx;

//UART发送波特率时钟控制模块 例化
Baud #
(
.BPS_PARA				(BPS_PARA		)
)
Baud_tx
(
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位，低有效
.bps_en					(bps_en_tx		),	//发送时钟使能
.bps_clk				(bps_clk_tx		)	//发送时钟输出
);

//UART发送数据模块 例化
Uart_Tx Uart_Tx_uut
(
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位，低有效

.bps_en					(bps_en_tx		),	//发送时钟使能
.bps_clk				(bps_clk_tx		),	//发送时钟输入

.tx_data_valid			(tx_data_valid	),	//发送数据有效脉冲
.tx_data_in				(tx_data_in		),	//要发送的数据
.uart_tx				(uart_tx		)	//UART发送输出
);

endmodule
