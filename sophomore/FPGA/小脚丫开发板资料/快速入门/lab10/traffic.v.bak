// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : traffic.v
// Module name  : traffic
// Author       : STEP
// Description  : 
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/03/02   |Initial ver
// --------------------------------------------------------------------
// Module Function:简易交通灯


module traffic
(
	clk			,    //时钟
	rst_n		,    //复位
	out			     //三色led代表交通灯
);

	input 	clk,rst_n;     
	output	reg[5:0]	out;
 
	parameter      	S1 = 4'b00,    //状态机状态编码
					S2 = 4'b01,
					S3 = 4'b10,
					S4 = 4'b11;
	
	parameter		time_s1 = 4'd15, //计时参数
					time_s2 = 4'd3,
					time_s3 = 4'd10,
					time_s4 = 4'd3;
	//交通灯的控制
	parameter		led_s1 = 6'b101011, // LED2 绿色 LED1 红色
					led_s2 = 6'b110011, // LED2 蓝色 LED1 红色
					led_s3 = 6'b011101, // LED2 红色 LED1 绿色
					led_s4 = 6'b011110; // LED2 红色 LED1 蓝色
 
	reg 	[3:0] 	timecont;
	reg 	[1:0] 	cur_state,next_state;  //现态、次态
 
	wire			clk1h;  //1Hz时钟
	
	//产生1秒的时钟周期
	divide #(.WIDTH(32),.N(12000000)) CLK1H (
								.clk(clk),
								.rst_n(rst_n),
								.clkout(clk1h));

	//第一段 同步逻辑 描述次态到现态的转移
	always @ (posedge clk1h or negedge rst_n)
	begin
		if(!rst_n) 
			cur_state <= S1;
        else 
			cur_state <= next_state;
	end
	//第二段 组合逻辑描述状态转移的判断
	always @ (cur_state or rst_n or timecont)
	begin
		if(!rst_n) begin
			next_state = S1;
			end
		else begin
			case(cur_state)
				S1:begin
					if(timecont==1) 
						next_state = S2;
					else 
						next_state = S1;
				end
 
                S2:begin
					if(timecont==1) 
						next_state = S3;
					else 
						next_state = S2;
				end
 
                S3:begin
					if(timecont==1) 
						next_state = S4;
					else 
						next_state = S3;
				end
 
                S4:begin
					if(timecont==1) 
						next_state = S1;
					else 
						next_state = S4;
				end
 
				default: next_state = S1;
			endcase
		end
	end
	//第三段  同步逻辑 描述次态的输出动作
	always @ (posedge clk1h or negedge rst_n)
	begin
		if(!rst_n==1) begin
			out <= led_s1;
			timecont <= time_s1;
			end 
		else begin
			case(next_state)
				S1:begin
					out <= led_s1;
					if(timecont == 1) 
						timecont <= time_s1;
					else 
						timecont <= timecont - 1;
				end
 
				S2:begin
					out <= led_s2;
					if(timecont == 1) 
						timecont <= time_s2;
					else 
						timecont <= timecont - 1;
				end
 
				S3:begin
					out <= led_s3;
					if(timecont == 1) 
						timecont <= time_s3;
					else 
						timecont <= timecont - 1;
				end
 
				S4:begin
					out <= led_s4;
					if(timecont == 1) 
						timecont <= time_s4;
					else 
						timecont <= timecont - 1;
				end
 
				default:begin
					out <= led_s1;
					end
			endcase
		end
	end
endmodule