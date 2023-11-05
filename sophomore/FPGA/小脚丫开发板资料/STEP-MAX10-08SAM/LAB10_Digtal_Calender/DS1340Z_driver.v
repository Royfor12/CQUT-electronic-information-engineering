// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: DS1340Z_driver
// 
// Author: Step
// 
// Description: DS1340Z_driver
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.1     |2016/10/30   |Initial ver
// --------------------------------------------------------------------
module DS1340Z_driver
(
input				clk,		//系统时钟
input				rst_n,	//系统复位，低有效

input				key_set,	//按动脉冲输入

output				i2c_scl,	//I2C总线SCL
inout				i2c_sda,	//I2C总线SDA

input		[7:0]	adj_sec,	//秒钟调整输入
input		[7:0]	adj_min,    //分钟调整输入
input		[7:0]	adj_hour,   //时钟调整输入
input		[7:0]	adj_week,   //星期调整输入
input		[7:0]	adj_day,    //日期调整输入
input		[7:0]	adj_mon,    //月份调整输入
input		[7:0]	adj_year,   //年份调整输入

output	reg	[7:0]	rtc_sec,	//实时秒钟输出
output	reg	[7:0]	rtc_min,    //实时分钟输出
output	reg	[7:0]	rtc_hour,   //实时时钟输出
output	reg	[7:0]	rtc_week,   //实时星期输出
output	reg	[7:0]	rtc_day,    //实时日期输出
output	reg	[7:0]	rtc_mon,    //实时月份输出
output	reg	[7:0]	rtc_year    //实时年份输出
);

parameter	CNT_NUM	=	15;

localparam	IDLE	=	3'd0;
localparam	MAIN	=	3'd1;
localparam	START	=	3'd2;
localparam	WRITE	=	3'd3;
localparam	READ	=	3'd4;
localparam	STOP	=	3'd5;

localparam	ACK		=	1'b0;
localparam	NACK	=	1'b1;

//使用计数器分频产生400KHz时钟信号clk_400khz
reg					clk_400khz;
reg		[9:0]		cnt_400khz;
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		cnt_400khz <= 10'd0;
		clk_400khz <= 1'b0;
	end else if(cnt_400khz >= CNT_NUM-1) begin
		cnt_400khz <= 10'd0;
		clk_400khz <= ~clk_400khz;
	end else begin
		cnt_400khz <= cnt_400khz + 1'b1;
	end
end

reg					set_flag;
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) set_flag <= 1'b0;
	else if(cnt_main==5'd11) set_flag <= 1'b0;	//当完成写入时间操作后复位set_flag
	else if(key_set) set_flag <= 1'b1;			//按键脉冲控制set_flag置位
	else set_flag <= set_flag;
end

reg		[7:0]		rtc_data_r;
reg					scl_out_r;
reg					sda_out_r;
reg					ack;
reg		[2:0]		cnt;
reg		[5:0]		cnt_main;
reg		[7:0]		data_wr;
reg		[2:0]		cnt_start;
reg		[2:0]		cnt_write;
reg		[4:0]		cnt_read;
reg		[2:0]		cnt_stop;
reg		[2:0] 		state;

always@(posedge clk_400khz or negedge rst_n) begin
	if(!rst_n) begin	//如果按键复位，将相关数据初始化
		scl_out_r <= 1'd1;
		sda_out_r <= 1'd1;
		ack <= ACK;
		cnt <= 1'b0;
		cnt_main <= 6'd12;
		cnt_start <= 3'd0;
		cnt_write <= 3'd0;
		cnt_read <= 5'd0;
		cnt_stop <= 1'd0;
		state <= IDLE;
	end else begin
		case(state)
			IDLE:begin	//软件自复位，主要用于程序跑飞后的处理
					scl_out_r <= 1'd1;
					sda_out_r <= 1'd1;
					ack <= ACK;
					cnt <= 1'b0;
					cnt_main <= 6'd12;
					cnt_start <= 3'd0;
					cnt_write <= 3'd0;
					cnt_read <= 5'd0;
					cnt_stop <= 1'd0;
					state <= MAIN;
				end
			MAIN:begin
					if(cnt_main >= 6'd32) //对MAIN中的子状态执行控制cnt_main
						if(set_flag)cnt_main <= 6'd0;	//当set_flag被置位时才会执行时间写入操作
						else cnt_main <= 6'd12;  		//否则只执行时间读取操作
					else cnt_main <= cnt_main + 1'b1;	
					case(cnt_main)
						6'd0:	begin state <= START; end	//I2C通信时序中的START
						6'd1:	begin data_wr <= 8'hd0; state <= WRITE; end		//写地址为8'hd0
						6'd2:	begin data_wr <= 8'h00; state <= WRITE; end		//8'h00，寄存器初始地址
						6'd3:	begin data_wr <= adj_sec; state <= WRITE; end	//写秒
						6'd4:	begin data_wr <= adj_min; state <= WRITE; end	//写分
						6'd5:	begin data_wr <= adj_hour; state <= WRITE; end	//写时
						6'd6:	begin data_wr <= adj_week; state <= WRITE; end	//写周
						6'd7:	begin data_wr <= adj_day; state <= WRITE; end	//写日
						6'd8:	begin data_wr <= adj_mon; state <= WRITE; end	//写月
						6'd9:	begin data_wr <= adj_year; state <= WRITE; end	//写年
						6'd10:	begin data_wr <= 8'h40; state <= WRITE; end		//8'h40，控制
						6'd11:	begin state <= STOP; end	//I2C通信时序中的STOP
						
						6'd12:	begin state <= START; end	//I2C通信时序中的START
						6'd13:	begin data_wr <= 8'hd0; state <= WRITE; end	//写地址为8'hd0
						6'd14:	begin data_wr <= 8'h00; state <= WRITE; end	//8'h00，寄存器初始地址
						6'd15:	begin state <= START; end	//I2C通信时序中的START
						6'd16:	begin data_wr <= 8'hd1; state <= WRITE; end	//读地址为8'hd1
						6'd17:	begin ack <= ACK; state <= READ; end	//读秒
						6'd18:	begin rtc_sec <= rtc_data_r; end
						6'd19:	begin ack <= ACK; state <= READ; end	//读分
						6'd20:	begin rtc_min <= rtc_data_r; end
						6'd21:	begin ack <= ACK; state <= READ; end	//读时
						6'd22:	begin rtc_hour <= rtc_data_r; end
						6'd23:	begin ack <= ACK; state <= READ; end	//读周
						6'd24:	begin rtc_week <= rtc_data_r; end
						6'd25:	begin ack <= ACK; state <= READ; end	//读日
						6'd26:	begin rtc_day <= rtc_data_r; end
						6'd27:	begin ack <= ACK; state <= READ; end	//读月
						6'd28:	begin rtc_mon <= rtc_data_r; end
						6'd29:	begin ack <= ACK; state <= READ; end	//读年
						6'd30:	begin rtc_year <= rtc_data_r; end
						6'd31:	begin ack <= NACK; state <= READ; end	//控制
						6'd32:	begin state <= STOP; end	//I2C通信时序中的STOP，读取完成标志
						default: state <= IDLE;	//如果程序失控，进入IDLE自复位状态
					endcase
				end
			START:begin	//I2C通信时序中的起始START
					if(cnt_start >= 3'd5) cnt_start <= 1'b0;	//对START中的子状态执行控制cnt_start
					else cnt_start <= cnt_start + 1'b1;
					case(cnt_start)
						3'd0:	begin sda_out_r <= 1'b1; scl_out_r <= 1'b1; end	//将SCL和SDA拉高，保持4.7us以上
						3'd1:	begin sda_out_r <= 1'b1; scl_out_r <= 1'b1; end	//clk_400khz每个周期2.5us，需要两个周期
						3'd2:	begin sda_out_r <= 1'b0; end	//SDA拉低到SCL拉低，保持4.0us以上
						3'd3:	begin sda_out_r <= 1'b0; end	//clk_400khz每个周期2.5us，需要两个周期
						3'd4:	begin scl_out_r <= 1'b0; end	//SCL拉低，保持4.7us以上
						3'd5:	begin scl_out_r <= 1'b0; state <= MAIN; end	//clk_400khz每个周期2.5us，需要两个周期，返回MAIN
						default: state <= IDLE;	//如果程序失控，进入IDLE自复位状态
					endcase
				end
			WRITE:begin	//I2C通信时序中的写操作WRITE和相应判断操作ACK
					if(cnt <= 3'd6) begin	//共需要发送8bit的数据，这里控制循环的次数
						if(cnt_write >= 3'd3) begin cnt_write <= 1'b0; cnt <= cnt + 1'b1; end
						else begin cnt_write <= cnt_write + 1'b1; cnt <= cnt; end
					end else begin
						if(cnt_write >= 3'd7) begin cnt_write <= 1'b0; cnt <= 1'b0; end	//两个变量都恢复初值
						else begin cnt_write <= cnt_write + 1'b1; cnt <= cnt; end
					end
					case(cnt_write)
						//按照I2C的时序传输数据
						3'd0:	begin scl_out_r <= 1'b0; sda_out_r <= data_wr[7-cnt]; end	//SCL拉低，并控制SDA输出对应的位
						3'd1:	begin scl_out_r <= 1'b1; end	//SCL拉高，保持4.0us以上
						3'd2:	begin scl_out_r <= 1'b1; end	//clk_400khz每个周期2.5us，需要两个周期
						3'd3:	begin scl_out_r <= 1'b0; end	//SCL拉低，准备发送下1bit的数据
						//获取从设备的响应信号并判断
						3'd4:	begin sda_out_r <= 1'bz; end	//释放SDA线，准备接收从设备的响应信号
						3'd5:	begin scl_out_r <= 1'b1; end	//SCL拉高，保持4.0us以上
						3'd6:	begin if(i2c_sda) state <= IDLE; else state <= state; end	//获取从设备的响应信号并判断
						3'd7:	begin scl_out_r <= 1'b0; state <= MAIN; end	//SCL拉低，返回MAIN状态
						default: state <= IDLE;	//如果程序失控，进入IDLE自复位状态
					endcase
				end
			READ:begin	//I2C通信时序中的读操作READ和返回ACK的操作
					if(cnt <= 3'd6) begin	//共需要接收8bit的数据，这里控制循环的次数
						if(cnt_read >= 3'd3) begin cnt_read <= 1'b0; cnt <= cnt + 1'b1; end
						else begin cnt_read <= cnt_read + 1'b1; cnt <= cnt; end
					end else begin
						if(cnt_read >= 3'd7) begin cnt_read <= 1'b0; cnt <= 1'b0; end	//两个变量都恢复初值
						else begin cnt_read <= cnt_read + 1'b1; cnt <= cnt; end
					end
					case(cnt_read)
						//按照I2C的时序接收数据
						3'd0:	begin scl_out_r <= 1'b0; sda_out_r <= 1'bz; end	//SCL拉低，释放SDA线，准备接收从设备数据
						3'd1:	begin scl_out_r <= 1'b1; end	//SCL拉高，保持4.0us以上
						3'd2:	begin rtc_data_r[7-cnt] <= i2c_sda; end	//读取从设备返回的数据
						3'd3:	begin scl_out_r <= 1'b0; end	//SCL拉低，准备接收下1bit的数据
						//向从设备发送响应信号
						3'd4:	begin sda_out_r <= ack; end	//发送响应信号，将前面接收的数据锁存
						3'd5:	begin scl_out_r <= 1'b1; end	//SCL拉高，保持4.0us以上
						3'd6:	begin scl_out_r <= 1'b1; end	//SCL拉高，保持4.0us以上
						3'd7:	begin scl_out_r <= 1'b0; state <= MAIN; end	//SCL拉低，返回MAIN状态
						default: state <= IDLE;	//如果程序失控，进入IDLE自复位状态
					endcase
				end
			STOP:begin	//I2C通信时序中的结束STOP
					if(cnt_stop >= 3'd5) cnt_stop <= 1'b0;	//对STOP中的子状态执行控制cnt_stop
					else cnt_stop <= cnt_stop + 1'b1;
					case(cnt_stop)
						3'd0:	begin sda_out_r <= 1'b0; end	//SDA拉低，准备STOP
						3'd1:	begin sda_out_r <= 1'b0; end	//SDA拉低，准备STOP
						3'd2:	begin scl_out_r <= 1'b1; end	//SCL提前SDA拉高4.0us
						3'd3:	begin scl_out_r <= 1'b1; end	//SCL提前SDA拉高4.0us
						3'd4:	begin sda_out_r <= 1'b1; end	//SDA拉高
						3'd5:	begin sda_out_r <= 1'b1; state <= MAIN; end	//完成STOP操作，返回MAIN状态
						default: state <= IDLE;	//如果程序失控，进入IDLE自复位状态
					endcase
				end
			default:;
		endcase
	end
end

assign	i2c_scl = scl_out_r;	//对SCL端口赋值
assign	i2c_sda = sda_out_r;	//对SDA端口赋值

endmodule
