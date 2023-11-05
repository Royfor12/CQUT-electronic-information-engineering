// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Uart_Tx
// 
// Author: Step
// 
// Description: The transfer module of uart interface
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Uart_Tx
(
input					clk,			//系统时钟 12MHz
input					rst_n,			//系统复位，低有效

output	reg				bps_en,			//发送时钟使能
input					bps_clk,		//发送时钟输入

input					tx_data_valid,	//发送数据有效脉冲
input			[7:0]	tx_data_in,		//要发送的数据
output	reg				uart_tx			//UART发送输出
);

reg				[3:0]	num;
reg				[9:0]	tx_data_r;	//融合了起始位和停止位的数据
//驱动发送数据操作
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		bps_en <= 1'b0;
		tx_data_r <= 10'd0;
	end else if(tx_data_valid && (!bps_en))begin	
		bps_en <= 1'b1;		//当检测到接收时钟使能信号的下降沿，表明接收完成，需要发送数据，使能发送时钟使能信号
		tx_data_r <= {1'b1,tx_data_in,1'b0};	
	end else if(num==4'd10) begin	
		bps_en <= 1'b0;		//一次UART发送需要10个时钟信号，然后结束
	end
end

//当处于工作状态中时，按照发送时钟的节拍发送数据
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		num <= 1'b0;
		uart_tx <= 1'b1;
	end else if(bps_en) begin
		if(bps_clk) begin
			num <= num + 1'b1;
			uart_tx <= tx_data_r[num];
		end else if(num>=4'd10) 
			num <= 4'd0;	
	end
end

endmodule
