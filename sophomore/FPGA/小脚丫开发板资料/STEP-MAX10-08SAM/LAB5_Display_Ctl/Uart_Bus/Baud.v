// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Baud
// 
// Author: Step
// 
// Description: Beat for uart transfer and receive baud rate
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Baud #
(
parameter				BPS_PARA = 1250 //12MHz时钟时参数1250对应9600的波特率
)
(
input					clk,		//系统时钟
input					rst_n,		//系统复位，低有效
input					bps_en,		//接收或发送时钟使能
output	reg				bps_clk		//接收或发送时钟输出
);	

reg				[12:0]	cnt;
//计数器计数满足波特率时钟要求
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) 
		cnt <= 1'b0;
	else if((cnt >= BPS_PARA-1)||(!bps_en)) //当时钟信号不使能（bps_en为低电平）时，计数器清零并停止计数
		cnt <= 1'b0;	                    //当时钟信号使能时，计数器对系统时钟计数，周期为BPS_PARA个系统时钟周期
	else 
		cnt <= cnt + 1'b1;
end
	
//产生相应波特率的时钟节拍，接收模块将以此节拍进行UART数据接收
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) 
		bps_clk <= 1'b0;
	else if(cnt == (BPS_PARA>>1)) //右移一位等于除以2，终值BPS_PARA为数据更替点，中值数据稳定，做采样点
		bps_clk <= 1'b1;	
	else 
		bps_clk <= 1'b0;
end

endmodule