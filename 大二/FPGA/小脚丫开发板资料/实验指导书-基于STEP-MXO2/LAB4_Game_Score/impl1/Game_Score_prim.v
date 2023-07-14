// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Fri Jan 25 09:06:07 2019
//
// Verilog Description of module Game_Score
//

module Game_Score (clk, rst_n, key_red, key_blue, seg_rck, seg_sck, 
            seg_din) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(18[8:18])
    input clk;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(20[11:14])
    input rst_n;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(21[11:16])
    input key_red;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(22[11:18])
    input key_blue;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(23[11:19])
    output seg_rck;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(24[12:19])
    output seg_sck;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(25[12:19])
    output seg_din;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(26[12:19])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(20[11:14])
    wire [1:0]key_pulse_1__N_5 /* synthesis is_inv_clock=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(27[29:38])
    
    wire GND_net, rst_n_c, key_red_c_1, key_blue_c_0, seg_rck_c, seg_sck_c, 
        seg_din_c;
    wire [11:0]red_seg;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(45[13:20])
    wire [11:0]blue_seg;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(54[13:21])
    wire [7:0]dat_en;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(63[12:18])
    
    wire n20, n2826;
    wire [3:0]score_data_11__N_66;
    
    wire n860, n2823, n2854;
    wire [2:0]cnt_main;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(85[13:21])
    
    wire n26, n23, n2824, n2957;
    wire [15:0]data_15__N_150;
    
    wire key_pulse_1_N_5_1_enable_5, key_pulse_1_N_5_1_enable_8, n2819, 
        n2953, n866, n2951, n5, n2939, n3075, n2322, n81, n2946, 
        n2940, n26_adj_180, n2917, VCC_net, n2942, n2814, n2601;
    
    OB seg_sck_pad (.I(seg_sck_c), .O(seg_sck));   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(25[12:19])
    OB seg_din_pad (.I(seg_din_c), .O(seg_din));   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(26[12:19])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB key_blue_pad (.I(key_blue), .O(key_blue_c_0));   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(23[11:19])
    IB key_red_pad (.I(key_red), .O(key_red_c_1));   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(22[11:18])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(21[11:16])
    IB clk_pad (.I(clk), .O(clk_c));   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(20[11:14])
    OB seg_rck_pad (.I(seg_rck_c), .O(seg_rck));   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(24[12:19])
    GSR GSR_INST (.GSR(rst_n_c));
    VHI i2786 (.Z(VCC_net));
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    Segment_scan u4 (.cnt_main({cnt_main}), .blue_seg({blue_seg}), .GND_net(GND_net), 
            .clk_c(clk_c), .red_seg({red_seg}), .seg_din_c(seg_din_c), 
            .seg_rck_c(seg_rck_c), .\data_15__N_150[13] (data_15__N_150[13]), 
            .\data_15__N_150[12] (data_15__N_150[12]), .n2942(n2942), .\key_pulse_1__N_5[1]_enable_5 (key_pulse_1_N_5_1_enable_5), 
            .n2957(n2957), .\key_pulse_1__N_5[1]_enable_8 (key_pulse_1_N_5_1_enable_8), 
            .seg_sck_c(seg_sck_c), .n2951(n2951), .n2824(n2824), .n866(n866), 
            .n2917(n2917), .\score_data_11__N_66[1] (score_data_11__N_66[1]), 
            .n2814(n2814), .n2854(n2854), .n860(n860), .n2953(n2953), 
            .n2823(n2823), .n23(n23), .n26(n26), .n5(n5), .n2940(n2940), 
            .n2946(n2946), .n2939(n2939), .n3075(n3075), .\dat_en[2] (dat_en[2]), 
            .rst_n_c(rst_n_c), .n2601(n2601), .n2819(n2819), .n2322(n2322), 
            .n20(n20), .n81(n81)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(75[14] 92[2])
    \Debounce(KEY_WIDTH=2'b10)  u1 (.clk_c(clk_c), .key_blue_c_0(key_blue_c_0), 
            .GND_net(GND_net), .key_red_c_1(key_red_c_1), .key_pulse_1__N_5({key_pulse_1__N_5})) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(35[1] 43[2])
    Counter_U0 u2 (.red_seg({red_seg}), .\key_pulse_1__N_5[1] (key_pulse_1__N_5[1]), 
            .\key_pulse_1__N_5[1]_enable_8 (key_pulse_1_N_5_1_enable_8), .\key_pulse_1__N_5[1]_enable_5 (key_pulse_1_N_5_1_enable_5), 
            .n2951(n2951), .n2942(n2942), .n860(n860), .n5(n5), .n2957(n2957), 
            .n2322(n2322), .cnt_main({cnt_main}), .n3075(n3075), .n81(n81), 
            .n20(n20), .n26(n26_adj_180), .n2814(n2814), .\score_data_11__N_66[1] (score_data_11__N_66[1]), 
            .n2824(n2824), .\blue_seg[1] (blue_seg[1]), .\blue_seg[0] (blue_seg[0]), 
            .\blue_seg[3] (blue_seg[3]), .\blue_seg[2] (blue_seg[2]), .n2826(n2826), 
            .n2953(n2953), .\data_15__N_150[12] (data_15__N_150[12]), .n2854(n2854), 
            .\blue_seg[7] (blue_seg[7]), .\blue_seg[6] (blue_seg[6]), .\blue_seg[5] (blue_seg[5]), 
            .\blue_seg[4] (blue_seg[4])) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(47[9] 52[2])
    Counter u3 (.blue_seg({blue_seg}), .cnt_main({cnt_main}), .\key_pulse_1__N_5[0] (key_pulse_1__N_5[0]), 
            .n2819(n2819), .n866(n866), .n2939(n2939), .\dat_en[2] (dat_en[2]), 
            .n2601(n2601), .n26(n26_adj_180), .n2940(n2940), .n2823(n2823), 
            .\data_15__N_150[13] (data_15__N_150[13]), .n2946(n2946), .n2917(n2917), 
            .n2826(n2826), .n26_adj_1(n26), .\red_seg[10] (red_seg[10]), 
            .\red_seg[8] (red_seg[8]), .\red_seg[11] (red_seg[11]), .\red_seg[9] (red_seg[9]), 
            .n23(n23)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(56[9] 61[2])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Segment_scan
//

module Segment_scan (cnt_main, blue_seg, GND_net, clk_c, red_seg, 
            seg_din_c, seg_rck_c, \data_15__N_150[13] , \data_15__N_150[12] , 
            n2942, \key_pulse_1__N_5[1]_enable_5 , n2957, \key_pulse_1__N_5[1]_enable_8 , 
            seg_sck_c, n2951, n2824, n866, n2917, \score_data_11__N_66[1] , 
            n2814, n2854, n860, n2953, n2823, n23, n26, n5, 
            n2940, n2946, n2939, n3075, \dat_en[2] , rst_n_c, n2601, 
            n2819, n2322, n20, n81) /* synthesis syn_module_defined=1 */ ;
    output [2:0]cnt_main;
    input [11:0]blue_seg;
    input GND_net;
    input clk_c;
    input [11:0]red_seg;
    output seg_din_c;
    output seg_rck_c;
    input \data_15__N_150[13] ;
    input \data_15__N_150[12] ;
    output n2942;
    output \key_pulse_1__N_5[1]_enable_5 ;
    output n2957;
    output \key_pulse_1__N_5[1]_enable_8 ;
    output seg_sck_c;
    output n2951;
    input n2824;
    output n866;
    input n2917;
    output \score_data_11__N_66[1] ;
    input n2814;
    input n2854;
    output n860;
    output n2953;
    output n2823;
    input n23;
    input n26;
    input n5;
    output n2940;
    output n2946;
    output n2939;
    output n3075;
    input \dat_en[2] ;
    input rst_n_c;
    input n2601;
    input n2819;
    input n2322;
    output n20;
    output n81;
    
    wire clk_40khz /* synthesis is_clock=1, SET_AS_NETWORK=\u4/clk_40khz */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(76[5:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(20[11:14])
    wire [9:0]cnt;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(68[11:14])
    
    wire n6, n2828, n2827, n2829, n3073;
    wire [15:0]data;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(84[14:18])
    
    wire clk_40khz_enable_27;
    wire [15:0]data_15__N_150;
    
    wire n2299;
    wire [8:0]n41;
    wire [2:0]state;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(87[14:19])
    
    wire n2612, clk_40khz_N_173, n2298, n2297, n2883, n2296, n2893;
    wire [5:0]cnt_write;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(86[13:22])
    
    wire n2582, clk_40khz_enable_4, cnt_9__N_133, clk_40khz_enable_25, 
        n2944, n2943, clk_40khz_enable_3, seg_din_N_171, seg_rck_N_166, 
        n2882, n2681, n3004, n2680, n2688, n2892, n2961, n2682, 
        n2683, n2689, clk_40khz_enable_26, n1801;
    wire [5:0]n320;
    
    wire n2684, n2685, n2690, n2884, n2835, n2671, n13, n2963, 
        n2964, n3008, n2834, n2838, n3009, clk_40khz_enable_16, 
        seg_sck_N_169, n2960, n2962, n2686, n2687, n2691, n13_adj_176, 
        n2845, n2617, n3010, n3007;
    wire [2:0]cnt_main_2__N_141;
    
    wire clk_40khz_enable_19;
    wire [2:0]state_2__N_120;
    
    wire n2584, n2331, n942, n2859, n2674, n2675, seg_rck_N_168, 
        n2919, n3005, n2846, n2692, n2847, n2844, n2693, n2952;
    wire [6:0]n250;
    
    wire n98, n26_c, n2821, n2842, n1962, n2653, n2831, n2894, 
        n13_adj_177, n2843, n4, n2941, n12, n2955, n2820, n3074, 
        seg_din_N_172, n4_adj_179, n2832, n2610, n2870, n2830, n2936;
    
    LUT4 i402_3_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i402_3_lut.init = 16'hecec;
    PFUMX i2628 (.BLUT(n2828), .ALUT(n2827), .C0(cnt_main[1]), .Z(n2829));
    LUT4 i23_4_lut_4_lut_else_4_lut (.A(cnt_main[0]), .B(blue_seg[9]), .C(blue_seg[10]), 
         .D(blue_seg[8]), .Z(n3073)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i23_4_lut_4_lut_else_4_lut.init = 16'haa20;
    FD1P3AX data_i0_i4 (.D(data_15__N_150[5]), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i4.GSR = "DISABLED";
    CCU2D cnt_378_379_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2299), .S0(n41[7]), .S1(n41[8]));   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_378_379_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_378_379_add_4_9.INJECT1_0 = "NO";
    defparam cnt_378_379_add_4_9.INJECT1_1 = "NO";
    FD1S3AX state_i0 (.D(n2612), .CK(clk_40khz), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam state_i0.GSR = "ENABLED";
    FD1S3AX clk_40khz_68 (.D(clk_40khz_N_173), .CK(clk_c), .Q(clk_40khz)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(79[7] 80[25])
    defparam clk_40khz_68.GSR = "ENABLED";
    CCU2D cnt_378_379_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2298), .COUT(n2299), .S0(n41[5]), .S1(n41[6]));   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_378_379_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_378_379_add_4_7.INJECT1_0 = "NO";
    defparam cnt_378_379_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_378_379_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2297), .COUT(n2298), .S0(n41[3]), .S1(n41[4]));   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_378_379_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_378_379_add_4_5.INJECT1_0 = "NO";
    defparam cnt_378_379_add_4_5.INJECT1_1 = "NO";
    LUT4 cnt_main_0__bdd_4_lut_2725 (.A(red_seg[4]), .B(red_seg[7]), .C(red_seg[5]), 
         .D(red_seg[6]), .Z(n2883)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam cnt_main_0__bdd_4_lut_2725.init = 16'hf67d;
    CCU2D cnt_378_379_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2296), .COUT(n2297), .S0(n41[1]), .S1(n41[2]));   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_378_379_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_378_379_add_4_3.INJECT1_0 = "NO";
    defparam cnt_378_379_add_4_3.INJECT1_1 = "NO";
    LUT4 red_seg_2__bdd_4_lut (.A(red_seg[6]), .B(red_seg[4]), .C(red_seg[7]), 
         .D(red_seg[5]), .Z(n2893)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B+(C+!(D))))) */ ;
    defparam red_seg_2__bdd_4_lut.init = 16'h5edf;
    LUT4 i2595_4_lut_4_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(cnt_write[5]), 
         .D(n2582), .Z(clk_40khz_enable_4)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;
    defparam i2595_4_lut_4_lut_4_lut_4_lut.init = 16'h1151;
    CCU2D cnt_378_379_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2296), .S1(n41[0]));   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379_add_4_1.INIT0 = 16'hF000;
    defparam cnt_378_379_add_4_1.INIT1 = 16'h0555;
    defparam cnt_378_379_add_4_1.INJECT1_0 = "NO";
    defparam cnt_378_379_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_378_379__i3 (.D(n41[2]), .CK(clk_c), .CD(cnt_9__N_133), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379__i3.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i0 (.D(n2943), .SP(clk_40khz_enable_25), .CD(n2944), 
            .CK(clk_40khz), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n2582)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(120[6] 158[13])
    defparam i3_4_lut.init = 16'hfffe;
    FD1P3AX seg_din_72 (.D(seg_din_N_171), .SP(clk_40khz_enable_3), .CK(clk_40khz), 
            .Q(seg_din_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam seg_din_72.GSR = "ENABLED";
    FD1P3AX seg_rck_74 (.D(seg_rck_N_166), .SP(clk_40khz_enable_4), .CK(clk_40khz), 
            .Q(seg_rck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam seg_rck_74.GSR = "ENABLED";
    FD1P3AX data_i0_i13 (.D(data_15__N_150[14]), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i13.GSR = "DISABLED";
    FD1P3AX data_i0_i12 (.D(\data_15__N_150[13] ), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i12.GSR = "DISABLED";
    FD1P3AX data_i0_i11 (.D(\data_15__N_150[12] ), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i11.GSR = "DISABLED";
    FD1P3AX data_i0_i10 (.D(data_15__N_150[11]), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i10.GSR = "DISABLED";
    LUT4 cnt_main_0__bdd_4_lut_2662 (.A(red_seg[0]), .B(red_seg[3]), .C(red_seg[1]), 
         .D(red_seg[2]), .Z(n2882)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam cnt_main_0__bdd_4_lut_2662.init = 16'hf67d;
    FD1P3AX data_i0_i9 (.D(data_15__N_150[10]), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i9.GSR = "DISABLED";
    FD1P3AX data_i0_i8 (.D(data_15__N_150[9]), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i8.GSR = "DISABLED";
    LUT4 i2476_3_lut (.A(data[13]), .B(data[12]), .C(cnt_write[1]), .Z(n2681)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2476_3_lut.init = 16'hcaca;
    FD1P3AX data_i0_i7 (.D(data_15__N_150[8]), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i7.GSR = "DISABLED";
    FD1P3AX data_i0_i5 (.D(data_15__N_150[6]), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i5.GSR = "DISABLED";
    LUT4 n2870_bdd_4_lut_2741 (.A(blue_seg[2]), .B(blue_seg[3]), .C(blue_seg[0]), 
         .D(blue_seg[1]), .Z(n3004)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B+(D))) */ ;
    defparam n2870_bdd_4_lut_2741.init = 16'hdfe6;
    FD1P3AX data_i0_i2 (.D(data_15__N_150[2]), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i2.GSR = "DISABLED";
    PFUMX i2483 (.BLUT(n2680), .ALUT(n2681), .C0(cnt_write[2]), .Z(n2688));
    LUT4 red_seg_2__bdd_4_lut_2668 (.A(red_seg[2]), .B(red_seg[1]), .C(red_seg[0]), 
         .D(red_seg[3]), .Z(n2892)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !((C+(D))+!B))) */ ;
    defparam red_seg_2__bdd_4_lut_2668.init = 16'h75fb;
    LUT4 i2647_then_4_lut (.A(blue_seg[3]), .B(blue_seg[1]), .C(blue_seg[0]), 
         .D(blue_seg[2]), .Z(n2961)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B+(C (D)+!C !(D)))) */ ;
    defparam i2647_then_4_lut.init = 16'hde6f;
    FD1S3IX cnt_378_379__i1 (.D(n41[0]), .CK(clk_c), .CD(cnt_9__N_133), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379__i1.GSR = "ENABLED";
    PFUMX i2484 (.BLUT(n2682), .ALUT(n2683), .C0(cnt_write[2]), .Z(n2689));
    FD1P3IX cnt_write_i0_i2 (.D(n320[2]), .SP(clk_40khz_enable_26), .CD(n1801), 
            .CK(clk_40khz), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    LUT4 i330_1_lut_rep_34 (.A(red_seg[4]), .Z(n2942)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(108[37:42])
    defparam i330_1_lut_rep_34.init = 16'h5555;
    FD1P3IX cnt_write_i0_i3 (.D(n320[3]), .SP(clk_40khz_enable_26), .CD(n1801), 
            .CK(clk_40khz), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    PFUMX i2485 (.BLUT(n2684), .ALUT(n2685), .C0(cnt_write[2]), .Z(n2690));
    LUT4 i2466_4_lut (.A(cnt_main[0]), .B(n2884), .C(cnt_main[1]), .D(n2835), 
         .Z(n2671)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;
    defparam i2466_4_lut.init = 16'hc5cf;
    LUT4 red_seg_7__bdd_4_lut (.A(red_seg[7]), .B(red_seg[6]), .C(red_seg[5]), 
         .D(red_seg[4]), .Z(n13)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;
    defparam red_seg_7__bdd_4_lut.init = 16'hc124;
    LUT4 i2586_3_lut_4_lut_4_lut (.A(red_seg[4]), .B(red_seg[7]), .C(\key_pulse_1__N_5[1]_enable_5 ), 
         .D(n2957), .Z(\key_pulse_1__N_5[1]_enable_8 )) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(108[37:42])
    defparam i2586_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 n2838_bdd_3_lut_2745 (.A(n2963), .B(n2964), .C(cnt_main[1]), 
         .Z(n3008)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2838_bdd_3_lut_2745.init = 16'hcaca;
    LUT4 blue_seg_8__bdd_4_lut_2634 (.A(blue_seg[8]), .B(blue_seg[11]), 
         .C(blue_seg[9]), .D(blue_seg[10]), .Z(n2834)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam blue_seg_8__bdd_4_lut_2634.init = 16'hf67d;
    LUT4 i2603_2_lut_4_lut (.A(red_seg[2]), .B(red_seg[0]), .C(red_seg[1]), 
         .D(red_seg[3]), .Z(\key_pulse_1__N_5[1]_enable_5 )) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(109[37:42])
    defparam i2603_2_lut_4_lut.init = 16'h0400;
    LUT4 i2475_3_lut (.A(data[15]), .B(data[14]), .C(cnt_write[1]), .Z(n2680)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2475_3_lut.init = 16'hcaca;
    LUT4 n2838_bdd_2_lut_2746 (.A(n2838), .B(cnt_main[1]), .Z(n3009)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2838_bdd_2_lut_2746.init = 16'h8888;
    FD1P3AX seg_sck_73 (.D(seg_sck_N_169), .SP(clk_40khz_enable_16), .CK(clk_40khz), 
            .Q(seg_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam seg_sck_73.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i4 (.D(n320[4]), .SP(clk_40khz_enable_26), .CD(n1801), 
            .CK(clk_40khz), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    PFUMX i2707 (.BLUT(n2960), .ALUT(n2961), .C0(cnt_main[0]), .Z(n2962));
    LUT4 i1799_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(cnt_write[0]), 
         .Z(seg_sck_N_169)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i1799_2_lut_3_lut.init = 16'h4040;
    PFUMX i2486 (.BLUT(n2686), .ALUT(n2687), .C0(cnt_write[2]), .Z(n2691));
    LUT4 red_seg_9__bdd_4_lut_2646 (.A(red_seg[9]), .B(red_seg[11]), .C(red_seg[8]), 
         .D(red_seg[10]), .Z(n2835)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam red_seg_9__bdd_4_lut_2646.init = 16'h4190;
    LUT4 red_seg_3__bdd_4_lut (.A(red_seg[3]), .B(red_seg[2]), .C(red_seg[1]), 
         .D(red_seg[0]), .Z(n13_adj_176)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;
    defparam red_seg_3__bdd_4_lut.init = 16'hc124;
    LUT4 n13_bdd_3_lut (.A(n13), .B(n13_adj_176), .C(cnt_main[0]), .Z(n2845)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam n13_bdd_3_lut.init = 16'h3535;
    LUT4 blue_seg_8__bdd_4_lut (.A(blue_seg[8]), .B(blue_seg[11]), .C(blue_seg[9]), 
         .D(blue_seg[10]), .Z(n2617)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;
    defparam blue_seg_8__bdd_4_lut.init = 16'hd680;
    LUT4 n3010_bdd_3_lut (.A(n3010), .B(n3007), .C(cnt_main[2]), .Z(data_15__N_150[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3010_bdd_3_lut.init = 16'hcaca;
    FD1P3IX cnt_main_i0_i2 (.D(cnt_main_2__N_141[2]), .SP(clk_40khz_enable_25), 
            .CD(n2944), .CK(clk_40khz), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    LUT4 i1545_1_lut_rep_35 (.A(cnt_main[0]), .Z(n2943)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i1545_1_lut_rep_35.init = 16'h5555;
    LUT4 i324_1_lut_rep_43 (.A(red_seg[0]), .Z(n2951)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(109[37:42])
    defparam i324_1_lut_rep_43.init = 16'h5555;
    FD1P3AX state_i1 (.D(state_2__N_120[1]), .SP(clk_40khz_enable_19), .CK(clk_40khz), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam state_i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(cnt_write[0]), .B(n2582), .Z(n2584)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(120[6] 158[13])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3JX data_i0_i6 (.D(n942), .SP(clk_40khz_enable_27), .PD(n2331), 
            .CK(clk_40khz), .Q(data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i6.GSR = "DISABLED";
    LUT4 n2858_bdd_3_lut_4_lut_4_lut (.A(cnt_main[0]), .B(n2962), .C(cnt_main[1]), 
         .D(n2834), .Z(n2859)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam n2858_bdd_3_lut_4_lut_4_lut.init = 16'hcfc5;
    PFUMX i2471 (.BLUT(n2674), .ALUT(n2675), .C0(cnt_main[2]), .Z(data_15__N_150[10]));
    FD1P3IX cnt_write_i0_i0 (.D(seg_rck_N_168), .SP(clk_40khz_enable_26), 
            .CD(n1801), .CK(clk_40khz), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 n3006_bdd_3_lut_4_lut (.A(n2919), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(n3005), .Z(n3007)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n3006_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 blue_seg_5__bdd_4_lut (.A(blue_seg[5]), .B(blue_seg[7]), .C(blue_seg[6]), 
         .D(blue_seg[4]), .Z(n2919)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B ((D)+!C)+!B (C))) */ ;
    defparam blue_seg_5__bdd_4_lut.init = 16'hdebe;
    LUT4 n13_bdd_2_lut_2_lut (.A(cnt_main[0]), .B(n2824), .Z(n2846)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam n13_bdd_2_lut_2_lut.init = 16'hdddd;
    L6MUX21 i2487 (.D0(n2688), .D1(n2689), .SD(cnt_write[3]), .Z(n2692));
    LUT4 i669_2_lut (.A(blue_seg[8]), .B(blue_seg[9]), .Z(n866)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(111[37:42])
    defparam i669_2_lut.init = 16'h6666;
    L6MUX21 i2641 (.D0(n2847), .D1(n2844), .SD(cnt_main[2]), .Z(data_15__N_150[11]));
    L6MUX21 i2488 (.D0(n2690), .D1(n2691), .SD(cnt_write[3]), .Z(n2693));
    LUT4 i593_2_lut_rep_44 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n2952)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(101[18:33])
    defparam i593_2_lut_rep_44.init = 16'h8888;
    LUT4 i598_2_lut_3_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .Z(cnt_main_2__N_141[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(101[18:33])
    defparam i598_2_lut_3_lut.init = 16'h7878;
    LUT4 i2580_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n942)) /* synthesis lut_function=(!(A (B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(103[6] 115[13])
    defparam i2580_2_lut.init = 16'h7777;
    LUT4 i2470_4_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(n2917), 
         .D(n250[2]), .Z(n2675)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i2470_4_lut_4_lut.init = 16'hf3d1;
    FD1P3JX data_i0_i3 (.D(n98), .SP(clk_40khz_enable_27), .PD(n2331), 
            .CK(clk_40khz), .Q(data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i3.GSR = "DISABLED";
    FD1S3IX cnt_378_379__i2 (.D(n41[1]), .CK(clk_c), .CD(cnt_9__N_133), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379__i2.GSR = "ENABLED";
    LUT4 n26_bdd_3_lut (.A(n26_c), .B(n2821), .C(cnt_main[0]), .Z(n2842)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam n26_bdd_3_lut.init = 16'h3535;
    LUT4 i671_2_lut (.A(red_seg[0]), .B(red_seg[1]), .Z(\score_data_11__N_66[1] )) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(109[37:42])
    defparam i671_2_lut.init = 16'h6666;
    LUT4 i1765_2_lut (.A(cnt[1]), .B(cnt[2]), .Z(n1962)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1765_2_lut.init = 16'h8888;
    LUT4 i2448_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n2653)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2448_4_lut.init = 16'hfffe;
    LUT4 n2631_bdd_2_lut_2_lut (.A(cnt_main[0]), .B(n2814), .Z(n2831)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam n2631_bdd_2_lut_2_lut.init = 16'hdddd;
    PFUMX i2639 (.BLUT(n2846), .ALUT(n2845), .C0(cnt_main[1]), .Z(n2847));
    LUT4 i2469_4_lut_4_lut (.A(cnt_main[0]), .B(n2854), .C(cnt_main[1]), 
         .D(n2894), .Z(n2674)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i2469_4_lut_4_lut.init = 16'hfd0d;
    LUT4 blue_seg_6__bdd_4_lut_2716 (.A(blue_seg[6]), .B(blue_seg[5]), .C(blue_seg[7]), 
         .D(blue_seg[4]), .Z(n26_c)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam blue_seg_6__bdd_4_lut_2716.init = 16'h8942;
    LUT4 n26_bdd_2_lut (.A(n13_adj_177), .B(cnt_main[0]), .Z(n2843)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam n26_bdd_2_lut.init = 16'h7777;
    FD1P3AX data_i0_i1 (.D(data_15__N_150[1]), .SP(clk_40khz_enable_27), 
            .CK(clk_40khz), .Q(data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i1.GSR = "DISABLED";
    LUT4 i663_2_lut (.A(red_seg[4]), .B(red_seg[5]), .Z(n860)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(108[37:42])
    defparam i663_2_lut.init = 16'h6666;
    FD1P3IX cnt_write_i0_i1 (.D(n320[1]), .SP(clk_40khz_enable_26), .CD(n1801), 
            .CK(clk_40khz), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    LUT4 i2617_2_lut_rep_36 (.A(state[0]), .B(state[1]), .Z(n2944)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2617_2_lut_rep_36.init = 16'h1111;
    PFUMX i2637 (.BLUT(n2843), .ALUT(n2842), .C0(cnt_main[1]), .Z(n2844));
    LUT4 i2_2_lut (.A(state[0]), .B(n4), .Z(clk_40khz_enable_19)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    FD1P3IX cnt_main_i0_i1 (.D(cnt_main_2__N_141[1]), .SP(clk_40khz_enable_25), 
            .CD(n2944), .CK(clk_40khz), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    LUT4 i254_1_lut_rep_45 (.A(red_seg[8]), .Z(n2953)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(107[37:42])
    defparam i254_1_lut_rep_45.init = 16'h5555;
    LUT4 i2647_else_4_lut (.A(blue_seg[7]), .B(blue_seg[6]), .C(blue_seg[4]), 
         .D(blue_seg[5]), .Z(n2960)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C+(D))+!B ((D)+!C))) */ ;
    defparam i2647_else_4_lut.init = 16'hdf6b;
    LUT4 mux_29_Mux_2_i15_4_lut (.A(blue_seg[10]), .B(blue_seg[8]), .C(blue_seg[11]), 
         .D(blue_seg[9]), .Z(n250[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B+(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(111[37:42])
    defparam mux_29_Mux_2_i15_4_lut.init = 16'h5edf;
    LUT4 i691_1_lut (.A(cnt_write[0]), .Z(seg_rck_N_168)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(120[6] 158[13])
    defparam i691_1_lut.init = 16'h5555;
    LUT4 red_seg_5__bdd_4_lut (.A(red_seg[5]), .B(red_seg[4]), .C(red_seg[7]), 
         .D(red_seg[6]), .Z(n2823)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B (C (D)+!C !(D)))) */ ;
    defparam red_seg_5__bdd_4_lut.init = 16'hb7f1;
    LUT4 n2838_bdd_3_lut_then_4_lut (.A(red_seg[3]), .B(red_seg[1]), .C(red_seg[0]), 
         .D(red_seg[2]), .Z(n2964)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam n2838_bdd_3_lut_then_4_lut.init = 16'hbdee;
    LUT4 i641_3_lut_4_lut (.A(cnt_write[3]), .B(n2941), .C(cnt_write[4]), 
         .D(cnt_write[5]), .Z(n320[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(119[24:40])
    defparam i641_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1096_4_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n2584), 
         .D(cnt_write[5]), .Z(n1801)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i1096_4_lut_4_lut_4_lut.init = 16'h5111;
    LUT4 i406_4_lut (.A(n6), .B(cnt[5]), .C(cnt[4]), .D(cnt[3]), .Z(n12)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i406_4_lut.init = 16'hc8c0;
    LUT4 n23_bdd_3_lut_2671 (.A(n23), .B(n26), .C(cnt_main[0]), .Z(n2827)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam n23_bdd_3_lut_2671.init = 16'h3535;
    LUT4 i33_4_lut (.A(blue_seg[11]), .B(blue_seg[9]), .C(blue_seg[8]), 
         .D(blue_seg[10]), .Z(n13_adj_177)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(111[37:42])
    defparam i33_4_lut.init = 16'hc118;
    LUT4 i615_2_lut_rep_47 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n2955)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(119[24:40])
    defparam i615_2_lut_rep_47.init = 16'h8888;
    LUT4 i1_2_lut_adj_3 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n98)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i1_2_lut_adj_3.init = 16'hdddd;
    LUT4 i620_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n320[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(119[24:40])
    defparam i620_2_lut_3_lut.init = 16'h7878;
    LUT4 i2613_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(n5), .Z(data_15__N_150[1])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i2613_3_lut_4_lut.init = 16'hfdff;
    LUT4 i622_2_lut_rep_33_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n2941)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(119[24:40])
    defparam i622_2_lut_rep_33_3_lut.init = 16'h8080;
    LUT4 i627_2_lut_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n320[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(119[24:40])
    defparam i627_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2478_3_lut (.A(data[9]), .B(data[8]), .C(cnt_write[1]), .Z(n2683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2478_3_lut.init = 16'hcaca;
    FD1P3IX cnt_write_i0_i5 (.D(n320[5]), .SP(clk_40khz_enable_26), .CD(n1801), 
            .CK(clk_40khz), .Q(cnt_write[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i5.GSR = "ENABLED";
    FD1S3IX cnt_378_379__i9 (.D(n41[8]), .CK(clk_c), .CD(cnt_9__N_133), 
            .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379__i9.GSR = "ENABLED";
    LUT4 blue_seg_0__bdd_3_lut_2658 (.A(blue_seg[0]), .B(blue_seg[1]), .C(blue_seg[2]), 
         .Z(n2820)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+!(C))) */ ;
    defparam blue_seg_0__bdd_3_lut_2658.init = 16'h9292;
    FD1S3IX cnt_378_379__i8 (.D(n41[7]), .CK(clk_c), .CD(cnt_9__N_133), 
            .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379__i8.GSR = "ENABLED";
    FD1P3AX data_i0_i14 (.D(n2952), .SP(clk_40khz_enable_27), .CK(clk_40khz), 
            .Q(data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=92 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam data_i0_i14.GSR = "DISABLED";
    FD1S3IX cnt_378_379__i7 (.D(n41[6]), .CK(clk_c), .CD(cnt_9__N_133), 
            .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379__i7.GSR = "ENABLED";
    FD1S3IX cnt_378_379__i6 (.D(n41[5]), .CK(clk_c), .CD(cnt_9__N_133), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379__i6.GSR = "ENABLED";
    FD1S3IX cnt_378_379__i5 (.D(n41[4]), .CK(clk_c), .CD(cnt_9__N_133), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379__i5.GSR = "ENABLED";
    FD1S3IX cnt_378_379__i4 (.D(n41[3]), .CK(clk_c), .CD(cnt_9__N_133), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(72[14:24])
    defparam cnt_378_379__i4.GSR = "ENABLED";
    LUT4 i1604_1_lut_rep_48 (.A(state[0]), .Z(clk_40khz_enable_26)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i1604_1_lut_rep_48.init = 16'h5555;
    LUT4 i2477_3_lut (.A(data[11]), .B(data[10]), .C(cnt_write[1]), .Z(n2682)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2477_3_lut.init = 16'hcaca;
    LUT4 i613_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n320[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(119[24:40])
    defparam i613_2_lut.init = 16'h6666;
    LUT4 i591_2_lut (.A(cnt_main[1]), .B(cnt_main[0]), .Z(cnt_main_2__N_141[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(101[18:33])
    defparam i591_2_lut.init = 16'h6666;
    LUT4 i2_1_lut_rep_37 (.A(state[1]), .Z(clk_40khz_enable_25)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i2_1_lut_rep_37.init = 16'h5555;
    LUT4 i2411_2_lut (.A(state[0]), .B(n4), .Z(n2612)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i2411_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_rep_32_3_lut (.A(blue_seg[6]), .B(blue_seg[4]), .C(blue_seg[7]), 
         .Z(n2940)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(103[6] 115[13])
    defparam i1_3_lut_rep_32_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_2_lut (.A(state[1]), .B(state[0]), .Z(state_2__N_120[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i312_1_lut_rep_38 (.A(blue_seg[8]), .Z(n2946)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(111[37:42])
    defparam i312_1_lut_rep_38.init = 16'h5555;
    LUT4 i1_2_lut_rep_31_4_lut_4_lut (.A(blue_seg[6]), .B(blue_seg[5]), 
         .C(blue_seg[4]), .D(blue_seg[7]), .Z(n2939)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(103[6] 115[13])
    defparam i1_2_lut_rep_31_4_lut_4_lut.init = 16'h1000;
    LUT4 i634_2_lut_3_lut_4_lut (.A(cnt_write[2]), .B(n2955), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n320[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(119[24:40])
    defparam i634_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i2781 (.BLUT(n3073), .ALUT(n3074), .C0(blue_seg[11]), .Z(n3075));
    LUT4 i2583_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(\dat_en[2] ), .Z(data_15__N_150[5])) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2583_3_lut_4_lut.init = 16'hdfff;
    LUT4 i1_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(seg_din_N_172), 
         .Z(seg_din_N_171)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    LUT4 i2_3_lut_rep_39 (.A(state[1]), .B(state[0]), .C(rst_n_c), .Z(clk_40khz_enable_27)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i2_3_lut_rep_39.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_4 (.A(state[0]), .B(state[1]), .C(cnt_write[0]), 
         .Z(seg_rck_N_166)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i1_2_lut_3_lut_adj_4.init = 16'h0404;
    LUT4 i2480_3_lut (.A(data[5]), .B(cnt_write[1]), .Z(n2685)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2480_3_lut.init = 16'heeee;
    LUT4 i2576_3_lut_3_lut (.A(state[0]), .B(state[1]), .C(cnt_write[5]), 
         .Z(clk_40khz_enable_16)) /* synthesis lut_function=(!(A+(B (C)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i2576_3_lut_3_lut.init = 16'h1515;
    LUT4 i1864_4_lut (.A(cnt[6]), .B(cnt[8]), .C(cnt[7]), .D(n4_adj_179), 
         .Z(clk_40khz_N_173)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1864_4_lut.init = 16'hfcec;
    LUT4 i1_4_lut (.A(n1962), .B(cnt[5]), .C(cnt[4]), .D(cnt[3]), .Z(n4_adj_179)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 i2482_3_lut (.A(data[1]), .B(cnt_write[1]), .Z(n2687)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2482_3_lut.init = 16'heeee;
    LUT4 i869_2_lut_rep_49 (.A(red_seg[5]), .B(red_seg[6]), .Z(n2957)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(108[37:42])
    defparam i869_2_lut_rep_49.init = 16'heeee;
    PFUMX i2733 (.BLUT(n3009), .ALUT(n3008), .C0(cnt_main[0]), .Z(n3010));
    LUT4 i1_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(n2601), 
         .D(cnt_main[2]), .Z(data_15__N_150[6])) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(103[6] 115[13])
    defparam i1_3_lut_4_lut.init = 16'hbfff;
    LUT4 n23_bdd_2_lut_2672 (.A(n2617), .B(cnt_main[0]), .Z(n2828)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam n23_bdd_2_lut_2672.init = 16'h7777;
    PFUMX i2624 (.BLUT(n2820), .ALUT(n2819), .C0(blue_seg[3]), .Z(n2821));
    LUT4 i405_4_lut (.A(cnt[7]), .B(cnt[8]), .C(cnt[6]), .D(n12), .Z(cnt_9__N_133)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i405_4_lut.init = 16'hccc8;
    LUT4 i2481_3_lut (.A(data[3]), .B(data[2]), .C(cnt_write[1]), .Z(n2686)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2481_3_lut.init = 16'hcaca;
    L6MUX21 i2632 (.D0(n2832), .D1(n2829), .SD(cnt_main[2]), .Z(data_15__N_150[9]));
    LUT4 i2_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(n2322), .Z(data_15__N_150[2])) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(103[6] 115[13])
    defparam i2_3_lut_4_lut.init = 16'hfbff;
    LUT4 n2838_bdd_3_lut_else_4_lut (.A(red_seg[10]), .B(red_seg[11]), .C(red_seg[9]), 
         .D(red_seg[8]), .Z(n2963)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B+(C))) */ ;
    defparam n2838_bdd_3_lut_else_4_lut.init = 16'hdef6;
    LUT4 i1_2_lut_2_lut_4_lut (.A(state[1]), .B(state[0]), .C(rst_n_c), 
         .D(cnt_main[0]), .Z(n2331)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i1_2_lut_2_lut_4_lut.init = 16'h0040;
    LUT4 red_seg_4__bdd_4_lut (.A(red_seg[4]), .B(red_seg[7]), .C(red_seg[5]), 
         .D(red_seg[6]), .Z(n2610)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;
    defparam red_seg_4__bdd_4_lut.init = 16'hd680;
    LUT4 blue_seg_11__bdd_4_lut (.A(blue_seg[11]), .B(blue_seg[9]), .C(blue_seg[8]), 
         .D(blue_seg[10]), .Z(n2870)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam blue_seg_11__bdd_4_lut.init = 16'hbdee;
    LUT4 i2606_4_lut_4_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(cnt_write[0]), 
         .D(cnt_write[5]), .Z(clk_40khz_enable_3)) /* synthesis lut_function=(!(A+(B (C+(D))))) */ ;
    defparam i2606_4_lut_4_lut_4_lut_4_lut.init = 16'h1115;
    LUT4 i2479_3_lut (.A(data[7]), .B(data[6]), .C(cnt_write[1]), .Z(n2684)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2479_3_lut.init = 16'hcaca;
    PFUMX i2630 (.BLUT(n2831), .ALUT(n2830), .C0(cnt_main[1]), .Z(n2832));
    LUT4 n7_bdd_3_lut_2653_4_lut_4_lut (.A(red_seg[4]), .B(red_seg[5]), 
         .C(red_seg[6]), .D(red_seg[7]), .Z(n2838)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D)+!C !(D)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(108[37:42])
    defparam n7_bdd_3_lut_2653_4_lut_4_lut.init = 16'hef7c;
    LUT4 i1_4_lut_adj_5 (.A(n2653), .B(state[1]), .C(cnt_write[0]), .D(cnt_write[5]), 
         .Z(n4)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_5.init = 16'h7333;
    L6MUX21 i2489 (.D0(n2692), .D1(n2693), .SD(cnt_write[4]), .Z(seg_din_N_172));
    LUT4 i20_4_lut_4_lut_4_lut (.A(red_seg[0]), .B(red_seg[1]), .C(red_seg[2]), 
         .D(red_seg[3]), .Z(n20)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(109[37:42])
    defparam i20_4_lut_4_lut_4_lut.init = 16'h02ba;
    PFUMX i2669 (.BLUT(n2893), .ALUT(n2892), .C0(cnt_main[0]), .Z(n2894));
    PFUMX i2731 (.BLUT(n2870), .ALUT(n3004), .C0(cnt_main[1]), .Z(n3005));
    LUT4 n2631_bdd_3_lut (.A(n2936), .B(n2610), .C(cnt_main[0]), .Z(n2830)) /* synthesis lut_function=(!(A (B+(C))+!A !((C)+!B))) */ ;
    defparam n2631_bdd_3_lut.init = 16'h5353;
    LUT4 score_data_11__N_66_1__bdd_4_lut_4_lut (.A(red_seg[0]), .B(red_seg[1]), 
         .C(red_seg[2]), .D(red_seg[3]), .Z(n2936)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam score_data_11__N_66_1__bdd_4_lut_4_lut.init = 16'hd860;
    PFUMX i2663 (.BLUT(n2883), .ALUT(n2882), .C0(cnt_main[0]), .Z(n2884));
    LUT4 i23_4_lut_4_lut_then_4_lut (.A(cnt_main[0]), .B(blue_seg[9]), .C(blue_seg[10]), 
         .D(blue_seg[8]), .Z(n3074)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(93[11] 162[5])
    defparam i23_4_lut_4_lut_then_4_lut.init = 16'h0200;
    LUT4 i83_4_lut_4_lut_4_lut_4_lut (.A(red_seg[4]), .B(red_seg[7]), .C(red_seg[5]), 
         .D(red_seg[6]), .Z(n81)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B+(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(108[37:42])
    defparam i83_4_lut_4_lut_4_lut_4_lut.init = 16'h232a;
    PFUMX i2649 (.BLUT(n2671), .ALUT(n2859), .C0(cnt_main[2]), .Z(data_15__N_150[8]));
    
endmodule
//
// Verilog Description of module \Debounce(KEY_WIDTH=2'b10) 
//

module \Debounce(KEY_WIDTH=2'b10)  (clk_c, key_blue_c_0, GND_net, key_red_c_1, 
            key_pulse_1__N_5) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input key_blue_c_0;
    input GND_net;
    input key_red_c_1;
    output [1:0]key_pulse_1__N_5;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(20[11:14])
    wire [1:0]key_jit /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(29[14:21])
    wire [1:0]key_pulse_1__N_5_c /* synthesis is_inv_clock=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(27[29:38])
    wire [1:0]key_n_r2;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(33[38:46])
    wire [1:0]key_n_r1;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(33[29:37])
    wire [1:0]key_n_r;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(33[21:28])
    wire [17:0]cnt;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(44[13:16])
    
    wire n3;
    wire [17:0]n77;
    
    wire clk_c_enable_2, n2295, n2288, n2289, n10, n2657, n2655, 
        n2621, n2294, n2647, n2627, n2293, n2292, n2291, n2287, 
        n2290;
    
    FD1S3AX key_n_r2_i0 (.D(key_n_r1[0]), .CK(clk_c), .Q(key_n_r2[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=43 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(35[8] 39[4])
    defparam key_n_r2_i0.GSR = "DISABLED";
    FD1S3AX key_n_r_i0 (.D(key_blue_c_0), .CK(clk_c), .Q(key_n_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=43 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(35[8] 39[4])
    defparam key_n_r_i0.GSR = "DISABLED";
    FD1S3IX cnt_377__i17 (.D(n77[17]), .CK(clk_c), .CD(n3), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i17.GSR = "ENABLED";
    FD1P3AY key_jit_i0_i0 (.D(key_n_r2[0]), .SP(clk_c_enable_2), .CK(clk_c), 
            .Q(key_jit[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=43 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(54[7:49])
    defparam key_jit_i0_i0.GSR = "ENABLED";
    LUT4 key_n_r1_1__I_0_i3_4_lut (.A(key_n_r1[0]), .B(key_n_r1[1]), .C(key_n_r2[0]), 
         .D(key_n_r2[1]), .Z(n3)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(42[18:40])
    defparam key_n_r1_1__I_0_i3_4_lut.init = 16'h7bde;
    FD1S3IX cnt_377__i7 (.D(n77[7]), .CK(clk_c), .CD(n3), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i7.GSR = "ENABLED";
    FD1S3IX cnt_377__i8 (.D(n77[8]), .CK(clk_c), .CD(n3), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i8.GSR = "ENABLED";
    FD1S3AX key_n_r1_i0 (.D(key_n_r[0]), .CK(clk_c), .Q(key_n_r1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=43 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(35[8] 39[4])
    defparam key_n_r1_i0.GSR = "DISABLED";
    FD1S3IX cnt_377__i9 (.D(n77[9]), .CK(clk_c), .CD(n3), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i9.GSR = "ENABLED";
    FD1S3IX cnt_377__i10 (.D(n77[10]), .CK(clk_c), .CD(n3), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i10.GSR = "ENABLED";
    FD1S3IX cnt_377__i11 (.D(n77[11]), .CK(clk_c), .CD(n3), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i11.GSR = "ENABLED";
    FD1S3IX cnt_377__i12 (.D(n77[12]), .CK(clk_c), .CD(n3), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i12.GSR = "ENABLED";
    FD1S3IX cnt_377__i13 (.D(n77[13]), .CK(clk_c), .CD(n3), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i13.GSR = "ENABLED";
    FD1S3IX cnt_377__i14 (.D(n77[14]), .CK(clk_c), .CD(n3), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i14.GSR = "ENABLED";
    CCU2D cnt_377_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2295), .S0(n77[17]));   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_377_add_4_19.INIT1 = 16'h0000;
    defparam cnt_377_add_4_19.INJECT1_0 = "NO";
    defparam cnt_377_add_4_19.INJECT1_1 = "NO";
    FD1S3IX cnt_377__i0 (.D(n77[0]), .CK(clk_c), .CD(n3), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i0.GSR = "ENABLED";
    CCU2D cnt_377_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2288), 
          .COUT(n2289), .S0(n77[3]), .S1(n77[4]));   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_377_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_377_add_4_5.INJECT1_0 = "NO";
    defparam cnt_377_add_4_5.INJECT1_1 = "NO";
    FD1P3AY key_jit_i0_i1 (.D(key_n_r2[1]), .SP(clk_c_enable_2), .CK(clk_c), 
            .Q(key_jit[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=43 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(54[7:49])
    defparam key_jit_i0_i1.GSR = "ENABLED";
    FD1S3AX key_n_r_i1 (.D(key_red_c_1), .CK(clk_c), .Q(key_n_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=43 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(35[8] 39[4])
    defparam key_n_r_i1.GSR = "DISABLED";
    FD1S3AX key_n_r2_i1 (.D(key_n_r1[1]), .CK(clk_c), .Q(key_n_r2[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=43 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(35[8] 39[4])
    defparam key_n_r2_i1.GSR = "DISABLED";
    LUT4 i2610_4_lut (.A(cnt[12]), .B(n10), .C(n2657), .D(n2655), .Z(clk_c_enable_2)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(54[11:27])
    defparam i2610_4_lut.init = 16'h1000;
    LUT4 i4_4_lut (.A(cnt[7]), .B(cnt[14]), .C(cnt[9]), .D(cnt[10]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2452_4_lut (.A(cnt[11]), .B(cnt[15]), .C(cnt[4]), .D(n2621), 
         .Z(n2657)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2452_4_lut.init = 16'h8000;
    FD1S3AX key_n_r1_i1 (.D(key_n_r[1]), .CK(clk_c), .Q(key_n_r1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=35, LSE_RLINE=43 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(35[8] 39[4])
    defparam key_n_r1_i1.GSR = "DISABLED";
    CCU2D cnt_377_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2294), .COUT(n2295), .S0(n77[15]), .S1(n77[16]));   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_377_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_377_add_4_17.INJECT1_0 = "NO";
    defparam cnt_377_add_4_17.INJECT1_1 = "NO";
    LUT4 i2450_4_lut (.A(cnt[17]), .B(n2647), .C(n2627), .D(cnt[8]), 
         .Z(n2655)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2450_4_lut.init = 16'h8000;
    LUT4 i2419_2_lut (.A(cnt[16]), .B(cnt[2]), .Z(n2621)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2419_2_lut.init = 16'h8888;
    CCU2D cnt_377_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2293), .COUT(n2294), .S0(n77[13]), .S1(n77[14]));   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_377_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_377_add_4_15.INJECT1_0 = "NO";
    defparam cnt_377_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_377_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2292), .COUT(n2293), .S0(n77[11]), .S1(n77[12]));   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_377_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_377_add_4_13.INJECT1_0 = "NO";
    defparam cnt_377_add_4_13.INJECT1_1 = "NO";
    LUT4 i2442_4_lut (.A(cnt[1]), .B(cnt[3]), .C(cnt[0]), .D(cnt[5]), 
         .Z(n2647)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2442_4_lut.init = 16'h8000;
    CCU2D cnt_377_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2291), 
          .COUT(n2292), .S0(n77[9]), .S1(n77[10]));   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_377_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_377_add_4_11.INJECT1_0 = "NO";
    defparam cnt_377_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_377_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2287), 
          .COUT(n2288), .S0(n77[1]), .S1(n77[2]));   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_377_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_377_add_4_3.INJECT1_0 = "NO";
    defparam cnt_377_add_4_3.INJECT1_1 = "NO";
    FD1S3IX cnt_377__i6 (.D(n77[6]), .CK(clk_c), .CD(n3), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i6.GSR = "ENABLED";
    LUT4 i2425_2_lut (.A(cnt[6]), .B(cnt[13]), .Z(n2627)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2425_2_lut.init = 16'h8888;
    FD1S3IX cnt_377__i16 (.D(n77[16]), .CK(clk_c), .CD(n3), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i16.GSR = "ENABLED";
    FD1S3IX cnt_377__i15 (.D(n77[15]), .CK(clk_c), .CD(n3), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i15.GSR = "ENABLED";
    FD1S3IX cnt_377__i1 (.D(n77[1]), .CK(clk_c), .CD(n3), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i1.GSR = "ENABLED";
    FD1S3IX cnt_377__i2 (.D(n77[2]), .CK(clk_c), .CD(n3), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i2.GSR = "ENABLED";
    FD1S3IX cnt_377__i3 (.D(n77[3]), .CK(clk_c), .CD(n3), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i3.GSR = "ENABLED";
    FD1S3IX cnt_377__i4 (.D(n77[4]), .CK(clk_c), .CD(n3), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i4.GSR = "ENABLED";
    FD1S3IX cnt_377__i5 (.D(n77[5]), .CK(clk_c), .CD(n3), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377__i5.GSR = "ENABLED";
    INV i2788 (.A(key_jit[0]), .Z(key_pulse_1__N_5[0]));
    CCU2D cnt_377_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2290), 
          .COUT(n2291), .S0(n77[7]), .S1(n77[8]));   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_377_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_377_add_4_9.INJECT1_0 = "NO";
    defparam cnt_377_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_377_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2287), 
          .S1(n77[0]));   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377_add_4_1.INIT0 = 16'hF000;
    defparam cnt_377_add_4_1.INIT1 = 16'h0555;
    defparam cnt_377_add_4_1.INJECT1_0 = "NO";
    defparam cnt_377_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_377_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2289), 
          .COUT(n2290), .S0(n77[5]), .S1(n77[6]));   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(49[17:27])
    defparam cnt_377_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_377_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_377_add_4_7.INJECT1_0 = "NO";
    defparam cnt_377_add_4_7.INJECT1_1 = "NO";
    INV i2789 (.A(key_jit[1]), .Z(key_pulse_1__N_5[1]));
    
endmodule
//
// Verilog Description of module Counter_U0
//

module Counter_U0 (red_seg, \key_pulse_1__N_5[1] , \key_pulse_1__N_5[1]_enable_8 , 
            \key_pulse_1__N_5[1]_enable_5 , n2951, n2942, n860, n5, 
            n2957, n2322, cnt_main, n3075, n81, n20, n26, n2814, 
            \score_data_11__N_66[1] , n2824, \blue_seg[1] , \blue_seg[0] , 
            \blue_seg[3] , \blue_seg[2] , n2826, n2953, \data_15__N_150[12] , 
            n2854, \blue_seg[7] , \blue_seg[6] , \blue_seg[5] , \blue_seg[4] ) /* synthesis syn_module_defined=1 */ ;
    output [11:0]red_seg;
    input \key_pulse_1__N_5[1] ;
    input \key_pulse_1__N_5[1]_enable_8 ;
    input \key_pulse_1__N_5[1]_enable_5 ;
    input n2951;
    input n2942;
    input n860;
    output n5;
    input n2957;
    output n2322;
    input [2:0]cnt_main;
    input n3075;
    input n81;
    input n20;
    input n26;
    output n2814;
    input \score_data_11__N_66[1] ;
    output n2824;
    input \blue_seg[1] ;
    input \blue_seg[0] ;
    input \blue_seg[3] ;
    input \blue_seg[2] ;
    output n2826;
    input n2953;
    output \data_15__N_150[12] ;
    output n2854;
    input \blue_seg[7] ;
    input \blue_seg[6] ;
    input \blue_seg[5] ;
    input \blue_seg[4] ;
    
    wire \key_pulse_1__N_5[1]  /* synthesis is_inv_clock=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(27[29:38])
    
    wire n1323, n2558;
    wire [3:0]n28;
    
    wire n17;
    wire [3:0]n9;
    
    wire n3038, n3072, n3035, n2999, n2998, n3034;
    wire [3:0]score_data_11__N_66;
    
    wire n3036;
    
    FD1P3IX score_data_i9 (.D(n2558), .SP(\key_pulse_1__N_5[1]_enable_8 ), 
            .CD(n1323), .CK(\key_pulse_1__N_5[1] ), .Q(red_seg[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i9.GSR = "ENABLED";
    FD1P3IX score_data_i7 (.D(n28[3]), .SP(\key_pulse_1__N_5[1]_enable_5 ), 
            .CD(\key_pulse_1__N_5[1]_enable_8 ), .CK(\key_pulse_1__N_5[1] ), 
            .Q(red_seg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i7.GSR = "ENABLED";
    FD1S3IX score_data_i0 (.D(n2951), .CK(\key_pulse_1__N_5[1] ), .CD(\key_pulse_1__N_5[1]_enable_5 ), 
            .Q(red_seg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i0.GSR = "ENABLED";
    FD1P3IX score_data_i4 (.D(n2942), .SP(\key_pulse_1__N_5[1]_enable_5 ), 
            .CD(\key_pulse_1__N_5[1]_enable_8 ), .CK(\key_pulse_1__N_5[1] ), 
            .Q(red_seg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i4.GSR = "ENABLED";
    FD1P3IX score_data_i6 (.D(n28[2]), .SP(\key_pulse_1__N_5[1]_enable_5 ), 
            .CD(\key_pulse_1__N_5[1]_enable_8 ), .CK(\key_pulse_1__N_5[1] ), 
            .Q(red_seg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i6.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(red_seg[11]), .B(red_seg[8]), .Z(n17)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1P3IX score_data_i5 (.D(n860), .SP(\key_pulse_1__N_5[1]_enable_5 ), 
            .CD(\key_pulse_1__N_5[1]_enable_8 ), .CK(\key_pulse_1__N_5[1] ), 
            .Q(red_seg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i5.GSR = "ENABLED";
    FD1P3IX score_data_i10 (.D(n9[2]), .SP(\key_pulse_1__N_5[1]_enable_8 ), 
            .CD(n1323), .CK(\key_pulse_1__N_5[1] ), .Q(red_seg[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i10.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(red_seg[4]), .B(red_seg[7]), .C(n5), .D(n2957), 
         .Z(n2322)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 n23_bdd_3_lut_4_lut (.A(n3038), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(n3075), .Z(n3072)) /* synthesis lut_function=(!(A (C (D))+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam n23_bdd_3_lut_4_lut.init = 16'h0bfb;
    LUT4 cnt_main_0__bdd_4_lut (.A(red_seg[10]), .B(red_seg[8]), .C(red_seg[11]), 
         .D(red_seg[9]), .Z(n3038)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A ((C (D))+!B)) */ ;
    defparam cnt_main_0__bdd_4_lut.init = 16'hf3b1;
    LUT4 n26_bdd_3_lut (.A(n81), .B(n20), .C(cnt_main[0]), .Z(n3035)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam n26_bdd_3_lut.init = 16'h3535;
    LUT4 n26_bdd_4_lut (.A(n26), .B(n2999), .C(n2998), .D(cnt_main[0]), 
         .Z(n3034)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;
    defparam n26_bdd_4_lut.init = 16'h5f77;
    LUT4 red_seg_10__bdd_4_lut_2626 (.A(red_seg[10]), .B(red_seg[9]), .C(red_seg[8]), 
         .D(red_seg[11]), .Z(n2814)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A (B (C (D))))) */ ;
    defparam red_seg_10__bdd_4_lut_2626.init = 16'h35d7;
    FD1P3IX score_data_i11 (.D(n9[3]), .SP(\key_pulse_1__N_5[1]_enable_8 ), 
            .CD(n1323), .CK(\key_pulse_1__N_5[1] ), .Q(red_seg[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i11.GSR = "ENABLED";
    LUT4 i489_3_lut_4_lut (.A(red_seg[1]), .B(red_seg[0]), .C(red_seg[2]), 
         .D(red_seg[3]), .Z(score_data_11__N_66[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(37[31:53])
    defparam i489_3_lut_4_lut.init = 16'h7f80;
    LUT4 i482_2_lut_3_lut (.A(red_seg[1]), .B(red_seg[0]), .C(red_seg[2]), 
         .Z(score_data_11__N_66[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(37[31:53])
    defparam i482_2_lut_3_lut.init = 16'h7878;
    FD1S3IX score_data_i3 (.D(score_data_11__N_66[3]), .CK(\key_pulse_1__N_5[1] ), 
            .CD(\key_pulse_1__N_5[1]_enable_5 ), .Q(red_seg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i3.GSR = "ENABLED";
    FD1S3IX score_data_i2 (.D(score_data_11__N_66[2]), .CK(\key_pulse_1__N_5[1] ), 
            .CD(\key_pulse_1__N_5[1]_enable_5 ), .Q(red_seg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i2.GSR = "ENABLED";
    FD1S3IX score_data_i1 (.D(\score_data_11__N_66[1] ), .CK(\key_pulse_1__N_5[1] ), 
            .CD(\key_pulse_1__N_5[1]_enable_5 ), .Q(red_seg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i1.GSR = "ENABLED";
    LUT4 i424_2_lut_3_lut (.A(red_seg[9]), .B(red_seg[8]), .C(red_seg[10]), 
         .Z(n9[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(35[30:53])
    defparam i424_2_lut_3_lut.init = 16'h7878;
    LUT4 i1123_4_lut (.A(\key_pulse_1__N_5[1]_enable_8 ), .B(red_seg[9]), 
         .C(n17), .D(red_seg[10]), .Z(n1323)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam i1123_4_lut.init = 16'h0020;
    LUT4 i431_3_lut_4_lut (.A(red_seg[9]), .B(red_seg[8]), .C(red_seg[10]), 
         .D(red_seg[11]), .Z(n9[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(35[30:53])
    defparam i431_3_lut_4_lut.init = 16'h7f80;
    LUT4 red_seg_10__bdd_4_lut (.A(red_seg[10]), .B(red_seg[8]), .C(red_seg[9]), 
         .D(red_seg[11]), .Z(n2824)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !(B (C+(D))+!B !(C (D))))) */ ;
    defparam red_seg_10__bdd_4_lut.init = 16'h6f79;
    LUT4 cnt_main_0__bdd_4_lut_2726 (.A(\blue_seg[1] ), .B(\blue_seg[0] ), 
         .C(\blue_seg[3] ), .D(\blue_seg[2] ), .Z(n2998)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C (D)))) */ ;
    defparam cnt_main_0__bdd_4_lut_2726.init = 16'h0d5d;
    LUT4 red_seg_1__bdd_4_lut (.A(red_seg[1]), .B(red_seg[0]), .C(red_seg[3]), 
         .D(red_seg[2]), .Z(n2826)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B (C (D)+!C !(D)))) */ ;
    defparam red_seg_1__bdd_4_lut.init = 16'hb7f1;
    FD1P3IX score_data_i8 (.D(n2953), .SP(\key_pulse_1__N_5[1]_enable_8 ), 
            .CD(n1323), .CK(\key_pulse_1__N_5[1] ), .Q(red_seg[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=52 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i8.GSR = "ENABLED";
    L6MUX21 i2759 (.D0(n3072), .D1(n3036), .SD(cnt_main[1]), .Z(\data_15__N_150[12] ));
    PFUMX i2754 (.BLUT(n3035), .ALUT(n3034), .C0(cnt_main[2]), .Z(n3036));
    LUT4 i2_3_lut_4_lut (.A(red_seg[11]), .B(red_seg[8]), .C(red_seg[10]), 
         .D(red_seg[9]), .Z(n5)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 red_seg_9__bdd_4_lut (.A(red_seg[9]), .B(red_seg[8]), .C(red_seg[11]), 
         .D(red_seg[10]), .Z(n2854)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A !(B+!(C (D))))) */ ;
    defparam red_seg_9__bdd_4_lut.init = 16'h4ffd;
    LUT4 i15_2_lut (.A(red_seg[9]), .B(red_seg[8]), .Z(n2558)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i460_3_lut_4_lut (.A(red_seg[5]), .B(red_seg[4]), .C(red_seg[6]), 
         .D(red_seg[7]), .Z(n28[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(36[32:54])
    defparam i460_3_lut_4_lut.init = 16'h7f80;
    LUT4 i453_2_lut_3_lut (.A(red_seg[5]), .B(red_seg[4]), .C(red_seg[6]), 
         .Z(n28[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(36[32:54])
    defparam i453_2_lut_3_lut.init = 16'h7878;
    LUT4 cnt_main_0__bdd_4_lut_2756 (.A(\blue_seg[7] ), .B(\blue_seg[6] ), 
         .C(\blue_seg[5] ), .D(\blue_seg[4] ), .Z(n2999)) /* synthesis lut_function=(!(A (B+(C))+!A !((D)+!C))) */ ;
    defparam cnt_main_0__bdd_4_lut_2756.init = 16'h5707;
    
endmodule
//
// Verilog Description of module Counter
//

module Counter (blue_seg, cnt_main, \key_pulse_1__N_5[0] , n2819, n866, 
            n2939, \dat_en[2] , n2601, n26, n2940, n2823, \data_15__N_150[13] , 
            n2946, n2917, n2826, n26_adj_1, \red_seg[10] , \red_seg[8] , 
            \red_seg[11] , \red_seg[9] , n23) /* synthesis syn_module_defined=1 */ ;
    output [11:0]blue_seg;
    input [2:0]cnt_main;
    input \key_pulse_1__N_5[0] ;
    output n2819;
    input n866;
    input n2939;
    output \dat_en[2] ;
    output n2601;
    output n26;
    input n2940;
    input n2823;
    output \data_15__N_150[13] ;
    input n2946;
    output n2917;
    input n2826;
    output n26_adj_1;
    input \red_seg[10] ;
    input \red_seg[8] ;
    input \red_seg[11] ;
    input \red_seg[9] ;
    output n23;
    
    wire \key_pulse_1__N_5[0]  /* synthesis is_inv_clock=1 */ ;   // f:/fpga_project/baseboard/lab4_game_score/debounce.v(27[29:38])
    
    wire key_pulse_1_N_5_0_enable_7, n2967, n2949, key_pulse_1_N_5_0_enable_8, 
        n1311, n2966, n4, n2950, n2600, n97, n96;
    wire [3:0]n9;
    wire [3:0]score_data_11__N_66;
    
    wire n3077, n2915, n3054, n2916, n3078, n3051, n3053, n6, 
        n3050;
    wire [3:0]n28;
    
    wire n3055, n3056, n3076;
    
    LUT4 i2598_3_lut_4_lut (.A(blue_seg[1]), .B(blue_seg[2]), .C(blue_seg[3]), 
         .D(blue_seg[0]), .Z(key_pulse_1_N_5_0_enable_7)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(29[6:29])
    defparam i2598_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_4_lut_then_4_lut (.A(cnt_main[1]), .B(blue_seg[5]), .C(blue_seg[7]), 
         .D(blue_seg[6]), .Z(n2967)) /* synthesis lut_function=(!((B (C)+!B !(C (D)+!C !(D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(85[13:21])
    defparam i1_4_lut_then_4_lut.init = 16'h280a;
    FD1S3IX score_data_i0 (.D(n2949), .CK(\key_pulse_1__N_5[0] ), .CD(key_pulse_1_N_5_0_enable_7), 
            .Q(blue_seg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i0.GSR = "ENABLED";
    LUT4 blue_seg_0__bdd_4_lut_2657_3_lut (.A(blue_seg[0]), .B(blue_seg[2]), 
         .C(blue_seg[1]), .Z(n2819)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam blue_seg_0__bdd_4_lut_2657_3_lut.init = 16'h9090;
    FD1P3IX score_data_i9 (.D(n866), .SP(key_pulse_1_N_5_0_enable_8), .CD(n1311), 
            .CK(\key_pulse_1__N_5[0] ), .Q(blue_seg[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i9.GSR = "ENABLED";
    LUT4 i1_4_lut_else_4_lut (.A(cnt_main[1]), .B(blue_seg[5]), .C(blue_seg[7]), 
         .D(blue_seg[6]), .Z(n2966)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(85[13:21])
    defparam i1_4_lut_else_4_lut.init = 16'h0008;
    LUT4 i2589_3_lut_4_lut (.A(n2939), .B(key_pulse_1_N_5_0_enable_7), .C(n4), 
         .D(blue_seg[11]), .Z(n1311)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(37[12:54])
    defparam i2589_3_lut_4_lut.init = 16'h0800;
    LUT4 i1360_1_lut_rep_42 (.A(blue_seg[4]), .Z(n2950)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam i1360_1_lut_rep_42.init = 16'h5555;
    LUT4 i3_4_lut (.A(blue_seg[7]), .B(\dat_en[2] ), .C(blue_seg[6]), 
         .D(n2600), .Z(n2601)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    PFUMX i1322 (.BLUT(n97), .ALUT(n96), .C0(cnt_main[0]), .Z(n26));
    LUT4 i1_2_lut (.A(blue_seg[4]), .B(blue_seg[5]), .Z(n2600)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX score_data_i10 (.D(n9[2]), .SP(key_pulse_1_N_5_0_enable_8), 
            .CD(n1311), .CK(\key_pulse_1__N_5[0] ), .Q(blue_seg[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i10.GSR = "ENABLED";
    LUT4 i576_3_lut_4_lut (.A(blue_seg[1]), .B(blue_seg[0]), .C(blue_seg[2]), 
         .D(blue_seg[3]), .Z(score_data_11__N_66[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i576_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX score_data_i11 (.D(n9[3]), .SP(key_pulse_1_N_5_0_enable_8), 
            .CD(n1311), .CK(\key_pulse_1__N_5[0] ), .Q(blue_seg[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i11.GSR = "ENABLED";
    LUT4 n51_bdd_3_lut_2775_then_4_lut (.A(blue_seg[9]), .B(blue_seg[8]), 
         .C(blue_seg[11]), .D(blue_seg[10]), .Z(n3077)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B (C (D)+!C !(D)))) */ ;
    defparam n51_bdd_3_lut_2775_then_4_lut.init = 16'hb7f1;
    LUT4 i569_2_lut_3_lut (.A(blue_seg[1]), .B(blue_seg[0]), .C(blue_seg[2]), 
         .Z(score_data_11__N_66[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i569_2_lut_3_lut.init = 16'h7878;
    LUT4 i2592_2_lut_rep_30_3_lut (.A(blue_seg[5]), .B(n2940), .C(key_pulse_1_N_5_0_enable_7), 
         .Z(key_pulse_1_N_5_0_enable_8)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam i2592_2_lut_rep_30_3_lut.init = 16'h4040;
    LUT4 blue_seg_6__bdd_4_lut_2688 (.A(blue_seg[3]), .B(blue_seg[1]), .C(blue_seg[2]), 
         .D(blue_seg[0]), .Z(n2915)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A !((C+(D))+!B))) */ ;
    defparam blue_seg_6__bdd_4_lut_2688.init = 16'h7f5b;
    LUT4 n2966_bdd_3_lut (.A(n2966), .B(n2967), .C(blue_seg[4]), .Z(n3054)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam n2966_bdd_3_lut.init = 16'h3535;
    LUT4 blue_seg_6__bdd_4_lut_2701 (.A(blue_seg[6]), .B(blue_seg[7]), .C(blue_seg[4]), 
         .D(blue_seg[5]), .Z(n2916)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !(B+(C+!(D))))) */ ;
    defparam blue_seg_6__bdd_4_lut_2701.init = 16'h76f7;
    LUT4 n3052_bdd_3_lut (.A(n3078), .B(n3051), .C(cnt_main[1]), .Z(n3053)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3052_bdd_3_lut.init = 16'hcaca;
    FD1S3IX score_data_i3 (.D(score_data_11__N_66[3]), .CK(\key_pulse_1__N_5[0] ), 
            .CD(key_pulse_1_N_5_0_enable_7), .Q(blue_seg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i3.GSR = "ENABLED";
    FD1P3IX score_data_i4 (.D(n2950), .SP(key_pulse_1_N_5_0_enable_7), .CD(key_pulse_1_N_5_0_enable_8), 
            .CK(\key_pulse_1__N_5[0] ), .Q(blue_seg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i4.GSR = "ENABLED";
    FD1S3IX score_data_i2 (.D(score_data_11__N_66[2]), .CK(\key_pulse_1__N_5[0] ), 
            .CD(key_pulse_1_N_5_0_enable_7), .Q(blue_seg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i2.GSR = "ENABLED";
    FD1S3IX score_data_i1 (.D(score_data_11__N_66[1]), .CK(\key_pulse_1__N_5[0] ), 
            .CD(key_pulse_1_N_5_0_enable_7), .Q(blue_seg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i1.GSR = "ENABLED";
    FD1P3IX score_data_i5 (.D(n6), .SP(key_pulse_1_N_5_0_enable_7), .CD(key_pulse_1_N_5_0_enable_8), 
            .CK(\key_pulse_1__N_5[0] ), .Q(blue_seg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i5.GSR = "ENABLED";
    LUT4 n2826_bdd_4_lut_2772 (.A(blue_seg[3]), .B(blue_seg[1]), .C(blue_seg[0]), 
         .D(blue_seg[2]), .Z(n3050)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;
    defparam n2826_bdd_4_lut_2772.init = 16'h9fab;
    FD1P3IX score_data_i6 (.D(n28[2]), .SP(key_pulse_1_N_5_0_enable_7), 
            .CD(key_pulse_1_N_5_0_enable_8), .CK(\key_pulse_1__N_5[0] ), 
            .Q(blue_seg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i6.GSR = "ENABLED";
    LUT4 n2966_bdd_2_lut (.A(n2823), .B(cnt_main[1]), .Z(n3055)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam n2966_bdd_2_lut.init = 16'hbbbb;
    LUT4 n3056_bdd_3_lut (.A(n3056), .B(n3053), .C(cnt_main[0]), .Z(\data_15__N_150[13] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3056_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_1 (.A(blue_seg[2]), .B(blue_seg[0]), .Z(n96)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'heeee;
    LUT4 i547_3_lut_4_lut (.A(blue_seg[5]), .B(blue_seg[4]), .C(blue_seg[6]), 
         .D(blue_seg[7]), .Z(n28[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(36[32:54])
    defparam i547_3_lut_4_lut.init = 16'h7f80;
    LUT4 i518_3_lut_4_lut (.A(blue_seg[9]), .B(blue_seg[8]), .C(blue_seg[10]), 
         .D(blue_seg[11]), .Z(n9[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(35[30:53])
    defparam i518_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX score_data_i7 (.D(n28[3]), .SP(key_pulse_1_N_5_0_enable_7), 
            .CD(key_pulse_1_N_5_0_enable_8), .CK(\key_pulse_1__N_5[0] ), 
            .Q(blue_seg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i7.GSR = "ENABLED";
    LUT4 i1328_1_lut_rep_41 (.A(blue_seg[0]), .Z(n2949)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam i1328_1_lut_rep_41.init = 16'h5555;
    LUT4 i511_2_lut_3_lut (.A(blue_seg[9]), .B(blue_seg[8]), .C(blue_seg[10]), 
         .Z(n9[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(35[30:53])
    defparam i511_2_lut_3_lut.init = 16'h7878;
    LUT4 i36_2_lut (.A(blue_seg[4]), .B(blue_seg[5]), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/game_score.v(54[13:21])
    defparam i36_2_lut.init = 16'h6666;
    FD1P3IX score_data_i8 (.D(n2946), .SP(key_pulse_1_N_5_0_enable_8), .CD(n1311), 
            .CK(\key_pulse_1__N_5[0] ), .Q(blue_seg[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=61 */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam score_data_i8.GSR = "ENABLED";
    PFUMX i2768 (.BLUT(n3055), .ALUT(n3054), .C0(cnt_main[2]), .Z(n3056));
    PFUMX i2689 (.BLUT(n2916), .ALUT(n2915), .C0(cnt_main[0]), .Z(n2917));
    PFUMX i2765 (.BLUT(n2826), .ALUT(n3050), .C0(cnt_main[2]), .Z(n3051));
    LUT4 i1_2_lut_3_lut (.A(blue_seg[10]), .B(blue_seg[9]), .C(blue_seg[8]), 
         .Z(n4)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(33[8:32])
    defparam i1_2_lut_3_lut.init = 16'hefef;
    LUT4 i2_3_lut_4_lut (.A(blue_seg[10]), .B(blue_seg[9]), .C(blue_seg[8]), 
         .D(blue_seg[11]), .Z(\dat_en[2] )) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(33[8:32])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_2 (.A(blue_seg[6]), .B(blue_seg[4]), .Z(n97)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_2.init = 16'heeee;
    PFUMX i2783 (.BLUT(n3076), .ALUT(n3077), .C0(cnt_main[2]), .Z(n3078));
    LUT4 i540_2_lut_3_lut (.A(blue_seg[5]), .B(blue_seg[4]), .C(blue_seg[6]), 
         .Z(n28[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(36[32:54])
    defparam i540_2_lut_3_lut.init = 16'h7878;
    LUT4 i50_4_lut_4_lut (.A(blue_seg[0]), .B(blue_seg[3]), .C(blue_seg[1]), 
         .D(blue_seg[2]), .Z(n26_adj_1)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/segment_scan.v(85[13:21])
    defparam i50_4_lut_4_lut.init = 16'hd680;
    LUT4 n51_bdd_3_lut_2775_else_4_lut (.A(\red_seg[10] ), .B(\red_seg[8] ), 
         .C(\red_seg[11] ), .D(\red_seg[9] ), .Z(n3076)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam n51_bdd_3_lut_2775_else_4_lut.init = 16'hf27b;
    LUT4 i2572_2_lut_2_lut (.A(blue_seg[0]), .B(blue_seg[1]), .Z(score_data_11__N_66[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab4_game_score/counter.v(28[7] 38[5])
    defparam i2572_2_lut_2_lut.init = 16'h6666;
    LUT4 blue_seg_4__bdd_4_lut_2659 (.A(blue_seg[4]), .B(blue_seg[6]), .C(blue_seg[5]), 
         .D(blue_seg[7]), .Z(n23)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C (D)))+!A (B (C+(D)))) */ ;
    defparam blue_seg_4__bdd_4_lut_2659.init = 16'he448;
    
endmodule
