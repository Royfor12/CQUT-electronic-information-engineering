// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Param_define
// 
// Author: Step
// 
// Description: Param_define
// 
// Web: www.stepfpga.com
//
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.1     |2016/10/30   |Initial ver
// --------------------------------------------------------------------
`timescale 1ns / 1ps

`ifdef VGA_800X600_60Hz
//---------------------------------------------------------------------------
//-- Horizonal timing information
`define HSYNC_A   16'd128	// 128
`define HSYNC_B   16'd216	// 128 + 88
`define HSYNC_C   16'd1016	// 128 + 88 + 800
`define HSYNC_D   16'd1056	// 128 + 88 + 800 + 40
//-- Vertical  timing information
`define VSYNC_O   16'd4		// 4 
`define VSYNC_P   16'd27	// 4 + 23
`define VSYNC_Q   16'd627	// 4 + 23 + 600
`define VSYNC_R   16'd628	// 4 + 23 + 600 + 1
//---------------------------------------------------------------------------
`endif


`ifdef VGA_640X480_85Hz
//---------------------------------------------------------------------------
//-- Horizonal timing information
`define HSYNC_A   16'd48	// 48
`define HSYNC_B   16'd160	// 48 + 112
`define HSYNC_C   16'd800	// 48 + 112 + 640
`define HSYNC_D   16'd832	// 48 + 112 + 640 + 32
//-- Vertical  timing information
`define VSYNC_O   16'd3		// 3 
`define VSYNC_P   16'd28	// 3 + 25
`define VSYNC_Q   16'd508	// 3 + 25 + 480
`define VSYNC_R   16'd509	// 3 + 25 + 480 + 1
//---------------------------------------------------------------------------
`endif

`define P_WIDTH 8'd128
`define P_DEPTH 8'd128
