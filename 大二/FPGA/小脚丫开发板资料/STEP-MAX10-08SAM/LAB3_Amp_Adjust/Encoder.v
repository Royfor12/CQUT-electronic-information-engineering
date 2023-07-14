// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Encoder
// 
// Author: Step
// 
// Description: Driver for rotary encoder
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module Encoder
(
input					clk,		// 系统时钟 12MHz
input					rst_n,		// 系统复位 低有效
input					key_a,		// 旋转编码器EC11的A脚
input					key_b,		// 旋转编码器EC11的B脚
output	reg				L_pulse,	// 左旋脉冲输出
output	reg				R_pulse		// 右旋脉冲输出
);
	
localparam				NUM_250US = 3_000;

reg	[12:0]	cnt;
//count for clk_500us
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) cnt <= 0;
	else if(cnt >= NUM_250US-1) cnt <= 1'b0;
	else cnt <= cnt + 1'b1;
end
	
reg	clk_500us;	
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) clk_500us <= 0;
	else if(cnt == NUM_250US-1) clk_500us <= ~clk_500us;
	else clk_500us <= clk_500us;
end
	
reg	key_a_r,key_a_r1,key_a_r2;
//消除亚稳态
always@(posedge clk_500us) begin
	key_a_r		<=	key_a;
	key_a_r1	<=	key_a_r;
	key_a_r2	<=	key_a_r1;
end 

reg	A_state;
//简单去抖动处理
always@(key_a_r1 or key_a_r2) begin
	case({key_a_r1,key_a_r2})
		2'b11:	A_state <= 1'b1;
		2'b00:	A_state <= 1'b0;
		default: A_state <= A_state;
	endcase
end 

reg	key_b_r,key_b_r1,key_b_r2;
//消除亚稳态
always@(posedge clk_500us) begin
	key_b_r		<=	key_b;
	key_b_r1	<=	key_b_r;
	key_b_r2	<=	key_b_r1;
end 

reg	B_state;
//简单去抖动处理
always@(key_b_r1 or key_b_r2) begin
	case({key_b_r1,key_b_r2})
		2'b11:	B_state <= 1'b1;
		2'b00:	B_state <= 1'b0;
		default: B_state <= B_state;
	endcase
end

reg A_state_r,A_state_r1;
//对A_state信号进行边沿检测
always@(posedge clk) begin
	A_state_r <= A_state; 
	A_state_r1 <= A_state_r;
end

wire	A_pos	= (!A_state_r1) && A_state_r;
wire	A_neg	= A_state_r1 && (!A_state_r);

//当A的上升沿伴随B的高电平或当A的下降沿伴随B的低电平 为向左旋转
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) L_pulse <= 1'b0;
	else if((A_pos&&B_state)||(A_neg&&(!B_state))) L_pulse <= 1'b1;
	else L_pulse <= 1'b0;
end 

//当A的上升沿伴随B的低电平或当A的下降沿伴随B的高电平 为向右旋转
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) R_pulse <= 1'b0;
	else if((A_pos&&(!B_state))||(A_neg&&B_state)) R_pulse <= 1'b1;
	else R_pulse <= 1'b0;
end 

endmodule
