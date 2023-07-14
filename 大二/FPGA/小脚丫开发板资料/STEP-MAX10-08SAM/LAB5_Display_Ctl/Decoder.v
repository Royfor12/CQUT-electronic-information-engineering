module Decoder
(
input					rst_n,			//系统复位，低有效
input					rx_data_valid,	//接收数据有效脉冲
input			[7:0]	rx_data_out,	//接收到的数据
output	reg		[7:0]	data_en,		//接收到的数据
output	reg		[31:0]	seg_data
);

`ifdef HEX_FORMAT //如果用define定义过HEX_FORMAT
	//采用16进制格式，接收到的数据等于数值本身
	wire [7:0] seg_data_r = rx_data_out;

	//移位寄存器，对应8位数码管数据BCD码
	always @ (posedge rx_data_valid or negedge rst_n) begin
		if(!rst_n) seg_data <= 1'b0;
		else seg_data <= {seg_data[23:0],seg_data_r};
	end

	//移位寄存器，对应8位数码管数据显示使能
	always @ (posedge rx_data_valid or negedge rst_n) begin
		if(!rst_n) data_en <= 1'b0;
		else data_en <= {data_en[5:0],2'b11};
	end
`else
	//采用字符格式，接收到的数据为字符ASCII码值，与数字值相差48
	wire [7:0] seg_data_r = rx_data_out - 8'd48;

	//移位寄存器，对应8位数码管数据BCD码
	always @ (posedge rx_data_valid or negedge rst_n) begin
		if(!rst_n) seg_data <= 1'b0;
		else seg_data <= {seg_data[27:0],seg_data_r[3:0]};
	end

	//移位寄存器，对应8位数码管数据显示使能
	always @ (posedge rx_data_valid or negedge rst_n) begin
		if(!rst_n) data_en <= 1'b0;
		else data_en <= {data_en[6:0],1'b1};
	end
`endif

endmodule
