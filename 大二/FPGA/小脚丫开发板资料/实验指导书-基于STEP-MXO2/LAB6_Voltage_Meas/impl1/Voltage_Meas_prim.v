// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Fri Jan 25 14:23:54 2019
//
// Verilog Description of module Voltage_Meas
//

module Voltage_Meas (clk, rst_n, adc_cs, adc_clk, adc_dat, seg_1, 
            seg_2) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(18[8:20])
    input clk;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(20[10:13])
    input rst_n;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(21[10:15])
    output adc_cs;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(23[11:17])
    output adc_clk;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(24[11:18])
    input adc_dat;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(25[10:17])
    output [8:0]seg_1;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(27[15:20])
    output [8:0]seg_2;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(28[15:20])
    
    wire clk_c /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(20[10:13])
    wire clk_24mhz /* synthesis SET_AS_NETWORK=clk_24mhz, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(37[6:15])
    
    wire GND_net, VCC_net, rst_n_c, adc_cs_c, adc_clk_c, adc_dat_c, 
        seg_1_c_6, seg_1_c_5, seg_1_c_4, seg_1_c_3, seg_1_c_2, seg_1_c_1, 
        seg_1_c_0, seg_2_c_6, seg_2_c_5, seg_2_c_4, seg_2_c_3, seg_2_c_2, 
        seg_2_c_1, seg_2_c_0;
    wire [7:0]adc_data;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(45[12:20])
    wire [15:0]bin_code;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(59[13:21])
    
    wire bcd_code_19__N_107, bcd_code_19__N_117, bcd_code_19__N_121, bcd_code_19__N_116;
    wire [3:0]bcd_code_19__N_102;
    
    wire bcd_code_19__N_125, bcd_code_19__N_144, bcd_code_19__N_148, n2149, 
        n7, n10407, n10000, n10406, n10698, n2156, n10629, n10628, 
        n10404, n10627, n10403, n10626, n10625, n10624, n10310, 
        n10540, n10537, n10003, n10428, n10425, n10526, n10002, 
        n723, n10521, n10423, n10328, n10421, n10511, n10420, 
        n10507, n10504, n10419, n10445, n10418, n10001, n10497, 
        n10417, n26, n10380, n10441, n10416, n10415, n10546, n10414, 
        n6;
    
    VHI i2 (.Z(VCC_net));
    OB adc_clk_pad (.I(adc_clk_c), .O(adc_clk));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(24[11:18])
    CCU2D add_1503_2 (.A0(adc_data[0]), .B0(adc_data[7]), .C0(GND_net), 
          .D0(GND_net), .A1(adc_data[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n10000), .S1(bin_code[8]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(59[24:42])
    defparam add_1503_2.INIT0 = 16'h7000;
    defparam add_1503_2.INIT1 = 16'h5aaa;
    defparam add_1503_2.INJECT1_0 = "NO";
    defparam add_1503_2.INJECT1_1 = "NO";
    CCU2D add_1503_8 (.A0(bin_code[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(adc_data[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10002), .COUT(n10003), .S0(bin_code[13]), .S1(bin_code[14]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(59[24:42])
    defparam add_1503_8.INIT0 = 16'h5aaa;
    defparam add_1503_8.INIT1 = 16'h5aaa;
    defparam add_1503_8.INJECT1_0 = "NO";
    defparam add_1503_8.INJECT1_1 = "NO";
    IB adc_dat_pad (.I(adc_dat), .O(adc_dat_c));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(25[10:17])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(21[10:15])
    IB clk_pad (.I(clk), .O(clk_c));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(20[10:13])
    OB seg_2_pad_0 (.I(seg_2_c_0), .O(seg_2[0]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(28[15:20])
    OB seg_2_pad_1 (.I(seg_2_c_1), .O(seg_2[1]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(28[15:20])
    CCU2D add_1503_6 (.A0(bin_code[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bin_code[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10001), .COUT(n10002), .S0(bin_code[11]), .S1(bin_code[12]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(59[24:42])
    defparam add_1503_6.INIT0 = 16'h5aaa;
    defparam add_1503_6.INIT1 = 16'h5aaa;
    defparam add_1503_6.INJECT1_0 = "NO";
    defparam add_1503_6.INJECT1_1 = "NO";
    OB seg_2_pad_2 (.I(seg_2_c_2), .O(seg_2[2]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(28[15:20])
    OB seg_2_pad_3 (.I(seg_2_c_3), .O(seg_2[3]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(28[15:20])
    OB seg_2_pad_4 (.I(seg_2_c_4), .O(seg_2[4]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(28[15:20])
    OB seg_2_pad_5 (.I(seg_2_c_5), .O(seg_2[5]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(28[15:20])
    OB seg_2_pad_6 (.I(seg_2_c_6), .O(seg_2[6]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(28[15:20])
    OB seg_2_pad_7 (.I(GND_net), .O(seg_2[7]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(28[15:20])
    OB seg_2_pad_8 (.I(GND_net), .O(seg_2[8]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(28[15:20])
    OB seg_1_pad_0 (.I(seg_1_c_0), .O(seg_1[0]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(27[15:20])
    OB seg_1_pad_1 (.I(seg_1_c_1), .O(seg_1[1]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(27[15:20])
    OB seg_1_pad_2 (.I(seg_1_c_2), .O(seg_1[2]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(27[15:20])
    OB seg_1_pad_3 (.I(seg_1_c_3), .O(seg_1[3]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(27[15:20])
    OB seg_1_pad_4 (.I(seg_1_c_4), .O(seg_1[4]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(27[15:20])
    OB seg_1_pad_5 (.I(seg_1_c_5), .O(seg_1[5]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(27[15:20])
    OB seg_1_pad_6 (.I(seg_1_c_6), .O(seg_1[6]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(27[15:20])
    OB seg_1_pad_7 (.I(VCC_net), .O(seg_1[7]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(27[15:20])
    OB seg_1_pad_8 (.I(GND_net), .O(seg_1[8]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(27[15:20])
    CCU2D add_1503_4 (.A0(adc_data[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(bin_code[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10000), .COUT(n10001), .S0(bin_code[9]), .S1(bin_code[10]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(59[24:42])
    defparam add_1503_4.INIT0 = 16'h5aaa;
    defparam add_1503_4.INIT1 = 16'h5aaa;
    defparam add_1503_4.INJECT1_0 = "NO";
    defparam add_1503_4.INJECT1_1 = "NO";
    PFUMX i9668 (.BLUT(n10407), .ALUT(n10406), .C0(n723), .Z(bcd_code_19__N_117));
    OB adc_cs_pad (.I(adc_cs_c), .O(adc_cs));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(23[11:17])
    GSR GSR_INST (.GSR(rst_n_c));
    PFUMX i9666 (.BLUT(n10404), .ALUT(n10403), .C0(n26), .Z(bcd_code_19__N_144));
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D add_1503_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10003), 
          .S0(bin_code[15]));   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(59[24:42])
    defparam add_1503_cout.INIT0 = 16'h0000;
    defparam add_1503_cout.INIT1 = 16'h0000;
    defparam add_1503_cout.INJECT1_0 = "NO";
    defparam add_1503_cout.INJECT1_1 = "NO";
    LUT4 i1412_2_lut_rep_156_3_lut_4_lut (.A(adc_data[0]), .B(adc_data[7]), 
         .C(n10511), .D(bin_code[8]), .Z(n10507)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;
    defparam i1412_2_lut_rep_156_3_lut_4_lut.init = 16'h6ff6;
    LUT4 bcd_code_19__N_102_2__bdd_4_lut_9725 (.A(bcd_code_19__N_102[2]), 
         .B(n10521), .C(bcd_code_19__N_116), .D(bin_code[15]), .Z(n10625)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !((D)+!C)))) */ ;
    defparam bcd_code_19__N_102_2__bdd_4_lut_9725.init = 16'h6afc;
    LUT4 bcd_code_19__N_102_2__bdd_2_lut_9765 (.A(n10521), .B(bcd_code_19__N_116), 
         .Z(n10626)) /* synthesis lut_function=(A+(B)) */ ;
    defparam bcd_code_19__N_102_2__bdd_2_lut_9765.init = 16'heeee;
    LUT4 n10627_bdd_3_lut (.A(n10627), .B(n10624), .C(n26), .Z(n10628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n10627_bdd_3_lut.init = 16'hcaca;
    LUT4 bcd_code_19__N_102_2__bdd_4_lut_9764 (.A(bcd_code_19__N_102[2]), 
         .B(bcd_code_19__N_116), .C(n10698), .D(bin_code[15]), .Z(n10629)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;
    defparam bcd_code_19__N_102_2__bdd_4_lut_9764.init = 16'hb000;
    LUT4 i2_4_lut (.A(bcd_code_19__N_116), .B(n10526), .C(n26), .D(n10521), 
         .Z(bcd_code_19__N_148)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i2_4_lut.init = 16'h6669;
    Segment_led_U0 u4 (.n10416(n10416), .rst_n_c(rst_n_c), .n10428(n10428), 
            .n10414(n10414), .n10441(n10441), .n10546(n10546), .seg_1_c_3(seg_1_c_3), 
            .n10445(n10445), .seg_1_c_1(seg_1_c_1)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(71[13] 76[2])
    Segment_led u5 (.rst_n_c(rst_n_c), .n10420(n10420), .n10419(n10419), 
            .n10380(n10380), .seg_2_c_5(seg_2_c_5), .n10415(n10415), .n10421(n10421), 
            .n2156(n2156), .seg_2_c_1(seg_2_c_1), .n10310(n10310), .n10418(n10418), 
            .seg_2_c_0(seg_2_c_0), .n10328(n10328), .n10423(n10423), .n6(n6), 
            .n10417(n10417), .seg_2_c_2(seg_2_c_2), .n10425(n10425), .n2149(n2149), 
            .seg_2_c_4(seg_2_c_4), .seg_2_c_3(seg_2_c_3), .n7(n7), .seg_2_c_6(seg_2_c_6)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(79[13] 84[2])
    LUT4 i2_4_lut_adj_44 (.A(bin_code[13]), .B(n10537), .C(n723), .D(bin_code[12]), 
         .Z(bcd_code_19__N_121)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i2_4_lut_adj_44.init = 16'h6696;
    bin_to_bcd u3 (.rst_n_c(rst_n_c), .n10418(n10418), .\bin_code[14] (bin_code[14]), 
            .n723(n723), .n10537(n10537), .n26(n26), .n2156(n2156), 
            .n10428(n10428), .\bin_code[12] (bin_code[12]), .\bin_code[11] (bin_code[11]), 
            .\bin_code[13] (bin_code[13]), .n79({bcd_code_19__N_107, bcd_code_19__N_117, 
            bcd_code_19__N_121, Open_0}), .n10497(n10497), .\bin_code[6] (bin_code[6]), 
            .n10540(n10540), .n10504(n10504), .n10419(n10419), .bcd_code_19__N_148(bcd_code_19__N_148), 
            .bcd_code_19__N_144(bcd_code_19__N_144), .n10507(n10507), .\bin_code[4] (bin_code[4]), 
            .\bin_code[3] (bin_code[3]), .\bin_code[8] (bin_code[8]), .n10511(n10511), 
            .\bin_code[9] (bin_code[9]), .n10421(n10421), .n10423(n10423), 
            .n10380(n10380), .n10521(n10521), .\bin_code[15] (bin_code[15]), 
            .n10414(n10414), .n10420(n10420), .n10328(n10328), .\bin_code[10] (bin_code[10]), 
            .bcd_code_19__N_116(bcd_code_19__N_116), .\bcd_code_19__N_102[2] (bcd_code_19__N_102[2]), 
            .n10404(n10404), .n10310(n10310), .n10698(n10698), .n10403(n10403), 
            .n10526(n10526), .n10407(n10407), .n10406(n10406), .n10416(n10416), 
            .n6(n6), .n10425(n10425), .n10417(n10417), .\bin_code[5] (bin_code[5]), 
            .n2149(n2149), .n10415(n10415), .n10445(n10445), .seg_1_c_6(seg_1_c_6), 
            .seg_1_c_0(seg_1_c_0), .seg_1_c_2(seg_1_c_2), .seg_1_c_5(seg_1_c_5), 
            .seg_1_c_4(seg_1_c_4), .n10624(n10624), .bcd_code_19__N_125(bcd_code_19__N_125), 
            .n7(n7), .n10441(n10441), .n10546(n10546)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(63[12] 68[2])
    PFUMX i9726 (.BLUT(n10629), .ALUT(n10628), .C0(bcd_code_19__N_107), 
          .Z(bcd_code_19__N_125));
    PFUMX i9723 (.BLUT(n10626), .ALUT(n10625), .C0(n10698), .Z(n10627));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    pll u1 (.clk_c(clk_c), .clk_24mhz(clk_24mhz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(38[5] 42[2])
    LUT4 i9307_2_lut_rep_189 (.A(adc_data[0]), .B(adc_data[7]), .Z(n10540)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i9307_2_lut_rep_189.init = 16'h6666;
    LUT4 i1400_2_lut_rep_146_3_lut_4_lut (.A(adc_data[0]), .B(adc_data[7]), 
         .C(bin_code[6]), .D(n10504), .Z(n10497)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam i1400_2_lut_rep_146_3_lut_4_lut.init = 16'hf9f6;
    ADC081S101_driver u2 (.adc_cs_c(adc_cs_c), .clk_24mhz(clk_24mhz), .adc_dat_c(adc_dat_c), 
            .\adc_data[7] (adc_data[7]), .\bin_code[6] (bin_code[6]), .\bin_code[5] (bin_code[5]), 
            .\bin_code[4] (bin_code[4]), .\bin_code[3] (bin_code[3]), .\adc_data[2] (adc_data[2]), 
            .\adc_data[1] (adc_data[1]), .\adc_data[0] (adc_data[0]), .adc_clk_c(adc_clk_c), 
            .GND_net(GND_net), .rst_n_c(rst_n_c)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(47[19] 56[2])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Segment_led_U0
//

module Segment_led_U0 (n10416, rst_n_c, n10428, n10414, n10441, n10546, 
            seg_1_c_3, n10445, seg_1_c_1) /* synthesis syn_module_defined=1 */ ;
    input n10416;
    input rst_n_c;
    input n10428;
    input n10414;
    input n10441;
    input n10546;
    output seg_1_c_3;
    input n10445;
    output seg_1_c_1;
    
    
    wire n10413;
    
    LUT4 i1554_3_lut_rep_62 (.A(n10416), .B(rst_n_c), .C(n10428), .Z(n10413)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/segment_led.v(27[2] 39[9])
    defparam i1554_3_lut_rep_62.init = 16'h4848;
    LUT4 seg_data_3__I_0_Mux_3_i7_4_lut (.A(n10414), .B(n10413), .C(n10441), 
         .D(n10546), .Z(seg_1_c_3)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/segment_led.v(27[2] 39[9])
    defparam seg_data_3__I_0_Mux_3_i7_4_lut.init = 16'hcfc5;
    LUT4 i9624_2_lut_4_lut_4_lut (.A(n10445), .B(n10428), .C(rst_n_c), 
         .D(n10416), .Z(seg_1_c_1)) /* synthesis lut_function=((B ((D)+!C)+!B !(C (D)))+!A) */ ;
    defparam i9624_2_lut_4_lut_4_lut.init = 16'hdf7f;
    
endmodule
//
// Verilog Description of module Segment_led
//

module Segment_led (rst_n_c, n10420, n10419, n10380, seg_2_c_5, n10415, 
            n10421, n2156, seg_2_c_1, n10310, n10418, seg_2_c_0, 
            n10328, n10423, n6, n10417, seg_2_c_2, n10425, n2149, 
            seg_2_c_4, seg_2_c_3, n7, seg_2_c_6) /* synthesis syn_module_defined=1 */ ;
    input rst_n_c;
    input n10420;
    input n10419;
    input n10380;
    output seg_2_c_5;
    input n10415;
    input n10421;
    input n2156;
    output seg_2_c_1;
    input n10310;
    input n10418;
    output seg_2_c_0;
    input n10328;
    input n10423;
    input n6;
    input n10417;
    output seg_2_c_2;
    input n10425;
    input n2149;
    output seg_2_c_4;
    output seg_2_c_3;
    input n7;
    output seg_2_c_6;
    
    
    wire n7_c;
    
    LUT4 seg_data_3__I_0_Mux_5_i15_3_lut_4_lut (.A(rst_n_c), .B(n10420), 
         .C(n10419), .D(n10380), .Z(seg_2_c_5)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam seg_data_3__I_0_Mux_5_i15_3_lut_4_lut.init = 16'h7f70;
    LUT4 seg_data_3__I_0_Mux_1_i15_4_lut_4_lut (.A(n10415), .B(n10421), 
         .C(n10419), .D(n2156), .Z(seg_2_c_1)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B))) */ ;
    defparam seg_data_3__I_0_Mux_1_i15_4_lut_4_lut.init = 16'h535f;
    LUT4 seg_data_3__I_0_Mux_0_i15_4_lut (.A(n10310), .B(n10420), .C(n10419), 
         .D(n10418), .Z(seg_2_c_0)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/segment_led.v(27[2] 39[9])
    defparam seg_data_3__I_0_Mux_0_i15_4_lut.init = 16'h3f35;
    LUT4 i9627_4_lut (.A(n10328), .B(n10423), .C(n6), .D(n10417), .Z(seg_2_c_2)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/segment_led.v(27[2] 39[9])
    defparam i9627_4_lut.init = 16'haa2a;
    LUT4 seg_data_3__I_0_Mux_3_i7_4_lut (.A(n10425), .B(n2156), .C(n10417), 
         .D(n10418), .Z(n7_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/segment_led.v(27[2] 39[9])
    defparam seg_data_3__I_0_Mux_3_i7_4_lut.init = 16'hcfc5;
    LUT4 i9064_4_lut (.A(n10425), .B(n2149), .C(n10420), .D(n10419), 
         .Z(seg_2_c_4)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/segment_led.v(27[2] 39[9])
    defparam i9064_4_lut.init = 16'h0544;
    LUT4 seg_data_3__I_0_Mux_3_i15_3_lut_4_lut (.A(n10423), .B(n10421), 
         .C(n10419), .D(n7_c), .Z(seg_2_c_3)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/segment_led.v(27[2] 39[9])
    defparam seg_data_3__I_0_Mux_3_i15_3_lut_4_lut.init = 16'h1f10;
    LUT4 seg_data_3__I_0_Mux_6_i15_3_lut_4_lut (.A(n10423), .B(n10421), 
         .C(n10419), .D(n7), .Z(seg_2_c_6)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/segment_led.v(27[2] 39[9])
    defparam seg_data_3__I_0_Mux_6_i15_3_lut_4_lut.init = 16'h1f10;
    
endmodule
//
// Verilog Description of module bin_to_bcd
//

module bin_to_bcd (rst_n_c, n10418, \bin_code[14] , n723, n10537, 
            n26, n2156, n10428, \bin_code[12] , \bin_code[11] , \bin_code[13] , 
            n79, n10497, \bin_code[6] , n10540, n10504, n10419, 
            bcd_code_19__N_148, bcd_code_19__N_144, n10507, \bin_code[4] , 
            \bin_code[3] , \bin_code[8] , n10511, \bin_code[9] , n10421, 
            n10423, n10380, n10521, \bin_code[15] , n10414, n10420, 
            n10328, \bin_code[10] , bcd_code_19__N_116, \bcd_code_19__N_102[2] , 
            n10404, n10310, n10698, n10403, n10526, n10407, n10406, 
            n10416, n6, n10425, n10417, \bin_code[5] , n2149, n10415, 
            n10445, seg_1_c_6, seg_1_c_0, seg_1_c_2, seg_1_c_5, seg_1_c_4, 
            n10624, bcd_code_19__N_125, n7, n10441, n10546) /* synthesis syn_module_defined=1 */ ;
    input rst_n_c;
    output n10418;
    input \bin_code[14] ;
    output n723;
    output n10537;
    output n26;
    output n2156;
    output n10428;
    input \bin_code[12] ;
    input \bin_code[11] ;
    input \bin_code[13] ;
    output [3:0]n79;
    input n10497;
    input \bin_code[6] ;
    input n10540;
    output n10504;
    output n10419;
    input bcd_code_19__N_148;
    input bcd_code_19__N_144;
    input n10507;
    input \bin_code[4] ;
    input \bin_code[3] ;
    input \bin_code[8] ;
    output n10511;
    input \bin_code[9] ;
    output n10421;
    output n10423;
    output n10380;
    output n10521;
    input \bin_code[15] ;
    output n10414;
    output n10420;
    output n10328;
    input \bin_code[10] ;
    output bcd_code_19__N_116;
    output \bcd_code_19__N_102[2] ;
    output n10404;
    output n10310;
    output n10698;
    output n10403;
    output n10526;
    output n10407;
    output n10406;
    output n10416;
    output n6;
    output n10425;
    output n10417;
    input \bin_code[5] ;
    output n2149;
    output n10415;
    output n10445;
    output seg_1_c_6;
    output seg_1_c_0;
    output seg_1_c_2;
    output seg_1_c_5;
    output seg_1_c_4;
    output n10624;
    input bcd_code_19__N_125;
    output n7;
    output n10441;
    output n10546;
    
    
    wire n10449;
    wire [3:0]n95;
    wire [3:0]n92;
    
    wire n10443;
    wire [3:0]n93;
    
    wire n10470;
    wire [3:0]n94;
    wire [3:0]n97;
    
    wire n10480, n10475, n10468, n10459;
    wire [3:0]n98;
    wire [3:0]n103;
    
    wire n10426, n10368, n10367;
    wire [3:0]n90;
    
    wire n10474, n10465, n10479, n10476;
    wire [3:0]n91;
    
    wire n10469, n10464, n10477, n4, n10471, n10411, n10410;
    wire [3:0]n96;
    wire [3:0]n86;
    
    wire n10499;
    wire [3:0]n88;
    
    wire n10492, n10485, n10541, n10542;
    wire [3:0]n87;
    
    wire n10543, n10429, n10442;
    wire [3:0]n101;
    
    wire n6_c, n10467;
    wire [3:0]n102;
    
    wire n727, n10532, n10533, n10545, n10544, n10548, n10547, 
        n10551, n10550, n10554, n10553, n10557, n10556;
    wire [3:0]n85;
    
    wire n10503, n10484;
    wire [3:0]n84;
    
    wire n732, n10513, n10500, n10493, n10486, n10488, n10501, 
        n10496, n10489, n10502, n10431, n10430;
    wire [3:0]n104;
    
    wire n10505, n10490, n10509;
    wire [3:0]n83;
    
    wire n10508, n10510, n10506;
    wire [3:0]n100;
    
    wire n6_adj_409, n6_adj_410, n10478;
    wire [3:0]n81;
    
    wire n10518, n10514, n10516, n10512, n10517, n10522, n10520, 
        n10314;
    wire [3:0]n80;
    
    wire n10528, n10427, n10523, n10527, n10460, n10451, n10447, 
        n782, n10432, n10530, n10529, n10519, n10531, n10437, 
        n4_adj_411, n10454, n10455, n10450, n10444;
    wire [3:0]n79_c;
    
    wire n10462, n10453, n10448, n10433, n10435, n10466, n10440, 
        n10483, n10487;
    
    LUT4 i1229_2_lut_rep_92_3_lut_3_lut (.A(n10449), .B(n95[3]), .C(n92[3]), 
         .Z(n10443)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i1229_2_lut_rep_92_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i676_3_lut_4_lut (.A(n93[3]), .B(n10470), .C(n94[1]), .D(n94[2]), 
         .Z(n97[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i676_3_lut_4_lut.init = 16'h998c;
    LUT4 i949_3_lut_4_lut (.A(n10480), .B(n10475), .C(n10468), .D(n10459), 
         .Z(n98[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i949_3_lut_4_lut.init = 16'h6966;
    LUT4 i9083_2_lut_rep_67_3_lut (.A(n103[3]), .B(n10426), .C(rst_n_c), 
         .Z(n10418)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i9083_2_lut_rep_67_3_lut.init = 16'h6060;
    PFUMX i9648 (.BLUT(n10368), .ALUT(n10367), .C0(\bin_code[14] ), .Z(n723));
    LUT4 i1355_2_lut_rep_114_3_lut (.A(n90[3]), .B(n10474), .C(n93[3]), 
         .Z(n10465)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i1355_2_lut_rep_114_3_lut.init = 16'hf6f6;
    LUT4 i1435_2_lut_rep_113_4_lut_4_lut (.A(n10479), .B(n10476), .C(n91[1]), 
         .D(n10469), .Z(n10464)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1435_2_lut_rep_113_4_lut_4_lut.init = 16'hff6c;
    LUT4 i1376_3_lut_rep_120_4_lut (.A(n90[1]), .B(n10477), .C(n93[1]), 
         .D(n4), .Z(n10471)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1376_3_lut_rep_120_4_lut.init = 16'hf666;
    PFUMX i9672 (.BLUT(n10411), .ALUT(n10410), .C0(n10537), .Z(n26));
    LUT4 i711_2_lut_3_lut_3_lut_4_lut (.A(n90[1]), .B(n10477), .C(n93[1]), 
         .D(n4), .Z(n96[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i711_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i718_3_lut_4_lut_3_lut_4_lut (.A(n90[1]), .B(n10477), .C(n93[1]), 
         .D(n4), .Z(n96[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i718_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1733_2_lut_rep_134_4_lut (.A(n86[1]), .B(n10499), .C(n88[1]), 
         .D(n10492), .Z(n10485)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i1733_2_lut_rep_134_4_lut.init = 16'hf600;
    PFUMX i9674 (.BLUT(n10541), .ALUT(n10542), .C0(n87[3]), .Z(n10543));
    LUT4 i1537_3_lut_4_lut (.A(n103[3]), .B(n10426), .C(rst_n_c), .D(n10429), 
         .Z(n2156)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i1537_3_lut_4_lut.init = 16'h9060;
    LUT4 i15_2_lut_rep_78_3_lut_4_lut_4_lut (.A(n10442), .B(n101[2]), .C(n101[1]), 
         .D(n6_c), .Z(n10429)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A !(C (D)+!C !(D))) */ ;
    defparam i15_2_lut_rep_78_3_lut_4_lut_4_lut.init = 16'ha758;
    LUT4 i1740_2_lut_rep_116_3_lut_4_lut (.A(n10480), .B(n92[0]), .C(n92[1]), 
         .D(n92[2]), .Z(n10467)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1740_2_lut_rep_116_3_lut_4_lut.init = 16'heee0;
    LUT4 i1237_3_lut_4_lut_3_lut (.A(n10449), .B(n95[3]), .C(n92[3]), 
         .Z(n102[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1237_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i830_3_lut_rep_77_4_lut_3_lut_4_lut (.A(n101[3]), .B(n10443), .C(n102[1]), 
         .D(n102[2]), .Z(n10428)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i830_3_lut_rep_77_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1757_2_lut_rep_181_3_lut_4_lut (.A(\bin_code[12] ), .B(n723), 
         .C(\bin_code[11] ), .D(n727), .Z(n10532)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1757_2_lut_rep_181_3_lut_4_lut.init = 16'hf600;
    LUT4 i1134_2_lut_rep_182_4_lut (.A(\bin_code[14] ), .B(n723), .C(\bin_code[13] ), 
         .D(\bin_code[12] ), .Z(n10533)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1134_2_lut_rep_182_4_lut.init = 16'h8880;
    LUT4 i9075_2_lut_rep_73_4_lut_4_lut_then_4_lut (.A(rst_n_c), .B(n95[3]), 
         .C(n101[3]), .D(n92[3]), .Z(n10545)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i9075_2_lut_rep_73_4_lut_4_lut_then_4_lut.init = 16'h8088;
    LUT4 i9075_2_lut_rep_73_4_lut_4_lut_else_4_lut (.A(rst_n_c), .B(n95[3]), 
         .C(n101[3]), .D(n92[3]), .Z(n10544)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(D))+!A)) */ ;
    defparam i9075_2_lut_rep_73_4_lut_4_lut_else_4_lut.init = 16'h2280;
    LUT4 i941_2_lut_rep_104_4_lut_4_lut_then_4_lut (.A(n92[2]), .B(n92[1]), 
         .C(n92[0]), .D(n10480), .Z(n10548)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (B (C (D)+!C !(D))+!B (C)))) */ ;
    defparam i941_2_lut_rep_104_4_lut_4_lut_then_4_lut.init = 16'h0dc1;
    LUT4 i941_2_lut_rep_104_4_lut_4_lut_else_4_lut (.A(n92[2]), .B(n92[1]), 
         .C(n92[0]), .D(n10480), .Z(n10547)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+(D))+!B !(C (D))))) */ ;
    defparam i941_2_lut_rep_104_4_lut_4_lut_else_4_lut.init = 16'h322e;
    LUT4 i892_2_lut_4_lut_4_lut_then_4_lut (.A(n10470), .B(n93[3]), .C(n94[1]), 
         .D(n94[2]), .Z(n10551)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i892_2_lut_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i892_2_lut_4_lut_4_lut_else_4_lut (.A(n10470), .B(n93[3]), .C(n94[1]), 
         .D(n94[2]), .Z(n10550)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i892_2_lut_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 mux_1500_i3_4_lut_4_lut_then_4_lut (.A(n723), .B(\bin_code[13] ), 
         .C(\bin_code[14] ), .D(\bin_code[12] ), .Z(n10554)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !(B+(C))) */ ;
    defparam mux_1500_i3_4_lut_4_lut_then_4_lut.init = 16'h8303;
    LUT4 mux_1500_i3_4_lut_4_lut_else_4_lut (.A(n723), .B(\bin_code[13] ), 
         .C(\bin_code[14] ), .D(\bin_code[12] ), .Z(n10553)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam mux_1500_i3_4_lut_4_lut_else_4_lut.init = 16'ha080;
    LUT4 i344_3_lut_4_lut_then_4_lut (.A(\bin_code[12] ), .B(n79[1]), .C(n79[2]), 
         .D(\bin_code[11] ), .Z(n10557)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A (B (C)+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i344_3_lut_4_lut_then_4_lut.init = 16'h3cb4;
    LUT4 i344_3_lut_4_lut_else_4_lut (.A(\bin_code[12] ), .B(n79[1]), .C(n79[2]), 
         .D(\bin_code[11] ), .Z(n10556)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i344_3_lut_4_lut_else_4_lut.init = 16'h3c78;
    LUT4 i1320_2_lut_rep_141_3_lut (.A(n85[3]), .B(n10503), .C(n87[3]), 
         .Z(n10492)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i1320_2_lut_rep_141_3_lut.init = 16'hf6f6;
    LUT4 i564_3_lut_4_lut (.A(n85[3]), .B(n10503), .C(n87[3]), .D(n10484), 
         .Z(n91[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i564_3_lut_4_lut.init = 16'h6966;
    LUT4 i480_3_lut (.A(n84[0]), .B(n732), .C(n10513), .Z(n86[1])) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i480_3_lut.init = 16'ha6a6;
    LUT4 i1372_3_lut_rep_142_4_lut (.A(n85[1]), .B(n10500), .C(n87[1]), 
         .D(n10497), .Z(n10493)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1372_3_lut_rep_142_4_lut.init = 16'hf666;
    LUT4 i599_2_lut_rep_135_3_lut_3_lut_4_lut (.A(n85[1]), .B(n10500), .C(n87[1]), 
         .D(n10497), .Z(n10486)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i599_2_lut_rep_135_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1734_2_lut_rep_137_3_lut_4_lut (.A(n85[1]), .B(n10500), .C(n87[1]), 
         .D(n10497), .Z(n10488)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1734_2_lut_rep_137_3_lut_4_lut.init = 16'hf600;
    LUT4 i606_3_lut_4_lut_3_lut_4_lut (.A(n85[1]), .B(n10500), .C(n87[1]), 
         .D(n10497), .Z(n90[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i606_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i584_2_lut_rep_138_4_lut_4_lut (.A(\bin_code[6] ), .B(n10501), 
         .C(n87[1]), .D(n10496), .Z(n10489)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i584_2_lut_rep_138_4_lut_4_lut.init = 16'h554a;
    LUT4 i1173_2_lut_4_lut_4_lut (.A(n10502), .B(n86[2]), .C(n86[1]), 
         .D(n92[3]), .Z(n92[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i1173_2_lut_4_lut_4_lut.init = 16'h936c;
    LUT4 i592_3_lut_4_lut (.A(n10540), .B(n10504), .C(\bin_code[6] ), 
         .D(n10493), .Z(n90[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i592_3_lut_4_lut.init = 16'h6966;
    LUT4 i9081_3_lut_rep_68_4_lut_4_lut (.A(n10431), .B(n10430), .C(n104[1]), 
         .D(rst_n_c), .Z(n10419)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(C (D)))) */ ;
    defparam i9081_3_lut_rep_68_4_lut_4_lut.init = 16'h5800;
    LUT4 i634_3_lut_rep_139_4_lut_3_lut_4_lut (.A(n85[3]), .B(n10505), .C(n86[1]), 
         .D(n86[2]), .Z(n10490)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i634_3_lut_rep_139_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1735_2_lut_rep_148_4_lut (.A(n85[3]), .B(n10505), .C(n86[1]), 
         .D(n86[2]), .Z(n10499)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1735_2_lut_rep_148_4_lut.init = 16'heee0;
    LUT4 i1373_3_lut_rep_152 (.A(n85[3]), .B(n10505), .C(n86[1]), .D(n86[2]), 
         .Z(n10503)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1373_3_lut_rep_152.init = 16'hffe0;
    LUT4 i620_3_lut_4_lut (.A(n85[3]), .B(n10505), .C(n86[1]), .D(n86[2]), 
         .Z(n88[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i620_3_lut_4_lut.init = 16'h998c;
    LUT4 i1181_3_lut (.A(n86[3]), .B(n92[3]), .C(n10490), .Z(n92[1])) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i1181_3_lut.init = 16'ha6a6;
    LUT4 i1402_2_lut_rep_151_3_lut (.A(n10513), .B(n732), .C(n85[3]), 
         .Z(n10502)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i1402_2_lut_rep_151_3_lut.init = 16'hf6f6;
    LUT4 i494_3_lut_4_lut (.A(n732), .B(n10509), .C(bcd_code_19__N_148), 
         .D(bcd_code_19__N_144), .Z(n86[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i494_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1374_3_lut_rep_153_4_lut (.A(n83[1]), .B(n10508), .C(n85[1]), 
         .D(n10507), .Z(n10504)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1374_3_lut_rep_153_4_lut.init = 16'hf666;
    LUT4 i655_2_lut_rep_145_3_lut_3_lut_4_lut (.A(n83[1]), .B(n10508), .C(n85[1]), 
         .D(n10507), .Z(n10496)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i655_2_lut_rep_145_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1736_2_lut_rep_149_3_lut_4_lut (.A(n83[1]), .B(n10508), .C(n85[1]), 
         .D(n10507), .Z(n10500)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1736_2_lut_rep_149_3_lut_4_lut.init = 16'hf600;
    LUT4 i662_3_lut_4_lut_3_lut_4_lut (.A(n83[1]), .B(n10508), .C(n85[1]), 
         .D(n10507), .Z(n87[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i662_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i640_2_lut_rep_150_4_lut_4_lut (.A(n10540), .B(n10510), .C(n85[1]), 
         .D(n10506), .Z(n10501)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i640_2_lut_rep_150_4_lut_4_lut.init = 16'h554a;
    LUT4 i1450_4_lut (.A(n100[2]), .B(n103[1]), .C(n103[0]), .D(n6_adj_409), 
         .Z(n6_c)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C+(D)))) */ ;
    defparam i1450_4_lut.init = 16'hc4c8;
    LUT4 i1467_4_lut (.A(n100[0]), .B(n100[1]), .C(n96[2]), .D(n6_adj_410), 
         .Z(n6_adj_409)) /* synthesis lut_function=(A (B)+!A !((C (D)+!C !(D))+!B)) */ ;
    defparam i1467_4_lut.init = 16'h8cc8;
    LUT4 i487_2_lut_3_lut_4_lut (.A(n10513), .B(n84[0]), .C(bcd_code_19__N_148), 
         .D(n732), .Z(n86[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i487_2_lut_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i1478_4_lut (.A(\bin_code[4] ), .B(n10478), .C(\bin_code[3] ), 
         .D(n10471), .Z(n6_adj_410)) /* synthesis lut_function=(A (B (C+!(D)))+!A !(B ((D)+!C)+!B !(D))) */ ;
    defparam i1478_4_lut.init = 16'h91c8;
    LUT4 i1367_3_lut_4_lut (.A(n10513), .B(n84[0]), .C(bcd_code_19__N_148), 
         .D(bcd_code_19__N_144), .Z(n732)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1367_3_lut_4_lut.init = 16'hffe0;
    LUT4 i648_3_lut_4_lut (.A(\bin_code[8] ), .B(n10511), .C(n10540), 
         .D(n10504), .Z(n87[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i648_3_lut_4_lut.init = 16'h6966;
    LUT4 i1756_2_lut_rep_157_3_lut_4_lut (.A(n81[1]), .B(n10518), .C(n83[1]), 
         .D(n10514), .Z(n10508)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1756_2_lut_rep_157_3_lut_4_lut.init = 16'hf600;
    LUT4 i522_3_lut_4_lut_3_lut_4_lut (.A(n81[1]), .B(n10518), .C(n83[1]), 
         .D(n10514), .Z(n85[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i522_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i515_2_lut_rep_155_3_lut_3_lut_4_lut (.A(n81[1]), .B(n10518), .C(n83[1]), 
         .D(n10514), .Z(n10506)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i515_2_lut_rep_155_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1368_3_lut_rep_160_4_lut (.A(n81[1]), .B(n10518), .C(n83[1]), 
         .D(n10514), .Z(n10511)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1368_3_lut_rep_160_4_lut.init = 16'hf666;
    LUT4 i500_2_lut_rep_159_4_lut_4_lut (.A(n10516), .B(\bin_code[8] ), 
         .C(n83[1]), .D(n10512), .Z(n10510)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i500_2_lut_rep_159_4_lut_4_lut.init = 16'h332c;
    LUT4 i513_2_lut_rep_163_3_lut (.A(\bin_code[9] ), .B(n10517), .C(\bin_code[8] ), 
         .Z(n10514)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i513_2_lut_rep_163_3_lut.init = 16'hf6f6;
    LUT4 i508_3_lut_4_lut (.A(\bin_code[9] ), .B(n10517), .C(\bin_code[8] ), 
         .D(n10511), .Z(n85[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i508_3_lut_4_lut.init = 16'h6966;
    LUT4 i472_2_lut_rep_154_4_lut_4_lut (.A(n10522), .B(n10520), .C(n81[1]), 
         .D(n732), .Z(n10505)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i472_2_lut_rep_154_4_lut_4_lut.init = 16'h936c;
    LUT4 i1414_2_lut_rep_158_4_lut_4_lut (.A(n10522), .B(n10520), .C(n81[1]), 
         .D(n84[0]), .Z(n10509)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1414_2_lut_rep_158_4_lut_4_lut.init = 16'hff6c;
    LUT4 rst_n_c_bdd_4_lut_4_lut (.A(n10421), .B(rst_n_c), .C(n10429), 
         .D(n10423), .Z(n10380)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(34[7] 45[5])
    defparam rst_n_c_bdd_4_lut_4_lut.init = 16'h3bbf;
    LUT4 bcd_code_19__N_106_bdd_3_lut_4_lut (.A(n10521), .B(n10314), .C(n10533), 
         .D(\bin_code[15] ), .Z(n10411)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A ((C (D)+!C !(D))+!B)) */ ;
    defparam bcd_code_19__N_106_bdd_3_lut_4_lut.init = 16'hf11f;
    LUT4 i1754_2_lut_rep_167_4_lut (.A(n80[1]), .B(n10528), .C(n81[1]), 
         .D(n10522), .Z(n10518)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1754_2_lut_rep_167_4_lut.init = 16'hf600;
    LUT4 i1366_3_lut_rep_166_4_lut (.A(n80[1]), .B(n10528), .C(n81[1]), 
         .D(n10522), .Z(n10517)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1366_3_lut_rep_166_4_lut.init = 16'hf666;
    LUT4 i459_2_lut_rep_161_3_lut_3_lut_4_lut (.A(n80[1]), .B(n10528), .C(n81[1]), 
         .D(n10522), .Z(n10512)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i459_2_lut_rep_161_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i466_3_lut_rep_162_4_lut_3_lut_4_lut (.A(n80[1]), .B(n10528), .C(n81[1]), 
         .D(n10522), .Z(n10513)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i466_3_lut_rep_162_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i9080_2_lut_rep_63_4_lut_4_lut (.A(n10431), .B(n10430), .C(n104[1]), 
         .D(rst_n_c), .Z(n10414)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (D)))) */ ;
    defparam i9080_2_lut_rep_63_4_lut_4_lut.init = 16'h6c00;
    LUT4 i9625_2_lut_4_lut (.A(n104[1]), .B(rst_n_c), .C(n10427), .D(n10420), 
         .Z(n10328)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(34[7] 45[5])
    defparam i9625_2_lut_4_lut.init = 16'hb7ff;
    LUT4 i444_2_lut_rep_165_4_lut_4_lut (.A(n10523), .B(\bin_code[9] ), 
         .C(n81[1]), .D(n10520), .Z(n10516)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i444_2_lut_rep_165_4_lut_4_lut.init = 16'h332c;
    LUT4 i457_2_lut_rep_171_3_lut (.A(\bin_code[10] ), .B(n10527), .C(\bin_code[9] ), 
         .Z(n10522)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i457_2_lut_rep_171_3_lut.init = 16'hf6f6;
    LUT4 i452_3_lut_4_lut (.A(\bin_code[10] ), .B(n10527), .C(\bin_code[9] ), 
         .D(n10517), .Z(n83[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i452_3_lut_4_lut.init = 16'h6966;
    LUT4 i1383_3_lut_rep_96_4_lut (.A(n95[1]), .B(n10460), .C(n98[1]), 
         .D(n10451), .Z(n10447)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i1383_3_lut_rep_96_4_lut.init = 16'hf666;
    LUT4 i879_2_lut_3_lut_3_lut_4_lut (.A(n95[1]), .B(n10460), .C(n98[1]), 
         .D(n10451), .Z(n101[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i879_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 mux_1498_i1_4_lut_4_lut (.A(bcd_code_19__N_116), .B(n79[3]), .C(n782), 
         .D(n10537), .Z(\bcd_code_19__N_102[2] )) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam mux_1498_i1_4_lut_4_lut.init = 16'h11fa;
    LUT4 bcd_code_19__N_103_bdd_4_lut_4_lut (.A(bcd_code_19__N_116), .B(n79[3]), 
         .C(n10537), .D(n10521), .Z(n10404)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B (D)))) */ ;
    defparam bcd_code_19__N_103_bdd_4_lut_4_lut.init = 16'h73c6;
    LUT4 i752_2_lut_rep_118_4_lut_4_lut (.A(n10480), .B(n92[0]), .C(n92[1]), 
         .D(n92[2]), .Z(n10469)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i752_2_lut_rep_118_4_lut_4_lut.init = 16'h554a;
    LUT4 i9608_2_lut_3_lut_3_lut_4_lut (.A(n10432), .B(n6_c), .C(n10421), 
         .D(rst_n_c), .Z(n10310)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[4:75])
    defparam i9608_2_lut_3_lut_3_lut_4_lut.init = 16'h9600;
    LUT4 i1_2_lut_rep_168_4_lut_4_lut (.A(n10530), .B(n10529), .C(n80[1]), 
         .D(n10314), .Z(n10519)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D)))) */ ;
    defparam i1_2_lut_rep_168_4_lut_4_lut.init = 16'h0093;
    LUT4 i1061_2_lut_4_lut_4_lut (.A(n10530), .B(n10529), .C(n80[1]), 
         .D(n26), .Z(n84[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i1061_2_lut_4_lut_4_lut.init = 16'h6c93;
    LUT4 i886_3_lut_4_lut_3_lut_4_lut (.A(n95[1]), .B(n10460), .C(n98[1]), 
         .D(n10451), .Z(n101[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i886_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1365_3_lut_rep_176_4_lut (.A(n79[1]), .B(n10532), .C(n80[1]), 
         .D(n10530), .Z(n10527)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1365_3_lut_rep_176_4_lut.init = 16'hf666;
    LUT4 i438_3_lut_rep_170_4_lut_3_lut_4_lut (.A(n79[1]), .B(n10532), .C(n80[1]), 
         .D(n10530), .Z(n10521)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i438_3_lut_rep_170_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i431_2_lut_rep_169_3_lut_3_lut_4_lut (.A(n79[1]), .B(n10532), .C(n80[1]), 
         .D(n10530), .Z(n10520)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i431_2_lut_rep_169_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1755_2_lut_rep_177_4_lut (.A(n79[1]), .B(n10532), .C(n80[1]), 
         .D(n10530), .Z(n10528)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1755_2_lut_rep_177_4_lut.init = 16'hf600;
    LUT4 i416_2_lut_rep_172_4_lut_4_lut (.A(n10531), .B(\bin_code[10] ), 
         .C(n80[1]), .D(n10529), .Z(n10523)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i416_2_lut_rep_172_4_lut_4_lut.init = 16'h332c;
    LUT4 i774_3_lut_4_lut_3_lut_4_lut (.A(n10480), .B(n92[0]), .C(n92[1]), 
         .D(n92[2]), .Z(n95[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i774_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i322_2_lut_rep_180 (.A(\bin_code[11] ), .B(n727), .Z(n10531)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i322_2_lut_rep_180.init = 16'h6666;
    LUT4 i1377_3_lut_rep_75_4_lut (.A(n102[1]), .B(n10437), .C(n104[1]), 
         .D(n10431), .Z(n10426)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i1377_3_lut_rep_75_4_lut.init = 16'hf666;
    LUT4 i429_2_lut_rep_179_3_lut (.A(\bin_code[11] ), .B(n727), .C(\bin_code[10] ), 
         .Z(n10530)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i429_2_lut_rep_179_3_lut.init = 16'hf6f6;
    LUT4 i424_3_lut_4_lut (.A(\bin_code[11] ), .B(n727), .C(\bin_code[10] ), 
         .D(n10527), .Z(n81[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i424_3_lut_4_lut.init = 16'h6966;
    LUT4 i556_2_lut_rep_131_4_lut_4_lut_then_4_lut (.A(n10505), .B(n85[3]), 
         .C(n86[1]), .D(n86[2]), .Z(n10542)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i556_2_lut_rep_131_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i1139_2_lut_3_lut (.A(\bin_code[14] ), .B(n4_adj_411), .C(\bin_code[15] ), 
         .Z(n782)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1139_2_lut_3_lut.init = 16'h7878;
    LUT4 i556_2_lut_rep_131_4_lut_4_lut_else_4_lut (.A(n10505), .B(n85[3]), 
         .C(n86[1]), .D(n86[2]), .Z(n10541)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i556_2_lut_rep_131_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i864_2_lut_rep_93_4_lut_4_lut (.A(n10454), .B(n10455), .C(n98[1]), 
         .D(n10450), .Z(n10444)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i864_2_lut_rep_93_4_lut_4_lut.init = 16'h554a;
    LUT4 i1364_3_lut_4_lut (.A(n79_c[0]), .B(\bin_code[11] ), .C(n79[1]), 
         .D(n79[2]), .Z(n727)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1364_3_lut_4_lut.init = 16'hffe0;
    LUT4 i337_2_lut_rep_178_3_lut_4_lut (.A(n79_c[0]), .B(\bin_code[11] ), 
         .C(n79[1]), .D(n727), .Z(n10529)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i337_2_lut_rep_178_3_lut_4_lut.init = 16'h1ef0;
    LUT4 bcd_code_19__N_103_bdd_3_lut_4_lut_3_lut_4_lut (.A(n10698), .B(\bin_code[15] ), 
         .C(n79[3]), .D(bcd_code_19__N_116), .Z(n10403)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam bcd_code_19__N_103_bdd_3_lut_4_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i1473_2_lut_rep_175_4_lut (.A(n10698), .B(\bin_code[15] ), .C(n79[3]), 
         .D(bcd_code_19__N_116), .Z(n10526)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1473_2_lut_rep_175_4_lut.init = 16'h8880;
    LUT4 i9612_2_lut_3_lut_3_lut_4_lut (.A(n10698), .B(\bin_code[15] ), 
         .C(n79[3]), .D(bcd_code_19__N_116), .Z(n10314)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i9612_2_lut_3_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 bin_code_12__bdd_3_lut_2_lut_2_lut (.A(\bin_code[13] ), .B(\bin_code[15] ), 
         .Z(n10368)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam bin_code_12__bdd_3_lut_2_lut_2_lut.init = 16'h4444;
    LUT4 bcd_code_19__N_106_bdd_3_lut_9671_4_lut_3_lut (.A(\bin_code[13] ), 
         .B(\bin_code[14] ), .C(\bin_code[15] ), .Z(n10407)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam bcd_code_19__N_106_bdd_3_lut_9671_4_lut_3_lut.init = 16'h8c8c;
    LUT4 bin_code_12__bdd_3_lut_9647_4_lut_4_lut (.A(\bin_code[13] ), .B(\bin_code[14] ), 
         .C(\bin_code[12] ), .D(\bin_code[15] ), .Z(n10367)) /* synthesis lut_function=(A (C+!(D))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam bin_code_12__bdd_3_lut_9647_4_lut_4_lut.init = 16'hb0fa;
    LUT4 i1445_2_lut_rep_186 (.A(\bin_code[13] ), .B(\bin_code[14] ), .C(\bin_code[15] ), 
         .Z(n10537)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1445_2_lut_rep_186.init = 16'he0e0;
    LUT4 bcd_code_19__N_106_bdd_4_lut_9670_4_lut (.A(\bin_code[13] ), .B(\bin_code[14] ), 
         .C(\bin_code[15] ), .D(\bin_code[12] ), .Z(n10406)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B (D)))) */ ;
    defparam bcd_code_19__N_106_bdd_4_lut_9670_4_lut.init = 16'h73c6;
    LUT4 i1749_3_lut (.A(n723), .B(\bin_code[13] ), .C(\bin_code[12] ), 
         .Z(n4_adj_411)) /* synthesis lut_function=(A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1749_3_lut.init = 16'ha8a8;
    LUT4 i1384_3_lut_rep_97_4_lut (.A(n94[1]), .B(n10462), .C(n97[1]), 
         .D(n10453), .Z(n10448)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i1384_3_lut_rep_97_4_lut.init = 16'hf666;
    LUT4 i907_2_lut_3_lut_3_lut_4_lut (.A(n94[1]), .B(n10462), .C(n97[1]), 
         .D(n10453), .Z(n100[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i907_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i914_3_lut_4_lut_3_lut_4_lut (.A(n94[1]), .B(n10462), .C(n97[1]), 
         .D(n10453), .Z(n100[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i914_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i746_3_lut_rep_65_4_lut_3_lut_4_lut (.A(n102[1]), .B(n10437), .C(n104[1]), 
         .D(n10431), .Z(n10416)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i746_3_lut_rep_65_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i872_3_lut_4_lut (.A(n10468), .B(n10459), .C(n10454), .D(n10447), 
         .Z(n101[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i872_3_lut_4_lut.init = 16'h6966;
    LUT4 i1739_2_lut_rep_76_4_lut (.A(n102[1]), .B(n10437), .C(n104[1]), 
         .D(n10431), .Z(n10427)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i1739_2_lut_rep_76_4_lut.init = 16'hf600;
    LUT4 i724_2_lut_rep_72_4_lut_4_lut (.A(n103[3]), .B(n10433), .C(n104[1]), 
         .D(n10430), .Z(n10423)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i724_2_lut_rep_72_4_lut_4_lut.init = 16'h554a;
    LUT4 i2_3_lut_4_lut (.A(n101[1]), .B(n10435), .C(n6_c), .D(rst_n_c), 
         .Z(n6)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i2_3_lut_4_lut.init = 16'h6900;
    LUT4 bcd_code_19__N_106_bdd_4_lut (.A(n10519), .B(\bcd_code_19__N_102[2] ), 
         .C(bcd_code_19__N_116), .D(n79[3]), .Z(n10410)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(C (D)+!C !(D))))) */ ;
    defparam bcd_code_19__N_106_bdd_4_lut.init = 16'h2330;
    LUT4 i1430_2_lut_rep_102_3_lut (.A(n93[3]), .B(n10466), .C(n96[3]), 
         .Z(n10453)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i1430_2_lut_rep_102_3_lut.init = 16'hf6f6;
    LUT4 i9073_2_lut_rep_74_3_lut_4_lut (.A(n101[1]), .B(n10435), .C(rst_n_c), 
         .D(n6_c), .Z(n10425)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i9073_2_lut_rep_74_3_lut_4_lut.init = 16'h9060;
    LUT4 i900_3_lut_4_lut (.A(n93[3]), .B(n10466), .C(n96[3]), .D(n10448), 
         .Z(n100[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i900_3_lut_4_lut.init = 16'h6966;
    LUT4 i1387_2_lut_rep_190 (.A(\bin_code[13] ), .B(\bin_code[14] ), .Z(n10698)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1387_2_lut_rep_190.init = 16'heeee;
    LUT4 i1592_2_lut_rep_69_4_lut_3_lut_4_lut (.A(n101[3]), .B(n10440), 
         .C(n10426), .D(n103[3]), .Z(n10420)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i1592_2_lut_rep_69_4_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i1359_2_lut_rep_80_3_lut (.A(n101[3]), .B(n10440), .C(n103[3]), 
         .Z(n10431)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i1359_2_lut_rep_80_3_lut.init = 16'hf6f6;
    LUT4 i732_3_lut_rep_70_4_lut (.A(n101[3]), .B(n10440), .C(n103[3]), 
         .D(n10426), .Z(n10421)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i732_3_lut_rep_70_4_lut.init = 16'h6966;
    LUT4 i330_3_lut_4_lut (.A(\bin_code[12] ), .B(n723), .C(n727), .D(\bin_code[11] ), 
         .Z(n80[1])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i330_3_lut_4_lut.init = 16'h6696;
    LUT4 i9082_2_lut_rep_66_4_lut (.A(n10433), .B(n10426), .C(n103[3]), 
         .D(rst_n_c), .Z(n10417)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A !((C+!(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i9082_2_lut_rep_66_4_lut.init = 16'ha600;
    LUT4 i1428_2_lut_rep_100_4_lut_4_lut (.A(n10465), .B(n94[2]), .C(n94[1]), 
         .D(n10455), .Z(n10451)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1428_2_lut_rep_100_4_lut_4_lut.init = 16'hff6c;
    LUT4 i1385_3_lut_rep_108_4_lut (.A(n92[1]), .B(n10467), .C(n95[1]), 
         .D(n10464), .Z(n10459)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i1385_3_lut_rep_108_4_lut.init = 16'hf666;
    LUT4 i956_2_lut_rep_99_3_lut_3_lut_4_lut (.A(n92[1]), .B(n10467), .C(n95[1]), 
         .D(n10464), .Z(n10450)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i956_2_lut_rep_99_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i963_3_lut_rep_98_4_lut_3_lut_4_lut (.A(n92[1]), .B(n10467), .C(n95[1]), 
         .D(n10464), .Z(n10449)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i963_3_lut_rep_98_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1746_2_lut_rep_109_4_lut (.A(n92[1]), .B(n10467), .C(n95[1]), 
         .D(n10464), .Z(n10460)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i1746_2_lut_rep_109_4_lut.init = 16'hf600;
    LUT4 i1378_3_lut_rep_124 (.A(n10480), .B(n92[0]), .C(n92[1]), .D(n92[2]), 
         .Z(n10475)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1378_3_lut_rep_124.init = 16'hffe0;
    LUT4 i760_3_lut_4_lut (.A(n10480), .B(n92[0]), .C(n92[1]), .D(n92[2]), 
         .Z(n95[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i760_3_lut_4_lut.init = 16'h998c;
    LUT4 i1737_2_lut_rep_111_4_lut (.A(n93[3]), .B(n10470), .C(n94[1]), 
         .D(n94[2]), .Z(n10462)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1737_2_lut_rep_111_4_lut.init = 16'heee0;
    LUT4 i1379_3_lut_rep_123_4_lut (.A(n88[1]), .B(n10485), .C(n91[1]), 
         .D(n10479), .Z(n10474)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i1379_3_lut_rep_123_4_lut.init = 16'hf666;
    LUT4 i795_2_lut_3_lut_3_lut_4_lut (.A(n88[1]), .B(n10485), .C(n91[1]), 
         .D(n10479), .Z(n94[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i795_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i802_3_lut_rep_117_4_lut_3_lut_4_lut (.A(n88[1]), .B(n10485), .C(n91[1]), 
         .D(n10479), .Z(n10468)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i802_3_lut_rep_117_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1393_2_lut_3_lut (.A(\bin_code[5] ), .B(n10483), .C(\bin_code[4] ), 
         .Z(n4)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1393_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i780_2_lut_rep_119_4_lut_4_lut (.A(n90[3]), .B(n10543), .C(n91[1]), 
         .D(n10476), .Z(n10470)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i780_2_lut_rep_119_4_lut_4_lut.init = 16'h554a;
    LUT4 i1375_3_lut_rep_115 (.A(n93[3]), .B(n10470), .C(n94[1]), .D(n94[2]), 
         .Z(n10466)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1375_3_lut_rep_115.init = 16'hffe0;
    LUT4 i690_3_lut_rep_103_4_lut_3_lut_4_lut (.A(n93[3]), .B(n10470), .C(n94[1]), 
         .D(n94[2]), .Z(n10454)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i690_3_lut_rep_103_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i823_2_lut_rep_79_3_lut_3_lut_4_lut (.A(n101[3]), .B(n10443), .C(n102[1]), 
         .D(n102[2]), .Z(n10430)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i823_2_lut_rep_79_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i1530_2_lut_3_lut_3_lut_4_lut (.A(n103[3]), .B(n10426), .C(n10421), 
         .D(rst_n_c), .Z(n2149)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+!(C (D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i1530_2_lut_3_lut_3_lut_4_lut.init = 16'h6fff;
    LUT4 i1742_2_lut_rep_86_4_lut (.A(n101[3]), .B(n10443), .C(n102[1]), 
         .D(n102[2]), .Z(n10437)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1742_2_lut_rep_86_4_lut.init = 16'heee0;
    LUT4 i808_2_lut_rep_82_4_lut_4_lut (.A(n101[3]), .B(n10443), .C(n102[1]), 
         .D(n102[2]), .Z(n10433)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i808_2_lut_rep_82_4_lut_4_lut.init = 16'h554a;
    LUT4 i1303_2_lut_rep_128_3_lut (.A(n87[3]), .B(n10484), .C(n90[3]), 
         .Z(n10479)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i1303_2_lut_rep_128_3_lut.init = 16'hf6f6;
    LUT4 i1380_3_lut_rep_89 (.A(n101[3]), .B(n10443), .C(n102[1]), .D(n102[2]), 
         .Z(n10440)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1380_3_lut_rep_89.init = 16'hffe0;
    LUT4 i816_3_lut_4_lut (.A(n101[3]), .B(n10443), .C(n102[1]), .D(n102[2]), 
         .Z(n104[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i816_3_lut_4_lut.init = 16'h998c;
    LUT4 i788_3_lut_4_lut (.A(n87[3]), .B(n10484), .C(n90[3]), .D(n10474), 
         .Z(n94[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i788_3_lut_4_lut.init = 16'h6966;
    LUT4 i9106_2_lut_rep_64_3_lut_4_lut (.A(n103[3]), .B(n10426), .C(rst_n_c), 
         .D(n10421), .Z(n10415)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(40[50:74])
    defparam i9106_2_lut_rep_64_3_lut_4_lut.init = 16'hf060;
    LUT4 seg_data_3__I_0_Mux_6_i7_3_lut_4_lut_4_lut_4_lut (.A(n10445), .B(rst_n_c), 
         .C(n10414), .D(n10428), .Z(seg_1_c_6)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(34[7] 45[5])
    defparam seg_data_3__I_0_Mux_6_i7_3_lut_4_lut_4_lut_4_lut.init = 16'h4c88;
    LUT4 i9063_2_lut_3_lut_4_lut_4_lut_4_lut (.A(n10445), .B(rst_n_c), .C(n10416), 
         .D(n10428), .Z(seg_1_c_0)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (((D)+!C)+!B)) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(34[7] 45[5])
    defparam i9063_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hffb7;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(n10445), .B(rst_n_c), .C(n10416), 
         .D(n10428), .Z(seg_1_c_2)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(34[7] 45[5])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'hfbff;
    LUT4 rst_n_c_bdd_4_lut_9655_4_lut (.A(n10445), .B(rst_n_c), .C(n10428), 
         .D(n10416), .Z(seg_1_c_5)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(34[7] 45[5])
    defparam rst_n_c_bdd_4_lut_9655_4_lut.init = 16'h3bbf;
    LUT4 i9069_3_lut_4_lut_4_lut_4_lut (.A(n10445), .B(rst_n_c), .C(n10416), 
         .D(n10428), .Z(seg_1_c_4)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(34[7] 45[5])
    defparam i9069_3_lut_4_lut_4_lut_4_lut.init = 16'h3f37;
    LUT4 i1743_2_lut_rep_84_3_lut_4_lut (.A(n100[3]), .B(n10444), .C(n101[1]), 
         .D(n101[2]), .Z(n10435)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1743_2_lut_rep_84_3_lut_4_lut.init = 16'heee0;
    LUT4 i858_3_lut_4_lut_3_lut_4_lut (.A(n100[3]), .B(n10444), .C(n101[1]), 
         .D(n101[2]), .Z(n103[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i858_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i836_2_lut_4_lut_4_lut (.A(n100[3]), .B(n10444), .C(n101[1]), 
         .D(n101[2]), .Z(n103[0])) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i836_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 bcd_code_19__N_102_2__bdd_3_lut_9763_4_lut (.A(\bin_code[13] ), .B(\bin_code[14] ), 
         .C(\bin_code[15] ), .D(\bcd_code_19__N_102[2] ), .Z(n10624)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam bcd_code_19__N_102_2__bdd_3_lut_9763_4_lut.init = 16'he000;
    LUT4 i851_2_lut_rep_81_3_lut_3_lut_4_lut (.A(n100[3]), .B(n10444), .C(n101[1]), 
         .D(n101[2]), .Z(n10432)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i851_2_lut_rep_81_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i844_3_lut_4_lut (.A(n100[3]), .B(n10444), .C(n101[1]), .D(n101[2]), 
         .Z(n103[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i844_3_lut_4_lut.init = 16'h998c;
    LUT4 i1117_2_lut (.A(\bin_code[12] ), .B(n723), .Z(n79_c[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1117_2_lut.init = 16'h6666;
    LUT4 i1369_3_lut_rep_132_4_lut (.A(n87[1]), .B(n10488), .C(n90[1]), 
         .D(n10487), .Z(n10483)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1369_3_lut_rep_132_4_lut.init = 16'hf666;
    LUT4 i1732_2_lut_rep_126_3_lut_4_lut (.A(n87[1]), .B(n10488), .C(n90[1]), 
         .D(n10487), .Z(n10477)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1732_2_lut_rep_126_3_lut_4_lut.init = 16'hf600;
    LUT4 i550_3_lut_4_lut_3_lut_4_lut (.A(n87[1]), .B(n10488), .C(n90[1]), 
         .D(n10487), .Z(n93[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i550_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1827_2_lut_3_lut (.A(n10490), .B(n86[3]), .C(bcd_code_19__N_125), 
         .Z(n92[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1827_2_lut_3_lut.init = 16'h1010;
    LUT4 i1403_2_lut_rep_91_3_lut (.A(n10454), .B(n10447), .C(n100[3]), 
         .Z(n10442)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(39[50:74])
    defparam i1403_2_lut_rep_91_3_lut.init = 16'hf6f6;
    LUT4 i1453_2_lut_3_lut (.A(n10490), .B(n86[3]), .C(bcd_code_19__N_125), 
         .Z(n92[3])) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1453_2_lut_3_lut.init = 16'he0e0;
    LUT4 i528_2_lut_rep_127_4_lut_4_lut (.A(\bin_code[5] ), .B(n10489), 
         .C(n90[1]), .D(n10486), .Z(n10478)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i528_2_lut_rep_127_4_lut_4_lut.init = 16'h554a;
    LUT4 i1395_2_lut_rep_136_3_lut (.A(\bin_code[6] ), .B(n10493), .C(\bin_code[5] ), 
         .Z(n10487)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i1395_2_lut_rep_136_3_lut.init = 16'hf6f6;
    LUT4 i536_3_lut_4_lut (.A(\bin_code[6] ), .B(n10493), .C(\bin_code[5] ), 
         .D(n10483), .Z(n93[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(37[50:74])
    defparam i536_3_lut_4_lut.init = 16'h6966;
    LUT4 seg_data_3__I_0_Mux_6_i7_3_lut_4_lut_4_lut_4_lut_adj_43 (.A(n10429), 
         .B(rst_n_c), .C(n10417), .D(n10423), .Z(n7)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C+(D))+!B (C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(34[7] 45[5])
    defparam seg_data_3__I_0_Mux_6_i7_3_lut_4_lut_4_lut_4_lut_adj_43.init = 16'h7cf0;
    PFUMX i9684 (.BLUT(n10556), .ALUT(n10557), .C0(n723), .Z(bcd_code_19__N_116));
    LUT4 i1371_3_lut_rep_133_4_lut (.A(n86[1]), .B(n10499), .C(n88[1]), 
         .D(n10492), .Z(n10484)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i1371_3_lut_rep_133_4_lut.init = 16'hf666;
    PFUMX i9682 (.BLUT(n10553), .ALUT(n10554), .C0(\bin_code[15] ), .Z(n79[3]));
    LUT4 i571_2_lut_rep_125_3_lut_3_lut_4_lut (.A(n86[1]), .B(n10499), .C(n88[1]), 
         .D(n10492), .Z(n10476)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i571_2_lut_rep_125_3_lut_3_lut_4_lut.init = 16'h06f0;
    PFUMX i9680 (.BLUT(n10550), .ALUT(n10551), .C0(n96[3]), .Z(n100[0]));
    LUT4 i1468_2_lut_rep_94_3_lut (.A(n10449), .B(n95[3]), .C(n92[3]), 
         .Z(n10445)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1468_2_lut_rep_94_3_lut.init = 16'he0e0;
    PFUMX i9678 (.BLUT(n10547), .ALUT(n10548), .C0(n10468), .Z(n10455));
    LUT4 i9074_2_lut_rep_90_3_lut_4_lut (.A(n10449), .B(n95[3]), .C(rst_n_c), 
         .D(n92[3]), .Z(n10441)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i9074_2_lut_rep_90_3_lut_4_lut.init = 16'he000;
    PFUMX i9676 (.BLUT(n10544), .ALUT(n10545), .C0(n10449), .Z(n10546));
    LUT4 i578_3_lut_rep_129_4_lut_3_lut_4_lut (.A(n86[1]), .B(n10499), .C(n88[1]), 
         .D(n10492), .Z(n10480)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/bin_to_bcd.v(38[50:74])
    defparam i578_3_lut_rep_129_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1829_2_lut_3_lut (.A(n10449), .B(n95[3]), .C(n92[3]), .Z(n102[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1829_2_lut_3_lut.init = 16'h1010;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module pll
//

module pll (clk_c, clk_24mhz, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_c;
    output clk_24mhz;
    input GND_net;
    
    wire clk_c /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(20[10:13])
    wire clk_24mhz /* synthesis SET_AS_NETWORK=clk_24mhz, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(37[6:15])
    
    EHXPLLJ PLLInst_0 (.CLKI(clk_c), .CLKFB(clk_24mhz), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_24mhz)) /* synthesis FREQUENCY_PIN_CLKOP="24.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=38, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(38[5] 42[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 22;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 21;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module ADC081S101_driver
//

module ADC081S101_driver (adc_cs_c, clk_24mhz, adc_dat_c, \adc_data[7] , 
            \bin_code[6] , \bin_code[5] , \bin_code[4] , \bin_code[3] , 
            \adc_data[2] , \adc_data[1] , \adc_data[0] , adc_clk_c, 
            GND_net, rst_n_c) /* synthesis syn_module_defined=1 */ ;
    output adc_cs_c;
    input clk_24mhz;
    input adc_dat_c;
    output \adc_data[7] ;
    output \bin_code[6] ;
    output \bin_code[5] ;
    output \bin_code[4] ;
    output \bin_code[3] ;
    output \adc_data[2] ;
    output \adc_data[1] ;
    output \adc_data[0] ;
    output adc_clk_c;
    input GND_net;
    input rst_n_c;
    
    wire clk_24mhz /* synthesis SET_AS_NETWORK=clk_24mhz, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/voltage_meas.v(37[6:15])
    
    wire adc_cs_N_52;
    wire [7:0]data;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(40[11:15])
    
    wire clk_24mhz_enable_1, clk_24mhz_enable_2, clk_24mhz_enable_3;
    wire [7:0]cnt;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(34[11:14])
    
    wire cnt_7__N_35;
    wire [5:0]n29;
    
    wire clk_24mhz_enable_4, clk_24mhz_enable_5, clk_24mhz_enable_14, 
        clk_24mhz_enable_8, clk_24mhz_enable_15, adc_clk_N_90, clk_24mhz_enable_16, 
        n10006, n10005, n10539, n10004, n8, n698, n10, n10538, 
        n9766;
    
    FD1S3AY adc_cs_67 (.D(adc_cs_N_52), .CK(clk_24mhz), .Q(adc_cs_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam adc_cs_67.GSR = "ENABLED";
    FD1P3AX data_i0_i0 (.D(adc_dat_c), .SP(clk_24mhz_enable_1), .CK(clk_24mhz), 
            .Q(data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam data_i0_i0.GSR = "DISABLED";
    FD1P3AX data_i0_i3 (.D(adc_dat_c), .SP(clk_24mhz_enable_2), .CK(clk_24mhz), 
            .Q(data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam data_i0_i3.GSR = "DISABLED";
    FD1P3AX data_i0_i7 (.D(adc_dat_c), .SP(clk_24mhz_enable_3), .CK(clk_24mhz), 
            .Q(data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam data_i0_i7.GSR = "DISABLED";
    FD1S3IX cnt_257_258__i6 (.D(n29[5]), .CK(clk_24mhz), .CD(cnt_7__N_35), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(38[14:24])
    defparam cnt_257_258__i6.GSR = "ENABLED";
    FD1S3IX cnt_257_258__i5 (.D(n29[4]), .CK(clk_24mhz), .CD(cnt_7__N_35), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(38[14:24])
    defparam cnt_257_258__i5.GSR = "ENABLED";
    FD1S3IX cnt_257_258__i4 (.D(n29[3]), .CK(clk_24mhz), .CD(cnt_7__N_35), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(38[14:24])
    defparam cnt_257_258__i4.GSR = "ENABLED";
    FD1S3IX cnt_257_258__i3 (.D(n29[2]), .CK(clk_24mhz), .CD(cnt_7__N_35), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(38[14:24])
    defparam cnt_257_258__i3.GSR = "ENABLED";
    FD1S3IX cnt_257_258__i2 (.D(n29[1]), .CK(clk_24mhz), .CD(cnt_7__N_35), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(38[14:24])
    defparam cnt_257_258__i2.GSR = "ENABLED";
    FD1P3AX data_i0_i2 (.D(adc_dat_c), .SP(clk_24mhz_enable_4), .CK(clk_24mhz), 
            .Q(data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam data_i0_i2.GSR = "DISABLED";
    FD1P3AX data_i0_i5 (.D(adc_dat_c), .SP(clk_24mhz_enable_5), .CK(clk_24mhz), 
            .Q(data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam data_i0_i5.GSR = "DISABLED";
    FD1S3IX cnt_257_258__i1 (.D(n29[0]), .CK(clk_24mhz), .CD(cnt_7__N_35), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(38[14:24])
    defparam cnt_257_258__i1.GSR = "ENABLED";
    FD1P3AX adc_data_i0_i7 (.D(data[7]), .SP(clk_24mhz_enable_14), .CK(clk_24mhz), 
            .Q(\adc_data[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam adc_data_i0_i7.GSR = "DISABLED";
    FD1P3AX adc_data_i0_i6 (.D(data[6]), .SP(clk_24mhz_enable_14), .CK(clk_24mhz), 
            .Q(\bin_code[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam adc_data_i0_i6.GSR = "DISABLED";
    FD1P3AX data_i0_i1 (.D(adc_dat_c), .SP(clk_24mhz_enable_8), .CK(clk_24mhz), 
            .Q(data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam data_i0_i1.GSR = "DISABLED";
    FD1P3AX adc_data_i0_i5 (.D(data[5]), .SP(clk_24mhz_enable_14), .CK(clk_24mhz), 
            .Q(\bin_code[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam adc_data_i0_i5.GSR = "DISABLED";
    FD1P3AX adc_data_i0_i4 (.D(data[4]), .SP(clk_24mhz_enable_14), .CK(clk_24mhz), 
            .Q(\bin_code[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam adc_data_i0_i4.GSR = "DISABLED";
    FD1P3AX adc_data_i0_i3 (.D(data[3]), .SP(clk_24mhz_enable_14), .CK(clk_24mhz), 
            .Q(\bin_code[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam adc_data_i0_i3.GSR = "DISABLED";
    FD1P3AX adc_data_i0_i2 (.D(data[2]), .SP(clk_24mhz_enable_14), .CK(clk_24mhz), 
            .Q(\adc_data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam adc_data_i0_i2.GSR = "DISABLED";
    FD1P3AX adc_data_i0_i1 (.D(data[1]), .SP(clk_24mhz_enable_14), .CK(clk_24mhz), 
            .Q(\adc_data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam adc_data_i0_i1.GSR = "DISABLED";
    FD1P3AX adc_data_i0_i0 (.D(data[0]), .SP(clk_24mhz_enable_14), .CK(clk_24mhz), 
            .Q(\adc_data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam adc_data_i0_i0.GSR = "DISABLED";
    FD1P3AX data_i0_i6 (.D(adc_dat_c), .SP(clk_24mhz_enable_15), .CK(clk_24mhz), 
            .Q(data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam data_i0_i6.GSR = "DISABLED";
    FD1S3AY adc_clk_68 (.D(adc_clk_N_90), .CK(clk_24mhz), .Q(adc_clk_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam adc_clk_68.GSR = "ENABLED";
    FD1P3AX data_i0_i4 (.D(adc_dat_c), .SP(clk_24mhz_enable_16), .CK(clk_24mhz), 
            .Q(data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=56 */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam data_i0_i4.GSR = "DISABLED";
    CCU2D cnt_257_258_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10006), .S0(n29[5]));   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(38[14:24])
    defparam cnt_257_258_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_257_258_add_4_7.INIT1 = 16'h0000;
    defparam cnt_257_258_add_4_7.INJECT1_0 = "NO";
    defparam cnt_257_258_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_257_258_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10005), .COUT(n10006), .S0(n29[3]), .S1(n29[4]));   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(38[14:24])
    defparam cnt_257_258_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_257_258_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_257_258_add_4_5.INJECT1_0 = "NO";
    defparam cnt_257_258_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_188 (.A(cnt[1]), .B(cnt[3]), .Z(n10539)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_188.init = 16'heeee;
    CCU2D cnt_257_258_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10004), .COUT(n10005), .S0(n29[1]), .S1(n29[2]));   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(38[14:24])
    defparam cnt_257_258_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_257_258_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_257_258_add_4_3.INJECT1_0 = "NO";
    defparam cnt_257_258_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_257_258_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10004), .S1(n29[0]));   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(38[14:24])
    defparam cnt_257_258_add_4_1.INIT0 = 16'hF000;
    defparam cnt_257_258_add_4_1.INIT1 = 16'h0555;
    defparam cnt_257_258_add_4_1.INJECT1_0 = "NO";
    defparam cnt_257_258_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(n8), .B(cnt[5]), .C(rst_n_c), .D(cnt[0]), .Z(n698)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hdfff;
    LUT4 i22_2_lut (.A(cnt[4]), .B(cnt[3]), .Z(n8)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i22_2_lut.init = 16'h6666;
    LUT4 i4_4_lut (.A(cnt[3]), .B(cnt[5]), .C(cnt[0]), .D(rst_n_c), 
         .Z(n10)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h2000;
    LUT4 i9619_4_lut (.A(cnt[0]), .B(n10538), .C(n9766), .D(cnt[5]), 
         .Z(adc_clk_N_90)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam i9619_4_lut.init = 16'hfabb;
    LUT4 i9636_2_lut_4_lut (.A(n698), .B(cnt[3]), .C(cnt[1]), .D(cnt[2]), 
         .Z(clk_24mhz_enable_5)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i9636_2_lut_4_lut.init = 16'h0400;
    LUT4 i24_4_lut (.A(cnt[0]), .B(n10538), .C(cnt[5]), .D(n9766), .Z(adc_cs_N_52)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam i24_4_lut.init = 16'hc0c5;
    LUT4 i9639_2_lut_4_lut (.A(n698), .B(cnt[3]), .C(cnt[1]), .D(cnt[2]), 
         .Z(clk_24mhz_enable_3)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i9639_2_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n698), .C(cnt[3]), .D(cnt[2]), 
         .Z(clk_24mhz_enable_1)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_adj_40 (.A(cnt[1]), .B(n698), .C(cnt[3]), 
         .D(cnt[2]), .Z(clk_24mhz_enable_4)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam i1_2_lut_3_lut_4_lut_adj_40.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(cnt[1]), .B(n698), .C(cnt[3]), 
         .D(cnt[2]), .Z(clk_24mhz_enable_15)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_42 (.A(cnt[1]), .B(n698), .C(cnt[3]), 
         .D(cnt[2]), .Z(clk_24mhz_enable_16)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab6_voltage_meas/adc081s101_driver.v(44[11] 68[9])
    defparam i1_2_lut_3_lut_4_lut_adj_42.init = 16'h2000;
    LUT4 i1447_2_lut_3_lut_4_lut (.A(cnt[2]), .B(n10539), .C(cnt[5]), 
         .D(cnt[4]), .Z(cnt_7__N_35)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1447_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i9630_3_lut_4_lut (.A(cnt[1]), .B(cnt[3]), .C(cnt[2]), .D(n698), 
         .Z(clk_24mhz_enable_8)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i9630_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_187_3_lut_4_lut (.A(cnt[1]), .B(cnt[3]), .C(cnt[4]), 
         .D(cnt[2]), .Z(n10538)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_187_3_lut_4_lut.init = 16'hfffe;
    LUT4 i9642_2_lut_2_lut_3_lut_4_lut (.A(cnt[1]), .B(cnt[3]), .C(n698), 
         .D(cnt[2]), .Z(clk_24mhz_enable_2)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9642_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i2_3_lut_4_lut (.A(cnt[2]), .B(cnt[1]), .C(cnt[3]), .D(cnt[4]), 
         .Z(n9766)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut_4_lut (.A(cnt[2]), .B(cnt[1]), .C(n10), .D(cnt[4]), 
         .Z(clk_24mhz_enable_14)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i5_3_lut_4_lut.init = 16'h1000;
    
endmodule
