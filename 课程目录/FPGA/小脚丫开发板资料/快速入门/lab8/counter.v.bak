// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : counter.v
// Module name  : counter
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
// Module Function:24秒倒计时计数器
 
module counter
(
	clk				,    //时钟
	rst				,    //复位
	hold			,    //启动暂停按键
	seg_led_1		,    //数码管1
	seg_led_2		,    //数码管2
	led                  //led
);
 
	input 	clk,rst;
	input	hold;
 
	output 	[8:0]	seg_led_1,seg_led_2;
	output 	reg	[7:0]	led;
 
	wire		clk1h;        //1Hz时钟
	wire		hold_pulse;   //按键消抖后信号
	reg			hold_flag;    //按键标志位
	reg			back_to_zero_flag	; //计时完成信号
	reg   		[6:0]   seg		[9:0];  
	reg			[3:0]	cnt_ge;      //个位
	reg			[3:0]	cnt_shi;     //十位
 
	initial 
	begin
		seg[0] = 7'h3f;	   //  0
		seg[1] = 7'h06;	   //  1
		seg[2] = 7'h5b;	   //  2
		seg[3] = 7'h4f;	   //  3
		seg[4] = 7'h66;	   //  4
		seg[5] = 7'h6d;	   //  5
		seg[6] = 7'h7d;	   //  6
		seg[7] = 7'h07;	   //  7
		seg[8] = 7'h7f;	   //  8
		seg[9] = 7'h6f;	   //  9
/*若需要显示A-F,解除此段注释即可
		seg[10]= 7'hf7;	   //  A
		seg[11]= 7'h7c;	   //  b
		seg[12]= 7'h39;    //  C
		seg[13]= 7'h5e;    //  d
		seg[14]= 7'h79;    //  E
		seg[15]= 7'h71;    //  F*/
	end
	

			
	// 启动/暂停按键进行消抖
	debounce  U2 (
				.clk(clk),
				.rst(rst),
				.key(hold),
				.key_pulse(hold_pulse)
				);
	// 用于分出一个1Hz的频率	
	divide #(.WIDTH(32),.N(12000000)) U1 ( 
			.clk(clk),
			.rst_n(rst),      
			.clkout(clk1h)
			);
    //按键动作标志信号产生
	always @ (posedge hold_pulse)
		if(!rst==1)
			hold_flag <= 0;
		else
			hold_flag <= ~hold_flag;
	//计时完成标志信号产生
	always @ (*)
		if(!rst == 1)
			back_to_zero_flag <= 0;
		else if(cnt_shi==0 && cnt_ge==0)
			back_to_zero_flag <= 1;
		else
			back_to_zero_flag <= 0;
    //24秒倒计时控制
	always @ (posedge clk1h or negedge rst) begin
		if (!rst == 1) begin
			cnt_ge <= 4'd4;
			cnt_shi <= 4'd2; 
			end
		else if(hold_flag == 1)begin
			cnt_ge <= cnt_ge;
			cnt_shi <= cnt_shi;
			end			
		else if(cnt_shi==0 && cnt_ge==0) begin
			cnt_shi <= cnt_shi;
			cnt_ge <= cnt_ge;
			end
		else if(cnt_ge==0)begin
			cnt_ge <= 4'd9;
			cnt_shi <= cnt_shi-1;end
		else
			cnt_ge <= cnt_ge -1;
		end
	//计时完成点亮led
	always @ ( back_to_zero_flag)begin
		if (back_to_zero_flag==1)
			led = 8'b0;
		else
			led = 8'b11111111;
		end

	assign seg_led_1[8:0] = {2'b00,seg[cnt_ge]};
 
	assign seg_led_2[8:0] = {2'b00,seg[cnt_shi]};

 
endmodule