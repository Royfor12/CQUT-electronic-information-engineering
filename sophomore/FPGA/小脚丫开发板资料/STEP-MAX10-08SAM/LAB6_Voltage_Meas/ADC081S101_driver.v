// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: ADC081S101_driver
// 
// Author: Step
// 
// Description: ADC081S101_driver
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.1     |2016/10/30   |Initial ver
// --------------------------------------------------------------------
module ADC081S101_driver
(
input				clk,		//系统时钟
input				rst_n,  	//系统复位，低有效

output	reg			adc_cs,		//SPI总线CS
output	reg			adc_clk,	//SPI总线SCK
input				adc_dat,	//SPI总线SDA

output	reg			adc_done,	//ADC采样完成标志
output	reg [7:0]	adc_data	//ADC采样数据
);

localparam	HIGH = 1'b1;
localparam	LOW  = 1'b0;

reg [7:0] cnt; //计数器
always @(posedge clk or negedge rst_n)
	if(!rst_n) cnt <= 1'b0;
	else if(cnt >= 8'd34) cnt <= 1'b0;
	else cnt <= cnt + 1'b1;
	
reg [7:0] data;
always @(posedge clk or negedge rst_n)
	if(!rst_n) begin
		adc_cs <= HIGH; adc_clk <= HIGH;
	end else case(cnt)
		8'd0 :  begin adc_cs <= HIGH; adc_clk <= HIGH; end
		8'd1 :  begin adc_cs <= LOW;  adc_clk <= HIGH; end
		8'd2,8'd4,8'd6,8'd8,8'd10,8'd12,8'd14,8'd16,
		8'd18,8'd20,8'd22,8'd24,8'd26,8'd28,8'd30,8'd32:	
				begin adc_cs <= LOW;  adc_clk <= LOW;  end
		8'd3 :  begin adc_cs <= LOW;  adc_clk <= HIGH; end //0
		8'd5 :  begin adc_cs <= LOW;  adc_clk <= HIGH; end //1
		8'd7 :  begin adc_cs <= LOW;  adc_clk <= HIGH; end //2
		8'd9 :  begin adc_cs <= LOW;  adc_clk <= HIGH; data[7] <= adc_dat; end //3
		8'd11 : begin adc_cs <= LOW;  adc_clk <= HIGH; data[6] <= adc_dat; end //4
		8'd13 : begin adc_cs <= LOW;  adc_clk <= HIGH; data[5] <= adc_dat; end //5
		8'd15 : begin adc_cs <= LOW;  adc_clk <= HIGH; data[4] <= adc_dat; end //6
		8'd17 : begin adc_cs <= LOW;  adc_clk <= HIGH; data[3] <= adc_dat; end //7
		8'd19 : begin adc_cs <= LOW;  adc_clk <= HIGH; data[2] <= adc_dat; end //8
		8'd21 : begin adc_cs <= LOW;  adc_clk <= HIGH; data[1] <= adc_dat; end //9
		8'd23 : begin adc_cs <= LOW;  adc_clk <= HIGH; data[0] <= adc_dat; end //10
		8'd25 : begin adc_cs <= LOW;  adc_clk <= HIGH; adc_data <= data; end //11
		8'd27 : begin adc_cs <= LOW;  adc_clk <= HIGH; adc_done <= HIGH; end //12
		8'd29 : begin adc_cs <= LOW;  adc_clk <= HIGH; adc_done <= LOW; end //13
		8'd31 : begin adc_cs <= LOW;  adc_clk <= HIGH; end //14
		8'd33 : begin adc_cs <= LOW;  adc_clk <= HIGH; end //15
		8'd34 : begin adc_cs <= HIGH;  adc_clk <= HIGH; end
		default : begin adc_cs <= HIGH;  adc_clk <= HIGH;  end
	endcase

endmodule
