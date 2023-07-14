// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Uart_Rx
// 
// Author: Step
// 
// Description: The receive module of uart interface
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Uart_Rx
(
input					clk,			//系统时钟 12MHz
input					rst_n,			//系统复位，低有效

output	reg				bps_en,			//接收时钟使能
input					bps_clk,		//接收时钟输入

input					uart_rx,		//UART接收输入
output	reg				rx_data_valid,	//接收数据有效脉冲
output	reg		[7:0]	rx_data_out		//接收到的数据
);	

reg	uart_rx0,uart_rx1,uart_rx2;	
//多级延时锁存去除亚稳态
always @ (posedge clk) begin
	uart_rx0 <= uart_rx;
	uart_rx1 <= uart_rx0;
	uart_rx2 <= uart_rx1;
end

//检测UART接收输入信号的下降沿
wire	neg_uart_rx = uart_rx2 & ~uart_rx1;	
		
reg				[3:0]	num;			
//接收时钟使能信号的控制
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n)
		bps_en <= 1'b0;
	else if(neg_uart_rx && (!bps_en))	//当空闲状态（bps_en为低电平）时检测到UART接收信号下降沿，进入工作状态（bps_en为高电平），控制时钟模块产生接收时钟
		bps_en <= 1'b1;		
	else if(num==4'd9)		            //当完成一次UART接收操作后，退出工作状态，恢复空闲状态
		bps_en <= 1'b0;			
end

reg				[7:0]	rx_data;
//当处于工作状态中时，按照接收时钟的节拍获取数据
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		num <= 4'd0;
		rx_data <= 8'd0;
	end else if(bps_en) begin	
		if(bps_clk) begin			
			num <= num + 1'b1;
			if(num<=4'd8) rx_data[num-1] <= uart_rx1; //先接受低位再接收高位，8位有效数据
		end else if(num == 4'd9) begin		          //完成一次UART接收操作后，将获取的数据输出
			num <= 4'd0;				
		end
	end else begin
		num <= 4'd0;
	end
end

//将接收的数据输出，同时控制输出有效信号产生脉冲
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		rx_data_out <= 8'd0;
		rx_data_valid <= 1'b0;
	end else if(num == 4'd9) begin	
		rx_data_out <= rx_data;
		rx_data_valid <= 1'b1;
	end else begin
		rx_data_out <= rx_data_out;
		rx_data_valid <= 1'b0;
	end
end

endmodule
