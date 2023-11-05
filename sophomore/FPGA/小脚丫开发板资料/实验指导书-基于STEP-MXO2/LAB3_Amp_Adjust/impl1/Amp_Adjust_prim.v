// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Thu Jan 24 17:21:36 2019
//
// Verilog Description of module Amp_Adjust
//

module Amp_Adjust (clk, rst_n, key_a, key_b, seg_1, seg_2) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(18[8:18])
    input clk;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(20[11:14])
    input rst_n;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(21[11:16])
    input key_a;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(22[11:16])
    input key_b;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(23[11:16])
    output [8:0]seg_1;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(24[16:21])
    output [8:0]seg_2;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(25[16:21])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(20[11:14])
    
    wire rst_n_c, key_a_c, key_b_c, seg_1_c_6, seg_1_c_5, seg_1_c_4, 
        seg_1_c_3, seg_1_c_2, seg_1_c_1, seg_1_c_0, seg_2_c_6, seg_2_c_5, 
        seg_2_c_4, seg_2_c_3, seg_2_c_2, seg_2_c_1, seg_2_c_0, L_pulse, 
        R_pulse;
    wire [7:0]seg_data;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(40[12:20])
    
    wire GND_net;
    wire [7:0]seg_data_7__N_72;
    wire [7:0]seg_data_7__N_64;
    
    wire n698, VCC_net, n738, clk_c_enable_5, n737;
    
    IB key_b_pad (.I(key_b), .O(key_b_c));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(23[11:16])
    IB key_a_pad (.I(key_a), .O(key_a_c));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(22[11:16])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(21[11:16])
    IB clk_pad (.I(clk), .O(clk_c));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(20[11:14])
    OB seg_2_pad_0 (.I(seg_2_c_0), .O(seg_2[0]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(25[16:21])
    OB seg_2_pad_1 (.I(seg_2_c_1), .O(seg_2[1]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(25[16:21])
    OB seg_2_pad_2 (.I(seg_2_c_2), .O(seg_2[2]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(25[16:21])
    OB seg_2_pad_3 (.I(seg_2_c_3), .O(seg_2[3]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(25[16:21])
    OB seg_2_pad_4 (.I(seg_2_c_4), .O(seg_2[4]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(25[16:21])
    OB seg_2_pad_5 (.I(seg_2_c_5), .O(seg_2[5]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(25[16:21])
    OB seg_2_pad_6 (.I(seg_2_c_6), .O(seg_2[6]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(25[16:21])
    OB seg_2_pad_7 (.I(GND_net), .O(seg_2[7]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(25[16:21])
    OB seg_2_pad_8 (.I(GND_net), .O(seg_2[8]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(25[16:21])
    OB seg_1_pad_0 (.I(seg_1_c_0), .O(seg_1[0]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(24[16:21])
    OB seg_1_pad_1 (.I(seg_1_c_1), .O(seg_1[1]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(24[16:21])
    OB seg_1_pad_2 (.I(seg_1_c_2), .O(seg_1[2]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(24[16:21])
    OB seg_1_pad_3 (.I(seg_1_c_3), .O(seg_1[3]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(24[16:21])
    OB seg_1_pad_4 (.I(seg_1_c_4), .O(seg_1[4]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(24[16:21])
    OB seg_1_pad_5 (.I(seg_1_c_5), .O(seg_1[5]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(24[16:21])
    OB seg_1_pad_6 (.I(seg_1_c_6), .O(seg_1[6]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(24[16:21])
    GSR GSR_INST (.GSR(rst_n_c));
    VHI i668 (.Z(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    Segment_led u4 (.\seg_data[0] (seg_data[0]), .\seg_data[1] (seg_data[1]), 
            .\seg_data[2] (seg_data[2]), .\seg_data[3] (seg_data[3]), .seg_2_c_6(seg_2_c_6), 
            .n737(n737), .seg_2_c_4(seg_2_c_4), .\seg_data_7__N_64[2] (seg_data_7__N_64[2]), 
            .seg_2_c_3(seg_2_c_3), .seg_2_c_2(seg_2_c_2), .seg_2_c_0(seg_2_c_0), 
            .seg_2_c_1(seg_2_c_1), .n698(n698), .clk_c_enable_5(clk_c_enable_5), 
            .\seg_data_7__N_72[2] (seg_data_7__N_72[2]), .seg_2_c_5(seg_2_c_5)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(59[13] 63[2])
    OB seg_1_pad_7 (.I(GND_net), .O(seg_1[7]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(24[16:21])
    OB seg_1_pad_8 (.I(GND_net), .O(seg_1[8]));   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(24[16:21])
    VLO i1 (.Z(GND_net));
    Segment_led_U0 u3 (.\seg_data[5] (seg_data[5]), .\seg_data[6] (seg_data[6]), 
            .\seg_data[7] (seg_data[7]), .\seg_data[4] (seg_data[4]), .seg_1_c_3(seg_1_c_3), 
            .seg_1_c_1(seg_1_c_1), .n738(n738), .seg_1_c_0(seg_1_c_0), 
            .seg_1_c_2(seg_1_c_2), .seg_1_c_4(seg_1_c_4), .seg_1_c_5(seg_1_c_5)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(52[13] 56[2])
    Encoder u1 (.key_a_c(key_a_c), .clk_c(clk_c), .key_b_c(key_b_c), .L_pulse(L_pulse), 
            .R_pulse(R_pulse), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(30[9] 38[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    Decoder u2 (.seg_data({seg_data}), .clk_c(clk_c), .n737(n737), .L_pulse(L_pulse), 
            .R_pulse(R_pulse), .n698(n698), .\seg_data_7__N_64[2] (seg_data_7__N_64[2]), 
            .\seg_data_7__N_72[2] (seg_data_7__N_72[2]), .clk_c_enable_5(clk_c_enable_5), 
            .n738(n738), .seg_1_c_6(seg_1_c_6)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(42[9] 49[2])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Segment_led
//

module Segment_led (\seg_data[0] , \seg_data[1] , \seg_data[2] , \seg_data[3] , 
            seg_2_c_6, n737, seg_2_c_4, \seg_data_7__N_64[2] , seg_2_c_3, 
            seg_2_c_2, seg_2_c_0, seg_2_c_1, n698, clk_c_enable_5, 
            \seg_data_7__N_72[2] , seg_2_c_5) /* synthesis syn_module_defined=1 */ ;
    input \seg_data[0] ;
    input \seg_data[1] ;
    input \seg_data[2] ;
    input \seg_data[3] ;
    output seg_2_c_6;
    output n737;
    output seg_2_c_4;
    output \seg_data_7__N_64[2] ;
    output seg_2_c_3;
    output seg_2_c_2;
    output seg_2_c_0;
    output seg_2_c_1;
    input n698;
    output clk_c_enable_5;
    output \seg_data_7__N_72[2] ;
    output seg_2_c_5;
    
    
    LUT4 seg_data_3__I_0_Mux_6_i15_3_lut_4_lut_4_lut (.A(\seg_data[0] ), .B(\seg_data[1] ), 
         .C(\seg_data[2] ), .D(\seg_data[3] ), .Z(seg_2_c_6)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam seg_data_3__I_0_Mux_6_i15_3_lut_4_lut_4_lut.init = 16'h037c;
    LUT4 i39_1_lut_rep_17 (.A(\seg_data[0] ), .Z(n737)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/segment_led.v(25[2] 37[9])
    defparam i39_1_lut_rep_17.init = 16'h5555;
    LUT4 i424_4_lut_4_lut_4_lut (.A(\seg_data[0] ), .B(\seg_data[3] ), .C(\seg_data[1] ), 
         .D(\seg_data[2] ), .Z(seg_2_c_4)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/segment_led.v(25[2] 37[9])
    defparam i424_4_lut_4_lut_4_lut.init = 16'h1015;
    LUT4 i417_3_lut_4_lut_4_lut_3_lut_4_lut (.A(\seg_data[0] ), .B(\seg_data[1] ), 
         .C(\seg_data[2] ), .Z(\seg_data_7__N_64[2] )) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i417_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h7878;
    LUT4 seg_data_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut (.A(\seg_data[1] ), .B(\seg_data[2] ), 
         .C(\seg_data[3] ), .D(\seg_data[0] ), .Z(seg_2_c_3)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam seg_data_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h161b;
    LUT4 seg_data_3__I_0_Mux_2_i15_4_lut_4_lut_4_lut (.A(\seg_data[1] ), .B(\seg_data[2] ), 
         .C(\seg_data[0] ), .D(\seg_data[3] ), .Z(seg_2_c_2)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B (D)))) */ ;
    defparam seg_data_3__I_0_Mux_2_i15_4_lut_4_lut_4_lut.init = 16'h11fd;
    LUT4 seg_data_3__I_0_Mux_0_i15_4_lut_4_lut_4_lut (.A(\seg_data[1] ), .B(\seg_data[2] ), 
         .C(\seg_data[3] ), .D(\seg_data[0] ), .Z(seg_2_c_0)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam seg_data_3__I_0_Mux_0_i15_4_lut_4_lut_4_lut.init = 16'h1e1b;
    LUT4 seg_data_3__I_0_Mux_1_i15_4_lut_4_lut_4_lut (.A(\seg_data[1] ), .B(\seg_data[2] ), 
         .C(\seg_data[3] ), .D(\seg_data[0] ), .Z(seg_2_c_1)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C+(D))))) */ ;
    defparam seg_data_3__I_0_Mux_1_i15_4_lut_4_lut_4_lut.init = 16'h1b17;
    LUT4 n698_bdd_2_lut_3_lut (.A(\seg_data[1] ), .B(\seg_data[2] ), .C(n698), 
         .Z(clk_c_enable_5)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n698_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i429_3_lut_4_lut_4_lut (.A(\seg_data[1] ), .B(\seg_data[2] ), .C(\seg_data[0] ), 
         .D(\seg_data[3] ), .Z(\seg_data_7__N_72[2] )) /* synthesis lut_function=(A (B)+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam i429_3_lut_4_lut_4_lut.init = 16'hc9c8;
    LUT4 seg_data_3__I_0_Mux_5_i15_3_lut_4_lut_4_lut (.A(\seg_data[0] ), .B(\seg_data[1] ), 
         .C(\seg_data[2] ), .D(\seg_data[3] ), .Z(seg_2_c_5)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam seg_data_3__I_0_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h0371;
    
endmodule
//
// Verilog Description of module Segment_led_U0
//

module Segment_led_U0 (\seg_data[5] , \seg_data[6] , \seg_data[7] , \seg_data[4] , 
            seg_1_c_3, seg_1_c_1, n738, seg_1_c_0, seg_1_c_2, seg_1_c_4, 
            seg_1_c_5) /* synthesis syn_module_defined=1 */ ;
    input \seg_data[5] ;
    input \seg_data[6] ;
    input \seg_data[7] ;
    input \seg_data[4] ;
    output seg_1_c_3;
    output seg_1_c_1;
    output n738;
    output seg_1_c_0;
    output seg_1_c_2;
    output seg_1_c_4;
    output seg_1_c_5;
    
    
    LUT4 seg_data_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut (.A(\seg_data[5] ), .B(\seg_data[6] ), 
         .C(\seg_data[7] ), .D(\seg_data[4] ), .Z(seg_1_c_3)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/segment_led.v(25[2] 37[9])
    defparam seg_data_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h161b;
    LUT4 seg_data_3__I_0_Mux_1_i15_4_lut_4_lut_4_lut (.A(\seg_data[5] ), .B(\seg_data[6] ), 
         .C(\seg_data[7] ), .D(\seg_data[4] ), .Z(seg_1_c_1)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C+(D))))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/segment_led.v(25[2] 37[9])
    defparam seg_data_3__I_0_Mux_1_i15_4_lut_4_lut_4_lut.init = 16'h1b17;
    LUT4 i52_1_lut_rep_18 (.A(\seg_data[4] ), .Z(n738)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/segment_led.v(25[2] 37[9])
    defparam i52_1_lut_rep_18.init = 16'h5555;
    LUT4 seg_data_3__I_0_Mux_0_i15_4_lut_4_lut_4_lut (.A(\seg_data[5] ), .B(\seg_data[6] ), 
         .C(\seg_data[7] ), .D(\seg_data[4] ), .Z(seg_1_c_0)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/segment_led.v(25[2] 37[9])
    defparam seg_data_3__I_0_Mux_0_i15_4_lut_4_lut_4_lut.init = 16'h1e1b;
    LUT4 seg_data_3__I_0_Mux_2_i15_4_lut_4_lut_4_lut (.A(\seg_data[5] ), .B(\seg_data[6] ), 
         .C(\seg_data[4] ), .D(\seg_data[7] ), .Z(seg_1_c_2)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B (D)))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/segment_led.v(25[2] 37[9])
    defparam seg_data_3__I_0_Mux_2_i15_4_lut_4_lut_4_lut.init = 16'h11fd;
    LUT4 i405_4_lut_4_lut_4_lut (.A(\seg_data[4] ), .B(\seg_data[7] ), .C(\seg_data[5] ), 
         .D(\seg_data[6] ), .Z(seg_1_c_4)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/segment_led.v(25[2] 37[9])
    defparam i405_4_lut_4_lut_4_lut.init = 16'h1015;
    LUT4 seg_data_3__I_0_Mux_5_i15_3_lut_4_lut_4_lut (.A(\seg_data[4] ), .B(\seg_data[5] ), 
         .C(\seg_data[6] ), .D(\seg_data[7] ), .Z(seg_1_c_5)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam seg_data_3__I_0_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h0371;
    
endmodule
//
// Verilog Description of module Encoder
//

module Encoder (key_a_c, clk_c, key_b_c, L_pulse, R_pulse, GND_net) /* synthesis syn_module_defined=1 */ ;
    input key_a_c;
    input clk_c;
    input key_b_c;
    output L_pulse;
    output R_pulse;
    input GND_net;
    
    wire B_state_N_39 /* synthesis is_clock=1, SET_AS_NETWORK=\u1/B_state_N_39 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(71[5:12])
    wire clk_500us /* synthesis is_clock=1, SET_AS_NETWORK=\u1/clk_500us */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(38[5:14])
    wire A_state_N_49 /* synthesis is_clock=1, SET_AS_NETWORK=\u1/A_state_N_49 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(53[5:12])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(20[11:14])
    
    wire key_b_r2, key_b_r1, key_a_r, key_a_r1, key_a_r2, A_state, 
        A_state_N_46;
    wire [12:0]cnt;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(30[12:15])
    
    wire cnt_12__N_29;
    wire [11:0]n53;
    
    wire key_b_r, B_state, B_state_N_36, A_state_r, A_state_r1, L_pulse_N_30, 
        R_pulse_N_40, clk_500us_N_43, n661, n663, n553, n8, n14, 
        n551, n550, n5, n667, n549, n548, n547, n546;
    
    LUT4 i254_2_lut (.A(key_b_r2), .B(key_b_r1), .Z(B_state_N_39)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i254_2_lut.init = 16'h9999;
    FD1S3AX key_a_r_62 (.D(key_a_c), .CK(clk_500us), .Q(key_a_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(47[7] 51[4])
    defparam key_a_r_62.GSR = "DISABLED";
    FD1S3AX key_a_r1_63 (.D(key_a_r), .CK(clk_500us), .Q(key_a_r1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(47[7] 51[4])
    defparam key_a_r1_63.GSR = "DISABLED";
    FD1S3AX key_a_r2_64 (.D(key_a_r1), .CK(clk_500us), .Q(key_a_r2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(47[7] 51[4])
    defparam key_a_r2_64.GSR = "DISABLED";
    FD1S1A A_state_I_0 (.D(A_state_N_46), .CK(A_state_N_49), .Q(A_state)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(55[1] 61[4])
    defparam A_state_I_0.GSR = "DISABLED";
    FD1S3IX cnt_84_85__i12 (.D(n53[11]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i12.GSR = "ENABLED";
    FD1S3IX cnt_84_85__i11 (.D(n53[10]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i11.GSR = "ENABLED";
    FD1S3AX key_b_r_66 (.D(key_b_c), .CK(clk_500us), .Q(key_b_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(65[7] 69[4])
    defparam key_b_r_66.GSR = "DISABLED";
    FD1S3AX key_b_r1_67 (.D(key_b_r), .CK(clk_500us), .Q(key_b_r1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(65[7] 69[4])
    defparam key_b_r1_67.GSR = "DISABLED";
    FD1S3AX key_b_r2_68 (.D(key_b_r1), .CK(clk_500us), .Q(key_b_r2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(65[7] 69[4])
    defparam key_b_r2_68.GSR = "DISABLED";
    FD1S1A B_state_I_0_78 (.D(B_state_N_36), .CK(B_state_N_39), .Q(B_state)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(73[1] 79[4])
    defparam B_state_I_0_78.GSR = "DISABLED";
    FD1S3IX cnt_84_85__i10 (.D(n53[9]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i10.GSR = "ENABLED";
    FD1S3IX cnt_84_85__i9 (.D(n53[8]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i9.GSR = "ENABLED";
    FD1S3AX A_state_r_70 (.D(A_state), .CK(clk_c), .Q(A_state_r)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(83[7] 86[4])
    defparam A_state_r_70.GSR = "DISABLED";
    FD1S3AX A_state_r1_71 (.D(A_state_r), .CK(clk_c), .Q(A_state_r1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(83[7] 86[4])
    defparam A_state_r1_71.GSR = "DISABLED";
    FD1S3AX L_pulse_72 (.D(L_pulse_N_30), .CK(clk_c), .Q(L_pulse)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(94[7] 95[23])
    defparam L_pulse_72.GSR = "ENABLED";
    FD1S3AX R_pulse_73 (.D(R_pulse_N_40), .CK(clk_c), .Q(R_pulse)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(101[7] 102[23])
    defparam R_pulse_73.GSR = "ENABLED";
    FD1S3IX cnt_84_85__i8 (.D(n53[7]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i8.GSR = "ENABLED";
    FD1S3IX cnt_84_85__i7 (.D(n53[6]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i7.GSR = "ENABLED";
    FD1S3IX cnt_84_85__i6 (.D(n53[5]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i6.GSR = "ENABLED";
    FD1S3IX cnt_84_85__i5 (.D(n53[4]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i5.GSR = "ENABLED";
    FD1S3IX cnt_84_85__i4 (.D(n53[3]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i4.GSR = "ENABLED";
    FD1S3AX clk_500us_61 (.D(clk_500us_N_43), .CK(clk_c), .Q(clk_500us)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=30, LSE_RLINE=38 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(41[7] 42[30])
    defparam clk_500us_61.GSR = "ENABLED";
    FD1S3IX cnt_84_85__i1 (.D(n53[0]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i1.GSR = "ENABLED";
    FD1S3IX cnt_84_85__i3 (.D(n53[2]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i3.GSR = "ENABLED";
    FD1S3IX cnt_84_85__i2 (.D(n53[1]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85__i2.GSR = "ENABLED";
    LUT4 i421_2_lut (.A(key_a_r2), .B(key_a_r1), .Z(A_state_N_46)) /* synthesis lut_function=(A (B)) */ ;
    defparam i421_2_lut.init = 16'h8888;
    LUT4 i608_4_lut (.A(cnt[4]), .B(cnt[11]), .C(cnt[7]), .D(cnt[5]), 
         .Z(n661)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i608_4_lut.init = 16'h8000;
    LUT4 i419_2_lut (.A(key_b_r2), .B(key_b_r1), .Z(B_state_N_36)) /* synthesis lut_function=(A (B)) */ ;
    defparam i419_2_lut.init = 16'h8888;
    LUT4 i610_3_lut (.A(cnt[1]), .B(cnt[9]), .C(cnt[8]), .Z(n663)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i610_3_lut.init = 16'h8080;
    LUT4 i87_3_lut_4_lut_3_lut (.A(A_state_r1), .B(A_state_r), .C(B_state), 
         .Z(L_pulse_N_30)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(89[14:40])
    defparam i87_3_lut_4_lut_3_lut.init = 16'h4242;
    LUT4 i252_2_lut (.A(key_a_r2), .B(key_a_r1), .Z(A_state_N_49)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i252_2_lut.init = 16'h9999;
    LUT4 i110_3_lut (.A(n553), .B(cnt[11]), .C(cnt[10]), .Z(cnt_12__N_29)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i110_3_lut.init = 16'hc8c8;
    LUT4 i102_4_lut (.A(cnt[5]), .B(cnt[6]), .C(cnt[4]), .D(n8), .Z(n14)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i102_4_lut.init = 16'heccc;
    CCU2D cnt_84_85_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n551), .S0(n53[11]));   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_84_85_add_4_13.INIT1 = 16'h0000;
    defparam cnt_84_85_add_4_13.INJECT1_0 = "NO";
    defparam cnt_84_85_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_84_85_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n550), .COUT(n551), .S0(n53[9]), .S1(n53[10]));   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_84_85_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_84_85_add_4_11.INJECT1_0 = "NO";
    defparam cnt_84_85_add_4_11.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(n14), .B(cnt[9]), .C(cnt[8]), .D(cnt[7]), .Z(n553)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i94_4_lut (.A(cnt[2]), .B(cnt[3]), .C(cnt[1]), .D(cnt[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i94_4_lut.init = 16'heccc;
    LUT4 i1_4_lut (.A(clk_500us), .B(n5), .C(cnt[3]), .D(n667), .Z(clk_500us_N_43)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B+(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'ha9aa;
    CCU2D cnt_84_85_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n549), .COUT(n550), .S0(n53[7]), .S1(n53[8]));   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_84_85_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_84_85_add_4_9.INJECT1_0 = "NO";
    defparam cnt_84_85_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_84_85_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n548), .COUT(n549), .S0(n53[5]), .S1(n53[6]));   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_84_85_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_84_85_add_4_7.INJECT1_0 = "NO";
    defparam cnt_84_85_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_84_85_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n547), .COUT(n548), .S0(n53[3]), .S1(n53[4]));   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_84_85_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_84_85_add_4_5.INJECT1_0 = "NO";
    defparam cnt_84_85_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_84_85_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n546), .COUT(n547), .S0(n53[1]), .S1(n53[2]));   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_84_85_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_84_85_add_4_3.INJECT1_0 = "NO";
    defparam cnt_84_85_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_84_85_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n546), .S1(n53[0]));   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(35[14:24])
    defparam cnt_84_85_add_4_1.INIT0 = 16'hF000;
    defparam cnt_84_85_add_4_1.INIT1 = 16'h0555;
    defparam cnt_84_85_add_4_1.INJECT1_0 = "NO";
    defparam cnt_84_85_add_4_1.INJECT1_1 = "NO";
    LUT4 i88_3_lut_4_lut_3_lut (.A(A_state_r1), .B(A_state_r), .C(B_state), 
         .Z(R_pulse_N_40)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/encoder.v(89[14:40])
    defparam i88_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 i1_2_lut (.A(cnt[6]), .B(cnt[10]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i614_4_lut (.A(n661), .B(cnt[2]), .C(n663), .D(cnt[0]), .Z(n667)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i614_4_lut.init = 16'h8000;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Decoder
//

module Decoder (seg_data, clk_c, n737, L_pulse, R_pulse, n698, \seg_data_7__N_64[2] , 
            \seg_data_7__N_72[2] , clk_c_enable_5, n738, seg_1_c_6) /* synthesis syn_module_defined=1 */ ;
    output [7:0]seg_data;
    input clk_c;
    input n737;
    input L_pulse;
    input R_pulse;
    output n698;
    input \seg_data_7__N_64[2] ;
    input \seg_data_7__N_72[2] ;
    input clk_c_enable_5;
    input n738;
    output seg_1_c_6;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/amp_adjust.v(20[11:14])
    
    wire clk_c_enable_8, n748, n749;
    wire [7:0]seg_data_7__N_54;
    
    wire n752;
    wire [7:0]seg_data_7__N_64;
    wire [7:0]seg_data_7__N_72;
    
    wire n743, n745, n746, n753, n742;
    
    FD1P3AX seg_data_i0 (.D(n737), .SP(clk_c_enable_8), .CK(clk_c), .Q(seg_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(31[11] 47[5])
    defparam seg_data_i0.GSR = "ENABLED";
    LUT4 n509_bdd_4_lut (.A(seg_data[3]), .B(seg_data[0]), .C(L_pulse), 
         .D(R_pulse), .Z(n698)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C)))) */ ;
    defparam n509_bdd_4_lut.init = 16'h1810;
    LUT4 seg_data_7__I_0_i2_4_lut_else_2_lut (.A(L_pulse), .B(seg_data[3]), 
         .C(seg_data[2]), .D(seg_data[0]), .Z(n748)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(B (C (D))+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(38[12] 46[6])
    defparam seg_data_7__I_0_i2_4_lut_else_2_lut.init = 16'h51a8;
    PFUMX i650 (.BLUT(n748), .ALUT(n749), .C0(seg_data[1]), .Z(seg_data_7__N_54[1]));
    PFUMX seg_data_7__I_0_i3 (.BLUT(\seg_data_7__N_64[2] ), .ALUT(\seg_data_7__N_72[2] ), 
          .C0(L_pulse), .Z(seg_data_7__N_54[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;
    FD1P3AX seg_data_i7 (.D(seg_data_7__N_54[7]), .SP(clk_c_enable_5), .CK(clk_c), 
            .Q(seg_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(31[11] 47[5])
    defparam seg_data_i7.GSR = "ENABLED";
    FD1P3AY seg_data_i6 (.D(seg_data_7__N_54[6]), .SP(clk_c_enable_5), .CK(clk_c), 
            .Q(seg_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(31[11] 47[5])
    defparam seg_data_i6.GSR = "ENABLED";
    FD1P3AX seg_data_i5 (.D(seg_data_7__N_54[5]), .SP(clk_c_enable_5), .CK(clk_c), 
            .Q(seg_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(31[11] 47[5])
    defparam seg_data_i5.GSR = "ENABLED";
    LUT4 seg_data_4__bdd_2_lut (.A(seg_data[4]), .B(L_pulse), .Z(n752)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam seg_data_4__bdd_2_lut.init = 16'h9999;
    FD1P3AY seg_data_i4 (.D(n738), .SP(clk_c_enable_5), .CK(clk_c), .Q(seg_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(31[11] 47[5])
    defparam seg_data_i4.GSR = "ENABLED";
    PFUMX seg_data_7__I_0_i4 (.BLUT(seg_data_7__N_64[3]), .ALUT(seg_data_7__N_72[3]), 
          .C0(L_pulse), .Z(seg_data_7__N_54[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;
    FD1P3AX seg_data_i3 (.D(seg_data_7__N_54[3]), .SP(clk_c_enable_8), .CK(clk_c), 
            .Q(seg_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(31[11] 47[5])
    defparam seg_data_i3.GSR = "ENABLED";
    FD1P3AX seg_data_i2 (.D(seg_data_7__N_54[2]), .SP(clk_c_enable_8), .CK(clk_c), 
            .Q(seg_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(31[11] 47[5])
    defparam seg_data_i2.GSR = "ENABLED";
    FD1P3AX seg_data_i1 (.D(seg_data_7__N_54[1]), .SP(clk_c_enable_8), .CK(clk_c), 
            .Q(seg_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=42, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(31[11] 47[5])
    defparam seg_data_i1.GSR = "ENABLED";
    LUT4 seg_data_7__I_0_i8_then_4_lut (.A(seg_data[4]), .B(L_pulse), .C(seg_data[6]), 
         .D(seg_data[5]), .Z(n743)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;
    defparam seg_data_7__I_0_i8_then_4_lut.init = 16'hdff9;
    LUT4 i415_4_lut_4_lut (.A(seg_data[3]), .B(seg_data[1]), .C(seg_data[2]), 
         .D(seg_data[0]), .Z(seg_data_7__N_64[3])) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A !(B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(43[13:51])
    defparam i415_4_lut_4_lut.init = 16'h68aa;
    LUT4 i467_4_lut_4_lut (.A(seg_data[3]), .B(seg_data[1]), .C(seg_data[2]), 
         .D(seg_data[0]), .Z(seg_data_7__N_72[3])) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i467_4_lut_4_lut.init = 16'haaa9;
    LUT4 i1_2_lut (.A(R_pulse), .B(L_pulse), .Z(clk_c_enable_8)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    PFUMX i648 (.BLUT(n745), .ALUT(n746), .C0(seg_data[5]), .Z(seg_data_7__N_54[6]));
    LUT4 i350_then_3_lut (.A(L_pulse), .B(seg_data[4]), .C(seg_data[6]), 
         .Z(n746)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;
    defparam i350_then_3_lut.init = 16'hb4b4;
    PFUMX i653 (.BLUT(n753), .ALUT(n752), .C0(seg_data[5]), .Z(seg_data_7__N_54[5]));
    LUT4 i350_else_3_lut (.A(L_pulse), .B(seg_data[4]), .C(seg_data[6]), 
         .D(seg_data[7]), .Z(n745)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (C)) */ ;
    defparam i350_else_3_lut.init = 16'hd2d0;
    LUT4 seg_data_7__I_0_i8_else_4_lut (.A(seg_data[4]), .B(L_pulse), .C(seg_data[6]), 
         .D(seg_data[5]), .Z(n742)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((C+(D))+!B))) */ ;
    defparam seg_data_7__I_0_i8_else_4_lut.init = 16'h2004;
    PFUMX i646 (.BLUT(n742), .ALUT(n743), .C0(seg_data[7]), .Z(seg_data_7__N_54[7]));
    LUT4 seg_data_4__bdd_4_lut (.A(seg_data[4]), .B(L_pulse), .C(seg_data[6]), 
         .D(seg_data[7]), .Z(n753)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (C+(D))))) */ ;
    defparam seg_data_4__bdd_4_lut.init = 16'h6462;
    LUT4 seg_data_3__I_0_Mux_6_i15_3_lut_4_lut_4_lut (.A(seg_data[5]), .B(seg_data[4]), 
         .C(seg_data[6]), .D(seg_data[7]), .Z(seg_1_c_6)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (C (D)+!C !(D)))) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(42[27:47])
    defparam seg_data_3__I_0_Mux_6_i15_3_lut_4_lut_4_lut.init = 16'h057a;
    LUT4 seg_data_7__I_0_i2_4_lut_then_2_lut (.A(L_pulse), .B(seg_data[0]), 
         .Z(n749)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // f:/fpga_project/baseboard/lab3_amp_adjust/decoder.v(38[12] 46[6])
    defparam seg_data_7__I_0_i2_4_lut_then_2_lut.init = 16'h9999;
    
endmodule
