// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Fri Jan 25 16:52:18 2019
//
// Verilog Description of module Signal_Generator
//

module Signal_Generator (clk, rst_n, key_a, key_b, key_o, dac_sync, 
            dac_clk, dac_dat) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(18[8:24])
    input clk;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(20[10:13])
    input rst_n;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(21[10:15])
    input key_a;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(23[10:15])
    input key_b;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(24[10:15])
    input key_o;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(25[10:15])
    output dac_sync;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(27[11:19])
    output dac_clk;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(28[11:18])
    output dac_dat;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(29[11:18])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(20[10:13])
    wire dac_done /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(68[6:14])
    
    wire GND_net, rst_n_c, key_a_c, key_b_c, key_o_c_0, dac_sync_c, 
        dac_clk_c, dac_dat_c, L_pulse, R_pulse, key_pulse;
    wire [23:0]f_inc;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(56[13:18])
    
    wire VCC_net, n63, n62, n2376, n61, clk_c_enable_1, n2375, 
        n270, n613, n614, n615, n616, n617, n618;
    wire [23:0]phase;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(38[13:18])
    wire [7:0]sin_dat;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(40[12:19])
    wire [7:0]squ_dat;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(43[12:19])
    wire [7:0]cnt_adj_295;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(34[11:14])
    
    wire n2379, n2370, n2378, n2280, n2191;
    
    VHI i5 (.Z(VCC_net));
    IB clk_pad (.I(clk), .O(clk_c));   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(20[10:13])
    OB dac_dat_pad (.I(dac_dat_c), .O(dac_dat));   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(29[11:18])
    TSALL TSALL_INST (.TSALL(GND_net));
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(21[10:15])
    OB dac_clk_pad (.I(dac_clk_c), .O(dac_clk));   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(28[11:18])
    OB dac_sync_pad (.I(dac_sync_c), .O(dac_sync));   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(27[11:19])
    logic_ctrl u3 (.R_pulse(R_pulse), .\f_inc[20] (f_inc[20]), .\f_inc[22] (f_inc[22]), 
            .\f_inc[17] (f_inc[17]), .L_pulse(L_pulse), .\f_inc[23] (f_inc[23]), 
            .\f_inc[21] (f_inc[21]), .GND_net(GND_net), .clk_c(clk_c), 
            .key_pulse_adj_2({key_pulse}), .n61(n61), .n62(n62), .\squ_dat[7] (squ_dat[7]), 
            .\phase[22] (phase[22]), .n613(n613), .\phase[19] (phase[19]), 
            .n616(n616), .\phase[18] (phase[18]), .n617(n617), .\phase[17] (phase[17]), 
            .n618(n618), .\f_inc[18] (f_inc[18]), .\f_inc[19] (f_inc[19]), 
            .\phase[20] (phase[20]), .n615(n615), .\phase[21] (phase[21]), 
            .n614(n614), .n63(n63), .n2191(n2191), .n2370(n2370), .n2280(n2280), 
            .\f_inc[16] (f_inc[16]), .\cnt[1] (cnt_adj_295[1]), .\cnt[0] (cnt_adj_295[0]), 
            .n2376(n2376), .\phase[16] (phase[16]), .n270(n270), .\cnt[5] (cnt_adj_295[5]), 
            .n2375(n2375), .rst_n_c(rst_n_c), .n2379(n2379), .clk_c_enable_1(clk_c_enable_1)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(57[12] 66[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    DAC081S101_driver u5 (.GND_net(GND_net), .\cnt[0] (cnt_adj_295[0]), 
            .clk_c(clk_c), .\cnt[1] (cnt_adj_295[1]), .\cnt[5] (cnt_adj_295[5]), 
            .dac_sync_c(dac_sync_c), .n2379(n2379), .n618(n618), .n2280(n2280), 
            .n617(n617), .\phase[21] (phase[21]), .sin_dat({sin_dat}), 
            .n2370(n2370), .\squ_dat[7] (squ_dat[7]), .n2376(n2376), .rst_n_c(rst_n_c), 
            .n2191(n2191), .\phase[22] (phase[22]), .n61(n61), .n63(n63), 
            .n616(n616), .n615(n615), .\phase[20] (phase[20]), .n2378(n2378), 
            .n614(n614), .\phase[19] (phase[19]), .n613(n613), .dac_done(dac_done), 
            .clk_c_enable_1(clk_c_enable_1), .\phase[18] (phase[18]), .n270(n270), 
            .dac_dat_c(dac_dat_c), .\phase[17] (phase[17]), .dac_clk_c(dac_clk_c), 
            .\phase[16] (phase[16]), .n62(n62), .n2375(n2375)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(81[19] 90[2])
    IB key_o_pad (.I(key_o), .O(key_o_c_0));   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(25[10:15])
    IB key_b_pad (.I(key_b), .O(key_b_c));   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(24[10:15])
    IB key_a_pad (.I(key_a), .O(key_a_c));   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(23[10:15])
    GSR GSR_INST (.GSR(rst_n_c));
    Encoder u1 (.key_a_c(key_a_c), .key_b_c(key_b_c), .clk_c(clk_c), .L_pulse(L_pulse), 
            .R_pulse(R_pulse), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(33[9] 41[2])
    Debounce u2 (.clk_c(clk_c), .key_o_c_0(key_o_c_0), .GND_net(GND_net), 
            .key_pulse_adj_1({key_pulse})) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(45[10] 53[2])
    DDS u4 (.\f_inc[16] (f_inc[16]), .\phase[16] (phase[16]), .GND_net(GND_net), 
        .\f_inc[17] (f_inc[17]), .\phase[17] (phase[17]), .\f_inc[22] (f_inc[22]), 
        .\phase[22] (phase[22]), .\f_inc[23] (f_inc[23]), .\squ_dat[7] (squ_dat[7]), 
        .dac_done(dac_done), .\phase[21] (phase[21]), .\phase[20] (phase[20]), 
        .\phase[19] (phase[19]), .\phase[18] (phase[18]), .\f_inc[20] (f_inc[20]), 
        .\f_inc[21] (f_inc[21]), .\f_inc[18] (f_inc[18]), .\f_inc[19] (f_inc[19]), 
        .VCC_net(VCC_net), .n2378(n2378), .sin_dat({sin_dat})) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(70[5] 79[2])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module logic_ctrl
//

module logic_ctrl (R_pulse, \f_inc[20] , \f_inc[22] , \f_inc[17] , L_pulse, 
            \f_inc[23] , \f_inc[21] , GND_net, clk_c, key_pulse_adj_2, 
            n61, n62, \squ_dat[7] , \phase[22] , n613, \phase[19] , 
            n616, \phase[18] , n617, \phase[17] , n618, \f_inc[18] , 
            \f_inc[19] , \phase[20] , n615, \phase[21] , n614, n63, 
            n2191, n2370, n2280, \f_inc[16] , \cnt[1] , \cnt[0] , 
            n2376, \phase[16] , n270, \cnt[5] , n2375, rst_n_c, 
            n2379, clk_c_enable_1) /* synthesis syn_module_defined=1 */ ;
    input R_pulse;
    output \f_inc[20] ;
    output \f_inc[22] ;
    output \f_inc[17] ;
    input L_pulse;
    output \f_inc[23] ;
    output \f_inc[21] ;
    input GND_net;
    input clk_c;
    input [0:0]key_pulse_adj_2;
    output n61;
    output n62;
    input \squ_dat[7] ;
    input \phase[22] ;
    output n613;
    input \phase[19] ;
    output n616;
    input \phase[18] ;
    output n617;
    input \phase[17] ;
    output n618;
    output \f_inc[18] ;
    output \f_inc[19] ;
    input \phase[20] ;
    output n615;
    input \phase[21] ;
    output n614;
    output n63;
    input n2191;
    output n2370;
    output n2280;
    output \f_inc[16] ;
    input \cnt[1] ;
    input \cnt[0] ;
    output n2376;
    input \phase[16] ;
    output n270;
    input \cnt[5] ;
    input n2375;
    input rst_n_c;
    input n2379;
    output clk_c_enable_1;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(20[10:13])
    
    wire n2373, n2374, n2200, n2025, n2371;
    wire [23:0]f_inc_23__N_102;
    
    wire n2024, n6, n5, n2022;
    wire [3:0]n60;
    
    wire n2190, n2023;
    
    LUT4 i1_4_lut (.A(n2373), .B(n2374), .C(R_pulse), .D(\f_inc[20] ), 
         .Z(n2200)) /* synthesis lut_function=(A+(B ((D)+!C)+!B !(C))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(56[11:26])
    defparam i1_4_lut.init = 16'hefaf;
    CCU2D add_472_9 (.A0(\f_inc[22] ), .B0(n2371), .C0(\f_inc[17] ), .D0(L_pulse), 
          .A1(\f_inc[23] ), .B1(n2371), .C1(\f_inc[17] ), .D1(L_pulse), 
          .CIN(n2025), .S0(f_inc_23__N_102[22]), .S1(f_inc_23__N_102[23]));   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(53[11] 56[26])
    defparam add_472_9.INIT0 = 16'h56aa;
    defparam add_472_9.INIT1 = 16'h56aa;
    defparam add_472_9.INJECT1_0 = "NO";
    defparam add_472_9.INJECT1_1 = "NO";
    CCU2D add_472_7 (.A0(\f_inc[20] ), .B0(n2371), .C0(\f_inc[17] ), .D0(L_pulse), 
          .A1(\f_inc[21] ), .B1(n2371), .C1(\f_inc[17] ), .D1(L_pulse), 
          .CIN(n2024), .COUT(n2025), .S0(f_inc_23__N_102[20]), .S1(f_inc_23__N_102[21]));   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(53[11] 56[26])
    defparam add_472_7.INIT0 = 16'h56aa;
    defparam add_472_7.INIT1 = 16'h56aa;
    defparam add_472_7.INJECT1_0 = "NO";
    defparam add_472_7.INJECT1_1 = "NO";
    CCU2D add_472_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6), .B1(n5), .C1(\f_inc[17] ), .D1(L_pulse), .COUT(n2022));   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(53[11] 56[26])
    defparam add_472_1.INIT0 = 16'hF000;
    defparam add_472_1.INIT1 = 16'h01ff;
    defparam add_472_1.INJECT1_0 = "NO";
    defparam add_472_1.INJECT1_1 = "NO";
    FD1P3AY wave_FSM_i0_i0 (.D(n61), .SP(key_pulse_adj_2[0]), .CK(clk_c), 
            .Q(n60[0]));   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam wave_FSM_i0_i0.GSR = "ENABLED";
    LUT4 mux_347_i7_3_lut_4_lut (.A(n62), .B(n61), .C(\squ_dat[7] ), .D(\phase[22] ), 
         .Z(n613)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam mux_347_i7_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_347_i4_3_lut_4_lut (.A(n62), .B(n61), .C(\squ_dat[7] ), .D(\phase[19] ), 
         .Z(n616)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam mux_347_i4_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_347_i3_3_lut_4_lut (.A(n62), .B(n61), .C(\squ_dat[7] ), .D(\phase[18] ), 
         .Z(n617)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam mux_347_i3_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_347_i2_3_lut_4_lut (.A(n62), .B(n61), .C(\squ_dat[7] ), .D(\phase[17] ), 
         .Z(n618)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam mux_347_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3_3_lut_rep_17_4_lut (.A(\f_inc[18] ), .B(\f_inc[19] ), .C(n2373), 
         .D(\f_inc[20] ), .Z(n2371)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_rep_17_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(\f_inc[18] ), .B(\f_inc[20] ), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(51[6:24])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 mux_347_i5_3_lut_4_lut (.A(n62), .B(n61), .C(\squ_dat[7] ), .D(\phase[20] ), 
         .Z(n615)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam mux_347_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_4_lut (.A(n2374), .B(\f_inc[20] ), .C(n2373), .D(\f_inc[17] ), 
         .Z(n2190)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(56[11:26])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 mux_347_i6_3_lut_4_lut (.A(n62), .B(n61), .C(\squ_dat[7] ), .D(\phase[21] ), 
         .Z(n614)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam mux_347_i6_3_lut_4_lut.init = 16'hf1e0;
    FD1P3AX wave_FSM_i0_i3 (.D(n62), .SP(key_pulse_adj_2[0]), .CK(clk_c), 
            .Q(n61));   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam wave_FSM_i0_i3.GSR = "ENABLED";
    CCU2D add_472_5 (.A0(\f_inc[18] ), .B0(n2371), .C0(\f_inc[17] ), .D0(L_pulse), 
          .A1(\f_inc[19] ), .B1(n2371), .C1(\f_inc[17] ), .D1(L_pulse), 
          .CIN(n2023), .COUT(n2024), .S0(f_inc_23__N_102[18]), .S1(f_inc_23__N_102[19]));   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(53[11] 56[26])
    defparam add_472_5.INIT0 = 16'h56aa;
    defparam add_472_5.INIT1 = 16'h56aa;
    defparam add_472_5.INJECT1_0 = "NO";
    defparam add_472_5.INJECT1_1 = "NO";
    FD1P3AX wave_FSM_i0_i2 (.D(n63), .SP(key_pulse_adj_2[0]), .CK(clk_c), 
            .Q(n62));   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam wave_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX wave_FSM_i0_i1 (.D(n60[0]), .SP(key_pulse_adj_2[0]), .CK(clk_c), 
            .Q(n63));   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam wave_FSM_i0_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_16 (.A(n62), .B(n2191), .C(n63), .Z(n2370)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam i1_3_lut_rep_16.init = 16'h0404;
    LUT4 i1630_2_lut_3_lut_3_lut (.A(n62), .B(n2191), .C(n63), .Z(n2280)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam i1630_2_lut_3_lut_3_lut.init = 16'h8c8c;
    CCU2D add_472_3 (.A0(L_pulse), .B0(n2200), .C0(\f_inc[16] ), .D0(GND_net), 
          .A1(L_pulse), .B1(n2190), .C1(\f_inc[17] ), .D1(GND_net), 
          .CIN(n2022), .COUT(n2023), .S0(f_inc_23__N_102[16]), .S1(f_inc_23__N_102[17]));   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(53[11] 56[26])
    defparam add_472_3.INIT0 = 16'he1e1;
    defparam add_472_3.INIT1 = 16'h7878;
    defparam add_472_3.INJECT1_0 = "NO";
    defparam add_472_3.INJECT1_1 = "NO";
    LUT4 i2_2_lut_4_lut (.A(\f_inc[23] ), .B(\f_inc[21] ), .C(\f_inc[22] ), 
         .D(\f_inc[19] ), .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(56[11:26])
    defparam i2_2_lut_4_lut.init = 16'hfffe;
    LUT4 i523_2_lut_rep_20 (.A(\f_inc[18] ), .B(\f_inc[19] ), .Z(n2374)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i523_2_lut_rep_20.init = 16'heeee;
    LUT4 i1224_2_lut_rep_22 (.A(\cnt[1] ), .B(\cnt[0] ), .Z(n2376)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1224_2_lut_rep_22.init = 16'heeee;
    LUT4 i2_3_lut_rep_19 (.A(\f_inc[23] ), .B(\f_inc[21] ), .C(\f_inc[22] ), 
         .Z(n2373)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(56[11:26])
    defparam i2_3_lut_rep_19.init = 16'hfefe;
    FD1S3AX f_inc_i23 (.D(f_inc_23__N_102[23]), .CK(clk_c), .Q(\f_inc[23] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=66 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(50[7] 56[26])
    defparam f_inc_i23.GSR = "ENABLED";
    FD1S3AX f_inc_i22 (.D(f_inc_23__N_102[22]), .CK(clk_c), .Q(\f_inc[22] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=66 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(50[7] 56[26])
    defparam f_inc_i22.GSR = "ENABLED";
    FD1S3AX f_inc_i21 (.D(f_inc_23__N_102[21]), .CK(clk_c), .Q(\f_inc[21] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=66 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(50[7] 56[26])
    defparam f_inc_i21.GSR = "ENABLED";
    FD1S3AX f_inc_i20 (.D(f_inc_23__N_102[20]), .CK(clk_c), .Q(\f_inc[20] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=66 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(50[7] 56[26])
    defparam f_inc_i20.GSR = "ENABLED";
    FD1S3AY f_inc_i19 (.D(f_inc_23__N_102[19]), .CK(clk_c), .Q(\f_inc[19] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=66 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(50[7] 56[26])
    defparam f_inc_i19.GSR = "ENABLED";
    FD1S3AX f_inc_i18 (.D(f_inc_23__N_102[18]), .CK(clk_c), .Q(\f_inc[18] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=66 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(50[7] 56[26])
    defparam f_inc_i18.GSR = "ENABLED";
    FD1S3AY f_inc_i17 (.D(f_inc_23__N_102[17]), .CK(clk_c), .Q(\f_inc[17] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=66 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(50[7] 56[26])
    defparam f_inc_i17.GSR = "ENABLED";
    FD1S3AX f_inc_i16 (.D(f_inc_23__N_102[16]), .CK(clk_c), .Q(\f_inc[16] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=66 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(50[7] 56[26])
    defparam f_inc_i16.GSR = "ENABLED";
    LUT4 i608_3_lut_4_lut (.A(n62), .B(n61), .C(\squ_dat[7] ), .D(\phase[16] ), 
         .Z(n270)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/logic_ctrl.v(37[3] 43[10])
    defparam i608_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i3_4_lut_4_lut (.A(\cnt[5] ), .B(n2375), .C(rst_n_c), .D(n2379), 
         .Z(clk_c_enable_1)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_4_lut_4_lut.init = 16'h4000;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DAC081S101_driver
//

module DAC081S101_driver (GND_net, \cnt[0] , clk_c, \cnt[1] , \cnt[5] , 
            dac_sync_c, n2379, n618, n2280, n617, \phase[21] , sin_dat, 
            n2370, \squ_dat[7] , n2376, rst_n_c, n2191, \phase[22] , 
            n61, n63, n616, n615, \phase[20] , n2378, n614, \phase[19] , 
            n613, dac_done, clk_c_enable_1, \phase[18] , n270, dac_dat_c, 
            \phase[17] , dac_clk_c, \phase[16] , n62, n2375) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output \cnt[0] ;
    input clk_c;
    output \cnt[1] ;
    output \cnt[5] ;
    output dac_sync_c;
    output n2379;
    input n618;
    input n2280;
    input n617;
    input \phase[21] ;
    input [7:0]sin_dat;
    input n2370;
    input \squ_dat[7] ;
    input n2376;
    input rst_n_c;
    output n2191;
    input \phase[22] ;
    input n61;
    input n63;
    input n616;
    input n615;
    input \phase[20] ;
    output n2378;
    input n614;
    input \phase[19] ;
    input n613;
    output dac_done;
    input clk_c_enable_1;
    input \phase[18] ;
    input n270;
    output dac_dat_c;
    input \phase[17] ;
    output dac_clk_c;
    input \phase[16] ;
    input n62;
    output n2375;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(20[10:13])
    wire dac_done /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(68[6:14])
    wire [5:0]n29;
    
    wire n2001, cnt_7__N_236;
    wire [7:0]cnt;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(34[11:14])
    
    wire n2377;
    wire [7:0]data;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(40[11:15])
    
    wire n2101, n32, dac_sync_N_284;
    wire [0:0]n598;
    wire [0:0]n430;
    
    wire n2208, n2337;
    wire [7:0]n262;
    wire [7:0]n232;
    
    wire n2219, n2339, n2002, n2225, n2381, n2380, n1856, n2372, 
        n2003, clk_c_enable_11, n2338, n2367, n2369, n2340, clk_c_enable_4;
    wire [0:0]n454;
    
    wire n23, n2382;
    wire [0:0]n451;
    wire [0:0]n427;
    
    wire n2384, n2383;
    
    CCU2D cnt_479_480_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\cnt[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2001), .S1(n29[0]));   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(38[14:24])
    defparam cnt_479_480_add_4_1.INIT0 = 16'hF000;
    defparam cnt_479_480_add_4_1.INIT1 = 16'h0555;
    defparam cnt_479_480_add_4_1.INJECT1_0 = "NO";
    defparam cnt_479_480_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_479_480__i1 (.D(n29[0]), .CK(clk_c), .CD(cnt_7__N_236), 
            .Q(\cnt[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(38[14:24])
    defparam cnt_479_480__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_23 (.A(cnt[4]), .B(cnt[3]), .Z(n2377)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_23.init = 16'heeee;
    LUT4 i1_4_lut (.A(data[7]), .B(cnt[3]), .C(data[5]), .D(cnt[2]), 
         .Z(n2101)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_4_lut (.A(\cnt[1] ), .B(n2377), .C(cnt[2]), .D(\cnt[5] ), 
         .Z(n32)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B+((D)+!C))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hff47;
    FD1S3AY dac_sync_67 (.D(dac_sync_N_284), .CK(clk_c), .Q(dac_sync_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=81, LSE_RLINE=90 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam dac_sync_67.GSR = "ENABLED";
    LUT4 i1213_3_lut_4_lut (.A(cnt[3]), .B(\cnt[0] ), .C(n32), .D(n2379), 
         .Z(n598[0])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam i1213_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_adj_8 (.A(cnt[3]), .B(n430[0]), .C(n2379), .D(\cnt[0] ), 
         .Z(n2208)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_8.init = 16'h0008;
    LUT4 cnt_1__bdd_4_lut_1660 (.A(\cnt[0] ), .B(cnt[2]), .C(cnt[4]), 
         .D(cnt[3]), .Z(n2337)) /* synthesis lut_function=(!(A+(B (C (D))))) */ ;
    defparam cnt_1__bdd_4_lut_1660.init = 16'h1555;
    PFUMX mux_73_i2 (.BLUT(n618), .ALUT(n262[1]), .C0(n2280), .Z(n232[1]));
    LUT4 cnt_0__bdd_4_lut (.A(\cnt[0] ), .B(cnt[2]), .C(n2219), .D(cnt[3]), 
         .Z(n2339)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B+(D)))) */ ;
    defparam cnt_0__bdd_4_lut.init = 16'h55c4;
    PFUMX mux_73_i3 (.BLUT(n617), .ALUT(n262[2]), .C0(n2280), .Z(n232[2]));
    CCU2D cnt_479_480_add_4_3 (.A0(\cnt[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2001), .COUT(n2002), .S0(n29[1]), .S1(n29[2]));   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(38[14:24])
    defparam cnt_479_480_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_479_480_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_479_480_add_4_3.INJECT1_0 = "NO";
    defparam cnt_479_480_add_4_3.INJECT1_1 = "NO";
    LUT4 mux_79_i7_4_lut (.A(\phase[21] ), .B(sin_dat[6]), .C(n2370), 
         .D(\squ_dat[7] ), .Z(n262[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_79_i7_4_lut.init = 16'hc5ca;
    LUT4 i3_4_lut (.A(n2376), .B(\cnt[5] ), .C(rst_n_c), .D(n2225), 
         .Z(n2191)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam i3_4_lut.init = 16'h0010;
    LUT4 mux_73_i8_3_lut_then_3_lut (.A(n2191), .B(\phase[22] ), .C(\squ_dat[7] ), 
         .Z(n2381)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_73_i8_3_lut_then_3_lut.init = 16'h7878;
    LUT4 i1561_4_lut (.A(cnt[4]), .B(cnt[3]), .C(cnt[2]), .D(n61), .Z(n2225)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1561_4_lut.init = 16'hfffe;
    LUT4 mux_73_i8_3_lut_else_3_lut (.A(sin_dat[7]), .B(n2191), .C(\squ_dat[7] ), 
         .D(n63), .Z(n2380)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B (C (D))+!B (C))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_73_i8_3_lut_else_3_lut.init = 16'hf0b8;
    LUT4 i1218_2_lut_3_lut (.A(cnt[4]), .B(cnt[3]), .C(cnt[2]), .Z(n1856)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1218_2_lut_3_lut.init = 16'hfefe;
    PFUMX mux_73_i4 (.BLUT(n616), .ALUT(n262[3]), .C0(n2280), .Z(n232[3]));
    LUT4 i3_3_lut_rep_18_4_lut (.A(cnt[4]), .B(cnt[3]), .C(cnt[2]), .D(\cnt[1] ), 
         .Z(n2372)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_rep_18_4_lut.init = 16'hfffe;
    LUT4 cnt_5__bdd_4_lut (.A(\cnt[5] ), .B(\cnt[0] ), .C(\cnt[1] ), .D(n1856), 
         .Z(dac_sync_N_284)) /* synthesis lut_function=(A (C+(D))+!A !(B+(C+(D)))) */ ;
    defparam cnt_5__bdd_4_lut.init = 16'haaa1;
    PFUMX mux_73_i5 (.BLUT(n615), .ALUT(n262[4]), .C0(n2280), .Z(n232[4]));
    LUT4 mux_79_i6_4_lut (.A(\phase[20] ), .B(sin_dat[5]), .C(n2370), 
         .D(\squ_dat[7] ), .Z(n262[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_79_i6_4_lut.init = 16'hc5ca;
    LUT4 rst_n_I_0_1_lut_rep_24 (.A(rst_n_c), .Z(n2378)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(42[5:11])
    defparam rst_n_I_0_1_lut_rep_24.init = 16'h5555;
    PFUMX mux_73_i6 (.BLUT(n614), .ALUT(n262[5]), .C0(n2280), .Z(n232[5]));
    CCU2D cnt_479_480_add_4_7 (.A0(\cnt[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2003), .S0(n29[5]));   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(38[14:24])
    defparam cnt_479_480_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_479_480_add_4_7.INIT1 = 16'h0000;
    defparam cnt_479_480_add_4_7.INJECT1_0 = "NO";
    defparam cnt_479_480_add_4_7.INJECT1_1 = "NO";
    LUT4 i1633_4_lut_4_lut (.A(rst_n_c), .B(\cnt[5] ), .C(n2372), .D(\cnt[0] ), 
         .Z(clk_c_enable_11)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(42[5:11])
    defparam i1633_4_lut_4_lut.init = 16'h0002;
    LUT4 mux_79_i5_4_lut (.A(\phase[19] ), .B(sin_dat[4]), .C(n2370), 
         .D(\squ_dat[7] ), .Z(n262[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_79_i5_4_lut.init = 16'hc5ca;
    LUT4 i1_2_lut_rep_25 (.A(cnt[4]), .B(cnt[2]), .Z(n2379)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam i1_2_lut_rep_25.init = 16'h8888;
    PFUMX mux_73_i7 (.BLUT(n613), .ALUT(n262[6]), .C0(n2280), .Z(n232[6]));
    LUT4 i547_2_lut_4_lut (.A(n2377), .B(\cnt[1] ), .C(cnt[2]), .D(\cnt[5] ), 
         .Z(cnt_7__N_236)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i547_2_lut_4_lut.init = 16'hfe00;
    FD1P3AX dac_done_71 (.D(n598[0]), .SP(clk_c_enable_1), .CK(clk_c), 
            .Q(dac_done));   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam dac_done_71.GSR = "DISABLED";
    LUT4 cnt_0__bdd_3_lut_4_lut (.A(cnt[4]), .B(cnt[2]), .C(cnt[3]), .D(\cnt[0] ), 
         .Z(n2338)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (D))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam cnt_0__bdd_3_lut_4_lut.init = 16'h007f;
    LUT4 n2101_bdd_4_lut_4_lut (.A(\cnt[0] ), .B(cnt[4]), .C(n2367), .D(n2101), 
         .Z(n2369)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam n2101_bdd_4_lut_4_lut.init = 16'h5140;
    PFUMX i1653 (.BLUT(n2339), .ALUT(n2338), .C0(cnt[4]), .Z(n2340));
    FD1P3AX data_i0_i0 (.D(n232[0]), .SP(clk_c_enable_11), .CK(clk_c), 
            .Q(data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=81, LSE_RLINE=90 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam data_i0_i0.GSR = "DISABLED";
    LUT4 n2341_bdd_2_lut_4_lut (.A(n2340), .B(n2337), .C(\cnt[1] ), .D(\cnt[5] ), 
         .Z(clk_c_enable_4)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n2341_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 mux_79_i4_4_lut (.A(\phase[18] ), .B(sin_dat[3]), .C(n2370), 
         .D(\squ_dat[7] ), .Z(n262[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_79_i4_4_lut.init = 16'hc5ca;
    LUT4 mux_73_i1_3_lut (.A(n270), .B(sin_dat[0]), .C(n2370), .Z(n232[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_73_i1_3_lut.init = 16'hcaca;
    FD1P3AX dac_dat_69 (.D(n454[0]), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(dac_dat_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=81, LSE_RLINE=90 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam dac_dat_69.GSR = "ENABLED";
    LUT4 mux_79_i3_4_lut (.A(\phase[17] ), .B(sin_dat[2]), .C(n2370), 
         .D(\squ_dat[7] ), .Z(n262[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_79_i3_4_lut.init = 16'hc5ca;
    FD1S3IX dac_clk_68 (.D(n23), .CK(clk_c), .CD(\cnt[0] ), .Q(dac_clk_c));   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam dac_clk_68.GSR = "ENABLED";
    FD1P3AX data_i0_i7 (.D(n2382), .SP(clk_c_enable_11), .CK(clk_c), .Q(data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=81, LSE_RLINE=90 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam data_i0_i7.GSR = "DISABLED";
    PFUMX mux_226_i1 (.BLUT(n2369), .ALUT(n2208), .C0(n32), .Z(n451[0]));
    LUT4 mux_228_i1_4_lut (.A(n451[0]), .B(n427[0]), .C(cnt[3]), .D(n2219), 
         .Z(n454[0])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_228_i1_4_lut.init = 16'hacaa;
    LUT4 i1212_4_lut (.A(data[4]), .B(cnt[4]), .C(data[2]), .D(cnt[2]), 
         .Z(n427[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam i1212_4_lut.init = 16'hc088;
    CCU2D cnt_479_480_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2002), .COUT(n2003), .S0(n29[3]), .S1(n29[4]));   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(38[14:24])
    defparam cnt_479_480_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_479_480_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_479_480_add_4_5.INJECT1_0 = "NO";
    defparam cnt_479_480_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_then_3_lut (.A(\cnt[1] ), .B(cnt[2]), .C(cnt[4]), .Z(n2384)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1_4_lut_then_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_else_3_lut (.A(\cnt[1] ), .B(\cnt[0] ), .C(cnt[4]), 
         .Z(n2383)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_4_lut_else_3_lut.init = 16'h1010;
    FD1P3AX data_i0_i6 (.D(n232[6]), .SP(clk_c_enable_11), .CK(clk_c), 
            .Q(data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=81, LSE_RLINE=90 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam data_i0_i6.GSR = "DISABLED";
    FD1P3AX data_i0_i5 (.D(n232[5]), .SP(clk_c_enable_11), .CK(clk_c), 
            .Q(data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=81, LSE_RLINE=90 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam data_i0_i5.GSR = "DISABLED";
    FD1P3AX data_i0_i4 (.D(n232[4]), .SP(clk_c_enable_11), .CK(clk_c), 
            .Q(data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=81, LSE_RLINE=90 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam data_i0_i4.GSR = "DISABLED";
    FD1P3AX data_i0_i3 (.D(n232[3]), .SP(clk_c_enable_11), .CK(clk_c), 
            .Q(data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=81, LSE_RLINE=90 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam data_i0_i3.GSR = "DISABLED";
    FD1P3AX data_i0_i2 (.D(n232[2]), .SP(clk_c_enable_11), .CK(clk_c), 
            .Q(data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=81, LSE_RLINE=90 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam data_i0_i2.GSR = "DISABLED";
    FD1P3AX data_i0_i1 (.D(n232[1]), .SP(clk_c_enable_11), .CK(clk_c), 
            .Q(data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=81, LSE_RLINE=90 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam data_i0_i1.GSR = "DISABLED";
    LUT4 mux_79_i2_4_lut (.A(\phase[16] ), .B(sin_dat[1]), .C(n2370), 
         .D(\squ_dat[7] ), .Z(n262[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_79_i2_4_lut.init = 16'hc5ca;
    LUT4 mux_212_i1_4_lut (.A(data[6]), .B(data[0]), .C(cnt[4]), .D(cnt[2]), 
         .Z(n430[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam mux_212_i1_4_lut.init = 16'h0ac0;
    LUT4 n2101_bdd_4_lut_1670 (.A(data[3]), .B(cnt[3]), .C(data[1]), .D(cnt[2]), 
         .Z(n2367)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n2101_bdd_4_lut_1670.init = 16'h3022;
    PFUMX i1673 (.BLUT(n2383), .ALUT(n2384), .C0(\cnt[5] ), .Z(n2219));
    LUT4 i34_4_lut (.A(n2372), .B(\cnt[1] ), .C(\cnt[5] ), .D(n1856), 
         .Z(n23)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam i34_4_lut.init = 16'h0a3a;
    FD1S3IX cnt_479_480__i6 (.D(n29[5]), .CK(clk_c), .CD(cnt_7__N_236), 
            .Q(\cnt[5] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(38[14:24])
    defparam cnt_479_480__i6.GSR = "ENABLED";
    PFUMX i1671 (.BLUT(n2380), .ALUT(n2381), .C0(n62), .Z(n2382));
    LUT4 i1_2_lut_rep_21 (.A(cnt[3]), .B(\cnt[0] ), .Z(n2375)) /* synthesis lut_function=(!((B)+!A)) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(44[11] 67[9])
    defparam i1_2_lut_rep_21.init = 16'h2222;
    FD1S3IX cnt_479_480__i5 (.D(n29[4]), .CK(clk_c), .CD(cnt_7__N_236), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(38[14:24])
    defparam cnt_479_480__i5.GSR = "ENABLED";
    FD1S3IX cnt_479_480__i4 (.D(n29[3]), .CK(clk_c), .CD(cnt_7__N_236), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(38[14:24])
    defparam cnt_479_480__i4.GSR = "ENABLED";
    FD1S3IX cnt_479_480__i3 (.D(n29[2]), .CK(clk_c), .CD(cnt_7__N_236), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(38[14:24])
    defparam cnt_479_480__i3.GSR = "ENABLED";
    FD1S3IX cnt_479_480__i2 (.D(n29[1]), .CK(clk_c), .CD(cnt_7__N_236), 
            .Q(\cnt[1] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dac081s101_driver.v(38[14:24])
    defparam cnt_479_480__i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module Encoder
//

module Encoder (key_a_c, key_b_c, clk_c, L_pulse, R_pulse, GND_net) /* synthesis syn_module_defined=1 */ ;
    input key_a_c;
    input key_b_c;
    input clk_c;
    output L_pulse;
    output R_pulse;
    input GND_net;
    
    wire clk_500us /* synthesis is_clock=1, SET_AS_NETWORK=\u1/clk_500us */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(38[5:14])
    wire A_state_N_49 /* synthesis is_clock=1, SET_AS_NETWORK=\u1/A_state_N_49 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(53[5:12])
    wire B_state_N_39 /* synthesis is_clock=1, SET_AS_NETWORK=\u1/B_state_N_39 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(71[5:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(20[10:13])
    
    wire key_a_r, key_a_r1, key_a_r2, A_state, A_state_N_46, key_b_r, 
        key_b_r1, key_b_r2, B_state, B_state_N_36, A_state_r, A_state_r1, 
        L_pulse_N_30, R_pulse_N_40, n2009;
    wire [12:0]cnt;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(30[12:15])
    wire [11:0]n53;
    
    wire cnt_12__N_29, n8, n14, n2008, n2007, n2006, n2005, n2004, 
        n2041, clk_500us_N_43, n5, n2265, n2257, n2259;
    
    FD1S3AX key_a_r_62 (.D(key_a_c), .CK(clk_500us), .Q(key_a_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(47[7] 51[4])
    defparam key_a_r_62.GSR = "DISABLED";
    FD1S3AX key_a_r1_63 (.D(key_a_r), .CK(clk_500us), .Q(key_a_r1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(47[7] 51[4])
    defparam key_a_r1_63.GSR = "DISABLED";
    FD1S3AX key_a_r2_64 (.D(key_a_r1), .CK(clk_500us), .Q(key_a_r2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(47[7] 51[4])
    defparam key_a_r2_64.GSR = "DISABLED";
    FD1S1A A_state_I_0 (.D(A_state_N_46), .CK(A_state_N_49), .Q(A_state)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(55[1] 61[4])
    defparam A_state_I_0.GSR = "DISABLED";
    FD1S3AX key_b_r_66 (.D(key_b_c), .CK(clk_500us), .Q(key_b_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(65[7] 69[4])
    defparam key_b_r_66.GSR = "DISABLED";
    FD1S3AX key_b_r1_67 (.D(key_b_r), .CK(clk_500us), .Q(key_b_r1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(65[7] 69[4])
    defparam key_b_r1_67.GSR = "DISABLED";
    FD1S3AX key_b_r2_68 (.D(key_b_r1), .CK(clk_500us), .Q(key_b_r2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(65[7] 69[4])
    defparam key_b_r2_68.GSR = "DISABLED";
    FD1S1A B_state_I_0_78 (.D(B_state_N_36), .CK(B_state_N_39), .Q(B_state)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(73[1] 79[4])
    defparam B_state_I_0_78.GSR = "DISABLED";
    FD1S3AX A_state_r_70 (.D(A_state), .CK(clk_c), .Q(A_state_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(83[7] 86[4])
    defparam A_state_r_70.GSR = "DISABLED";
    FD1S3AX A_state_r1_71 (.D(A_state_r), .CK(clk_c), .Q(A_state_r1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(83[7] 86[4])
    defparam A_state_r1_71.GSR = "DISABLED";
    FD1S3AX L_pulse_72 (.D(L_pulse_N_30), .CK(clk_c), .Q(L_pulse)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(94[7] 95[23])
    defparam L_pulse_72.GSR = "ENABLED";
    FD1S3AX R_pulse_73 (.D(R_pulse_N_40), .CK(clk_c), .Q(R_pulse)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(101[7] 102[23])
    defparam R_pulse_73.GSR = "ENABLED";
    CCU2D cnt_475_476_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2009), .S0(n53[11]));   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_475_476_add_4_13.INIT1 = 16'h0000;
    defparam cnt_475_476_add_4_13.INJECT1_0 = "NO";
    defparam cnt_475_476_add_4_13.INJECT1_1 = "NO";
    FD1S3IX cnt_475_476__i1 (.D(n53[0]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i1.GSR = "ENABLED";
    LUT4 i536_4_lut (.A(cnt[5]), .B(cnt[6]), .C(cnt[4]), .D(n8), .Z(n14)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i536_4_lut.init = 16'heccc;
    CCU2D cnt_475_476_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2008), .COUT(n2009), .S0(n53[9]), .S1(n53[10]));   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_475_476_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_475_476_add_4_11.INJECT1_0 = "NO";
    defparam cnt_475_476_add_4_11.INJECT1_1 = "NO";
    LUT4 i1234_2_lut (.A(key_a_r2), .B(key_a_r1), .Z(A_state_N_46)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1234_2_lut.init = 16'h8888;
    LUT4 i574_2_lut (.A(key_b_r2), .B(key_b_r1), .Z(B_state_N_39)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i574_2_lut.init = 16'h9999;
    CCU2D cnt_475_476_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2007), .COUT(n2008), .S0(n53[7]), .S1(n53[8]));   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_475_476_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_475_476_add_4_9.INJECT1_0 = "NO";
    defparam cnt_475_476_add_4_9.INJECT1_1 = "NO";
    LUT4 i537_4_lut (.A(cnt[2]), .B(cnt[3]), .C(cnt[1]), .D(cnt[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i537_4_lut.init = 16'heccc;
    CCU2D cnt_475_476_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2006), .COUT(n2007), .S0(n53[5]), .S1(n53[6]));   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_475_476_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_475_476_add_4_7.INJECT1_0 = "NO";
    defparam cnt_475_476_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_475_476_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2005), .COUT(n2006), .S0(n53[3]), .S1(n53[4]));   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_475_476_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_475_476_add_4_5.INJECT1_0 = "NO";
    defparam cnt_475_476_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_475_476_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2004), .COUT(n2005), .S0(n53[1]), .S1(n53[2]));   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_475_476_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_475_476_add_4_3.INJECT1_0 = "NO";
    defparam cnt_475_476_add_4_3.INJECT1_1 = "NO";
    LUT4 i1216_2_lut (.A(key_b_r2), .B(key_b_r1), .Z(B_state_N_36)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1216_2_lut.init = 16'h8888;
    LUT4 i87_3_lut_4_lut_3_lut (.A(A_state_r1), .B(A_state_r), .C(B_state), 
         .Z(L_pulse_N_30)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(89[14:40])
    defparam i87_3_lut_4_lut_3_lut.init = 16'h4242;
    CCU2D cnt_475_476_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2004), .S1(n53[0]));   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476_add_4_1.INIT0 = 16'hF000;
    defparam cnt_475_476_add_4_1.INIT1 = 16'h0555;
    defparam cnt_475_476_add_4_1.INJECT1_0 = "NO";
    defparam cnt_475_476_add_4_1.INJECT1_1 = "NO";
    LUT4 i88_3_lut_4_lut_3_lut (.A(A_state_r1), .B(A_state_r), .C(B_state), 
         .Z(R_pulse_N_40)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(89[14:40])
    defparam i88_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 i576_2_lut (.A(key_a_r2), .B(key_a_r1), .Z(A_state_N_49)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i576_2_lut.init = 16'h9999;
    LUT4 i3_4_lut (.A(n14), .B(cnt[9]), .C(cnt[8]), .D(cnt[7]), .Z(n2041)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    FD1S3AX clk_500us_61 (.D(clk_500us_N_43), .CK(clk_c), .Q(clk_500us)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=33, LSE_RLINE=41 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(41[7] 42[30])
    defparam clk_500us_61.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(clk_500us), .B(n5), .C(cnt[3]), .D(n2265), .Z(clk_500us_N_43)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B+(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'ha9aa;
    FD1S3IX cnt_475_476__i12 (.D(n53[11]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i12.GSR = "ENABLED";
    LUT4 i548_3_lut (.A(n2041), .B(cnt[11]), .C(cnt[10]), .Z(cnt_12__N_29)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i548_3_lut.init = 16'hc8c8;
    FD1S3IX cnt_475_476__i11 (.D(n53[10]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i11.GSR = "ENABLED";
    FD1S3IX cnt_475_476__i10 (.D(n53[9]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i10.GSR = "ENABLED";
    FD1S3IX cnt_475_476__i9 (.D(n53[8]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i9.GSR = "ENABLED";
    FD1S3IX cnt_475_476__i8 (.D(n53[7]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i8.GSR = "ENABLED";
    FD1S3IX cnt_475_476__i7 (.D(n53[6]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i7.GSR = "ENABLED";
    FD1S3IX cnt_475_476__i6 (.D(n53[5]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i6.GSR = "ENABLED";
    FD1S3IX cnt_475_476__i5 (.D(n53[4]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i5.GSR = "ENABLED";
    FD1S3IX cnt_475_476__i4 (.D(n53[3]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i4.GSR = "ENABLED";
    FD1S3IX cnt_475_476__i3 (.D(n53[2]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i3.GSR = "ENABLED";
    FD1S3IX cnt_475_476__i2 (.D(n53[1]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/encoder.v(35[14:24])
    defparam cnt_475_476__i2.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(cnt[6]), .B(cnt[10]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1600_4_lut (.A(n2257), .B(cnt[2]), .C(n2259), .D(cnt[0]), 
         .Z(n2265)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1600_4_lut.init = 16'h8000;
    LUT4 i1593_4_lut (.A(cnt[4]), .B(cnt[11]), .C(cnt[7]), .D(cnt[5]), 
         .Z(n2257)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1593_4_lut.init = 16'h8000;
    LUT4 i1595_3_lut (.A(cnt[1]), .B(cnt[9]), .C(cnt[8]), .Z(n2259)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1595_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module Debounce
//

module Debounce (clk_c, key_o_c_0, GND_net, key_pulse_adj_1) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input key_o_c_0;
    input GND_net;
    output [0:0]key_pulse_adj_1;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(20[10:13])
    wire [0:0]key_n_r1;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(33[29:37])
    wire [0:0]key_n_r2;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(33[38:46])
    
    wire key_edge;
    wire [17:0]cnt;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(44[13:16])
    
    wire n2034;
    wire [0:0]key_n_r;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(33[21:28])
    wire [0:0]key_jit_r;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(56[21:30])
    wire [0:0]key_jit;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(26[29:36])
    wire [17:0]n77;
    
    wire n2018, n2017, n2016, n2015, n2014, clk_c_enable_2, n2013, 
        n2012, n2011, n2253, n10, n2247, n2010, n2227;
    
    LUT4 key_n_r1_0__I_0_2_lut (.A(key_n_r1[0]), .B(key_n_r2[0]), .Z(key_edge)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(42[18:40])
    defparam key_n_r1_0__I_0_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(cnt[6]), .B(cnt[5]), .C(cnt[3]), .D(cnt[15]), 
         .Z(n2034)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    FD1S3AX key_n_r1_0__30 (.D(key_n_r[0]), .CK(clk_c), .Q(key_n_r1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=53 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(35[8] 39[4])
    defparam key_n_r1_0__30.GSR = "DISABLED";
    FD1S3AX key_n_r2_0__31 (.D(key_n_r1[0]), .CK(clk_c), .Q(key_n_r2[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=53 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(35[8] 39[4])
    defparam key_n_r2_0__31.GSR = "DISABLED";
    FD1S3AY key_jit_r_0__35 (.D(key_jit[0]), .CK(clk_c), .Q(key_jit_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=53 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(60[11:32])
    defparam key_jit_r_0__35.GSR = "ENABLED";
    FD1S3AX key_n_r_0__29 (.D(key_o_c_0), .CK(clk_c), .Q(key_n_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=45, LSE_RLINE=53 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(35[8] 39[4])
    defparam key_n_r_0__29.GSR = "DISABLED";
    FD1S3IX cnt_477__i0 (.D(n77[0]), .CK(clk_c), .CD(key_edge), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i0.GSR = "ENABLED";
    CCU2D cnt_477_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2018), .S0(n77[17]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_477_add_4_19.INIT1 = 16'h0000;
    defparam cnt_477_add_4_19.INJECT1_0 = "NO";
    defparam cnt_477_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_477_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2017), .COUT(n2018), .S0(n77[15]), .S1(n77[16]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_477_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_477_add_4_17.INJECT1_0 = "NO";
    defparam cnt_477_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_477_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2016), .COUT(n2017), .S0(n77[13]), .S1(n77[14]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_477_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_477_add_4_15.INJECT1_0 = "NO";
    defparam cnt_477_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_477_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2015), .COUT(n2016), .S0(n77[11]), .S1(n77[12]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_477_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_477_add_4_13.INJECT1_0 = "NO";
    defparam cnt_477_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_477_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2014), 
          .COUT(n2015), .S0(n77[9]), .S1(n77[10]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_477_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_477_add_4_11.INJECT1_0 = "NO";
    defparam cnt_477_add_4_11.INJECT1_1 = "NO";
    FD1P3AY key_jit_0__34 (.D(key_n_r2[0]), .SP(clk_c_enable_2), .CK(clk_c), 
            .Q(key_jit[0]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(54[7:49])
    defparam key_jit_0__34.GSR = "ENABLED";
    CCU2D cnt_477_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2013), 
          .COUT(n2014), .S0(n77[7]), .S1(n77[8]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_477_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_477_add_4_9.INJECT1_0 = "NO";
    defparam cnt_477_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_477_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2012), 
          .COUT(n2013), .S0(n77[5]), .S1(n77[6]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_477_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_477_add_4_7.INJECT1_0 = "NO";
    defparam cnt_477_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_477_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2011), 
          .COUT(n2012), .S0(n77[3]), .S1(n77[4]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_477_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_477_add_4_5.INJECT1_0 = "NO";
    defparam cnt_477_add_4_5.INJECT1_1 = "NO";
    LUT4 i1627_4_lut (.A(n2253), .B(cnt[9]), .C(n10), .D(n2247), .Z(clk_c_enable_2)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(54[11:27])
    defparam i1627_4_lut.init = 16'h0200;
    CCU2D cnt_477_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2010), 
          .COUT(n2011), .S0(n77[1]), .S1(n77[2]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_477_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_477_add_4_3.INJECT1_0 = "NO";
    defparam cnt_477_add_4_3.INJECT1_1 = "NO";
    FD1S3IX cnt_477__i17 (.D(n77[17]), .CK(clk_c), .CD(key_edge), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i17.GSR = "ENABLED";
    CCU2D cnt_477_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2010), 
          .S1(n77[0]));   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477_add_4_1.INIT0 = 16'hF000;
    defparam cnt_477_add_4_1.INIT1 = 16'h0555;
    defparam cnt_477_add_4_1.INJECT1_0 = "NO";
    defparam cnt_477_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_477__i16 (.D(n77[16]), .CK(clk_c), .CD(key_edge), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i16.GSR = "ENABLED";
    FD1S3IX cnt_477__i15 (.D(n77[15]), .CK(clk_c), .CD(key_edge), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i15.GSR = "ENABLED";
    FD1S3IX cnt_477__i14 (.D(n77[14]), .CK(clk_c), .CD(key_edge), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i14.GSR = "ENABLED";
    FD1S3IX cnt_477__i13 (.D(n77[13]), .CK(clk_c), .CD(key_edge), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i13.GSR = "ENABLED";
    FD1S3IX cnt_477__i12 (.D(n77[12]), .CK(clk_c), .CD(key_edge), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i12.GSR = "ENABLED";
    FD1S3IX cnt_477__i11 (.D(n77[11]), .CK(clk_c), .CD(key_edge), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i11.GSR = "ENABLED";
    FD1S3IX cnt_477__i10 (.D(n77[10]), .CK(clk_c), .CD(key_edge), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i10.GSR = "ENABLED";
    FD1S3IX cnt_477__i9 (.D(n77[9]), .CK(clk_c), .CD(key_edge), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i9.GSR = "ENABLED";
    FD1S3IX cnt_477__i8 (.D(n77[8]), .CK(clk_c), .CD(key_edge), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i8.GSR = "ENABLED";
    FD1S3IX cnt_477__i7 (.D(n77[7]), .CK(clk_c), .CD(key_edge), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i7.GSR = "ENABLED";
    FD1S3IX cnt_477__i6 (.D(n77[6]), .CK(clk_c), .CD(key_edge), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i6.GSR = "ENABLED";
    FD1S3IX cnt_477__i5 (.D(n77[5]), .CK(clk_c), .CD(key_edge), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i5.GSR = "ENABLED";
    FD1S3IX cnt_477__i4 (.D(n77[4]), .CK(clk_c), .CD(key_edge), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i4.GSR = "ENABLED";
    FD1S3IX cnt_477__i3 (.D(n77[3]), .CK(clk_c), .CD(key_edge), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i3.GSR = "ENABLED";
    FD1S3IX cnt_477__i2 (.D(n77[2]), .CK(clk_c), .CD(key_edge), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i2.GSR = "ENABLED";
    FD1S3IX cnt_477__i1 (.D(n77[1]), .CK(clk_c), .CD(key_edge), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(49[17:27])
    defparam cnt_477__i1.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(cnt[14]), .B(cnt[12]), .C(cnt[7]), .D(cnt[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(54[11:27])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1583_3_lut (.A(cnt[16]), .B(cnt[11]), .C(cnt[0]), .Z(n2247)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1583_3_lut.init = 16'h8080;
    LUT4 i1563_4_lut (.A(cnt[8]), .B(cnt[4]), .C(cnt[17]), .D(cnt[2]), 
         .Z(n2227)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1563_4_lut.init = 16'h8000;
    LUT4 key_jit_r_0__I_0_2_lut (.A(key_jit_r[0]), .B(key_jit[0]), .Z(key_pulse_adj_1[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/debounce.v(63[20:43])
    defparam key_jit_r_0__I_0_2_lut.init = 16'h2222;
    LUT4 i1589_4_lut (.A(cnt[1]), .B(n2227), .C(n2034), .D(cnt[13]), 
         .Z(n2253)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1589_4_lut.init = 16'h8000;
    
endmodule
//
// Verilog Description of module DDS
//

module DDS (\f_inc[16] , \phase[16] , GND_net, \f_inc[17] , \phase[17] , 
            \f_inc[22] , \phase[22] , \f_inc[23] , \squ_dat[7] , dac_done, 
            \phase[21] , \phase[20] , \phase[19] , \phase[18] , \f_inc[20] , 
            \f_inc[21] , \f_inc[18] , \f_inc[19] , VCC_net, n2378, 
            sin_dat) /* synthesis syn_module_defined=1 */ ;
    input \f_inc[16] ;
    output \phase[16] ;
    input GND_net;
    input \f_inc[17] ;
    output \phase[17] ;
    input \f_inc[22] ;
    output \phase[22] ;
    input \f_inc[23] ;
    output \squ_dat[7] ;
    input dac_done;
    output \phase[21] ;
    output \phase[20] ;
    output \phase[19] ;
    output \phase[18] ;
    input \f_inc[20] ;
    input \f_inc[21] ;
    input \f_inc[18] ;
    input \f_inc[19] ;
    input VCC_net;
    input n2378;
    output [7:0]sin_dat;
    
    wire dac_done /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(68[6:14])
    wire [23:0]n101;
    
    wire n2028, n2030, n2029;
    
    CCU2D phase_acc_478_add_4_2 (.A0(\f_inc[16] ), .B0(\phase[16] ), .C0(GND_net), 
          .D0(GND_net), .A1(\f_inc[17] ), .B1(\phase[17] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n2028), .S1(n101[17]));   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478_add_4_2.INIT0 = 16'h7000;
    defparam phase_acc_478_add_4_2.INIT1 = 16'h5666;
    defparam phase_acc_478_add_4_2.INJECT1_0 = "NO";
    defparam phase_acc_478_add_4_2.INJECT1_1 = "NO";
    CCU2D phase_acc_478_add_4_8 (.A0(\f_inc[22] ), .B0(\phase[22] ), .C0(GND_net), 
          .D0(GND_net), .A1(\f_inc[23] ), .B1(\squ_dat[7] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2030), .S0(n101[22]), .S1(n101[23]));   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478_add_4_8.INIT0 = 16'h5666;
    defparam phase_acc_478_add_4_8.INIT1 = 16'h5666;
    defparam phase_acc_478_add_4_8.INJECT1_0 = "NO";
    defparam phase_acc_478_add_4_8.INJECT1_1 = "NO";
    LUT4 i1367_2_lut (.A(\f_inc[16] ), .B(\phase[16] ), .Z(n101[16])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1367_2_lut.init = 16'h6666;
    FD1S3AX phase_acc_478__i23 (.D(n101[23]), .CK(dac_done), .Q(\squ_dat[7] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478__i23.GSR = "ENABLED";
    FD1S3AX phase_acc_478__i22 (.D(n101[22]), .CK(dac_done), .Q(\phase[22] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478__i22.GSR = "ENABLED";
    FD1S3AX phase_acc_478__i21 (.D(n101[21]), .CK(dac_done), .Q(\phase[21] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478__i21.GSR = "ENABLED";
    FD1S3AX phase_acc_478__i20 (.D(n101[20]), .CK(dac_done), .Q(\phase[20] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478__i20.GSR = "ENABLED";
    FD1S3AX phase_acc_478__i19 (.D(n101[19]), .CK(dac_done), .Q(\phase[19] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478__i19.GSR = "ENABLED";
    FD1S3AX phase_acc_478__i18 (.D(n101[18]), .CK(dac_done), .Q(\phase[18] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478__i18.GSR = "ENABLED";
    FD1S3AX phase_acc_478__i17 (.D(n101[17]), .CK(dac_done), .Q(\phase[17] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478__i17.GSR = "ENABLED";
    FD1S3AX phase_acc_478__i16 (.D(n101[16]), .CK(dac_done), .Q(\phase[16] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478__i16.GSR = "ENABLED";
    CCU2D phase_acc_478_add_4_6 (.A0(\f_inc[20] ), .B0(\phase[20] ), .C0(GND_net), 
          .D0(GND_net), .A1(\f_inc[21] ), .B1(\phase[21] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2029), .COUT(n2030), .S0(n101[20]), .S1(n101[21]));   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478_add_4_6.INIT0 = 16'h5666;
    defparam phase_acc_478_add_4_6.INIT1 = 16'h5666;
    defparam phase_acc_478_add_4_6.INJECT1_0 = "NO";
    defparam phase_acc_478_add_4_6.INJECT1_1 = "NO";
    CCU2D phase_acc_478_add_4_4 (.A0(\f_inc[18] ), .B0(\phase[18] ), .C0(GND_net), 
          .D0(GND_net), .A1(\f_inc[19] ), .B1(\phase[19] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2028), .COUT(n2029), .S0(n101[18]), .S1(n101[19]));   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(35[20:37])
    defparam phase_acc_478_add_4_4.INIT0 = 16'h5666;
    defparam phase_acc_478_add_4_4.INIT1 = 16'h5666;
    defparam phase_acc_478_add_4_4.INJECT1_0 = "NO";
    defparam phase_acc_478_add_4_4.INJECT1_1 = "NO";
    rom u1 (.\squ_dat[7] (\squ_dat[7] ), .\phase[22] (\phase[22] ), .\phase[21] (\phase[21] ), 
        .\phase[20] (\phase[20] ), .\phase[19] (\phase[19] ), .\phase[18] (\phase[18] ), 
        .\phase[17] (\phase[17] ), .\phase[16] (\phase[16] ), .dac_done(dac_done), 
        .VCC_net(VCC_net), .n2378(n2378), .sin_dat({sin_dat}), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(55[5] 62[2])
    
endmodule
//
// Verilog Description of module rom
//

module rom (\squ_dat[7] , \phase[22] , \phase[21] , \phase[20] , \phase[19] , 
            \phase[18] , \phase[17] , \phase[16] , dac_done, VCC_net, 
            n2378, sin_dat, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input \squ_dat[7] ;
    input \phase[22] ;
    input \phase[21] ;
    input \phase[20] ;
    input \phase[19] ;
    input \phase[18] ;
    input \phase[17] ;
    input \phase[16] ;
    input dac_done;
    input VCC_net;
    input n2378;
    output [7:0]sin_dat;
    input GND_net;
    
    wire dac_done /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/signal_generator.v(68[6:14])
    
    DP8KC rom_0_0_0 (.DIA0(GND_net), .DIA1(GND_net), .DIA2(GND_net), .DIA3(GND_net), 
          .DIA4(GND_net), .DIA5(GND_net), .DIA6(GND_net), .DIA7(GND_net), 
          .DIA8(GND_net), .ADA0(VCC_net), .ADA1(GND_net), .ADA2(GND_net), 
          .ADA3(\phase[16] ), .ADA4(\phase[17] ), .ADA5(\phase[18] ), 
          .ADA6(\phase[19] ), .ADA7(\phase[20] ), .ADA8(\phase[21] ), 
          .ADA9(\phase[22] ), .ADA10(\squ_dat[7] ), .ADA11(GND_net), .ADA12(GND_net), 
          .CEA(VCC_net), .OCEA(VCC_net), .CLKA(dac_done), .WEA(GND_net), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(n2378), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
          .ADB3(GND_net), .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), 
          .ADB7(GND_net), .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), 
          .ADB11(GND_net), .ADB12(GND_net), .CEB(VCC_net), .OCEB(VCC_net), 
          .CLKB(GND_net), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(GND_net), .DOA0(sin_dat[0]), .DOA1(sin_dat[1]), 
          .DOA2(sin_dat[2]), .DOA3(sin_dat[3]), .DOA4(sin_dat[4]), .DOA5(sin_dat[5]), 
          .DOA6(sin_dat[6]), .DOA7(sin_dat[7])) /* synthesis MEM_LPC_FILE="rom.lpc", MEM_INIT_FILE="sin.mem", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=55, LSE_RLINE=62 */ ;   // f:/fpga_project/baseboard/lab7_signal_generator/dds.v(55[5] 62[2])
    defparam rom_0_0_0.DATA_WIDTH_A = 9;
    defparam rom_0_0_0.DATA_WIDTH_B = 9;
    defparam rom_0_0_0.REGMODE_A = "OUTREG";
    defparam rom_0_0_0.REGMODE_B = "NOREG";
    defparam rom_0_0_0.CSDECODE_A = "0b000";
    defparam rom_0_0_0.CSDECODE_B = "0b111";
    defparam rom_0_0_0.WRITEMODE_A = "NORMAL";
    defparam rom_0_0_0.WRITEMODE_B = "NORMAL";
    defparam rom_0_0_0.GSR = "ENABLED";
    defparam rom_0_0_0.RESETMODE = "SYNC";
    defparam rom_0_0_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam rom_0_0_0.INIT_DATA = "STATIC";
    defparam rom_0_0_0.INITVAL_00 = "0x1AED51A4D019ACB190C6186C117CBB170B6166B015AAA14EA41429E1369812A9211E8B110851047F";
    defparam rom_0_0_0.INITVAL_01 = "0x1FCFE1FCFE1FCFD1FAFC1F6FB1F4F91F0F71ECF51E8F21E2EF1DCEC1D6E91CEE51C8E21C0DD1B6D9";
    defparam rom_0_0_0.INITVAL_02 = "0x1B6DD1C0E21C8E51CEE91D6EC1DCEF1E2F21E8F51ECF71F0F91F4FB1F6FC1FAFD1FCFE1FCFE1FCFF";
    defparam rom_0_0_0.INITVAL_03 = "0x104851108B11E9212A981369E142A414EAA15AB0166B6170BB17CC1186C6190CB19AD01A4D51AED9";
    defparam rom_0_0_0.INITVAL_04 = "0x04E290582E0623306C380763D0804308C480964E0A2540AE5A0BA600C6660D26C0DE730EC790F87F";
    defparam rom_0_0_0.INITVAL_05 = "0x00000000000000100202006030080500C07010090140C01A0F020120261502E190341C03C2104625";
    defparam rom_0_0_0.INITVAL_06 = "0x0462103C1C0341902E15026120200F01A0C014090100700C05008030060200201000000000000000";
    defparam rom_0_0_0.INITVAL_07 = "0x0F8790EC730DE6C0D2660C6600BA5A0AE540A24E0964808C430803D0763806C330622E0582904E25";
    defparam rom_0_0_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam rom_0_0_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
