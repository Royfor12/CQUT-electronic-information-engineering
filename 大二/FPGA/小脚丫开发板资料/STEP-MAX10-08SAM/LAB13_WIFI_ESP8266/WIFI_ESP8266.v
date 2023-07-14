// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: WIFI_ESP8266
// 
// Author: Step
// 
// Description: WIFI_ESP8266
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module WIFI_ESP8266 #
(
parameter				BPS_PARA = 104 		// 12MHz时钟时参数1250对应115200的波特率
)
(
input					clk,				// 系统时钟 12MHz
input					rst_n,				// 系统复位 低有效

input					wifi_rx,			// esp8266_tx fpga_rx
output					wifi_tx,			// fpga_tx esp8266_tx
output					uart_tx,			// fpga_tx cp2102_rx

output					seg_rck,			// 74HC595的RCK管脚
output					seg_sck,			// 74HC595的SCK管脚
output					seg_din				// 74HC595的SER管脚
);	

assign uart_tx = wifi_rx;	//将ESP8266返回的数据显示在串口调试助手上

localparam			IDLE	=	4'b0000;
localparam			MAIN	=	4'b0001;
localparam			TXMD	=	4'b0010;
localparam			REMD	=	4'b0100;
localparam			DELAY	=	4'b1000;

wire				bps_en_tx,bps_clk_tx;
wire				bps_en_rx,bps_clk_rx;
wire				rx_data_valid;
wire	[7:0]		rx_data_out;
reg					tx_data_valid;
reg		[7:0]		tx_data_in;

reg		[7:0]		num;
reg		[40*8-1:0]	char;

reg		[3:0]		cnt_main;
reg		[2:0]		cnt_txmd;
reg		[23:0]		cnt_delay;
reg		[23:0]		num_delay;
reg		[3:0] 		state = IDLE;
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		cnt_main <= 1'b0;
		cnt_txmd <= 1'b0;
		cnt_delay <= 1'b0;
		num_delay <= 24'd8_000_000;
		state <= IDLE;
	end else begin
		case(state)
			IDLE:begin
					cnt_main <= 1'b0;
					cnt_txmd <= 1'b0;
					cnt_delay <= 1'b0;
					num_delay <= 24'd8_000_000;
					state <= MAIN;
				end
			MAIN:begin
					if(cnt_main >= 4'd5) cnt_main <= 4'd5;		//write in chain mode
					else cnt_main <= cnt_main + 1'b1;
					case(cnt_main)
						4'd0: begin num <= 8'd13; char <= {"AT+CWMODE=2",16'h0d0a};state <= TXMD; end
						4'd1: begin num <= 8'd37; char <= {"AT+CWSAP=",8'h22,"STEP_FPGA",8'h22,",",8'h22,"12345678",8'h22,",5,4",16'h0d0a};state <= TXMD; end
						4'd2: begin num <= 8'd08; char <= {"AT+RST",16'h0d0a};state <= TXMD; end
						4'd3: begin num <= 8'd13; char <= {"AT+CIPMUX=1",16'h0d0a};state <= TXMD; end
						4'd4: begin num <= 8'd21; char <= {"AT+CIPSERVER=1,8686",16'h0d0a};state <= TXMD; end
						4'd5: begin state <= REMD; end
						default: state <= IDLE;
					endcase
				end
			TXMD:begin
					case(cnt_txmd)
						3'd0:	if(bps_en_tx) cnt_txmd <= cnt_txmd; 
								else cnt_txmd <= cnt_txmd + 1'b1;
						3'd1:	begin num <= num - 1'b1; cnt_txmd <= cnt_txmd + 1'b1; end
						3'd2:	begin tx_data_valid <= 1'b1; tx_data_in <= char[(num*8)+:8]; cnt_txmd <= cnt_txmd + 1'b1; end
						3'd3:	begin 
									tx_data_valid <= 1'b0; 
									if(num>=1'b1) cnt_txmd <= 3'd0;
									else cnt_txmd <= cnt_txmd + 1'b1;
								end
						3'd4:	begin state <= DELAY; cnt_txmd <= 1'b0; end
						default: state <= IDLE;
					endcase
				end
			REMD:begin 
					state <= REMD; 
				end
			DELAY:begin	// 
					if(cnt_delay >= num_delay) begin
						cnt_delay <= 1'b0;
						state <= MAIN; 
					end else cnt_delay <= cnt_delay + 1'b1;
				end
			default: state <= IDLE;
		endcase
	end
end

/////////////////////////////////uart_tx module////////////////////////////////////
Baud #
(
.BPS_PARA				(BPS_PARA		)
)
Baud_tx
(
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位，低有效
.bps_en					(bps_en_tx		),	//接收时钟使能
.bps_clk				(bps_clk_tx		)	//接收时钟输出
);

Uart_Tx Uart_Tx_uut
(
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位，低有效

.bps_en					(bps_en_tx		),	//发送时钟使能
.bps_clk				(bps_clk_tx		),	//发送时钟输入

.tx_data_valid			(tx_data_valid	),	//发送数据有效脉冲
.tx_data_in				(tx_data_in		),	//要发送的数据
.uart_tx				(wifi_tx		)	//UART发送输出
);

/////////////////////////////////uart_rx module////////////////////////////////////
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

Uart_Rx Uart_Rx_uut
(
.clk					(clk			),	//系统时钟 12MHz
.rst_n					(rst_n			),	//系统复位，低有效

.bps_en					(bps_en_rx		),	//接收时钟使能
.bps_clk				(bps_clk_rx		),	//接收时钟输入

.uart_rx				(wifi_rx		),	//UART接收输入
.rx_data_valid			(rx_data_valid	),	//接收数据有效脉冲
.rx_data_out			(rx_data_out	)	//接收到的数据
);

reg				[3:0]	seg_data_r;
//对接收的ASCII码值解码，只对应0~9的数字
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) seg_data_r <= 4'ha;
	else if((state == REMD)&&(rx_data_valid)) 
		case(rx_data_out)
			"0": seg_data_r <= 4'd0;
			"1": seg_data_r <= 4'd1;
			"2": seg_data_r <= 4'd2;
			"3": seg_data_r <= 4'd3;
			"4": seg_data_r <= 4'd4;
			"5": seg_data_r <= 4'd5;
			"6": seg_data_r <= 4'd6;
			"7": seg_data_r <= 4'd7;
			"8": seg_data_r <= 4'd8;
			"9": seg_data_r <= 4'd9;
			default: seg_data_r <= seg_data_r;
		endcase
	else seg_data_r <= seg_data_r;
end

reg						display_en;
//解析UART通信，控制只显示有效数据部分
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) display_en <= 1'b0;
	else if((state == REMD)&&(rx_data_valid))
		case(rx_data_out)
			":": display_en <= 1'b1;
			"+": display_en <= 1'b0;
			default: display_en <= display_en;
		endcase
	else display_en <= display_en;
end

//显示数据的时序匹配
reg rx_data_valid_r,rx_data_valid_r1;
reg display_en_r,display_en_r1,display_en_r2;
always @(posedge clk)begin
	rx_data_valid_r <= rx_data_valid;
	rx_data_valid_r1 <= rx_data_valid_r;
	display_en_r <= display_en;
	display_en_r1 <= display_en_r;
	display_en_r2 <= display_en_r1;
end

reg				[35:0]	seg_data;
//移位寄存器，UART接收数据的buffer
always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		seg_data <= 36'haaaa_aaaa_a;	// 本实验a对应数码管字库为不显示
	end else if(!display_en_r2) begin	//
		seg_data <= 36'haaaa_aaaa_a;
	end else if(rx_data_valid_r1) begin
		seg_data <= {seg_data[31:0],seg_data_r};
	end else seg_data <= seg_data;
end

//segment_scan display module
Segment_scan Segment_scan_uut
(
.clk					(clk				),		//系统时钟 12MHz
.rst_n					(rst_n				),		//系统复位 低有效
.dat_1					(seg_data[31:28]	),		//SEG1 显示的数据输入
.dat_2					(seg_data[27:24]	),		//SEG2 显示的数据输入
.dat_3					(seg_data[23:20]	),		//SEG3 显示的数据输入
.dat_4					(seg_data[19:16]	),		//SEG4 显示的数据输入
.dat_5					(seg_data[15:12]	),		//SEG5 显示的数据输入
.dat_6					(seg_data[11: 8]	),		//SEG6 显示的数据输入
.dat_7					(seg_data[ 7: 4]	),		//SEG7 显示的数据输入
.dat_8					(seg_data[ 3: 0]	),		//SEG8 显示的数据输入
.dat_en					(8'b1111_1111		),		//数码管数据位显示使能，[MSB~LSB]=[SEG1~SEG8]
.dot_en					(8'b0000_0000		),		//数码管小数点位显示使能，[MSB~LSB]=[SEG1~SEG8]
.seg_rck				(seg_rck			),		//74HC595的RCK管脚
.seg_sck				(seg_sck			),		//74HC595的SCK管脚
.seg_din				(seg_din			)		//74HC595的SER管脚
);

endmodule
