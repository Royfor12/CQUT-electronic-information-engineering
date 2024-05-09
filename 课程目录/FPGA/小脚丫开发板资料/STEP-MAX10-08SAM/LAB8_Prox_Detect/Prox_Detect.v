// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Prox_Detect
// 
// Author: Step
// 
// Description: Prox_Detect
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.1     |2016/10/30   |Initial ver
// --------------------------------------------------------------------
module Prox_Detect
(
input				clk,
input				rst_n,

output				i2c_scl,	//I2C时钟总线
inout				i2c_sda,	//I2C数据总线

output		[7:0]	led			//led灯
);

wire dat_valid;
wire [15:0] ch0_dat, ch1_dat, prox_dat;
APDS_9901_Driver u1
(
.clk			(clk			),	//系统时钟
.rst_n			(rst_n			),	//系统复位，低有效
.i2c_scl		(i2c_scl		),	//I2C总线SCL
.i2c_sda		(i2c_sda		),	//I2C总线SDA

.dat_valid		(dat_valid		),	//数据有效脉冲
.ch0_dat		(ch0_dat		),	//ALS数据
.ch1_dat		(ch1_dat		),	//IR数据
.prox_dat		(prox_dat		)	//Prox数据
);

Decoder u2
(
.dat_valid		(dat_valid		),
.prox_dat		(prox_dat		),
.Y_out			(led			)
);

endmodule
