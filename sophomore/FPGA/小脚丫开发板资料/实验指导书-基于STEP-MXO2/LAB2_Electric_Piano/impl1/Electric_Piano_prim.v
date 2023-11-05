// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Thu Jan 24 15:09:09 2019
//
// Verilog Description of module Electric_Piano
//

module Electric_Piano (clk, rst_n, col, row, beeper) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(18[8:22])
    input clk;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(20[11:14])
    input rst_n;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(21[11:16])
    input [3:0]col;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(22[15:18])
    output [3:0]row;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(23[16:19])
    output beeper;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(24[12:18])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(20[11:14])
    wire clk_200hz /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(45[10:19])
    
    wire rst_n_c, col_c_3, col_c_2, col_c_1, col_c_0, row_c_3, row_c_2, 
        row_c_1, row_c_0, beeper_c;
    wire [15:0]key_out;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(27[15:22])
    
    wire VCC_net, n5, n39, n1104, n1134, clk_200hz_N_42, n1539, 
        n1538, n836, clk_c_enable_8, n46, GND_net, n1588, n1604, 
        n48, n1586, n7, n1583, n1582, n1580, n23, n1572, n1566, 
        n1359, n1338, n4, n771, n1559, n6, n1354, n6_adj_280, 
        n1364, n4_adj_281, n1554, n1553, n8, n1465;
    
    VHI i1162 (.Z(VCC_net));
    OB row_pad_3 (.I(row_c_3), .O(row[3]));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(23[16:19])
    OB row_pad_2 (.I(row_c_2), .O(row[2]));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(23[16:19])
    GSR GSR_INST (.GSR(rst_n_c));
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(23[16:19])
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(23[16:19])
    OB beeper_pad (.I(beeper_c), .O(beeper));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(24[12:18])
    IB clk_pad (.I(clk), .O(clk_c));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(20[11:14])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(21[11:16])
    IB col_pad_3 (.I(col[3]), .O(col_c_3));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(22[15:18])
    IB col_pad_2 (.I(col[2]), .O(col_c_2));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(22[15:18])
    IB col_pad_1 (.I(col[1]), .O(col_c_1));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(22[15:18])
    IB col_pad_0 (.I(col[0]), .O(col_c_0));   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(22[15:18])
    LUT4 i1006_2_lut_rep_19 (.A(clk_200hz), .B(clk_200hz_N_42), .Z(clk_c_enable_8)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(67[12] 76[6])
    defparam i1006_2_lut_rep_19.init = 16'h4444;
    VLO i1 (.Z(GND_net));
    Beeper beeper_I_0 (.beeper_c(beeper_c), .clk_c(clk_c), .GND_net(GND_net), 
           .n6(n6_adj_280), .n5(n5), .n1583(n1583), .n7(n7), .n6_adj_48(n6), 
           .key_out({key_out}), .n8(n8), .n836(n836), .n46(n46), .n4(n4_adj_281), 
           .n1586(n1586), .n1559(n1559), .n1580(n1580), .n1354(n1354), 
           .n1539(n1539), .n1604(n1604), .n48(n48), .n1588(n1588), .n1582(n1582), 
           .n1572(n1572), .n1553(n1553), .n1134(n1134), .n1566(n1566), 
           .n39(n39), .n1538(n1538), .n1338(n1338), .n23(n23), .n771(n771), 
           .n1359(n1359), .n4_adj_49(n4), .n1104(n1104), .n1465(n1465), 
           .n1554(n1554), .n1364(n1364)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(41[8] 47[2])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    Array_KeyBoard u1 (.clk_200hz(clk_200hz), .clk_c(clk_c), .col_c_0(col_c_0), 
            .row_c_0(row_c_0), .clk_c_enable_8(clk_c_enable_8), .key_out({key_out}), 
            .n1580(n1580), .n6(n6_adj_280), .n1354(n1354), .n48(n48), 
            .n4(n4), .n5(n5), .clk_200hz_N_42(clk_200hz_N_42), .n1582(n1582), 
            .n836(n836), .n1364(n1364), .n771(n771), .n1134(n1134), 
            .n1588(n1588), .n1554(n1554), .n1553(n1553), .n39(n39), 
            .row_c_1(row_c_1), .row_c_2(row_c_2), .col_c_3(col_c_3), .n1559(n1559), 
            .n1604(n1604), .col_c_2(col_c_2), .col_c_1(col_c_1), .row_c_3(row_c_3), 
            .n8(n8), .n4_adj_1(n4_adj_281), .n46(n46), .n1359(n1359), 
            .n6_adj_2(n6), .n1583(n1583), .n1338(n1338), .n1465(n1465), 
            .n1572(n1572), .n1104(n1104), .GND_net(GND_net), .n1566(n1566), 
            .n7(n7), .n1586(n1586), .n1538(n1538), .n1539(n1539), .n23(n23)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(30[16] 38[2])
    
endmodule
//
// Verilog Description of module Beeper
//

module Beeper (beeper_c, clk_c, GND_net, n6, n5, n1583, n7, n6_adj_48, 
            key_out, n8, n836, n46, n4, n1586, n1559, n1580, 
            n1354, n1539, n1604, n48, n1588, n1582, n1572, n1553, 
            n1134, n1566, n39, n1538, n1338, n23, n771, n1359, 
            n4_adj_49, n1104, n1465, n1554, n1364) /* synthesis syn_module_defined=1 */ ;
    output beeper_c;
    input clk_c;
    input GND_net;
    input n6;
    input n5;
    input n1583;
    input n7;
    input n6_adj_48;
    input [15:0]key_out;
    input n8;
    input n836;
    input n46;
    input n4;
    input n1586;
    input n1559;
    output n1580;
    output n1354;
    input n1539;
    input n1604;
    output n48;
    input n1588;
    output n1582;
    output n1572;
    input n1553;
    input n1134;
    input n1566;
    input n39;
    output n1538;
    input n1338;
    input n23;
    output n771;
    output n1359;
    output n4_adj_49;
    input n1104;
    input n1465;
    input n1554;
    output n1364;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(20[11:14])
    
    wire n5_c, n6_c, n5_adj_254, n6_adj_257, n4_c, n7_c, n8_c, 
        n5_adj_258, n6_adj_259, n5_adj_260, n6_adj_261, n799, n4_adj_262, 
        n8_adj_264, n5_adj_265, n6_adj_266, n5_adj_267, n7_adj_269, 
        n8_adj_270, n5_adj_272, n6_adj_273, n5_adj_274, n6_adj_275, 
        n7_adj_276, n8_adj_277;
    
    \PWM(WIDTH=16)  u2 (.beeper_c(beeper_c), .clk_c(clk_c), .GND_net(GND_net), 
            .n5(n5_c), .n6(n6_c), .n5_adj_24(n5_adj_254), .n6_adj_25(n6), 
            .n5_adj_26(n5), .n6_adj_27(n6_adj_257), .n1583(n1583), .n4(n4_c), 
            .n7(n7_c), .n8(n8_c), .n5_adj_28(n5_adj_258), .n6_adj_29(n6_adj_259), 
            .n5_adj_30(n5_adj_260), .n6_adj_31(n6_adj_261), .n799(n799), 
            .n4_adj_32(n4_adj_262), .n7_adj_33(n7), .n8_adj_34(n8_adj_264), 
            .n5_adj_35(n5_adj_265), .n6_adj_36(n6_adj_266), .n5_adj_37(n5_adj_267), 
            .n6_adj_38(n6_adj_48), .n7_adj_39(n7_adj_269), .n8_adj_40(n8_adj_270), 
            .\key_out[1] (key_out[1]), .\key_out[3] (key_out[3]), .n8_adj_41(n8), 
            .n5_adj_42(n5_adj_272), .n6_adj_43(n6_adj_273), .n5_adj_44(n5_adj_274), 
            .n6_adj_45(n6_adj_275), .n7_adj_46(n7_adj_276), .n8_adj_47(n8_adj_277)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/beeper.v(39[1] 46[2])
    tone u1 (.key_out({key_out}), .n8(n8_adj_277), .n836(n836), .n46(n46), 
         .n4(n4), .n1586(n1586), .n1559(n1559), .n8_adj_3(n8_adj_270), 
         .n5(n5_adj_254), .n1580(n1580), .n1354(n1354), .n1539(n1539), 
         .n6(n6_adj_275), .n1604(n1604), .n48(n48), .n1588(n1588), .n1582(n1582), 
         .n6_adj_4(n6_adj_261), .n1572(n1572), .n1553(n1553), .n1134(n1134), 
         .n4_adj_5(n4_c), .n1566(n1566), .n8_adj_6(n8_c), .n39(n39), 
         .n1538(n1538), .n5_adj_7(n5_adj_258), .n1338(n1338), .n23(n23), 
         .n5_adj_8(n5_adj_260), .n6_adj_9(n6_adj_266), .n4_adj_10(n4_adj_262), 
         .n771(n771), .n5_adj_11(n5_adj_272), .n1359(n1359), .n6_adj_12(n6_adj_259), 
         .n7(n7_adj_276), .n8_adj_13(n8_adj_264), .n4_adj_14(n4_adj_49), 
         .n1104(n1104), .n1465(n1465), .n6_adj_15(n6_adj_257), .n799(n799), 
         .n6_adj_16(n6_c), .n5_adj_17(n5_adj_265), .n7_adj_18(n7_c), .n1554(n1554), 
         .n6_adj_19(n6_adj_273), .n5_adj_20(n5_adj_274), .n7_adj_21(n7_adj_269), 
         .n5_adj_22(n5_c), .n1364(n1364), .n5_adj_23(n5_adj_267)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/beeper.v(28[6] 32[2])
    
endmodule
//
// Verilog Description of module \PWM(WIDTH=16) 
//

module \PWM(WIDTH=16)  (beeper_c, clk_c, GND_net, n5, n6, n5_adj_24, 
            n6_adj_25, n5_adj_26, n6_adj_27, n1583, n4, n7, n8, 
            n5_adj_28, n6_adj_29, n5_adj_30, n6_adj_31, n799, n4_adj_32, 
            n7_adj_33, n8_adj_34, n5_adj_35, n6_adj_36, n5_adj_37, 
            n6_adj_38, n7_adj_39, n8_adj_40, \key_out[1] , \key_out[3] , 
            n8_adj_41, n5_adj_42, n6_adj_43, n5_adj_44, n6_adj_45, 
            n7_adj_46, n8_adj_47) /* synthesis syn_module_defined=1 */ ;
    output beeper_c;
    input clk_c;
    input GND_net;
    input n5;
    input n6;
    input n5_adj_24;
    input n6_adj_25;
    input n5_adj_26;
    input n6_adj_27;
    input n1583;
    input n4;
    input n7;
    input n8;
    input n5_adj_28;
    input n6_adj_29;
    input n5_adj_30;
    input n6_adj_31;
    input n799;
    input n4_adj_32;
    input n7_adj_33;
    input n8_adj_34;
    input n5_adj_35;
    input n6_adj_36;
    input n5_adj_37;
    input n6_adj_38;
    input n7_adj_39;
    input n8_adj_40;
    input \key_out[1] ;
    input \key_out[3] ;
    input n8_adj_41;
    input n5_adj_42;
    input n6_adj_43;
    input n5_adj_44;
    input n6_adj_45;
    input n7_adj_46;
    input n8_adj_47;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(20[11:14])
    
    wire pwm_out_N_193;
    wire [15:0]cnt;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(30[17:20])
    
    wire cnt_15__N_192;
    wire [15:0]cnt_15__N_176;
    
    wire n1092, n1093, n1074, n1075, n1073, n1091, n1078, n1079, 
        n1072, n1080, n1081, n1090, n1070, n1071, n1089, n1076, 
        n1077, n1082, n1083, n1088, n1086, n1087, n1085, n1084, 
        n380;
    
    FD1S3AY pwm_out_16 (.D(pwm_out_N_193), .CK(clk_c), .Q(beeper_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(40[7] 41[23])
    defparam pwm_out_16.GSR = "ENABLED";
    FD1S3JX cnt_i0 (.D(cnt_15__N_176[0]), .CK(clk_c), .PD(cnt_15__N_192), 
            .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i0.GSR = "ENABLED";
    CCU2D add_6_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1092), 
          .COUT(n1093), .S0(cnt_15__N_176[13]), .S1(cnt_15__N_176[14]));   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(35[14:24])
    defparam add_6_15.INIT0 = 16'h5aaa;
    defparam add_6_15.INIT1 = 16'h5aaa;
    defparam add_6_15.INJECT1_0 = "NO";
    defparam add_6_15.INJECT1_1 = "NO";
    CCU2D sub_72_add_2_11 (.A0(n5), .B0(n6), .C0(cnt[9]), .D0(GND_net), 
          .A1(n5_adj_24), .B1(n6_adj_25), .C1(cnt[10]), .D1(GND_net), 
          .CIN(n1074), .COUT(n1075));
    defparam sub_72_add_2_11.INIT0 = 16'h8787;
    defparam sub_72_add_2_11.INIT1 = 16'h8787;
    defparam sub_72_add_2_11.INJECT1_0 = "NO";
    defparam sub_72_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_72_add_2_9 (.A0(n5_adj_26), .B0(n6_adj_27), .C0(cnt[7]), 
          .D0(GND_net), .A1(n1583), .B1(n4), .C1(cnt[8]), .D1(GND_net), 
          .CIN(n1073), .COUT(n1074));
    defparam sub_72_add_2_9.INIT0 = 16'h8787;
    defparam sub_72_add_2_9.INIT1 = 16'h8787;
    defparam sub_72_add_2_9.INJECT1_0 = "NO";
    defparam sub_72_add_2_9.INJECT1_1 = "NO";
    CCU2D add_6_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1091), 
          .COUT(n1092), .S0(cnt_15__N_176[11]), .S1(cnt_15__N_176[12]));   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(35[14:24])
    defparam add_6_13.INIT0 = 16'h5aaa;
    defparam add_6_13.INIT1 = 16'h5aaa;
    defparam add_6_13.INJECT1_0 = "NO";
    defparam add_6_13.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_3 (.A0(n7), .B0(n8), .C0(cnt[1]), .D0(GND_net), 
          .A1(n5_adj_28), .B1(n6_adj_29), .C1(cnt[2]), .D1(GND_net), 
          .CIN(n1078), .COUT(n1079));
    defparam sub_71_add_2_3.INIT0 = 16'h8787;
    defparam sub_71_add_2_3.INIT1 = 16'h8787;
    defparam sub_71_add_2_3.INJECT1_0 = "NO";
    defparam sub_71_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_72_add_2_7 (.A0(n5_adj_30), .B0(n6_adj_31), .C0(cnt[5]), 
          .D0(GND_net), .A1(n799), .B1(n4_adj_32), .C1(cnt[6]), .D1(GND_net), 
          .CIN(n1072), .COUT(n1073));
    defparam sub_72_add_2_7.INIT0 = 16'h8787;
    defparam sub_72_add_2_7.INIT1 = 16'h8787;
    defparam sub_72_add_2_7.INJECT1_0 = "NO";
    defparam sub_72_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_7 (.A0(n7_adj_33), .B0(n8_adj_34), .C0(cnt[5]), 
          .D0(GND_net), .A1(n5_adj_30), .B1(n6_adj_31), .C1(cnt[6]), 
          .D1(GND_net), .CIN(n1080), .COUT(n1081));
    defparam sub_71_add_2_7.INIT0 = 16'h8787;
    defparam sub_71_add_2_7.INIT1 = 16'h8787;
    defparam sub_71_add_2_7.INJECT1_0 = "NO";
    defparam sub_71_add_2_7.INJECT1_1 = "NO";
    CCU2D add_6_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1090), 
          .COUT(n1091), .S0(cnt_15__N_176[9]), .S1(cnt_15__N_176[10]));   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(35[14:24])
    defparam add_6_11.INIT0 = 16'h5aaa;
    defparam add_6_11.INIT1 = 16'h5aaa;
    defparam add_6_11.INJECT1_0 = "NO";
    defparam add_6_11.INJECT1_1 = "NO";
    CCU2D sub_72_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n7), .B1(n8), .C1(cnt[0]), .D1(GND_net), .COUT(n1070));
    defparam sub_72_add_2_1.INIT0 = 16'h0000;
    defparam sub_72_add_2_1.INIT1 = 16'h8787;
    defparam sub_72_add_2_1.INJECT1_0 = "NO";
    defparam sub_72_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_72_add_2_5 (.A0(n5_adj_35), .B0(n6_adj_36), .C0(cnt[3]), 
          .D0(GND_net), .A1(n7_adj_33), .B1(n8_adj_34), .C1(cnt[4]), 
          .D1(GND_net), .CIN(n1071), .COUT(n1072));
    defparam sub_72_add_2_5.INIT0 = 16'h8787;
    defparam sub_72_add_2_5.INIT1 = 16'h8787;
    defparam sub_72_add_2_5.INJECT1_0 = "NO";
    defparam sub_72_add_2_5.INJECT1_1 = "NO";
    CCU2D add_6_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1089), 
          .COUT(n1090), .S0(cnt_15__N_176[7]), .S1(cnt_15__N_176[8]));   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(35[14:24])
    defparam add_6_9.INIT0 = 16'h5aaa;
    defparam add_6_9.INIT1 = 16'h5aaa;
    defparam add_6_9.INJECT1_0 = "NO";
    defparam add_6_9.INJECT1_1 = "NO";
    CCU2D sub_72_add_2_15 (.A0(n5_adj_37), .B0(n6_adj_38), .C0(cnt[13]), 
          .D0(GND_net), .A1(n7_adj_39), .B1(n8_adj_40), .C1(cnt[14]), 
          .D1(GND_net), .CIN(n1076), .COUT(n1077));
    defparam sub_72_add_2_15.INIT0 = 16'h8787;
    defparam sub_72_add_2_15.INIT1 = 16'h8787;
    defparam sub_72_add_2_15.INJECT1_0 = "NO";
    defparam sub_72_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_11 (.A0(n1583), .B0(n4), .C0(cnt[9]), .D0(GND_net), 
          .A1(n5), .B1(n6), .C1(cnt[10]), .D1(GND_net), .CIN(n1082), 
          .COUT(n1083));
    defparam sub_71_add_2_11.INIT0 = 16'h8787;
    defparam sub_71_add_2_11.INIT1 = 16'h8787;
    defparam sub_71_add_2_11.INJECT1_0 = "NO";
    defparam sub_71_add_2_11.INJECT1_1 = "NO";
    CCU2D add_6_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1088), 
          .COUT(n1089), .S0(cnt_15__N_176[5]), .S1(cnt_15__N_176[6]));   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(35[14:24])
    defparam add_6_7.INIT0 = 16'h5aaa;
    defparam add_6_7.INIT1 = 16'h5aaa;
    defparam add_6_7.INJECT1_0 = "NO";
    defparam add_6_7.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_9 (.A0(n799), .B0(n4_adj_32), .C0(cnt[7]), .D0(GND_net), 
          .A1(n5_adj_26), .B1(n6_adj_27), .C1(cnt[8]), .D1(GND_net), 
          .CIN(n1081), .COUT(n1082));
    defparam sub_71_add_2_9.INIT0 = 16'h8787;
    defparam sub_71_add_2_9.INIT1 = 16'h8787;
    defparam sub_71_add_2_9.INJECT1_0 = "NO";
    defparam sub_71_add_2_9.INJECT1_1 = "NO";
    CCU2D add_6_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1086), 
          .COUT(n1087), .S0(cnt_15__N_176[1]), .S1(cnt_15__N_176[2]));   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(35[14:24])
    defparam add_6_3.INIT0 = 16'h5aaa;
    defparam add_6_3.INIT1 = 16'h5aaa;
    defparam add_6_3.INJECT1_0 = "NO";
    defparam add_6_3.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(\key_out[1] ), .C1(\key_out[3] ), .D1(n8_adj_41), 
          .COUT(n1078));
    defparam sub_71_add_2_1.INIT0 = 16'h0000;
    defparam sub_71_add_2_1.INIT1 = 16'h5595;
    defparam sub_71_add_2_1.INJECT1_0 = "NO";
    defparam sub_71_add_2_1.INJECT1_1 = "NO";
    CCU2D add_6_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1086), 
          .S1(cnt_15__N_176[0]));   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(35[14:24])
    defparam add_6_1.INIT0 = 16'hF000;
    defparam add_6_1.INIT1 = 16'h5555;
    defparam add_6_1.INJECT1_0 = "NO";
    defparam add_6_1.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_17 (.A0(n7_adj_39), .B0(n8_adj_40), .C0(cnt[15]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1085), .S1(cnt_15__N_192));
    defparam sub_71_add_2_17.INIT0 = 16'h8787;
    defparam sub_71_add_2_17.INIT1 = 16'h0000;
    defparam sub_71_add_2_17.INJECT1_0 = "NO";
    defparam sub_71_add_2_17.INJECT1_1 = "NO";
    FD1S3IX cnt_i1 (.D(cnt_15__N_176[1]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i1.GSR = "ENABLED";
    FD1S3IX cnt_i2 (.D(cnt_15__N_176[2]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i2.GSR = "ENABLED";
    FD1S3IX cnt_i3 (.D(cnt_15__N_176[3]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i3.GSR = "ENABLED";
    FD1S3IX cnt_i4 (.D(cnt_15__N_176[4]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i4.GSR = "ENABLED";
    FD1S3IX cnt_i5 (.D(cnt_15__N_176[5]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i5.GSR = "ENABLED";
    FD1S3IX cnt_i6 (.D(cnt_15__N_176[6]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i6.GSR = "ENABLED";
    FD1S3IX cnt_i7 (.D(cnt_15__N_176[7]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i7.GSR = "ENABLED";
    FD1S3IX cnt_i8 (.D(cnt_15__N_176[8]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i8.GSR = "ENABLED";
    FD1S3IX cnt_i9 (.D(cnt_15__N_176[9]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i9.GSR = "ENABLED";
    FD1S3IX cnt_i10 (.D(cnt_15__N_176[10]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i10.GSR = "ENABLED";
    FD1S3IX cnt_i11 (.D(cnt_15__N_176[11]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i11.GSR = "ENABLED";
    FD1S3IX cnt_i12 (.D(cnt_15__N_176[12]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i12.GSR = "ENABLED";
    FD1S3IX cnt_i13 (.D(cnt_15__N_176[13]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i13.GSR = "ENABLED";
    FD1S3IX cnt_i14 (.D(cnt_15__N_176[14]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i14.GSR = "ENABLED";
    FD1S3IX cnt_i15 (.D(cnt_15__N_176[15]), .CK(clk_c), .CD(cnt_15__N_192), 
            .Q(cnt[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=39, LSE_RLINE=46 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(34[7] 35[25])
    defparam cnt_i15.GSR = "ENABLED";
    CCU2D add_6_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1087), 
          .COUT(n1088), .S0(cnt_15__N_176[3]), .S1(cnt_15__N_176[4]));   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(35[14:24])
    defparam add_6_5.INIT0 = 16'h5aaa;
    defparam add_6_5.INIT1 = 16'h5aaa;
    defparam add_6_5.INJECT1_0 = "NO";
    defparam add_6_5.INJECT1_1 = "NO";
    CCU2D sub_72_add_2_3 (.A0(n5_adj_28), .B0(n6_adj_29), .C0(cnt[1]), 
          .D0(GND_net), .A1(n5_adj_42), .B1(n6_adj_43), .C1(cnt[2]), 
          .D1(GND_net), .CIN(n1070), .COUT(n1071));
    defparam sub_72_add_2_3.INIT0 = 16'h8787;
    defparam sub_72_add_2_3.INIT1 = 16'h8787;
    defparam sub_72_add_2_3.INJECT1_0 = "NO";
    defparam sub_72_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_15 (.A0(n5_adj_44), .B0(n6_adj_45), .C0(cnt[13]), 
          .D0(GND_net), .A1(n5_adj_37), .B1(n6_adj_38), .C1(cnt[14]), 
          .D1(GND_net), .CIN(n1084), .COUT(n1085));
    defparam sub_71_add_2_15.INIT0 = 16'h8787;
    defparam sub_71_add_2_15.INIT1 = 16'h8787;
    defparam sub_71_add_2_15.INJECT1_0 = "NO";
    defparam sub_71_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_72_add_2_13 (.A0(n7_adj_46), .B0(n8_adj_47), .C0(cnt[11]), 
          .D0(GND_net), .A1(n5_adj_44), .B1(n6_adj_45), .C1(cnt[12]), 
          .D1(GND_net), .CIN(n1075), .COUT(n1076));
    defparam sub_72_add_2_13.INIT0 = 16'h8787;
    defparam sub_72_add_2_13.INIT1 = 16'h8787;
    defparam sub_72_add_2_13.INJECT1_0 = "NO";
    defparam sub_72_add_2_13.INJECT1_1 = "NO";
    CCU2D add_6_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1093), 
          .S0(cnt_15__N_176[15]));   // f:/fpga_project/baseboard/lab2_electric_piano/pwm.v(35[14:24])
    defparam add_6_17.INIT0 = 16'h5aaa;
    defparam add_6_17.INIT1 = 16'h0000;
    defparam add_6_17.INJECT1_0 = "NO";
    defparam add_6_17.INJECT1_1 = "NO";
    CCU2D sub_72_add_2_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1077), 
          .S1(n380));
    defparam sub_72_add_2_17.INIT0 = 16'h5555;
    defparam sub_72_add_2_17.INIT1 = 16'h0000;
    defparam sub_72_add_2_17.INJECT1_0 = "NO";
    defparam sub_72_add_2_17.INJECT1_1 = "NO";
    LUT4 i74_1_lut (.A(n380), .Z(pwm_out_N_193)) /* synthesis lut_function=(!(A)) */ ;
    defparam i74_1_lut.init = 16'h5555;
    CCU2D sub_71_add_2_5 (.A0(n5_adj_42), .B0(n6_adj_43), .C0(cnt[3]), 
          .D0(GND_net), .A1(n5_adj_35), .B1(n6_adj_36), .C1(cnt[4]), 
          .D1(GND_net), .CIN(n1079), .COUT(n1080));
    defparam sub_71_add_2_5.INIT0 = 16'h8787;
    defparam sub_71_add_2_5.INIT1 = 16'h8787;
    defparam sub_71_add_2_5.INJECT1_0 = "NO";
    defparam sub_71_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_71_add_2_13 (.A0(n5_adj_24), .B0(n6_adj_25), .C0(cnt[11]), 
          .D0(GND_net), .A1(n7_adj_46), .B1(n8_adj_47), .C1(cnt[12]), 
          .D1(GND_net), .CIN(n1083), .COUT(n1084));
    defparam sub_71_add_2_13.INIT0 = 16'h8787;
    defparam sub_71_add_2_13.INIT1 = 16'h8787;
    defparam sub_71_add_2_13.INJECT1_0 = "NO";
    defparam sub_71_add_2_13.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module tone
//

module tone (key_out, n8, n836, n46, n4, n1586, n1559, n8_adj_3, 
            n5, n1580, n1354, n1539, n6, n1604, n48, n1588, 
            n1582, n6_adj_4, n1572, n1553, n1134, n4_adj_5, n1566, 
            n8_adj_6, n39, n1538, n5_adj_7, n1338, n23, n5_adj_8, 
            n6_adj_9, n4_adj_10, n771, n5_adj_11, n1359, n6_adj_12, 
            n7, n8_adj_13, n4_adj_14, n1104, n1465, n6_adj_15, n799, 
            n6_adj_16, n5_adj_17, n7_adj_18, n1554, n6_adj_19, n5_adj_20, 
            n7_adj_21, n5_adj_22, n1364, n5_adj_23) /* synthesis syn_module_defined=1 */ ;
    input [15:0]key_out;
    output n8;
    input n836;
    input n46;
    input n4;
    input n1586;
    input n1559;
    output n8_adj_3;
    output n5;
    output n1580;
    output n1354;
    input n1539;
    output n6;
    input n1604;
    output n48;
    input n1588;
    output n1582;
    output n6_adj_4;
    output n1572;
    input n1553;
    input n1134;
    output n4_adj_5;
    input n1566;
    output n8_adj_6;
    input n39;
    output n1538;
    output n5_adj_7;
    input n1338;
    input n23;
    output n5_adj_8;
    output n6_adj_9;
    output n4_adj_10;
    output n771;
    output n5_adj_11;
    output n1359;
    output n6_adj_12;
    output n7;
    output n8_adj_13;
    output n4_adj_14;
    input n1104;
    input n1465;
    output n6_adj_15;
    output n799;
    output n6_adj_16;
    output n5_adj_17;
    output n7_adj_18;
    input n1554;
    output n6_adj_19;
    output n5_adj_20;
    output n7_adj_21;
    output n5_adj_22;
    output n1364;
    output n5_adj_23;
    
    
    wire n1558, n1120, n1117, n1713, n45, n1124, n49, n52, n16, 
        n1573, n45_adj_201, n28, n4_adj_202, n30, n15, n1568, 
        n1382, n1594, n1344, n1578, n35, n1108, n1576, n1595, 
        n1596, n1597, n28_adj_203, n1598, n1601, n42, n45_adj_205, 
        n1401, n4_adj_206, n1409, n1370, n1398, n1584, n1590, 
        n1589, n4_adj_208, n1410, n1592, n1593, n21, n1556, n1407, 
        n1115, n1570, n1352, n1561, n1600, n1552, n1567, n1346, 
        n736, n1581, n26, n1577, n1591, n1599, n1118, n25, n1358, 
        n4_adj_219, n48_adj_221, n1107, n48_adj_222, n1555, n1557, 
        n1102, n22;
    
    LUT4 i2_4_lut (.A(n1558), .B(n1120), .C(key_out[13]), .D(n1117), 
         .Z(n8)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 n836_bdd_4_lut (.A(n836), .B(n46), .C(key_out[2]), .D(key_out[1]), 
         .Z(n1713)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;
    defparam n836_bdd_4_lut.init = 16'hcaa0;
    LUT4 i1_4_lut_4_lut (.A(key_out[3]), .B(key_out[4]), .C(key_out[1]), 
         .D(key_out[2]), .Z(n45)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h6880;
    LUT4 i2_4_lut_4_lut (.A(key_out[15]), .B(key_out[14]), .C(n4), .D(key_out[6]), 
         .Z(n1124)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h6080;
    LUT4 i1_4_lut_4_lut_adj_8 (.A(key_out[10]), .B(key_out[11]), .C(key_out[8]), 
         .D(key_out[9]), .Z(n49)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_8.init = 16'h6880;
    LUT4 i1_4_lut_4_lut_adj_9 (.A(key_out[5]), .B(key_out[6]), .C(key_out[3]), 
         .D(key_out[4]), .Z(n52)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_9.init = 16'h6880;
    LUT4 i2_3_lut_4_lut (.A(n1586), .B(n1559), .C(n16), .D(n1573), .Z(n8_adj_3)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_adj_10 (.A(key_out[7]), .B(key_out[8]), .C(key_out[1]), 
         .D(key_out[4]), .Z(n45_adj_201)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_10.init = 16'h6880;
    LUT4 i1_4_lut_4_lut_adj_11 (.A(key_out[6]), .B(key_out[7]), .C(key_out[1]), 
         .D(key_out[4]), .Z(n28)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_11.init = 16'h6880;
    LUT4 i2_4_lut_4_lut_adj_12 (.A(key_out[12]), .B(key_out[11]), .C(n4_adj_202), 
         .D(key_out[0]), .Z(n1120)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i2_4_lut_4_lut_adj_12.init = 16'h6080;
    LUT4 i1_4_lut_4_lut_adj_13 (.A(key_out[14]), .B(key_out[15]), .C(key_out[12]), 
         .D(key_out[13]), .Z(n30)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_13.init = 16'h6880;
    LUT4 i4_2_lut (.A(key_out[7]), .B(key_out[5]), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n1568), .B(n1382), .C(n1594), .D(n1344), .Z(n5)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha888;
    LUT4 i2_4_lut_adj_14 (.A(n1580), .B(n836), .C(n1578), .D(n45_adj_201), 
         .Z(n1354)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_14.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_adj_15 (.A(key_out[8]), .B(key_out[11]), .C(key_out[6]), 
         .D(key_out[7]), .Z(n35)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_15.init = 16'h6880;
    LUT4 i1_4_lut_adj_16 (.A(n1108), .B(n1576), .C(n1539), .D(n1580), 
         .Z(n6)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_16.init = 16'hc800;
    LUT4 i1_4_lut_4_lut_adj_17 (.A(key_out[1]), .B(key_out[0]), .C(key_out[2]), 
         .D(key_out[3]), .Z(n16)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_17.init = 16'h6880;
    PFUMX i1094 (.BLUT(n1595), .ALUT(n1596), .C0(key_out[12]), .Z(n1597));
    LUT4 i1_4_lut_adj_18 (.A(n46), .B(n1604), .C(n1580), .D(n1578), 
         .Z(n48)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_18.init = 16'heccc;
    LUT4 i1_4_lut_4_lut_adj_19 (.A(key_out[7]), .B(key_out[8]), .C(key_out[5]), 
         .D(key_out[6]), .Z(n28_adj_203)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_19.init = 16'h6880;
    LUT4 i1_4_lut_else_4_lut (.A(n1588), .B(key_out[12]), .C(key_out[13]), 
         .D(key_out[8]), .Z(n1598)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h8000;
    LUT4 n1586_bdd_4_lut_1114 (.A(n1586), .B(key_out[15]), .C(key_out[14]), 
         .D(key_out[3]), .Z(n1601)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;
    defparam n1586_bdd_4_lut_1114.init = 16'h2880;
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_out[0]), .B(n1580), .C(n1568), .D(n1582), 
         .Z(n6_adj_4)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_adj_20 (.A(key_out[9]), .B(key_out[10]), .C(key_out[7]), 
         .D(key_out[8]), .Z(n42)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_20.init = 16'h6880;
    LUT4 i2_2_lut_rep_40 (.A(key_out[6]), .B(key_out[3]), .Z(n1572)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_rep_40.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_21 (.A(key_out[4]), .B(key_out[2]), .C(key_out[3]), 
         .D(key_out[6]), .Z(n45_adj_205)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_21.init = 16'h6880;
    LUT4 i1_4_lut_else_4_lut_adj_22 (.A(n1553), .B(key_out[9]), .C(key_out[8]), 
         .D(key_out[13]), .Z(n1595)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_else_4_lut_adj_22.init = 16'h8000;
    LUT4 i1_4_lut_adj_23 (.A(key_out[7]), .B(n1401), .C(n1134), .D(n4_adj_206), 
         .Z(n4_adj_5)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_23.init = 16'ha8a0;
    LUT4 i1_4_lut_4_lut_adj_24 (.A(key_out[13]), .B(key_out[14]), .C(n1409), 
         .D(key_out[0]), .Z(n1370)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_24.init = 16'h6080;
    LUT4 i2_4_lut_adj_25 (.A(key_out[1]), .B(n35), .C(n1566), .D(n1398), 
         .Z(n1382)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_25.init = 16'h8000;
    LUT4 i1_4_lut_then_4_lut (.A(n1584), .B(key_out[1]), .C(key_out[5]), 
         .D(key_out[3]), .Z(n1590)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h2880;
    LUT4 i1_4_lut_else_4_lut_adj_26 (.A(n1584), .B(key_out[1]), .C(key_out[5]), 
         .D(key_out[3]), .Z(n1589)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_else_4_lut_adj_26.init = 16'h8000;
    LUT4 i1_rep_5_2_lut (.A(key_out[5]), .B(key_out[2]), .Z(n1398)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_rep_5_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_27 (.A(key_out[5]), .B(key_out[4]), .C(n1588), 
         .D(key_out[1]), .Z(n4_adj_208)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_27.init = 16'h8000;
    LUT4 i1_rep_17_2_lut (.A(key_out[6]), .B(key_out[9]), .Z(n1410)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_rep_17_2_lut.init = 16'h8888;
    PFUMX i1092 (.BLUT(n1592), .ALUT(n1593), .C0(key_out[1]), .Z(n1594));
    LUT4 i3_4_lut (.A(n1586), .B(n21), .C(key_out[8]), .D(n1556), .Z(n8_adj_6)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_28 (.A(key_out[7]), .B(n39), .C(n1553), .D(key_out[11]), 
         .Z(n21)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (C (D))) */ ;
    defparam i1_4_lut_adj_28.init = 16'hd8a0;
    LUT4 n777_bdd_4_lut (.A(key_out[5]), .B(key_out[0]), .C(key_out[4]), 
         .D(key_out[11]), .Z(n1538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam n777_bdd_4_lut.init = 16'h6880;
    LUT4 i1_4_lut_adj_29 (.A(n1407), .B(key_out[9]), .C(n1115), .D(n1601), 
         .Z(n5_adj_7)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_29.init = 16'hc8c0;
    LUT4 i1_rep_14_2_lut (.A(key_out[4]), .B(key_out[10]), .Z(n1407)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_rep_14_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_30 (.A(key_out[4]), .B(key_out[0]), .C(n1570), 
         .D(n30), .Z(n1108)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_30.init = 16'h8000;
    LUT4 i2_4_lut_adj_31 (.A(key_out[3]), .B(n1338), .C(n1588), .D(n23), 
         .Z(n1115)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_31.init = 16'ha080;
    LUT4 i1_3_lut_4_lut (.A(key_out[10]), .B(key_out[11]), .C(key_out[9]), 
         .D(key_out[6]), .Z(n1352)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h6000;
    LUT4 i1_2_lut_rep_29 (.A(key_out[9]), .B(key_out[8]), .Z(n1561)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_29.init = 16'h8888;
    LUT4 i1_4_lut_adj_32 (.A(n1124), .B(n15), .C(key_out[6]), .D(n1600), 
         .Z(n5_adj_8)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_32.init = 16'hc888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_33 (.A(key_out[5]), .B(key_out[11]), .C(key_out[12]), 
         .D(key_out[15]), .Z(n6_adj_9)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_33.init = 16'h8000;
    LUT4 i1_4_lut_then_4_lut_adj_34 (.A(n1553), .B(key_out[9]), .C(key_out[8]), 
         .D(key_out[13]), .Z(n1596)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;
    defparam i1_4_lut_then_4_lut_adj_34.init = 16'h2880;
    LUT4 i1_2_lut_rep_38 (.A(key_out[5]), .B(key_out[11]), .Z(n1570)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_38.init = 16'h8888;
    LUT4 i1_2_lut_rep_20_3_lut_4_lut (.A(key_out[9]), .B(key_out[8]), .C(n1586), 
         .D(n1588), .Z(n1552)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_20_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_35 (.A(n1567), .B(n35), .C(n1346), .D(n4_adj_208), 
         .Z(n4_adj_10)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_35.init = 16'ha8a0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_36 (.A(key_out[4]), .B(key_out[1]), .C(key_out[6]), 
         .D(key_out[7]), .Z(n4_adj_202)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_36.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_37 (.A(key_out[9]), .B(key_out[8]), .C(n1713), 
         .D(n1584), .Z(n4_adj_206)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_37.init = 16'h8000;
    LUT4 i1_2_lut_rep_44 (.A(key_out[8]), .B(key_out[7]), .Z(n1576)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_44.init = 16'h8888;
    LUT4 i1_4_lut_adj_38 (.A(n736), .B(n1344), .C(n39), .D(n1573), .Z(n1346)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_38.init = 16'hc888;
    LUT4 i1_3_lut_4_lut_adj_39 (.A(key_out[9]), .B(key_out[8]), .C(n1584), 
         .D(n52), .Z(n771)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_39.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_40 (.A(key_out[8]), .B(key_out[7]), .C(key_out[0]), 
         .D(key_out[4]), .Z(n5_adj_11)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_40.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(key_out[8]), .B(key_out[7]), .C(n1359), 
         .D(n1581), .Z(n6_adj_12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'h8000;
    LUT4 i2_2_lut_3_lut_4_lut (.A(key_out[9]), .B(key_out[8]), .C(key_out[10]), 
         .D(n1588), .Z(n7)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_4_lut_adj_42 (.A(n26), .B(n1584), .C(n15), .D(n1561), .Z(n8_adj_13)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_42.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_43 (.A(key_out[8]), .B(key_out[7]), .C(key_out[1]), 
         .D(key_out[4]), .Z(n4_adj_14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_43.init = 16'h8000;
    LUT4 i1_4_lut_adj_44 (.A(n1104), .B(n1465), .C(key_out[0]), .D(key_out[2]), 
         .Z(n26)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_44.init = 16'heaaa;
    LUT4 i1_2_lut_rep_45 (.A(key_out[5]), .B(key_out[3]), .Z(n1577)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_45.init = 16'h8888;
    LUT4 i1_4_lut_then_4_lut_adj_45 (.A(key_out[13]), .B(key_out[14]), .C(key_out[5]), 
         .D(key_out[2]), .Z(n1593)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_then_4_lut_adj_45.init = 16'h6880;
    LUT4 i1_2_lut_rep_26_3_lut (.A(key_out[5]), .B(key_out[3]), .C(key_out[2]), 
         .Z(n1558)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_26_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_46 (.A(key_out[5]), .B(key_out[3]), .C(key_out[6]), 
         .D(key_out[2]), .Z(n6_adj_15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_46.init = 16'h8000;
    PFUMX i1090 (.BLUT(n1589), .ALUT(n1590), .C0(key_out[2]), .Z(n1591));
    LUT4 i1_2_lut_3_lut_4_lut_adj_47 (.A(key_out[7]), .B(key_out[6]), .C(key_out[8]), 
         .D(key_out[11]), .Z(n1344)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_47.init = 16'h8000;
    LUT4 i1_2_lut_rep_46 (.A(key_out[12]), .B(key_out[11]), .Z(n1578)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_46.init = 16'h8888;
    LUT4 i1_4_lut_else_4_lut_adj_48 (.A(key_out[13]), .B(key_out[14]), .C(key_out[5]), 
         .D(key_out[2]), .Z(n1592)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_else_4_lut_adj_48.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_49 (.A(key_out[1]), .B(n1588), .C(key_out[5]), 
         .D(key_out[4]), .Z(n736)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_49.init = 16'h0880;
    LUT4 i2_3_lut_4_lut_adj_50 (.A(key_out[12]), .B(key_out[11]), .C(n28), 
         .D(key_out[0]), .Z(n1117)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_50.init = 16'h8000;
    LUT4 i1_2_lut_rep_48 (.A(key_out[10]), .B(key_out[9]), .Z(n1580)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_48.init = 16'h8888;
    LUT4 i1_2_lut_rep_24_3_lut (.A(key_out[10]), .B(key_out[9]), .C(key_out[0]), 
         .Z(n1556)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_24_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_then_4_lut_adj_51 (.A(n1588), .B(key_out[12]), .C(key_out[13]), 
         .D(key_out[8]), .Z(n1599)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;
    defparam i1_4_lut_then_4_lut_adj_51.init = 16'h2880;
    LUT4 i1_rep_16_2_lut_3_lut_4_lut (.A(key_out[10]), .B(key_out[9]), .C(key_out[7]), 
         .D(key_out[8]), .Z(n1409)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_rep_16_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_52 (.A(key_out[10]), .B(key_out[9]), .C(n1586), 
         .D(key_out[0]), .Z(n799)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_52.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_53 (.A(key_out[10]), .B(key_out[9]), .C(n28_adj_203), 
         .D(key_out[4]), .Z(n1118)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_53.init = 16'h8000;
    LUT4 i55_3_lut_4_lut_3_lut (.A(key_out[10]), .B(key_out[9]), .C(key_out[4]), 
         .Z(n25)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;
    defparam i55_3_lut_4_lut_3_lut.init = 16'h6868;
    LUT4 i1_2_lut_rep_49 (.A(key_out[6]), .B(key_out[5]), .Z(n1581)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_49.init = 16'h8888;
    LUT4 i2_4_lut_adj_54 (.A(n1552), .B(n15), .C(n1358), .D(n4_adj_219), 
         .Z(n6_adj_16)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i2_4_lut_adj_54.init = 16'hc8c0;
    LUT4 i2_4_lut_adj_55 (.A(key_out[6]), .B(n48_adj_221), .C(n1567), 
         .D(key_out[4]), .Z(n1358)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_55.init = 16'h8000;
    LUT4 i1_2_lut (.A(key_out[1]), .B(n45_adj_205), .Z(n4_adj_219)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_rep_8_2_lut_3_lut_4_lut (.A(key_out[6]), .B(key_out[5]), .C(key_out[3]), 
         .D(key_out[4]), .Z(n1401)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_rep_8_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_35 (.A(key_out[3]), .B(key_out[2]), .Z(n1567)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_35.init = 16'h8888;
    LUT4 i1_4_lut_adj_56 (.A(n39), .B(n1597), .C(n1586), .D(n1561), 
         .Z(n48_adj_221)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_56.init = 16'heccc;
    LUT4 i1_4_lut_adj_57 (.A(n1107), .B(key_out[6]), .C(n48_adj_222), 
         .D(n1555), .Z(n5_adj_17)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_57.init = 16'hc888;
    LUT4 i3_4_lut_adj_58 (.A(n1566), .B(n1576), .C(n45), .D(n1556), 
         .Z(n1107)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_58.init = 16'h8000;
    LUT4 i1_4_lut_adj_59 (.A(n1370), .B(key_out[0]), .C(n42), .D(n1566), 
         .Z(n48_adj_222)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_59.init = 16'heaaa;
    LUT4 i1_2_lut_rep_25_3_lut_4_lut (.A(key_out[6]), .B(key_out[5]), .C(key_out[7]), 
         .D(key_out[8]), .Z(n1557)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_25_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_60 (.A(key_out[3]), .B(key_out[2]), .C(key_out[6]), 
         .D(n1573), .Z(n7_adj_18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_60.init = 16'h8000;
    LUT4 i1_2_lut_rep_50 (.A(key_out[2]), .B(key_out[1]), .Z(n1582)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_50.init = 16'h8888;
    LUT4 i1_2_lut_rep_23_3_lut_4_lut (.A(key_out[2]), .B(key_out[1]), .C(key_out[3]), 
         .D(key_out[4]), .Z(n1555)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_23_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_4_lut_adj_61 (.A(n1102), .B(n1554), .C(n1410), .D(n1591), 
         .Z(n6_adj_19)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_61.init = 16'hc888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_62 (.A(key_out[2]), .B(key_out[1]), .C(key_out[3]), 
         .D(key_out[6]), .Z(n5_adj_20)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_62.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_63 (.A(key_out[2]), .B(key_out[1]), .C(key_out[0]), 
         .D(key_out[11]), .Z(n1359)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_63.init = 16'h8000;
    LUT4 i1_2_lut_rep_41 (.A(key_out[5]), .B(key_out[4]), .Z(n1573)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_41.init = 16'h8888;
    LUT4 i3_2_lut_rep_36 (.A(key_out[4]), .B(key_out[3]), .Z(n1568)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut_rep_36.init = 16'h8888;
    LUT4 i2_2_lut_rep_52 (.A(key_out[11]), .B(key_out[10]), .Z(n1584)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_rep_52.init = 16'h8888;
    LUT4 i2_2_lut_3_lut_4_lut_adj_64 (.A(key_out[11]), .B(key_out[10]), 
         .C(key_out[6]), .D(key_out[7]), .Z(n7_adj_21)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_64.init = 16'h8000;
    LUT4 i1_2_lut_3_lut (.A(key_out[11]), .B(key_out[10]), .C(key_out[0]), 
         .Z(n5_adj_22)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_4_lut_adj_65 (.A(key_out[11]), .B(key_out[10]), .C(key_out[9]), 
         .D(key_out[6]), .Z(n22)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_65.init = 16'h0880;
    LUT4 i1_3_lut_4_lut_adj_66 (.A(key_out[4]), .B(key_out[3]), .C(n1581), 
         .D(n49), .Z(n1364)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_66.init = 16'h8000;
    LUT4 i2_4_lut_adj_67 (.A(n1352), .B(n1577), .C(n22), .D(n1582), 
         .Z(n1102)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_67.init = 16'hc800;
    LUT4 i1_4_lut_adj_68 (.A(key_out[3]), .B(n25), .C(n1118), .D(n1557), 
         .Z(n5_adj_23)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_68.init = 16'ha8a0;
    PFUMX i1096 (.BLUT(n1598), .ALUT(n1599), .C0(key_out[11]), .Z(n1600));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Array_KeyBoard
//

module Array_KeyBoard (clk_200hz, clk_c, col_c_0, row_c_0, clk_c_enable_8, 
            key_out, n1580, n6, n1354, n48, n4, n5, clk_200hz_N_42, 
            n1582, n836, n1364, n771, n1134, n1588, n1554, n1553, 
            n39, row_c_1, row_c_2, col_c_3, n1559, n1604, col_c_2, 
            col_c_1, row_c_3, n8, n4_adj_1, n46, n1359, n6_adj_2, 
            n1583, n1338, n1465, n1572, n1104, GND_net, n1566, 
            n7, n1586, n1538, n1539, n23) /* synthesis syn_module_defined=1 */ ;
    output clk_200hz;
    input clk_c;
    input col_c_0;
    output row_c_0;
    input clk_c_enable_8;
    output [15:0]key_out;
    input n1580;
    output n6;
    input n1354;
    input n48;
    input n4;
    output n5;
    output clk_200hz_N_42;
    input n1582;
    output n836;
    input n1364;
    input n771;
    output n1134;
    output n1588;
    output n1554;
    output n1553;
    output n39;
    output row_c_1;
    output row_c_2;
    input col_c_3;
    output n1559;
    output n1604;
    input col_c_2;
    input col_c_1;
    output row_c_3;
    output n8;
    output n4_adj_1;
    output n46;
    input n1359;
    output n6_adj_2;
    output n1583;
    output n1338;
    output n1465;
    input n1572;
    output n1104;
    input GND_net;
    output n1566;
    output n7;
    output n1586;
    input n1538;
    output n1539;
    output n23;
    
    wire clk_200hz /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(45[10:19])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(20[11:14])
    wire clk_200hz_N_40 /* synthesis is_inv_clock=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(27[20:27])
    
    wire clk_200hz_N_41;
    wire [15:0]key_r;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(79[17:22])
    
    wire clk_200hz_N_40_enable_48;
    wire [15:0]key;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(79[13:16])
    wire [3:0]row_3__N_17;
    wire [15:0]cnt;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(44[15:18])
    wire [14:0]n65;
    
    wire n1603, n1602;
    wire [3:0]key_out_15__N_137;
    wire [3:0]n1;
    wire [3:0]n303;
    
    wire clk_200hz_N_40_enable_46, n811;
    wire [3:0]key_out_15__N_133;
    
    wire clk_200hz_N_40_enable_42, n1571, n12, n18, n1391, n1464, 
        n1574, n12_adj_196;
    wire [3:0]key_out_15__N_125;
    wire [3:0]key_out_15__N_129;
    
    wire n1100, n10, n1099, n1098, n1097, n1096, n1095, n1094, 
        n1136, n24;
    
    FD1S3AX clk_200hz_38 (.D(clk_200hz_N_41), .CK(clk_c), .Q(clk_200hz)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(50[12] 58[6])
    defparam clk_200hz_38.GSR = "ENABLED";
    INV i1164 (.A(clk_200hz), .Z(clk_200hz_N_40));
    FD1P3AY key_r_i0 (.D(key[0]), .SP(clk_200hz_N_40_enable_48), .CK(clk_200hz_N_40), 
            .Q(key_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i0.GSR = "ENABLED";
    FD1P3AY key_i0 (.D(col_c_0), .SP(clk_200hz_N_40_enable_48), .CK(clk_200hz_N_40), 
            .Q(key[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i0.GSR = "ENABLED";
    FD1P3AX row_i0_i1 (.D(row_3__N_17[0]), .SP(clk_c_enable_8), .CK(clk_c), 
            .Q(row_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(67[12] 76[6])
    defparam row_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(key_out[15]), .B(key_out[12]), .C(n1580), 
         .D(key_out[0]), .Z(n6)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut (.A(key_out[14]), .B(n1354), .C(n48), .D(n4), .Z(n5)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_4_lut.init = 16'ha888;
    FD1S3IX cnt_109_110__i1 (.D(n65[0]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i1.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n1582), .B(n836), .C(n1364), .D(n771), .Z(n1134)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i1_4_lut_then_4_lut (.A(n836), .B(key_out[11]), .C(key_out[10]), 
         .D(key_out[9]), .Z(n1603)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h2880;
    LUT4 i1_4_lut_else_4_lut (.A(n836), .B(key_out[11]), .C(key_out[10]), 
         .D(key_out[9]), .Z(n1602)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_56 (.A(key_out[15]), .B(key_out[14]), .Z(n1588)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_rep_56.init = 16'h8888;
    FD1P3AY key_out_i1 (.D(key_out_15__N_137[1]), .SP(clk_200hz_N_40_enable_48), 
            .CK(clk_200hz_N_40), .Q(key_out[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_22_3_lut_4_lut (.A(key_out[15]), .B(key_out[14]), 
         .C(key_out[12]), .D(key_out[13]), .Z(n1554)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_rep_22_3_lut_4_lut.init = 16'h8000;
    LUT4 i77_1_lut (.A(n1[1]), .Z(n303[2])) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam i77_1_lut.init = 16'h5555;
    LUT4 or_21_i1_2_lut (.A(key_r[0]), .B(key[0]), .Z(key_out_15__N_137[0])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(88[37:60])
    defparam or_21_i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_21_3_lut (.A(key_out[15]), .B(key_out[14]), .C(key_out[1]), 
         .Z(n1553)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_rep_21_3_lut.init = 16'h8080;
    LUT4 i182_2_lut_3_lut (.A(n1[2]), .B(n1[3]), .C(n1[1]), .Z(clk_200hz_N_40_enable_46)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam i182_2_lut_3_lut.init = 16'h1010;
    FD1P3AY c_state_FSM_i0_i0 (.D(n1[3]), .SP(clk_c_enable_8), .CK(clk_c), 
            .Q(n1[0]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam c_state_FSM_i0_i0.GSR = "ENABLED";
    LUT4 i85_3_lut_4_lut_3_lut (.A(key_out[15]), .B(key_out[14]), .C(key_out[1]), 
         .Z(n39)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i85_3_lut_4_lut_3_lut.init = 16'h6868;
    FD1P3JX row_i0_i2 (.D(n1[1]), .SP(clk_c_enable_8), .PD(n811), .CK(clk_c), 
            .Q(row_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(67[12] 76[6])
    defparam row_i0_i2.GSR = "ENABLED";
    FD1P3JX row_i0_i3 (.D(n303[2]), .SP(clk_c_enable_8), .PD(n811), .CK(clk_c), 
            .Q(row_c_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(67[12] 76[6])
    defparam row_i0_i3.GSR = "ENABLED";
    FD1P3AY key_out_i0 (.D(key_out_15__N_137[0]), .SP(clk_200hz_N_40_enable_48), 
            .CK(clk_200hz_N_40), .Q(key_out[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i0.GSR = "ENABLED";
    FD1P3AY key_i15 (.D(col_c_3), .SP(n1[3]), .CK(clk_200hz_N_40), .Q(key[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_27_3_lut_4_lut (.A(key_out[15]), .B(key_out[14]), 
         .C(key_out[8]), .D(key_out[9]), .Z(n1559)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_rep_27_3_lut_4_lut.init = 16'h8000;
    LUT4 i76_1_lut (.A(n1[3]), .Z(row_3__N_17[0])) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam i76_1_lut.init = 16'h5555;
    LUT4 or_22_i4_2_lut (.A(key_r[7]), .B(key[7]), .Z(key_out_15__N_133[3])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(89[37:60])
    defparam or_22_i4_2_lut.init = 16'heeee;
    LUT4 or_22_i3_2_lut (.A(key_r[6]), .B(key[6]), .Z(key_out_15__N_133[2])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(89[37:60])
    defparam or_22_i3_2_lut.init = 16'heeee;
    LUT4 or_22_i2_2_lut (.A(key_r[5]), .B(key[5]), .Z(key_out_15__N_133[1])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(89[37:60])
    defparam or_22_i2_2_lut.init = 16'heeee;
    LUT4 or_22_i1_2_lut (.A(key_r[4]), .B(key[4]), .Z(key_out_15__N_133[0])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(89[37:60])
    defparam or_22_i1_2_lut.init = 16'heeee;
    LUT4 i455_1_lut_2_lut (.A(n1[3]), .B(n1[2]), .Z(clk_200hz_N_40_enable_42)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam i455_1_lut_2_lut.init = 16'h4444;
    LUT4 i176_2_lut_rep_39 (.A(n1[3]), .B(n1[2]), .Z(n1571)) /* synthesis lut_function=(A+!(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam i176_2_lut_rep_39.init = 16'hbbbb;
    PFUMX i1098 (.BLUT(n1602), .ALUT(n1603), .C0(key_out[12]), .Z(n1604));
    FD1P3AY key_i14 (.D(col_c_2), .SP(n1[3]), .CK(clk_200hz_N_40), .Q(key[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i14.GSR = "ENABLED";
    FD1P3AY key_i13 (.D(col_c_1), .SP(n1[3]), .CK(clk_200hz_N_40), .Q(key[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i13.GSR = "ENABLED";
    FD1P3AY key_i12 (.D(col_c_0), .SP(n1[3]), .CK(clk_200hz_N_40), .Q(key[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i12.GSR = "ENABLED";
    LUT4 or_21_i4_2_lut (.A(key_r[3]), .B(key[3]), .Z(key_out_15__N_137[3])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(88[37:60])
    defparam or_21_i4_2_lut.init = 16'heeee;
    FD1P3AY key_i11 (.D(col_c_3), .SP(clk_200hz_N_40_enable_42), .CK(clk_200hz_N_40), 
            .Q(key[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i11.GSR = "ENABLED";
    FD1P3AY row_i0_i4 (.D(n1571), .SP(clk_c_enable_8), .CK(clk_c), .Q(row_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(67[12] 76[6])
    defparam row_i0_i4.GSR = "ENABLED";
    FD1P3AY key_i10 (.D(col_c_2), .SP(clk_200hz_N_40_enable_42), .CK(clk_200hz_N_40), 
            .Q(key[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i10.GSR = "ENABLED";
    FD1P3AY key_i9 (.D(col_c_1), .SP(clk_200hz_N_40_enable_42), .CK(clk_200hz_N_40), 
            .Q(key[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i9.GSR = "ENABLED";
    FD1P3AY key_i8 (.D(col_c_0), .SP(clk_200hz_N_40_enable_42), .CK(clk_200hz_N_40), 
            .Q(key[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i8.GSR = "ENABLED";
    FD1P3AY key_i7 (.D(col_c_3), .SP(clk_200hz_N_40_enable_46), .CK(clk_200hz_N_40), 
            .Q(key[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i7.GSR = "ENABLED";
    FD1P3AY key_i6 (.D(col_c_2), .SP(clk_200hz_N_40_enable_46), .CK(clk_200hz_N_40), 
            .Q(key[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i6.GSR = "ENABLED";
    FD1P3AY key_i5 (.D(col_c_1), .SP(clk_200hz_N_40_enable_46), .CK(clk_200hz_N_40), 
            .Q(key[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i5.GSR = "ENABLED";
    FD1P3AY key_i4 (.D(col_c_0), .SP(clk_200hz_N_40_enable_46), .CK(clk_200hz_N_40), 
            .Q(key[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i4.GSR = "ENABLED";
    FD1P3AY key_i3 (.D(col_c_3), .SP(clk_200hz_N_40_enable_48), .CK(clk_200hz_N_40), 
            .Q(key[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i3.GSR = "ENABLED";
    FD1P3AY key_i2 (.D(col_c_2), .SP(clk_200hz_N_40_enable_48), .CK(clk_200hz_N_40), 
            .Q(key[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i2.GSR = "ENABLED";
    FD1P3AY key_i1 (.D(col_c_1), .SP(clk_200hz_N_40_enable_48), .CK(clk_200hz_N_40), 
            .Q(key[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_i1.GSR = "ENABLED";
    FD1P3AY key_r_i15 (.D(key[15]), .SP(n1[3]), .CK(clk_200hz_N_40), .Q(key_r[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i15.GSR = "ENABLED";
    LUT4 i1009_2_lut_3_lut (.A(n1[2]), .B(n1[3]), .C(n1[1]), .Z(clk_200hz_N_40_enable_48)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam i1009_2_lut_3_lut.init = 16'h0101;
    LUT4 i170_4_lut (.A(cnt[7]), .B(cnt[8]), .C(cnt[6]), .D(n12), .Z(n18)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i170_4_lut.init = 16'hccc8;
    FD1P3AY key_r_i14 (.D(key[14]), .SP(n1[3]), .CK(clk_200hz_N_40), .Q(key_r[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i14.GSR = "ENABLED";
    LUT4 i456_2_lut_3_lut_4_lut (.A(n1[2]), .B(n1[3]), .C(clk_200hz_N_42), 
         .D(clk_200hz), .Z(n811)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam i456_2_lut_3_lut_4_lut.init = 16'h00e0;
    LUT4 i1012_2_lut (.A(n1391), .B(n1464), .Z(n8)) /* synthesis lut_function=(A+!(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(27[15:22])
    defparam i1012_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_2 (.A(key_out[13]), .B(key_out[12]), .C(key_out[8]), 
         .D(key_out[11]), .Z(n4_adj_1)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_3_lut_4_lut_adj_2.init = 16'h8000;
    LUT4 i1_2_lut_rep_42 (.A(key_out[15]), .B(key_out[13]), .Z(n1574)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_rep_42.init = 16'h8888;
    FD1P3AY key_r_i13 (.D(key[13]), .SP(n1[3]), .CK(clk_200hz_N_40), .Q(key_r[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i13.GSR = "ENABLED";
    FD1P3AY key_r_i12 (.D(key[12]), .SP(n1[3]), .CK(clk_200hz_N_40), .Q(key_r[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i12.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(key_out[15]), .B(key_out[13]), .C(key_out[0]), 
         .Z(n836)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i515_4_lut_3_lut (.A(key_out[15]), .B(key_out[13]), .C(key_out[0]), 
         .Z(n46)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(27[15:22])
    defparam i515_4_lut_3_lut.init = 16'h6868;
    FD1P3AY key_r_i11 (.D(key[11]), .SP(clk_200hz_N_40_enable_42), .CK(clk_200hz_N_40), 
            .Q(key_r[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i11.GSR = "ENABLED";
    FD1P3AY key_r_i10 (.D(key[10]), .SP(clk_200hz_N_40_enable_42), .CK(clk_200hz_N_40), 
            .Q(key_r[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i10.GSR = "ENABLED";
    FD1P3AY key_r_i9 (.D(key[9]), .SP(clk_200hz_N_40_enable_42), .CK(clk_200hz_N_40), 
            .Q(key_r[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i9.GSR = "ENABLED";
    FD1P3AY key_r_i8 (.D(key[8]), .SP(clk_200hz_N_40_enable_42), .CK(clk_200hz_N_40), 
            .Q(key_r[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i8.GSR = "ENABLED";
    FD1P3AY key_r_i7 (.D(key[7]), .SP(clk_200hz_N_40_enable_46), .CK(clk_200hz_N_40), 
            .Q(key_r[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i7.GSR = "ENABLED";
    FD1P3AY key_r_i6 (.D(key[6]), .SP(clk_200hz_N_40_enable_46), .CK(clk_200hz_N_40), 
            .Q(key_r[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i6.GSR = "ENABLED";
    FD1P3AY key_r_i5 (.D(key[5]), .SP(clk_200hz_N_40_enable_46), .CK(clk_200hz_N_40), 
            .Q(key_r[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i5.GSR = "ENABLED";
    FD1P3AY key_r_i4 (.D(key[4]), .SP(clk_200hz_N_40_enable_46), .CK(clk_200hz_N_40), 
            .Q(key_r[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i4.GSR = "ENABLED";
    FD1P3AY key_r_i3 (.D(key[3]), .SP(clk_200hz_N_40_enable_48), .CK(clk_200hz_N_40), 
            .Q(key_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i3.GSR = "ENABLED";
    FD1P3AY key_r_i2 (.D(key[2]), .SP(clk_200hz_N_40_enable_48), .CK(clk_200hz_N_40), 
            .Q(key_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i2.GSR = "ENABLED";
    FD1P3AY key_r_i1 (.D(key[1]), .SP(clk_200hz_N_40_enable_48), .CK(clk_200hz_N_40), 
            .Q(key_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_r_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_3 (.A(key_out[13]), .B(key_out[12]), .C(n1359), 
         .D(n1588), .Z(n6_adj_2)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_3_lut_4_lut_adj_3.init = 16'h8000;
    LUT4 i1010_4_lut (.A(n1583), .B(n12_adj_196), .C(key_out[13]), .D(key_out[11]), 
         .Z(n1391)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(27[15:22])
    defparam i1010_4_lut.init = 16'h7fff;
    LUT4 i1_3_lut_4_lut (.A(key_out[12]), .B(key_out[13]), .C(key_out[10]), 
         .D(key_out[4]), .Z(n1338)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/electric_piano.v(27[15:22])
    defparam i1_3_lut_4_lut.init = 16'h6000;
    LUT4 key_out_15__bdd_4_lut (.A(key_out[15]), .B(key_out[13]), .C(key_out[3]), 
         .D(key_out[6]), .Z(n1465)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam key_out_15__bdd_4_lut.init = 16'h6880;
    LUT4 i2_4_lut_adj_4 (.A(key_out[0]), .B(n1572), .C(key_out[2]), .D(n1574), 
         .Z(n1104)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i2_4_lut_adj_4.init = 16'h4800;
    FD1P3AY key_out_i15 (.D(key_out_15__N_125[3]), .SP(n1[3]), .CK(clk_200hz_N_40), 
            .Q(key_out[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i15.GSR = "ENABLED";
    FD1P3AY key_out_i14 (.D(key_out_15__N_125[2]), .SP(n1[3]), .CK(clk_200hz_N_40), 
            .Q(key_out[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i14.GSR = "ENABLED";
    FD1P3AY key_out_i13 (.D(key_out_15__N_125[1]), .SP(n1[3]), .CK(clk_200hz_N_40), 
            .Q(key_out[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i13.GSR = "ENABLED";
    FD1P3AY key_out_i12 (.D(key_out_15__N_125[0]), .SP(n1[3]), .CK(clk_200hz_N_40), 
            .Q(key_out[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i12.GSR = "ENABLED";
    LUT4 key_out_5__bdd_4_lut (.A(key_out[5]), .B(key_out[7]), .C(key_out[15]), 
         .D(key_out[9]), .Z(n1464)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam key_out_5__bdd_4_lut.init = 16'h6880;
    FD1P3AY key_out_i11 (.D(key_out_15__N_129[3]), .SP(clk_200hz_N_40_enable_42), 
            .CK(clk_200hz_N_40), .Q(key_out[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i11.GSR = "ENABLED";
    FD1P3AY key_out_i10 (.D(key_out_15__N_129[2]), .SP(clk_200hz_N_40_enable_42), 
            .CK(clk_200hz_N_40), .Q(key_out[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i10.GSR = "ENABLED";
    FD1P3AY key_out_i9 (.D(key_out_15__N_129[1]), .SP(clk_200hz_N_40_enable_42), 
            .CK(clk_200hz_N_40), .Q(key_out[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i9.GSR = "ENABLED";
    FD1P3AY key_out_i8 (.D(key_out_15__N_129[0]), .SP(clk_200hz_N_40_enable_42), 
            .CK(clk_200hz_N_40), .Q(key_out[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i8.GSR = "ENABLED";
    FD1P3AY key_out_i7 (.D(key_out_15__N_133[3]), .SP(clk_200hz_N_40_enable_46), 
            .CK(clk_200hz_N_40), .Q(key_out[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i7.GSR = "ENABLED";
    FD1P3AY key_out_i6 (.D(key_out_15__N_133[2]), .SP(clk_200hz_N_40_enable_46), 
            .CK(clk_200hz_N_40), .Q(key_out[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i6.GSR = "ENABLED";
    FD1P3AY key_out_i5 (.D(key_out_15__N_133[1]), .SP(clk_200hz_N_40_enable_46), 
            .CK(clk_200hz_N_40), .Q(key_out[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i5.GSR = "ENABLED";
    FD1P3AY key_out_i4 (.D(key_out_15__N_133[0]), .SP(clk_200hz_N_40_enable_46), 
            .CK(clk_200hz_N_40), .Q(key_out[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i4.GSR = "ENABLED";
    FD1P3AY key_out_i3 (.D(key_out_15__N_137[3]), .SP(clk_200hz_N_40_enable_48), 
            .CK(clk_200hz_N_40), .Q(key_out[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i3.GSR = "ENABLED";
    FD1P3AY key_out_i2 (.D(key_out_15__N_137[2]), .SP(clk_200hz_N_40_enable_48), 
            .CK(clk_200hz_N_40), .Q(key_out[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam key_out_i2.GSR = "ENABLED";
    CCU2D cnt_109_110_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1100), .S0(n65[13]), .S1(n65[14]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_109_110_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_109_110_add_4_15.INJECT1_0 = "NO";
    defparam cnt_109_110_add_4_15.INJECT1_1 = "NO";
    FD1S3IX cnt_109_110__i2 (.D(n65[1]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i2.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i3 (.D(n65[2]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i3.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i4 (.D(n65[3]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i4.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i5 (.D(n65[4]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i5.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i6 (.D(n65[5]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i6.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i7 (.D(n65[6]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i7.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i8 (.D(n65[7]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i8.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i9 (.D(n65[8]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i9.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i10 (.D(n65[9]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i10.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i11 (.D(n65[10]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i11.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i12 (.D(n65[11]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i12.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i13 (.D(n65[12]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i13.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i14 (.D(n65[13]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i14.GSR = "ENABLED";
    FD1S3IX cnt_109_110__i15 (.D(n65[14]), .CK(clk_c), .CD(clk_200hz_N_42), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110__i15.GSR = "ENABLED";
    FD1P3AX c_state_FSM_i0_i1 (.D(n1[0]), .SP(clk_c_enable_8), .CK(clk_c), 
            .Q(n1[1]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam c_state_FSM_i0_i1.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(key_out[6]), .B(n10), .C(key_out[8]), .Z(n12_adj_196)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut.init = 16'h8080;
    LUT4 i3_4_lut (.A(key_out[4]), .B(key_out[0]), .C(key_out[10]), .D(key_out[2]), 
         .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    FD1P3AX c_state_FSM_i0_i2 (.D(n1[1]), .SP(clk_c_enable_8), .CK(clk_c), 
            .Q(n1[2]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam c_state_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX c_state_FSM_i0_i3 (.D(n1[2]), .SP(clk_c_enable_8), .CK(clk_c), 
            .Q(n1[3]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(68[4] 75[11])
    defparam c_state_FSM_i0_i3.GSR = "ENABLED";
    CCU2D cnt_109_110_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1099), .COUT(n1100), .S0(n65[11]), .S1(n65[12]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_109_110_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_109_110_add_4_13.INJECT1_0 = "NO";
    defparam cnt_109_110_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_109_110_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1098), .COUT(n1099), .S0(n65[9]), .S1(n65[10]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_109_110_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_109_110_add_4_11.INJECT1_0 = "NO";
    defparam cnt_109_110_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_109_110_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1097), .COUT(n1098), .S0(n65[7]), .S1(n65[8]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_109_110_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_109_110_add_4_9.INJECT1_0 = "NO";
    defparam cnt_109_110_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_109_110_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1096), .COUT(n1097), .S0(n65[5]), .S1(n65[6]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_109_110_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_109_110_add_4_7.INJECT1_0 = "NO";
    defparam cnt_109_110_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_109_110_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1095), .COUT(n1096), .S0(n65[3]), .S1(n65[4]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_109_110_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_109_110_add_4_5.INJECT1_0 = "NO";
    defparam cnt_109_110_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_109_110_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1094), .COUT(n1095), .S0(n65[1]), .S1(n65[2]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_109_110_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_109_110_add_4_3.INJECT1_0 = "NO";
    defparam cnt_109_110_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_109_110_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1094), .S1(n65[0]));   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(55[12:22])
    defparam cnt_109_110_add_4_1.INIT0 = 16'hF000;
    defparam cnt_109_110_add_4_1.INIT1 = 16'h0555;
    defparam cnt_109_110_add_4_1.INJECT1_0 = "NO";
    defparam cnt_109_110_add_4_1.INJECT1_1 = "NO";
    LUT4 i161_3_lut (.A(n1136), .B(cnt[5]), .C(cnt[4]), .Z(n12)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i161_3_lut.init = 16'hc8c8;
    LUT4 i3_4_lut_adj_5 (.A(cnt[0]), .B(cnt[3]), .C(cnt[2]), .D(cnt[1]), 
         .Z(n1136)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_5.init = 16'h8000;
    LUT4 or_21_i3_2_lut (.A(key_r[2]), .B(key[2]), .Z(key_out_15__N_137[2])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(88[37:60])
    defparam or_21_i3_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_34 (.A(key_out[13]), .B(key_out[14]), .Z(n1566)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_rep_34.init = 16'h8888;
    LUT4 or_21_i2_2_lut (.A(key_r[1]), .B(key[1]), .Z(key_out_15__N_137[1])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(88[37:60])
    defparam or_21_i2_2_lut.init = 16'heeee;
    LUT4 or_24_i4_2_lut (.A(key_r[15]), .B(key[15]), .Z(key_out_15__N_125[3])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(91[37:60])
    defparam or_24_i4_2_lut.init = 16'heeee;
    LUT4 or_24_i3_2_lut (.A(key_r[14]), .B(key[14]), .Z(key_out_15__N_125[2])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(91[37:60])
    defparam or_24_i3_2_lut.init = 16'heeee;
    LUT4 or_24_i2_2_lut (.A(key_r[13]), .B(key[13]), .Z(key_out_15__N_125[1])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(91[37:60])
    defparam or_24_i2_2_lut.init = 16'heeee;
    LUT4 or_24_i1_2_lut (.A(key_r[12]), .B(key[12]), .Z(key_out_15__N_125[0])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(91[37:60])
    defparam or_24_i1_2_lut.init = 16'heeee;
    LUT4 or_23_i4_2_lut (.A(key_r[11]), .B(key[11]), .Z(key_out_15__N_129[3])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(90[37:60])
    defparam or_23_i4_2_lut.init = 16'heeee;
    LUT4 or_23_i3_2_lut (.A(key_r[10]), .B(key[10]), .Z(key_out_15__N_129[2])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(90[37:60])
    defparam or_23_i3_2_lut.init = 16'heeee;
    LUT4 or_23_i2_2_lut (.A(key_r[9]), .B(key[9]), .Z(key_out_15__N_129[1])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(90[37:60])
    defparam or_23_i2_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_51 (.A(key_out[12]), .B(key_out[14]), .Z(n1583)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_rep_51.init = 16'h8888;
    LUT4 clk_200hz_I_0_47_2_lut (.A(clk_200hz), .B(clk_200hz_N_42), .Z(clk_200hz_N_41)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(54[13] 57[7])
    defparam clk_200hz_I_0_47_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(key_out[12]), .B(key_out[14]), .C(key_out[1]), 
         .D(key_out[4]), .Z(n7)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h8000;
    LUT4 i1_2_lut_rep_54 (.A(key_out[13]), .B(key_out[12]), .Z(n1586)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i1_2_lut_rep_54.init = 16'h8888;
    LUT4 n19_bdd_2_lut_1088_3_lut_4_lut (.A(key_out[13]), .B(key_out[12]), 
         .C(n1538), .D(n1588), .Z(n1539)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam n19_bdd_2_lut_1088_3_lut_4_lut.init = 16'h8000;
    LUT4 i157_4_lut (.A(n18), .B(cnt[11]), .C(cnt[10]), .D(cnt[9]), 
         .Z(n24)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i157_4_lut.init = 16'hfcec;
    LUT4 i2_3_lut_4_lut (.A(key_out[13]), .B(key_out[12]), .C(key_out[10]), 
         .D(key_out[4]), .Z(n23)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(84[12] 94[6])
    defparam i2_3_lut_4_lut.init = 16'h0880;
    LUT4 or_23_i1_2_lut (.A(key_r[8]), .B(key[8]), .Z(key_out_15__N_129[0])) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab2_electric_piano/array_keyboard.v(90[37:60])
    defparam or_23_i1_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_7 (.A(n24), .B(cnt[14]), .C(cnt[13]), .D(cnt[12]), 
         .Z(clk_200hz_N_42)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_7.init = 16'h8000;
    
endmodule
