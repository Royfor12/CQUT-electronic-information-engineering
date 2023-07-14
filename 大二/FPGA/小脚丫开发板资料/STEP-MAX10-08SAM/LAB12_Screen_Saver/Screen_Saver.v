// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Screen_Saver
// 
// Author: Step
// 
// Description: Screen_Saver
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.1     |2016/10/30   |Initial ver
// --------------------------------------------------------------------
`include	"Param_define.v"
`define		VGA_800X600_60Hz

module Screen_Saver
(
input 				clk,		// system clock
input 				rst_n,		// system reset, active low
output 				sync_v,		// sync_v
output 				sync_h,		// sync_h
output  	[2:0]	vga			// vga,MSB~LSB = {R,G,B}
);

wire				locked,clk_40mhz;

pll u1
(
.areset				(~rst_n		),
.inclk0				(clk		),
.c0					(clk_40mhz	),
.locked				(locked		)
);

wire [6:0] rom_addr;
wire [127:0] rom_data;

Vga_Module u2
(
.clk				(clk_40mhz	),	// system clock
.rst_n				(rst_n		),	// system reset, active low

.rom_addr			(rom_addr	),	// sync_v
.rom_data			(rom_data	),	// sync_v

.sync_v				(sync_v		),	// sync_v
.sync_h				(sync_h		),	// sync_h
.vga				(vga		)	// vga,MSB~LSB = {R,G,B}
);

// rom module
step_rom u3
( 
.Address			(rom_addr	), 
.Q					(rom_data	)
);

endmodule
