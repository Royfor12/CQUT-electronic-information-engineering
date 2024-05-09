// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Tue Jan 29 10:08:01 2019
//
// Verilog Description of module Picture_display
//

module Picture_display (clk, rst_n, lcd_res, lcd_bl, lcd_dc, lcd_clk, 
            lcd_din) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(18[8:23])
    input clk;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(20[11:14])
    input rst_n;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(21[11:16])
    output lcd_res;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(23[12:19])
    output lcd_bl;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(24[12:18])
    output lcd_dc;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(25[12:18])
    output lcd_clk;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(26[12:19])
    output lcd_din;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(27[12:19])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(20[11:14])
    wire rst_n_c /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(21[11:16])
    
    wire lcd_res_c, lcd_dc_c, lcd_clk_c, lcd_din_c;
    wire [7:0]ram_addr;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(39[12:20])
    
    wire n22;
    wire [131:0]ram_data;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(40[14:22])
    
    wire VCC_net, n25, n31;
    wire [7:0]y_cnt;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(56[18:23])
    wire [7:0]cnt_scan;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[31:39])
    wire [7:0]cnt_write;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[41:50])
    wire [15:0]cnt_delay;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(58[23:32])
    wire [15:0]cnt;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(58[34:37])
    wire [2:0]state;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(59[11:16])
    
    wire n220, n351, n2586, n8434, n18, n13, n13_adj_851, n12133, 
        n786, n5054, n30, n5083, n11408, n5090, n11915, n11914, 
        n11913, n11404, GND_net, n94, n13_adj_852, n94_adj_853, 
        n78, n127, n127_adj_854, n78_adj_855, n70, n63, n3846, 
        n9309, n1467, n127_adj_856, n127_adj_857, n127_adj_858, n93, 
        n127_adj_859, n127_adj_860, n127_adj_861, n61, n63_adj_862, 
        n127_adj_863, n63_adj_864, n127_adj_865, n63_adj_866, n127_adj_867, 
        n127_adj_868, n127_adj_869, n12149, n94_adj_870, n126, n11275, 
        n92, n126_adj_871, n126_adj_872, n126_adj_873, n3, n126_adj_874, 
        n11267, n126_adj_875, n126_adj_876, n126_adj_877, n109, n126_adj_878, 
        n126_adj_879, n126_adj_880, n10296, n4006, n6, n11277, n126_adj_881, 
        n31_adj_882, n126_adj_883, n10, n12154, n126_adj_884, n126_adj_885, 
        n4318, n126_adj_886, n126_adj_887, n126_adj_888, n18_adj_889, 
        n63_adj_890, n94_adj_891, n63_adj_892, n94_adj_893, n127_adj_894, 
        n28, n127_adj_895, n3881, n127_adj_896, n3826, n127_adj_897, 
        n21, n12151, n127_adj_898, n10344, n12077, n12071, n4738, 
        n127_adj_899, n12150, n5576, n127_adj_900, n13_adj_901, n31_adj_902, 
        n21_adj_903, n18_adj_904, n12148, n127_adj_905, n10_adj_906, 
        n11300, n31_adj_907, n127_adj_908, n11276, n10320, n12002, 
        n10392, n12001, n12000, n11850, n11849, n25_adj_909, n3824, 
        n21_adj_910, n127_adj_911, n11848, n18_adj_912, n11293, n10_adj_913, 
        n8, n11847, n11846, n3_adj_914, n12145, n11422, n11845, 
        n11844, n12139, n11421, n12136, n10824, n10456, clk_c_enable_182;
    
    VHI i5 (.Z(VCC_net));
    LUT4 i8700_4_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .D(cnt[3]), 
         .Z(n11275)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i8700_4_lut_4_lut.init = 16'h64d0;
    LUT4 mux_43_Mux_0_i28_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .Z(n3824)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_43_Mux_0_i28_3_lut.init = 16'h3535;
    OB lcd_bl_pad (.I(VCC_net), .O(lcd_bl));   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(24[12:18])
    OB lcd_res_pad (.I(lcd_res_c), .O(lcd_res));   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(23[12:19])
    L6MUX21 i9197 (.D0(n11849), .D1(n11846), .SD(cnt[5]), .Z(n11850));
    LUT4 i5487_2_lut (.A(cnt[1]), .B(cnt[2]), .Z(n21)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam i5487_2_lut.init = 16'h8888;
    LUT4 cnt_1__bdd_4_lut_9264 (.A(cnt[1]), .B(cnt[0]), .C(cnt[3]), .D(cnt[2]), 
         .Z(n12000)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;
    defparam cnt_1__bdd_4_lut_9264.init = 16'h0669;
    PFUMX i9195 (.BLUT(n11848), .ALUT(n11847), .C0(cnt[2]), .Z(n11849));
    LUT4 mux_43_Mux_0_i25_3_lut_4_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), 
         .Z(n25_adj_909)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(115[18] 120[12])
    defparam mux_43_Mux_0_i25_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i5484_2_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .Z(n25)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam i5484_2_lut_3_lut.init = 16'h6060;
    LUT4 cnt_1__bdd_4_lut_9228_4_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .D(cnt[3]), .Z(n11913)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B+(C))) */ ;
    defparam cnt_1__bdd_4_lut_9228_4_lut.init = 16'hfcd6;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 mux_43_Mux_2_i13_3_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), 
         .Z(n13_adj_851)) /* synthesis lut_function=(A (B+(C))+!A !(B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_43_Mux_2_i13_3_lut_3_lut.init = 16'ha9a9;
    LUT4 mux_43_Mux_5_i13_3_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), 
         .Z(n13)) /* synthesis lut_function=(A (B (C))+!A !(B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_43_Mux_5_i13_3_lut_3_lut.init = 16'h9595;
    PFUMX i9265 (.BLUT(n12001), .ALUT(n12000), .C0(cnt[4]), .Z(n12002));
    VLO i1 (.Z(GND_net));
    PFUMX i8692 (.BLUT(n22), .ALUT(n11408), .C0(cnt[4]), .Z(n11267));
    LUT4 cnt_3__bdd_4_lut_9190 (.A(cnt[3]), .B(cnt[1]), .C(cnt[2]), .D(cnt[0]), 
         .Z(n11844)) /* synthesis lut_function=(!(A ((C)+!B)+!A (((D)+!C)+!B))) */ ;
    defparam cnt_3__bdd_4_lut_9190.init = 16'h0848;
    LUT4 i5665_2_lut_3_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n4006)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam i5665_2_lut_3_lut.init = 16'h9090;
    LUT4 cnt_1__bdd_4_lut_9263 (.A(cnt[1]), .B(cnt[3]), .C(cnt[0]), .D(cnt[2]), 
         .Z(n11914)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C (D))+!B (C+!(D)))) */ ;
    defparam cnt_1__bdd_4_lut_9263.init = 16'h8f6e;
    LUT4 i3_4_lut (.A(cnt[0]), .B(cnt[2]), .C(n5054), .D(cnt[4]), .Z(n30)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut.init = 16'h0010;
    MUX81 mux_43_Mux_2_i3112 (.D0(n3881), .D1(n8), .D2(n10_adj_906), .D3(n13_adj_851), 
          .D4(n18), .D5(n21_adj_903), .D6(n10456), .D7(n3846), .SD1(cnt[3]), 
          .SD2(cnt[4]), .SD3(cnt[5]), .Z(n31_adj_902));
    MUX81 mux_43_Mux_3_i3113 (.D0(n3), .D1(n6), .D2(n10), .D3(n21), 
          .D4(n18_adj_889), .D5(n21), .D6(n25), .D7(n28), .SD1(cnt[3]), 
          .SD2(cnt[4]), .SD3(cnt[5]), .Z(n31_adj_882));
    LUT4 i8856_2_lut (.A(n5083), .B(n351), .Z(n11422)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[31:39])
    defparam i8856_2_lut.init = 16'h8888;
    LUT4 i8977_3_lut (.A(n220), .B(cnt_scan[0]), .C(cnt_scan[1]), .Z(n11421)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[31:39])
    defparam i8977_3_lut.init = 16'hfefe;
    PFUMX i9191 (.BLUT(n11845), .ALUT(n11844), .C0(cnt[4]), .Z(n11846));
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i7766_2_lut_3_lut (.A(cnt[0]), .B(state[1]), .C(n5576), .Z(n10296)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(116[17:28])
    defparam i7766_2_lut_3_lut.init = 16'h0808;
    LUT4 i8691_then_4_lut (.A(cnt[4]), .B(cnt[2]), .C(cnt[0]), .D(cnt[3]), 
         .Z(n12150)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam i8691_then_4_lut.init = 16'h8886;
    LUT4 i8691_else_4_lut (.A(cnt[4]), .B(cnt[2]), .C(cnt[0]), .D(cnt[3]), 
         .Z(n12149)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (C (D)))) */ ;
    defparam i8691_else_4_lut.init = 16'hca82;
    LUT4 cnt_3__bdd_4_lut_9194_4_lut (.A(cnt[3]), .B(cnt[1]), .C(cnt[4]), 
         .D(cnt[0]), .Z(n11847)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;
    defparam cnt_3__bdd_4_lut_9194_4_lut.init = 16'h4101;
    LUT4 i7790_2_lut_3_lut (.A(y_cnt[0]), .B(state[1]), .C(n351), .Z(n10320)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(128[31:43])
    defparam i7790_2_lut_3_lut.init = 16'h0808;
    LUT4 i7814_2_lut_3_lut (.A(cnt_write[0]), .B(state[2]), .C(n5090), 
         .Z(n10344)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(144[24:40])
    defparam i7814_2_lut_3_lut.init = 16'h0808;
    LUT4 cnt_3__bdd_4_lut_9236 (.A(cnt[3]), .B(cnt[1]), .C(cnt[4]), .D(cnt[0]), 
         .Z(n11848)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam cnt_3__bdd_4_lut_9236.init = 16'h0521;
    PFUMX i8702 (.BLUT(n11275), .ALUT(n11276), .C0(cnt[4]), .Z(n11277));
    PFUMX i9346 (.BLUT(n12149), .ALUT(n12150), .C0(cnt[1]), .Z(n12151));
    PFUMX i446 (.BLUT(n11421), .ALUT(n11422), .C0(cnt_scan[2]), .Z(n2586));
    LUT4 mux_43_Mux_2_i18_3_lut_4_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), 
         .Z(n18)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_43_Mux_2_i18_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 i1740_2_lut (.A(cnt[1]), .B(cnt[2]), .Z(n3881)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam i1740_2_lut.init = 16'h6666;
    LUT4 i7862_2_lut_3_lut (.A(cnt_delay[0]), .B(n786), .C(state[2]), 
         .Z(n10392)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(171[28:44])
    defparam i7862_2_lut_3_lut.init = 16'h2020;
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(21[11:16])
    IB clk_pad (.I(clk), .O(clk_c));   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(20[11:14])
    OB lcd_din_pad (.I(lcd_din_c), .O(lcd_din));   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(27[12:19])
    OB lcd_clk_pad (.I(lcd_clk_c), .O(lcd_clk));   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(26[12:19])
    OB lcd_dc_pad (.I(lcd_dc_c), .O(lcd_dc));   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(25[12:18])
    LUT4 mux_43_Mux_3_i3_3_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), 
         .Z(n3)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_43_Mux_3_i3_3_lut_3_lut.init = 16'h1818;
    PFUMX i9229 (.BLUT(n11914), .ALUT(n11913), .C0(cnt[4]), .Z(n11915));
    LUT4 mux_43_Mux_0_i21_3_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), 
         .Z(n21_adj_910)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+!(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_43_Mux_0_i21_3_lut_3_lut.init = 16'hc7c7;
    LUT4 mux_43_Mux_0_i18_3_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), 
         .Z(n18_adj_904)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_43_Mux_0_i18_3_lut_3_lut.init = 16'h8181;
    LUT4 i5669_2_lut_3_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n4318)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam i5669_2_lut_3_lut.init = 16'h6060;
    LUT4 mux_43_Mux_2_i25_3_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), 
         .Z(n10456)) /* synthesis lut_function=(!(A (C)+!A !((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_43_Mux_2_i25_3_lut_3_lut.init = 16'h5b5b;
    LUT4 i5458_2_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .Z(n21_adj_903)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam i5458_2_lut_3_lut.init = 16'hf8f8;
    PDPW8KC mux_1206 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(ram_addr[0]), .ADR5(ram_addr[1]), 
            .ADR6(ram_addr[2]), .ADR7(ram_addr[3]), .ADR8(ram_addr[4]), 
            .ADR9(ram_addr[5]), .ADR10(ram_addr[6]), .ADR11(ram_addr[7]), 
            .ADR12(GND_net), .CER(clk_c_enable_182), .OCER(VCC_net), .CLKR(clk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO0(ram_data[80]), .DO1(ram_data[79]), .DO2(ram_data[78]), 
            .DO3(ram_data[77]), .DO4(ram_data[76]), .DO5(ram_data[75]), 
            .DO6(ram_data[74]), .DO7(ram_data[73]), .DO8(ram_data[72]), 
            .DO9(ram_data[109]), .DO10(ram_data[105]), .DO11(ram_data[104]), 
            .DO12(ram_data[99]), .DO13(ram_data[98]), .DO14(ram_data[97]), 
            .DO15(ram_data[92]), .DO16(ram_data[90]), .DO17(ram_data[88]));
    defparam mux_1206.DATA_WIDTH_W = 18;
    defparam mux_1206.DATA_WIDTH_R = 18;
    defparam mux_1206.REGMODE = "NOREG";
    defparam mux_1206.CSDECODE_W = "0b000";
    defparam mux_1206.CSDECODE_R = "0b000";
    defparam mux_1206.GSR = "DISABLED";
    defparam mux_1206.RESETMODE = "ASYNC";
    defparam mux_1206.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_1206.INIT_DATA = "STATIC";
    defparam mux_1206.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_02 = "0x3FE003FE003FE003FE003FE003FE003FE003FE003FC003FC003F8003F0003E0003C0003000000000";
    defparam mux_1206.INITVAL_03 = "0x3803C3C03E3C03F3C01F3E01F3E00F3F0073F0073F0073F8013F8003FC003FC003FE003FE003FE00";
    defparam mux_1206.INITVAL_04 = "0x3803E3803F3803F3803B3803B380393803938039380393803D3803D3803C3803C380383803838038";
    defparam mux_1206.INITVAL_05 = "0x21F3023FB807FF80FFF80FEF81FCD81F8581F0081F0081E0003C0203C0243C0343C0363803E3803E";
    defparam mux_1206.INITVAL_06 = "0x3FF803FFC03FFC03FFC03FFC03FFC03FFC03FFC03FFC03FFC03FFC03FFC03FDC03F0E03C06030730";
    defparam mux_1206.INITVAL_07 = "0x3FE003FE003FE003FE003FE003FF003FF003FF003FF003FF003FF003FF803FF803FF803FF803FF80";
    defparam mux_1206.INITVAL_08 = "0x000000000000000000000000000000000000000000000300003E0003FC003FE003FE003FE003FE00";
    defparam mux_1206.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1206.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LUT4 mux_43_Mux_2_i10_3_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), 
         .Z(n10_adj_906)) /* synthesis lut_function=(!(A (B (C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_43_Mux_2_i10_3_lut_3_lut.init = 16'h7a7a;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1746_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), .Z(n4738)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam i1746_3_lut.init = 16'h3535;
    LUT4 i5480_2_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .Z(n28)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam i5480_2_lut_3_lut.init = 16'h2828;
    LUT4 mux_10_Mux_0_i15_4_lut_4_lut_4_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), 
         .D(cnt[3]), .Z(n1467)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(115[18] 120[12])
    defparam mux_10_Mux_0_i15_4_lut_4_lut_4_lut.init = 16'h020c;
    MUX81 mux_43_Mux_5_i3115 (.D0(n3_adj_914), .D1(n13_adj_901), .D2(n10_adj_913), 
          .D3(n13), .D4(n18_adj_912), .D5(n4006), .D6(n9309), .D7(n28), 
          .SD1(cnt[3]), .SD2(cnt[4]), .SD3(cnt[5]), .Z(n31));
    LUT4 mux_43_Mux_0_i10_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n3826)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_43_Mux_0_i10_3_lut.init = 16'h3535;
    LUT4 i5867_1_lut_2_lut (.A(cnt[1]), .B(cnt[2]), .Z(n18_adj_912)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i5867_1_lut_2_lut.init = 16'h7777;
    PDPW8KC mux_1208 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(ram_addr[0]), .ADR5(ram_addr[1]), 
            .ADR6(ram_addr[2]), .ADR7(ram_addr[3]), .ADR8(ram_addr[4]), 
            .ADR9(ram_addr[5]), .ADR10(ram_addr[6]), .ADR11(ram_addr[7]), 
            .ADR12(GND_net), .CER(clk_c_enable_182), .OCER(VCC_net), .CLKR(clk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO0(ram_data[18]), .DO1(ram_data[19]), .DO9(ram_data[52]), 
            .DO10(ram_data[49]), .DO11(ram_data[47]), .DO12(ram_data[38]), 
            .DO13(ram_data[34]), .DO14(ram_data[33]), .DO15(ram_data[30]), 
            .DO16(ram_data[28]), .DO17(ram_data[27]));
    defparam mux_1208.DATA_WIDTH_W = 18;
    defparam mux_1208.DATA_WIDTH_R = 18;
    defparam mux_1208.REGMODE = "NOREG";
    defparam mux_1208.CSDECODE_W = "0b000";
    defparam mux_1208.CSDECODE_R = "0b000";
    defparam mux_1208.GSR = "DISABLED";
    defparam mux_1208.RESETMODE = "ASYNC";
    defparam mux_1208.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_1208.INIT_DATA = "STATIC";
    defparam mux_1208.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_03 = "0x001F0003F0007F0007F0007F0007E0007E0007C0007C0007C0007800060000000000000000000000";
    defparam mux_1208.INITVAL_04 = "0x001C8005D8007D8007B8007B800730007700067000670006F0007F0007F0007F0003F0001F0001F0";
    defparam mux_1208.INITVAL_05 = "0x000010000B0000B0000F0000F0000E0001C00038000380007000070000F0001F0001F8001E8001C8";
    defparam mux_1208.INITVAL_06 = "0x00003000030000700007000070000700007000070000700007000070000700006000060000400001";
    defparam mux_1208.INITVAL_07 = "0x00000000000000000000000000000100001000010000100001000010000100001000030000300003";
    defparam mux_1208.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1208.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    PDPW8KC mux_1207 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(ram_addr[0]), .ADR5(ram_addr[1]), 
            .ADR6(ram_addr[2]), .ADR7(ram_addr[3]), .ADR8(ram_addr[4]), 
            .ADR9(ram_addr[5]), .ADR10(ram_addr[6]), .ADR11(ram_addr[7]), 
            .ADR12(GND_net), .CER(clk_c_enable_182), .OCER(VCC_net), .CLKR(clk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO0(ram_data[62]), .DO1(ram_data[61]), .DO2(ram_data[60]), 
            .DO3(ram_data[59]), .DO4(ram_data[58]), .DO5(ram_data[57]), 
            .DO6(ram_data[56]), .DO7(ram_data[55]), .DO8(ram_data[54]), 
            .DO9(ram_data[71]), .DO10(ram_data[70]), .DO11(ram_data[69]), 
            .DO12(ram_data[68]), .DO13(ram_data[67]), .DO14(ram_data[66]), 
            .DO15(ram_data[65]), .DO16(ram_data[64]), .DO17(ram_data[63]));
    defparam mux_1207.DATA_WIDTH_W = 18;
    defparam mux_1207.DATA_WIDTH_R = 18;
    defparam mux_1207.REGMODE = "NOREG";
    defparam mux_1207.CSDECODE_W = "0b000";
    defparam mux_1207.CSDECODE_R = "0b000";
    defparam mux_1207.GSR = "DISABLED";
    defparam mux_1207.RESETMODE = "ASYNC";
    defparam mux_1207.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_1207.INIT_DATA = "STATIC";
    defparam mux_1207.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_02 = "0x3FF013FF003FE003FF003FF013FF833FFFF3FFFF1FFFF1FFFF0FFFF07FFF03FFF01FFF007FF001FF";
    defparam mux_1207.INITVAL_03 = "0x007F3007F300FF300FE300FE301FE301FE703FE703FE707FE70FFE71FFE71FFE73FFE73FFC73FF81";
    defparam mux_1207.INITVAL_04 = "0x000F8000F8000F9000F9000F9000F9001F9001F1001F1001F1001F3003F3003F3003F3003F3007F3";
    defparam mux_1207.INITVAL_05 = "0x3FFC73FFE33FFF33FFF13FFF803FF800FF8007FC003FC003FC001FC001FC000FC000FC000F8000F8";
    defparam mux_1207.INITVAL_06 = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF207FF000FF0003F3FC1F3FF8F";
    defparam mux_1207.INITVAL_07 = "0x1FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_1207.INITVAL_08 = "0x0000000000000000000000000000000000000000000000001F001FF007FF01FFF03FFF07FFF0FFFF";
    defparam mux_1207.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_1207.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    LCD_RGB LCD_RGB_uut (.rst_n_c(rst_n_c), .cnt({Open_0, Open_1, Open_2, 
            Open_3, Open_4, Open_5, Open_6, Open_7, Open_8, Open_9, 
            cnt[5:0]}), .n13(n13_adj_852), .cnt_scan({Open_10, Open_11, 
            Open_12, Open_13, Open_14, Open_15, cnt_scan[1:0]}), .clk_c(clk_c), 
            .y_cnt({Open_16, Open_17, Open_18, Open_19, Open_20, Open_21, 
            Open_22, y_cnt[0]}), .cnt_write({Open_23, Open_24, Open_25, 
            Open_26, Open_27, Open_28, Open_29, cnt_write[0]}), .cnt_delay({Open_30, 
            Open_31, Open_32, Open_33, Open_34, Open_35, Open_36, 
            Open_37, Open_38, Open_39, Open_40, Open_41, Open_42, 
            Open_43, Open_44, cnt_delay[0]}), .\state[1] (state[1]), 
            .n786(n786), .ram_addr({ram_addr}), .n18(n18_adj_889), .n109(n109), 
            .n61(n61), .n11293(n11293), .\state[2] (state[2]), .n94(n94), 
            .n63(n63), .n11408(n11408), .n2586(n2586), .n93(n93), .n78(n78_adj_855), 
            .n11300(n11300), .n12077(n12077), .n63_adj_50(n63_adj_862), 
            .n63_adj_51(n63_adj_866), .n5083(n5083), .n220(n220), .n1467(n1467), 
            .n12133(n12133), .n63_adj_52(n63_adj_864), .\cnt_scan[2] (cnt_scan[2]), 
            .n30(n30), .n11277(n11277), .n31(n31), .n12002(n12002), 
            .n11267(n11267), .n12151(n12151), .n31_adj_53(n31_adj_882), 
            .n31_adj_54(n31_adj_907), .n31_adj_55(n31_adj_902), .n94_adj_56(n94_adj_893), 
            .n63_adj_57(n63_adj_892), .n12136(n12136), .n3846(n3846), 
            .GND_net(GND_net), .n94_adj_58(n94_adj_891), .n63_adj_59(n63_adj_890), 
            .n11276(n11276), .\ram_data[18] (ram_data[18]), .\ram_data[19] (ram_data[19]), 
            .\ram_data[27] (ram_data[27]), .\ram_data[28] (ram_data[28]), 
            .\ram_data[30] (ram_data[30]), .\ram_data[49] (ram_data[49]), 
            .\ram_data[52] (ram_data[52]), .\ram_data[54] (ram_data[54]), 
            .\ram_data[55] (ram_data[55]), .\ram_data[56] (ram_data[56]), 
            .\ram_data[57] (ram_data[57]), .\ram_data[58] (ram_data[58]), 
            .\ram_data[59] (ram_data[59]), .\ram_data[60] (ram_data[60]), 
            .\ram_data[61] (ram_data[61]), .\ram_data[62] (ram_data[62]), 
            .\ram_data[63] (ram_data[63]), .\ram_data[33] (ram_data[33]), 
            .\ram_data[34] (ram_data[34]), .\ram_data[38] (ram_data[38]), 
            .\ram_data[47] (ram_data[47]), .\ram_data[80] (ram_data[80]), 
            .\ram_data[88] (ram_data[88]), .\ram_data[90] (ram_data[90]), 
            .\ram_data[92] (ram_data[92]), .n351(n351), .\ram_data[64] (ram_data[64]), 
            .\ram_data[65] (ram_data[65]), .\ram_data[66] (ram_data[66]), 
            .\ram_data[67] (ram_data[67]), .\ram_data[68] (ram_data[68]), 
            .\ram_data[69] (ram_data[69]), .\ram_data[70] (ram_data[70]), 
            .\ram_data[71] (ram_data[71]), .\ram_data[72] (ram_data[72]), 
            .\ram_data[73] (ram_data[73]), .\ram_data[74] (ram_data[74]), 
            .\ram_data[75] (ram_data[75]), .\ram_data[76] (ram_data[76]), 
            .\ram_data[77] (ram_data[77]), .\ram_data[78] (ram_data[78]), 
            .\ram_data[79] (ram_data[79]), .\ram_data[97] (ram_data[97]), 
            .\ram_data[98] (ram_data[98]), .\ram_data[99] (ram_data[99]), 
            .\ram_data[104] (ram_data[104]), .\ram_data[105] (ram_data[105]), 
            .\ram_data[109] (ram_data[109]), .n8434(n8434), .n5090(n5090), 
            .n78_adj_60(n78), .clk_c_enable_182(clk_c_enable_182), .n12001(n12001), 
            .n6(n6), .n10(n10_adj_913), .n10392(n10392), .lcd_dc_c(lcd_dc_c), 
            .n5576(n5576), .n11915(n11915), .n11850(n11850), .n5054(n5054), 
            .n10344(n10344), .n10320(n10320), .n10_adj_61(n10), .n13_adj_62(n13_adj_901), 
            .\ram_data[84] (ram_data[84]), .\ram_data[83] (ram_data[83]), 
            .\ram_data[82] (ram_data[82]), .\ram_data[81] (ram_data[81]), 
            .n10296(n10296), .n11845(n11845), .lcd_res_c(lcd_res_c), .n127(n127_adj_856), 
            .n127_adj_63(n127_adj_854), .n127_adj_64(n127_adj_859), .n127_adj_65(n127), 
            .n70(n70), .n127_adj_66(n127_adj_858), .lcd_clk_c(lcd_clk_c), 
            .lcd_din_c(lcd_din_c), .n12154(n12154), .n8(n8), .n10824(n10824), 
            .n12071(n12071), .n12148(n12148), .n94_adj_67(n94_adj_870), 
            .n9309(n9309), .n126(n126), .n22(n22), .n126_adj_68(n126_adj_871), 
            .n126_adj_69(n126_adj_872), .n126_adj_70(n126_adj_873), .n126_adj_71(n126_adj_874), 
            .n126_adj_72(n126_adj_875), .n126_adj_73(n126_adj_876), .n126_adj_74(n126_adj_877), 
            .n127_adj_75(n127_adj_857), .n126_adj_76(n126_adj_878), .n12145(n12145), 
            .n126_adj_77(n126_adj_879), .n94_adj_78(n94_adj_853), .n127_adj_79(n127_adj_865), 
            .n127_adj_80(n127_adj_867), .n127_adj_81(n127_adj_868), .n126_adj_82(n126_adj_880), 
            .n92(n92), .n11404(n11404), .n126_adj_83(n126_adj_881), .n126_adj_84(n126_adj_883), 
            .n12139(n12139), .n126_adj_85(n126_adj_884), .n126_adj_86(n126_adj_885), 
            .n126_adj_87(n126_adj_886), .n126_adj_88(n126_adj_887), .n126_adj_89(n126_adj_888), 
            .n127_adj_90(n127_adj_894), .n127_adj_91(n127_adj_895), .n127_adj_92(n127_adj_896), 
            .n127_adj_93(n127_adj_897), .n127_adj_94(n127_adj_898), .n127_adj_95(n127_adj_899), 
            .n127_adj_96(n127_adj_900), .n3(n3_adj_914), .n127_adj_97(n127_adj_905), 
            .n127_adj_98(n127_adj_908), .n127_adj_99(n127_adj_911), .n127_adj_100(n127_adj_860), 
            .n127_adj_101(n127_adj_861), .n127_adj_102(n127_adj_863), .n127_adj_103(n127_adj_869)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(41[9] 55[2])
    MUX81 mux_43_Mux_0_i3116 (.D0(n4738), .D1(n4318), .D2(n3826), .D3(n13_adj_852), 
          .D4(n18_adj_904), .D5(n21_adj_910), .D6(n25_adj_909), .D7(n3824), 
          .SD1(cnt[3]), .SD2(cnt[4]), .SD3(cnt[5]), .Z(n31_adj_907));
    LCD_RAM LCD_RAM_uut (.ram_addr({ram_addr}), .n127(n127_adj_896), .n61(n61), 
            .n12071(n12071), .n63(n63_adj_892), .n78(n78), .n127_adj_1(n127_adj_894), 
            .n127_adj_2(n127_adj_858), .n70(n70), .n63_adj_3(n63_adj_890), 
            .n127_adj_4(n127_adj_895), .n63_adj_5(n63_adj_862), .n127_adj_6(n127_adj_863), 
            .n127_adj_7(n127_adj_869), .n126(n126_adj_888), .n126_adj_8(n126_adj_886), 
            .n92(n92), .n63_adj_9(n63_adj_864), .n127_adj_10(n127_adj_898), 
            .n127_adj_11(n127_adj_860), .n127_adj_12(n127_adj_900), .n127_adj_13(n127_adj_908), 
            .n126_adj_14(n126_adj_877), .n8434(n8434), .n127_adj_15(n127_adj_911), 
            .n126_adj_16(n126_adj_875), .n126_adj_17(n126_adj_873), .n126_adj_18(n126_adj_871), 
            .n126_adj_19(n126), .n109(n109), .n78_adj_20(n78_adj_855), 
            .n127_adj_21(n127_adj_865), .n127_adj_22(n127_adj_905), .n94(n94_adj_870), 
            .n126_adj_23(n126_adj_881), .n126_adj_24(n126_adj_880), .n126_adj_25(n126_adj_872), 
            .n126_adj_26(n126_adj_883), .n93(n93), .n126_adj_27(n126_adj_874), 
            .n94_adj_28(n94), .\ram_data[84] (ram_data[84]), .n11404(n11404), 
            .n10824(n10824), .n126_adj_29(n126_adj_876), .\ram_data[83] (ram_data[83]), 
            .n127_adj_30(n127_adj_857), .\ram_data[82] (ram_data[82]), .n127_adj_31(n127_adj_897), 
            .n126_adj_32(n126_adj_878), .\ram_data[81] (ram_data[81]), .n94_adj_33(n94_adj_853), 
            .n11293(n11293), .n127_adj_34(n127), .n94_adj_35(n94_adj_891), 
            .n12154(n12154), .n63_adj_36(n63), .n127_adj_37(n127_adj_856), 
            .n11300(n11300), .n127_adj_38(n127_adj_859), .n126_adj_39(n126_adj_879), 
            .n63_adj_40(n63_adj_866), .n127_adj_41(n127_adj_867), .n12148(n12148), 
            .n127_adj_42(n127_adj_868), .n12145(n12145), .n127_adj_43(n127_adj_854), 
            .n127_adj_44(n127_adj_861), .n12139(n12139), .n126_adj_45(n126_adj_885), 
            .n126_adj_46(n126_adj_887), .n126_adj_47(n126_adj_884), .n12077(n12077), 
            .n127_adj_48(n127_adj_899), .n12136(n12136), .n94_adj_49(n94_adj_893), 
            .n12133(n12133)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(57[9] 61[2])
    
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
// Verilog Description of module LCD_RGB
//

module LCD_RGB (rst_n_c, cnt, n13, cnt_scan, clk_c, y_cnt, cnt_write, 
            cnt_delay, \state[1] , n786, ram_addr, n18, n109, n61, 
            n11293, \state[2] , n94, n63, n11408, n2586, n93, 
            n78, n11300, n12077, n63_adj_50, n63_adj_51, n5083, 
            n220, n1467, n12133, n63_adj_52, \cnt_scan[2] , n30, 
            n11277, n31, n12002, n11267, n12151, n31_adj_53, n31_adj_54, 
            n31_adj_55, n94_adj_56, n63_adj_57, n12136, n3846, GND_net, 
            n94_adj_58, n63_adj_59, n11276, \ram_data[18] , \ram_data[19] , 
            \ram_data[27] , \ram_data[28] , \ram_data[30] , \ram_data[49] , 
            \ram_data[52] , \ram_data[54] , \ram_data[55] , \ram_data[56] , 
            \ram_data[57] , \ram_data[58] , \ram_data[59] , \ram_data[60] , 
            \ram_data[61] , \ram_data[62] , \ram_data[63] , \ram_data[33] , 
            \ram_data[34] , \ram_data[38] , \ram_data[47] , \ram_data[80] , 
            \ram_data[88] , \ram_data[90] , \ram_data[92] , n351, \ram_data[64] , 
            \ram_data[65] , \ram_data[66] , \ram_data[67] , \ram_data[68] , 
            \ram_data[69] , \ram_data[70] , \ram_data[71] , \ram_data[72] , 
            \ram_data[73] , \ram_data[74] , \ram_data[75] , \ram_data[76] , 
            \ram_data[77] , \ram_data[78] , \ram_data[79] , \ram_data[97] , 
            \ram_data[98] , \ram_data[99] , \ram_data[104] , \ram_data[105] , 
            \ram_data[109] , n8434, n5090, n78_adj_60, clk_c_enable_182, 
            n12001, n6, n10, n10392, lcd_dc_c, n5576, n11915, 
            n11850, n5054, n10344, n10320, n10_adj_61, n13_adj_62, 
            \ram_data[84] , \ram_data[83] , \ram_data[82] , \ram_data[81] , 
            n10296, n11845, lcd_res_c, n127, n127_adj_63, n127_adj_64, 
            n127_adj_65, n70, n127_adj_66, lcd_clk_c, lcd_din_c, n12154, 
            n8, n10824, n12071, n12148, n94_adj_67, n9309, n126, 
            n22, n126_adj_68, n126_adj_69, n126_adj_70, n126_adj_71, 
            n126_adj_72, n126_adj_73, n126_adj_74, n127_adj_75, n126_adj_76, 
            n12145, n126_adj_77, n94_adj_78, n127_adj_79, n127_adj_80, 
            n127_adj_81, n126_adj_82, n92, n11404, n126_adj_83, n126_adj_84, 
            n12139, n126_adj_85, n126_adj_86, n126_adj_87, n126_adj_88, 
            n126_adj_89, n127_adj_90, n127_adj_91, n127_adj_92, n127_adj_93, 
            n127_adj_94, n127_adj_95, n127_adj_96, n3, n127_adj_97, 
            n127_adj_98, n127_adj_99, n127_adj_100, n127_adj_101, n127_adj_102, 
            n127_adj_103) /* synthesis syn_module_defined=1 */ ;
    input rst_n_c;
    output [15:0]cnt;
    output n13;
    output [7:0]cnt_scan;
    input clk_c;
    output [7:0]y_cnt;
    output [7:0]cnt_write;
    output [15:0]cnt_delay;
    output \state[1] ;
    output n786;
    output [7:0]ram_addr;
    output n18;
    input n109;
    input n61;
    output n11293;
    output \state[2] ;
    input n94;
    input n63;
    output n11408;
    input n2586;
    input n93;
    input n78;
    output n11300;
    input n12077;
    input n63_adj_50;
    input n63_adj_51;
    output n5083;
    output n220;
    input n1467;
    input n12133;
    input n63_adj_52;
    output \cnt_scan[2] ;
    input n30;
    input n11277;
    input n31;
    input n12002;
    input n11267;
    input n12151;
    input n31_adj_53;
    input n31_adj_54;
    input n31_adj_55;
    input n94_adj_56;
    input n63_adj_57;
    input n12136;
    output n3846;
    input GND_net;
    input n94_adj_58;
    input n63_adj_59;
    output n11276;
    input \ram_data[18] ;
    input \ram_data[19] ;
    input \ram_data[27] ;
    input \ram_data[28] ;
    input \ram_data[30] ;
    input \ram_data[49] ;
    input \ram_data[52] ;
    input \ram_data[54] ;
    input \ram_data[55] ;
    input \ram_data[56] ;
    input \ram_data[57] ;
    input \ram_data[58] ;
    input \ram_data[59] ;
    input \ram_data[60] ;
    input \ram_data[61] ;
    input \ram_data[62] ;
    input \ram_data[63] ;
    input \ram_data[33] ;
    input \ram_data[34] ;
    input \ram_data[38] ;
    input \ram_data[47] ;
    input \ram_data[80] ;
    input \ram_data[88] ;
    input \ram_data[90] ;
    input \ram_data[92] ;
    output n351;
    input \ram_data[64] ;
    input \ram_data[65] ;
    input \ram_data[66] ;
    input \ram_data[67] ;
    input \ram_data[68] ;
    input \ram_data[69] ;
    input \ram_data[70] ;
    input \ram_data[71] ;
    input \ram_data[72] ;
    input \ram_data[73] ;
    input \ram_data[74] ;
    input \ram_data[75] ;
    input \ram_data[76] ;
    input \ram_data[77] ;
    input \ram_data[78] ;
    input \ram_data[79] ;
    input \ram_data[97] ;
    input \ram_data[98] ;
    input \ram_data[99] ;
    input \ram_data[104] ;
    input \ram_data[105] ;
    input \ram_data[109] ;
    input n8434;
    output n5090;
    input n78_adj_60;
    output clk_c_enable_182;
    output n12001;
    output n6;
    output n10;
    input n10392;
    output lcd_dc_c;
    output n5576;
    input n11915;
    input n11850;
    output n5054;
    input n10344;
    input n10320;
    output n10_adj_61;
    output n13_adj_62;
    input \ram_data[84] ;
    input \ram_data[83] ;
    input \ram_data[82] ;
    input \ram_data[81] ;
    input n10296;
    output n11845;
    output lcd_res_c;
    input n127;
    input n127_adj_63;
    input n127_adj_64;
    input n127_adj_65;
    input n70;
    input n127_adj_66;
    output lcd_clk_c;
    output lcd_din_c;
    input n12154;
    output n8;
    input n10824;
    input n12071;
    input n12148;
    input n94_adj_67;
    output n9309;
    input n126;
    output n22;
    input n126_adj_68;
    input n126_adj_69;
    input n126_adj_70;
    input n126_adj_71;
    input n126_adj_72;
    input n126_adj_73;
    input n126_adj_74;
    input n127_adj_75;
    input n126_adj_76;
    input n12145;
    input n126_adj_77;
    input n94_adj_78;
    input n127_adj_79;
    input n127_adj_80;
    input n127_adj_81;
    input n126_adj_82;
    input n92;
    output n11404;
    input n126_adj_83;
    input n126_adj_84;
    input n12139;
    input n126_adj_85;
    input n126_adj_86;
    input n126_adj_87;
    input n126_adj_88;
    input n126_adj_89;
    input n127_adj_90;
    input n127_adj_91;
    input n127_adj_92;
    input n127_adj_93;
    input n127_adj_94;
    input n127_adj_95;
    input n127_adj_96;
    output n3;
    input n127_adj_97;
    input n127_adj_98;
    input n127_adj_99;
    input n127_adj_100;
    input n127_adj_101;
    input n127_adj_102;
    input n127_adj_103;
    
    wire rst_n_N_10 /* synthesis is_inv_clock=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(28[18:26])
    wire rst_n_c /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(21[11:16])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/picture_display.v(20[11:14])
    
    wire n10470, n9242, lcd_res_N_570, n15, n11903, n14, n10_c, 
        n11247, n11, n11988, n4965;
    wire [15:0]num_delay;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(58[12:21])
    
    wire n61_c, n27, n21, n5581, n5138, n60, n3_c;
    wire [2:0]state;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(59[11:16])
    
    wire n130, n11135, clk_c_enable_105;
    wire [7:0]x_cnt;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(56[11:16])
    
    wire clk_c_enable_97, n3_adj_682, clk_c_enable_90, n3_adj_683;
    wire [7:0]cnt_main;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[11:19])
    
    wire clk_c_enable_3;
    wire [7:0]cnt_init;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[21:29])
    
    wire clk_c_enable_83, n4393, clk_c_enable_76, n4634, clk_c_enable_69, 
        n11069, clk_c_enable_54, n4428, clk_c_enable_39, n3_adj_684, 
        clk_c_enable_24;
    wire [2:0]state_2__N_248;
    wire [2:0]state_back;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(59[25:35])
    
    wire n3_adj_685;
    wire [8:0]data_reg;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(55[11:19])
    
    wire clk_c_enable_20, n2, high_word, n8466, n14_adj_686;
    wire [7:0]n2700;
    
    wire n10788, n8406, n11948, n4, n6_c;
    wire [7:0]cnt_write_c;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[41:50])
    
    wire n14_adj_687, n128, n14_adj_688, n3_adj_689, n31_c;
    wire [15:0]n139;
    
    wire n11402;
    wire [7:0]n1;
    
    wire n4347, n18_c, n12125, n12126, n12127, n11219, n15_adj_690;
    wire [7:0]y_cnt_c;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(56[18:23])
    
    wire n3_adj_692, n24, n18_adj_693, n28, n3503, n3_adj_695, n127_c, 
        n3_adj_696, n11378, n12, n3_adj_697, n10_adj_698, n5064, 
        n2563, n11392, n2_adj_699, n3_adj_700, n12474, n11380, n3_adj_701, 
        n11239, n5067, n5086, n2_adj_702, n2_adj_703;
    wire [7:0]cnt_scan_c;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[31:39])
    
    wire n2_adj_704, n2_adj_705, n2_adj_706, n2_adj_707, n2_adj_708, 
        n11131, n10654;
    wire [15:0]cnt_c;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(58[34:37])
    
    wire n3_adj_709, n3_adj_710, n3_adj_711, n3_adj_712, n3_adj_713, 
        n3_adj_714, n3_adj_715, n3_adj_716, n3_adj_717, n3_adj_718, 
        n3_adj_719, n3_adj_720, n3_adj_721, n3_adj_722, n3_adj_723;
    wire [15:0]cnt_delay_c;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(58[23:32])
    
    wire n4239, n4233, n4227, n4221, n4215, n4209, n4203, n4197, 
        n4191, n4185, n4179, n4173, n4167, n4161, n4155, n3_adj_724, 
        n3_adj_725, n11067, n11070, n11106, n11068, n11124, n11107, 
        n3_adj_726, n3_adj_727, n13_adj_728, n13_adj_729, n11130, 
        n4335, n4345, n4351, n4359, n4367, n4371, n4377, n4361, 
        n127_adj_731, n4357, n4355, n4353, n4349, n4343, n11362, 
        n11390, n4958, n30_c, n3_adj_732, n3_adj_733, n3_adj_734, 
        n15_adj_735, n3_adj_736, n5537, n11147, n8528;
    wire [131:0]ram_data_r;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(54[13:23])
    
    wire n11279, n11639, n11397, n6_adj_737, n12170, n12166, n12172, 
        n6_adj_738, n26, n11187, n8360, n11386, n3_adj_739, n11337, 
        n127_adj_741, n3_adj_742, n3_adj_743, n3_adj_744, n3_adj_745, 
        n3_adj_746, n3_adj_747, n6_adj_748, n9243, n11369, n3_adj_749, 
        n3_adj_750, n3_adj_751, n3_adj_752, n3_adj_753, n3_adj_754, 
        clk_c_enable_146;
    wire [7:0]n37;
    
    wire n11413, n3450;
    wire [4:0]n3190;
    
    wire n3432, n11123, n14_adj_755, n5141, n11353, n12128;
    wire [8:0]n1458;
    
    wire n3435, n28_adj_756, n127_adj_758, n11866, n400, n3439, 
        n26_adj_759, n12475, n11937, n11320, n3437, n11377, n11374, 
        n11261, n25, n11888, n11375, n24_adj_762, n22_c, n11367, 
        n11372, n12123, n11383, n59, n11368, n11887, n127_adj_768, 
        n12129, n12206, n4516, n3473, n11278, n127_adj_769, clk_c_enable_173, 
        n106, n11179, n20, n4947, clk_c_enable_120, n10455, n4128, 
        n10454, n10453, n10452, n18_adj_770, n3_adj_771;
    wire [0:0]n2926;
    
    wire n10451, n5643, n16, n127_adj_774, n8542, n11902, n10450, 
        n10449, n14_adj_775, n12_adj_776, n10_adj_777, n12322, n12321, 
        n12323, n8_c, n30_adj_778, n30_adj_779, n6_adj_780, n15_adj_781, 
        n30_adj_782, n10504, n15_adj_783, n15_adj_784, n3_adj_785, 
        n4_adj_786, n4689, n11225, n11398, n12122, n10448, n11363, 
        n22_adj_789, n11364, n11414, n11385, n5763, n11388, n4977;
    wire [2:0]state_2__N_263;
    
    wire clk_c_enable_118, n12165, n18_adj_790, n11391, n11211, n9, 
        n22_adj_792, n15_adj_793, n30_adj_794, n11042, n5116, n10447, 
        n11319, n5612, n10446, n10445, n10444, n10443, n10442, 
        n10441, n5740, n5653, n4972, n22_adj_796, n12082, n12081, 
        n11284, n12124, n12_adj_797, n11285, n11120, n10440, n3507, 
        n22_adj_799, n19, n3433, n4981, n7, clk_c_enable_110, n11376, 
        n12473, n5717, n11420, n11233, n21_adj_800, n10439, n10438, 
        n10437, n10436, n17, n16_adj_801, n10435, n10434, n10433, 
        n10432, n10431, n10430, n10429, n10428, n10427, n10426, 
        n10425, n10424, n10423, n11354, n11280, n11309, n11235, 
        n127_adj_807, n12_adj_810, n11904, n10422, n10421, n10420;
    
    INV i9497 (.A(rst_n_c), .Z(rst_n_N_10));
    LUT4 i2_2_lut_3_lut_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .Z(n13)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i2_2_lut_3_lut_3_lut.init = 16'h4040;
    LUT4 n61_bdd_3_lut_4_lut (.A(n10470), .B(n9242), .C(lcd_res_N_570), 
         .D(n15), .Z(n11903)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n61_bdd_3_lut_4_lut.init = 16'hf0ee;
    LUT4 i8674_2_lut_3_lut_4_lut (.A(n14), .B(n10_c), .C(cnt_scan[1]), 
         .D(cnt_scan[0]), .Z(n11247)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8674_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 n3503_bdd_4_lut (.A(cnt_scan[0]), .B(n10_c), .C(n11), .D(cnt_scan[1]), 
         .Z(n11988)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C)+!B (C (D))))) */ ;
    defparam n3503_bdd_4_lut.init = 16'h0f1d;
    LUT4 i1_4_lut (.A(n4965), .B(num_delay[4]), .C(n61_c), .D(n27), 
         .Z(n21)) /* synthesis lut_function=(A (B+!(C))+!A (B (D))) */ ;
    defparam i1_4_lut.init = 16'hce8a;
    LUT4 i1_4_lut_adj_7 (.A(n5581), .B(n5138), .C(num_delay[3]), .D(n60), 
         .Z(n3_c)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_7.init = 16'h5111;
    LUT4 i3_4_lut (.A(state[0]), .B(rst_n_c), .C(n130), .D(n11135), 
         .Z(clk_c_enable_105)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0400;
    FD1P3DX x_cnt_i0 (.D(n3_adj_682), .SP(clk_c_enable_97), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(x_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam x_cnt_i0.GSR = "ENABLED";
    FD1P3DX y_cnt_i0 (.D(n3_adj_683), .SP(clk_c_enable_90), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(y_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam y_cnt_i0.GSR = "ENABLED";
    FD1P3DX cnt_main_i0 (.D(state[0]), .SP(clk_c_enable_3), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_main_i0.GSR = "ENABLED";
    FD1P3DX cnt_init_i0 (.D(n4393), .SP(clk_c_enable_83), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_init_i0.GSR = "ENABLED";
    FD1P3DX cnt_write_i0 (.D(n4634), .SP(clk_c_enable_76), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_write_i0.GSR = "ENABLED";
    FD1P3DX num_delay_i0 (.D(n11069), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i0.GSR = "ENABLED";
    FD1P3DX cnt_delay_i0 (.D(n4428), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i0.GSR = "ENABLED";
    FD1P3DX cnt_i0 (.D(n3_adj_684), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i0.GSR = "ENABLED";
    FD1P3DX state_i0 (.D(state_2__N_248[0]), .SP(clk_c_enable_24), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam state_i0.GSR = "ENABLED";
    FD1P3DX state_back_i0 (.D(n3_adj_685), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam state_back_i0.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i0 (.D(n2), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(data_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam data_reg_i0_i0.GSR = "ENABLED";
    FD1P3BX high_word_255 (.D(n8466), .SP(clk_c_enable_97), .CK(clk_c), 
            .PD(rst_n_N_10), .Q(high_word)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam high_word_255.GSR = "ENABLED";
    LUT4 i5639_2_lut_3_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(x_cnt[3]), 
         .Z(n2700[3])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i5639_2_lut_3_lut.init = 16'h7070;
    FD1P3AX data_reg_i0_i8 (.D(n10788), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(data_reg[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam data_reg_i0_i8.GSR = "ENABLED";
    LUT4 i5831_2_lut_3_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(high_word), 
         .Z(n8406)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i5831_2_lut_3_lut.init = 16'hf8f8;
    LUT4 n5104_bdd_2_lut_3_lut (.A(cnt[4]), .B(cnt[5]), .C(n11948), .Z(n4)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n5104_bdd_2_lut_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut (.A(x_cnt[4]), .B(x_cnt[6]), .C(x_cnt[2]), .D(n6_c), 
         .Z(n14_adj_686)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(cnt_write_c[4]), .B(cnt_write_c[5]), .C(cnt_write_c[7]), 
         .D(cnt_write_c[6]), .Z(n14_adj_687)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(163[7:12])
    defparam i1_2_lut_4_lut.init = 16'hfffd;
    LUT4 i1_3_lut (.A(cnt_write_c[2]), .B(n128), .C(n14_adj_688), .Z(n130)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i5782_2_lut (.A(y_cnt[0]), .B(\state[1] ), .Z(n3_adj_689)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5782_2_lut.init = 16'h8888;
    LUT4 mux_25_i9_3_lut_4_lut (.A(n31_c), .B(num_delay[8]), .C(n10470), 
         .D(n9242), .Z(n139[8])) /* synthesis lut_function=(A (B (C+(D)))+!A (B+!(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_25_i9_3_lut_4_lut.init = 16'hccc5;
    LUT4 i5688_4_lut (.A(n11402), .B(\state[1] ), .C(n1[2]), .D(n15), 
         .Z(n4347)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5688_4_lut.init = 16'hc088;
    LUT4 i31_4_lut (.A(n18_c), .B(n786), .C(state[0]), .D(n11135), .Z(clk_c_enable_24)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B+!(C (D)))) */ ;
    defparam i31_4_lut.init = 16'hc5f5;
    PFUMX i9330 (.BLUT(n12125), .ALUT(n12126), .C0(ram_addr[3]), .Z(n12127));
    LUT4 cnt_write_7__I_0_i15_3_lut_4_lut (.A(cnt_write_c[1]), .B(cnt_write[0]), 
         .C(n14_adj_687), .D(n11219), .Z(n15_adj_690)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(163[7:12])
    defparam cnt_write_7__I_0_i15_3_lut_4_lut.init = 16'hfffb;
    LUT4 mux_43_Mux_3_i18_3_lut_4_lut_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam mux_43_Mux_3_i18_3_lut_4_lut_3_lut.init = 16'h5656;
    LUT4 i5631_2_lut (.A(y_cnt_c[7]), .B(\state[1] ), .Z(n3_adj_692)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5631_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(cnt_init[0]), .B(n24), .C(cnt_init[2]), .D(cnt_init[1]), 
         .Z(n18_adj_693)) /* synthesis lut_function=(A (B)+!A (B+((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i1_3_lut_4_lut.init = 16'hddcd;
    LUT4 i8945_4_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[4]), .C(n109), 
         .D(n61), .Z(n11293)) /* synthesis lut_function=(!(A+(B (C)+!B !(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8945_4_lut_4_lut.init = 16'h1504;
    LUT4 i1_2_lut_3_lut (.A(num_delay[9]), .B(cnt_init[2]), .C(cnt_init[1]), 
         .Z(n28)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut.init = 16'ha2a2;
    LUT4 i1_4_lut_4_lut (.A(\state[2] ), .B(state[0]), .C(\state[1] ), 
         .D(n3503), .Z(clk_c_enable_90)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h4101;
    LUT4 i5630_2_lut (.A(y_cnt_c[6]), .B(\state[1] ), .Z(n3_adj_695)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5630_2_lut.init = 16'h8888;
    LUT4 Address_7__I_0_Mux_23_i127_4_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[6]), 
         .C(n94), .D(n63), .Z(n127_c)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam Address_7__I_0_Mux_23_i127_4_lut_4_lut.init = 16'h7340;
    LUT4 i8962_3_lut_3_lut_4_lut_4_lut (.A(cnt[2]), .B(cnt[3]), .C(cnt[1]), 
         .D(cnt[0]), .Z(n11408)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8962_3_lut_3_lut_4_lut_4_lut.init = 16'h5171;
    LUT4 i5629_2_lut (.A(y_cnt_c[5]), .B(\state[1] ), .Z(n3_adj_696)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5629_2_lut.init = 16'h8888;
    LUT4 i5654_4_lut (.A(n11378), .B(\state[1] ), .C(n12), .D(state[0]), 
         .Z(n3_adj_697)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5654_4_lut.init = 16'h3fbb;
    LUT4 i8931_3_lut (.A(cnt[3]), .B(n10_adj_698), .C(cnt[2]), .Z(n11402)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(91[15:43])
    defparam i8931_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut (.A(n2586), .B(n5064), .Z(n2563)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i8926_4_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[4]), .C(n93), 
         .D(n78), .Z(n11300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8926_4_lut_4_lut.init = 16'h5140;
    LUT4 i8963_4_lut (.A(n61_c), .B(n27), .C(n4965), .D(state_back[1]), 
         .Z(n11392)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C+(D))+!B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8963_4_lut.init = 16'hfc50;
    LUT4 state_2__I_0_276_Mux_0_i3_4_lut (.A(cnt_main[0]), .B(n2_adj_699), 
         .C(\state[1] ), .D(state[0]), .Z(n3_adj_700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam state_2__I_0_276_Mux_0_i3_4_lut.init = 16'hcacf;
    LUT4 i9357_then_4_lut (.A(cnt_write_c[6]), .B(cnt_write_c[1]), .C(cnt_write_c[7]), 
         .D(cnt_write_c[5]), .Z(n12474)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9357_then_4_lut.init = 16'hfffe;
    LUT4 i8942_4_lut (.A(n11380), .B(num_delay[1]), .C(cnt_init[0]), .D(n24), 
         .Z(n11378)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8942_4_lut.init = 16'hce0a;
    LUT4 i8959_4_lut (.A(n139[1]), .B(num_delay[1]), .C(n4965), .D(n27), 
         .Z(n11380)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8959_4_lut.init = 16'heca0;
    LUT4 i1_2_lut_adj_8 (.A(cnt_write_c[4]), .B(data_reg[7]), .Z(n3_adj_701)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[41:50])
    defparam i1_2_lut_adj_8.init = 16'h4444;
    LUT4 i2_3_lut (.A(n11239), .B(n5067), .C(n5086), .Z(n5064)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut.init = 16'h4040;
    FD1P3AX data_reg_i0_i7 (.D(n2_adj_702), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(data_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam data_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i6 (.D(n2_adj_703), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(data_reg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam data_reg_i0_i6.GSR = "ENABLED";
    LUT4 i8666_4_lut (.A(cnt_scan_c[6]), .B(cnt_scan_c[4]), .C(cnt_scan_c[5]), 
         .D(cnt_scan_c[7]), .Z(n11239)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8666_4_lut.init = 16'hfffe;
    FD1P3AX data_reg_i0_i5 (.D(n2_adj_704), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(data_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam data_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i4 (.D(n2_adj_705), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(data_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam data_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i3 (.D(n2_adj_706), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(data_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam data_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i2 (.D(n2_adj_707), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(data_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam data_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX data_reg_i0_i1 (.D(n2_adj_708), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(data_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam data_reg_i0_i1.GSR = "ENABLED";
    FD1P3DX state_back_i2 (.D(n11131), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(state_back[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam state_back_i2.GSR = "ENABLED";
    FD1P3DX state_back_i1 (.D(n10654), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam state_back_i1.GSR = "ENABLED";
    FD1P3DX state_i2 (.D(state_2__N_248[2]), .SP(clk_c_enable_24), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(\state[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam state_i2.GSR = "ENABLED";
    FD1P3DX state_i1 (.D(state_2__N_248[1]), .SP(clk_c_enable_24), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(\state[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam state_i1.GSR = "ENABLED";
    FD1P3DX cnt_i15 (.D(n3_adj_709), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_c[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i15.GSR = "ENABLED";
    FD1P3DX cnt_i14 (.D(n3_adj_710), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_c[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i14.GSR = "ENABLED";
    FD1P3DX cnt_i13 (.D(n3_adj_711), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_c[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i13.GSR = "ENABLED";
    FD1P3DX cnt_i12 (.D(n3_adj_712), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_c[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i12.GSR = "ENABLED";
    FD1P3DX cnt_i11 (.D(n3_adj_713), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_c[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i11.GSR = "ENABLED";
    FD1P3DX cnt_i10 (.D(n3_adj_714), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_c[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i10.GSR = "ENABLED";
    FD1P3DX cnt_i9 (.D(n3_adj_715), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_c[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i9.GSR = "ENABLED";
    FD1P3DX cnt_i8 (.D(n3_adj_716), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_c[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i8.GSR = "ENABLED";
    FD1P3DX cnt_i7 (.D(n3_adj_717), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i7.GSR = "ENABLED";
    FD1P3DX cnt_i6 (.D(n3_adj_718), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_c[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i6.GSR = "ENABLED";
    FD1P3DX cnt_i5 (.D(n3_adj_719), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i5.GSR = "ENABLED";
    FD1P3DX cnt_i4 (.D(n3_adj_720), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i4.GSR = "ENABLED";
    FD1P3DX cnt_i3 (.D(n3_adj_721), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i3.GSR = "ENABLED";
    FD1P3DX cnt_i2 (.D(n3_adj_722), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i2.GSR = "ENABLED";
    FD1P3DX cnt_i1 (.D(n3_adj_723), .SP(clk_c_enable_39), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_i1.GSR = "ENABLED";
    FD1P3DX cnt_delay_i15 (.D(n4239), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i15.GSR = "ENABLED";
    FD1P3DX cnt_delay_i14 (.D(n4233), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i14.GSR = "ENABLED";
    FD1P3DX cnt_delay_i13 (.D(n4227), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i13.GSR = "ENABLED";
    FD1P3DX cnt_delay_i12 (.D(n4221), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i12.GSR = "ENABLED";
    FD1P3DX cnt_delay_i11 (.D(n4215), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i11.GSR = "ENABLED";
    FD1P3DX cnt_delay_i10 (.D(n4209), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i10.GSR = "ENABLED";
    FD1P3DX cnt_delay_i9 (.D(n4203), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i9.GSR = "ENABLED";
    FD1P3DX cnt_delay_i8 (.D(n4197), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i8.GSR = "ENABLED";
    FD1P3DX cnt_delay_i7 (.D(n4191), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i7.GSR = "ENABLED";
    FD1P3DX cnt_delay_i6 (.D(n4185), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i6.GSR = "ENABLED";
    FD1P3DX cnt_delay_i5 (.D(n4179), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i5.GSR = "ENABLED";
    FD1P3DX cnt_delay_i4 (.D(n4173), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i4.GSR = "ENABLED";
    FD1P3DX cnt_delay_i3 (.D(n4167), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i3.GSR = "ENABLED";
    FD1P3DX cnt_delay_i2 (.D(n4161), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i2.GSR = "ENABLED";
    FD1P3DX cnt_delay_i1 (.D(n4155), .SP(clk_c_enable_54), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_delay_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_delay_i1.GSR = "ENABLED";
    FD1P3DX num_delay_i15 (.D(n3_adj_724), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i15.GSR = "ENABLED";
    FD1P3DX num_delay_i14 (.D(n3_adj_725), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i14.GSR = "ENABLED";
    FD1P3DX num_delay_i13 (.D(n11067), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i13.GSR = "ENABLED";
    FD1P3DX num_delay_i12 (.D(n11070), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i12.GSR = "ENABLED";
    FD1P3DX num_delay_i11 (.D(n11106), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i11.GSR = "ENABLED";
    FD1P3DX num_delay_i10 (.D(n11068), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i10.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_9 (.A(state[0]), .B(cnt_scan_c[3]), .Z(n5067)) /* synthesis lut_function=(!((B)+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i1_2_lut_adj_9.init = 16'h2222;
    FD1P3DX num_delay_i9 (.D(n11124), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i9.GSR = "ENABLED";
    FD1P3DX num_delay_i8 (.D(n11107), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i8.GSR = "ENABLED";
    FD1P3DX num_delay_i7 (.D(n3_adj_726), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i7.GSR = "ENABLED";
    FD1P3DX num_delay_i6 (.D(n3_adj_727), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i6.GSR = "ENABLED";
    FD1P3BX num_delay_i5 (.D(n13_adj_728), .SP(clk_c_enable_69), .CK(clk_c), 
            .PD(rst_n_N_10), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i5.GSR = "ENABLED";
    FD1P3BX num_delay_i4 (.D(n13_adj_729), .SP(clk_c_enable_69), .CK(clk_c), 
            .PD(rst_n_N_10), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i4.GSR = "ENABLED";
    FD1P3DX num_delay_i3 (.D(n3_c), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i3.GSR = "ENABLED";
    FD1P3DX num_delay_i2 (.D(n11130), .SP(clk_c_enable_69), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i2.GSR = "ENABLED";
    FD1P3BX num_delay_i1 (.D(n3_adj_697), .SP(clk_c_enable_69), .CK(clk_c), 
            .PD(rst_n_N_10), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam num_delay_i1.GSR = "ENABLED";
    FD1P3DX cnt_write_i7 (.D(n4335), .SP(clk_c_enable_76), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_write_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_write_i7.GSR = "ENABLED";
    FD1P3DX cnt_write_i6 (.D(n4345), .SP(clk_c_enable_76), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_write_c[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_write_i6.GSR = "ENABLED";
    FD1P3DX cnt_write_i5 (.D(n4351), .SP(clk_c_enable_76), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_write_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_write_i5.GSR = "ENABLED";
    FD1P3DX cnt_write_i4 (.D(n4359), .SP(clk_c_enable_76), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_write_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_write_i4.GSR = "ENABLED";
    FD1P3DX cnt_write_i3 (.D(n4367), .SP(clk_c_enable_76), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_write_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_write_i3.GSR = "ENABLED";
    FD1P3DX cnt_write_i2 (.D(n4371), .SP(clk_c_enable_76), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_write_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_write_i2.GSR = "ENABLED";
    FD1P3DX cnt_write_i1 (.D(n4377), .SP(clk_c_enable_76), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_write_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_write_i1.GSR = "ENABLED";
    FD1P3DX cnt_init_i7 (.D(n4361), .SP(clk_c_enable_83), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_init[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_init_i7.GSR = "ENABLED";
    LUT4 Address_7__I_0_Mux_31_i127_4_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[6]), 
         .C(n12077), .D(n63_adj_50), .Z(n127_adj_731)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam Address_7__I_0_Mux_31_i127_4_lut_4_lut.init = 16'h7340;
    FD1P3DX cnt_init_i6 (.D(n4357), .SP(clk_c_enable_83), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_init[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_init_i6.GSR = "ENABLED";
    FD1P3DX cnt_init_i5 (.D(n4355), .SP(clk_c_enable_83), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_init[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_init_i5.GSR = "ENABLED";
    FD1P3DX cnt_init_i4 (.D(n4353), .SP(clk_c_enable_83), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_init_i4.GSR = "ENABLED";
    FD1P3DX cnt_init_i3 (.D(n4349), .SP(clk_c_enable_83), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_init_i3.GSR = "ENABLED";
    FD1P3DX cnt_init_i2 (.D(n4347), .SP(clk_c_enable_83), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_init_i2.GSR = "ENABLED";
    FD1P3DX cnt_init_i1 (.D(n4343), .SP(clk_c_enable_83), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_init_i1.GSR = "ENABLED";
    LUT4 i8941_2_lut_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[3]), .Z(n11362)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8941_2_lut_3_lut.init = 16'h0b0b;
    LUT4 i1_4_lut_adj_10 (.A(\state[1] ), .B(n11390), .C(n12), .D(state[0]), 
         .Z(n10654)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i1_4_lut_adj_10.init = 16'h0a88;
    LUT4 i4_4_lut_adj_11 (.A(cnt[5]), .B(cnt[1]), .C(cnt[4]), .D(n4958), 
         .Z(n10_adj_698)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i4_4_lut_adj_11.init = 16'hff7f;
    LUT4 LessThan_127_i32_3_lut (.A(n30_c), .B(cnt_delay_c[15]), .C(num_delay[15]), 
         .Z(n786)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i32_3_lut.init = 16'h8e8e;
    FD1P3DX y_cnt_i7 (.D(n3_adj_732), .SP(clk_c_enable_90), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(y_cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam y_cnt_i7.GSR = "ENABLED";
    LUT4 i5628_2_lut (.A(y_cnt_c[4]), .B(\state[1] ), .Z(n3_adj_733)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5628_2_lut.init = 16'h8888;
    LUT4 i5627_2_lut (.A(y_cnt_c[3]), .B(\state[1] ), .Z(n3_adj_734)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5627_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(n10_c), 
         .D(n14), .Z(n15_adj_735)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(138[7:11])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 i5623_2_lut (.A(y_cnt_c[2]), .B(\state[1] ), .Z(n3_adj_736)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5623_2_lut.init = 16'h8888;
    LUT4 i5430_2_lut (.A(y_cnt_c[1]), .B(\state[1] ), .Z(n5537)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5430_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_12 (.A(cnt_init[0]), .B(cnt_init[2]), .C(n11147), 
         .Z(n5138)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(96[7:11])
    defparam i1_2_lut_3_lut_adj_12.init = 16'hfdfd;
    LUT4 i3_4_lut_adj_13 (.A(cnt_write_c[4]), .B(cnt_write_c[7]), .C(cnt_write_c[5]), 
         .D(cnt_write_c[6]), .Z(n8528)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_13.init = 16'hfffe;
    LUT4 i8704_3_lut (.A(ram_data_r[14]), .B(ram_data_r[15]), .C(x_cnt[0]), 
         .Z(n11279)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i8704_3_lut.init = 16'hcaca;
    LUT4 i8917_4_lut (.A(n11639), .B(\state[2] ), .C(n15_adj_690), .D(n14_adj_688), 
         .Z(n11397)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C)))) */ ;
    defparam i8917_4_lut.init = 16'h40c0;
    LUT4 i1_2_lut_adj_14 (.A(cnt_init[3]), .B(cnt_init[6]), .Z(n6_adj_737)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(95[7:11])
    defparam i1_2_lut_adj_14.init = 16'heeee;
    LUT4 state_1__bdd_2_lut_9366_4_lut (.A(n12170), .B(n12166), .C(cnt_write_c[3]), 
         .D(\state[1] ), .Z(n12172)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam state_1__bdd_2_lut_9366_4_lut.init = 16'hffca;
    LUT4 i8895_4_lut (.A(n6_adj_738), .B(n26), .C(n11187), .D(n8360), 
         .Z(n11386)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8895_4_lut.init = 16'haaae;
    FD1P3DX y_cnt_i6 (.D(n3_adj_739), .SP(clk_c_enable_90), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(y_cnt_c[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam y_cnt_i6.GSR = "ENABLED";
    LUT4 Address_7__I_0_Mux_100_i127_4_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[6]), 
         .C(n11337), .D(n63_adj_51), .Z(n127_adj_741)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam Address_7__I_0_Mux_100_i127_4_lut_4_lut.init = 16'h7340;
    FD1P3DX y_cnt_i5 (.D(n3_adj_742), .SP(clk_c_enable_90), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(y_cnt_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam y_cnt_i5.GSR = "ENABLED";
    FD1P3DX y_cnt_i4 (.D(n3_adj_743), .SP(clk_c_enable_90), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(y_cnt_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam y_cnt_i4.GSR = "ENABLED";
    FD1P3DX y_cnt_i3 (.D(n3_adj_744), .SP(clk_c_enable_90), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(y_cnt_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam y_cnt_i3.GSR = "ENABLED";
    FD1P3DX y_cnt_i2 (.D(n3_adj_745), .SP(clk_c_enable_90), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(y_cnt_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam y_cnt_i2.GSR = "ENABLED";
    FD1P3DX y_cnt_i1 (.D(n3_adj_746), .SP(clk_c_enable_90), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(y_cnt_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam y_cnt_i1.GSR = "ENABLED";
    FD1P3DX x_cnt_i7 (.D(n3_adj_747), .SP(clk_c_enable_97), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(x_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam x_cnt_i7.GSR = "ENABLED";
    LUT4 i8883_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt[3]), .C(n6_adj_748), 
         .D(n9243), .Z(n11369)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(138[7:11])
    defparam i8883_4_lut_4_lut.init = 16'hff40;
    FD1P3DX x_cnt_i6 (.D(n3_adj_749), .SP(clk_c_enable_97), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(x_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam x_cnt_i6.GSR = "ENABLED";
    FD1P3DX x_cnt_i5 (.D(n3_adj_750), .SP(clk_c_enable_97), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(x_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam x_cnt_i5.GSR = "ENABLED";
    FD1P3DX x_cnt_i4 (.D(n3_adj_751), .SP(clk_c_enable_97), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(x_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam x_cnt_i4.GSR = "ENABLED";
    FD1P3DX x_cnt_i3 (.D(n3_adj_752), .SP(clk_c_enable_97), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(x_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam x_cnt_i3.GSR = "ENABLED";
    FD1P3DX x_cnt_i2 (.D(n3_adj_753), .SP(clk_c_enable_97), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(x_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam x_cnt_i2.GSR = "ENABLED";
    FD1P3DX x_cnt_i1 (.D(n3_adj_754), .SP(clk_c_enable_97), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(x_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam x_cnt_i1.GSR = "ENABLED";
    FD1P3DX cnt_scan_961__i7 (.D(n37[7]), .SP(clk_c_enable_146), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_scan_c[7])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961__i7.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), .C(x_cnt[7]), 
         .D(n14_adj_686), .Z(n5083)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(138[7:11])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i8863_3_lut_3_lut (.A(cnt_scan[0]), .B(state[0]), .C(n220), .Z(n11413)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(138[7:11])
    defparam i8863_3_lut_3_lut.init = 16'h4040;
    LUT4 i2_2_lut (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n27)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(97[7:11])
    defparam i2_2_lut.init = 16'hdddd;
    LUT4 mux_878_i1_4_lut_4_lut (.A(cnt_scan[0]), .B(n3450), .C(n3190[1]), 
         .D(n1467), .Z(n3432)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(138[7:11])
    defparam mux_878_i1_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_4_lut_adj_15 (.A(num_delay[9]), .B(n11123), .C(n14_adj_755), 
         .D(n24), .Z(n11124)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i1_4_lut_adj_15.init = 16'hc8c0;
    LUT4 i21_4_lut (.A(n5141), .B(n11353), .C(cnt_init[0]), .D(n28), 
         .Z(n14_adj_755)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B+(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i21_4_lut.init = 16'h5f5c;
    LUT4 i8954_4_lut (.A(n31_c), .B(n4965), .C(num_delay[9]), .D(n61_c), 
         .Z(n11353)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8954_4_lut.init = 16'hc044;
    LUT4 i1_4_lut_else_3_lut (.A(\state[1] ), .B(state[0]), .C(n14), .D(\state[2] ), 
         .Z(n12128)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(D)))) */ ;
    defparam i1_4_lut_else_3_lut.init = 16'h0019;
    LUT4 mux_878_i4_4_lut_4_lut (.A(cnt_scan[0]), .B(n3450), .C(n3190[1]), 
         .D(n1458[3]), .Z(n3435)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(138[7:11])
    defparam mux_878_i4_4_lut_4_lut.init = 16'hd1c0;
    LUT4 LessThan_127_i30_3_lut (.A(n28_adj_756), .B(cnt_delay_c[14]), .C(num_delay[14]), 
         .Z(n30_c)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i30_3_lut.init = 16'h8e8e;
    LUT4 Address_7__I_0_Mux_101_i127_4_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[6]), 
         .C(n12133), .D(n63_adj_52), .Z(n127_adj_758)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam Address_7__I_0_Mux_101_i127_4_lut_4_lut.init = 16'h7340;
    LUT4 cnt_0__bdd_4_lut_9222 (.A(cnt[0]), .B(cnt[1]), .C(cnt[3]), .D(cnt[2]), 
         .Z(n11866)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+!(D))))) */ ;
    defparam cnt_0__bdd_4_lut_9222.init = 16'h0120;
    LUT4 mux_878_i8_4_lut_4_lut (.A(cnt_scan[0]), .B(n3450), .C(n400), 
         .D(n11866), .Z(n3439)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(138[7:11])
    defparam mux_878_i8_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i925_2_lut_3_lut_4_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(n11), 
         .D(n14), .Z(n3503)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i925_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i9039_2_lut (.A(state[0]), .B(\state[1] ), .Z(clk_c_enable_76)) /* synthesis lut_function=(!(A+(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i9039_2_lut.init = 16'h1111;
    LUT4 cnt_scan_7__I_0_i10_2_lut (.A(\cnt_scan[2] ), .B(cnt_scan_c[3]), 
         .Z(n10_c)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(123[7:11])
    defparam cnt_scan_7__I_0_i10_2_lut.init = 16'heeee;
    LUT4 LessThan_127_i28_3_lut (.A(n26_adj_759), .B(cnt_delay_c[13]), .C(num_delay[13]), 
         .Z(n28_adj_756)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i28_3_lut.init = 16'h8e8e;
    LUT4 i1_3_lut_adj_16 (.A(\state[1] ), .B(\state[2] ), .C(state[0]), 
         .Z(clk_c_enable_54)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_16.init = 16'h4141;
    LUT4 n12169_bdd_3_lut (.A(n12475), .B(n8528), .C(cnt_write_c[2]), 
         .Z(n12170)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n12169_bdd_3_lut.init = 16'hcaca;
    LUT4 i8923_3_lut_3_lut (.A(cnt_scan[0]), .B(n3450), .C(n11937), .Z(n11320)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(138[7:11])
    defparam i8923_3_lut_3_lut.init = 16'hdcdc;
    LUT4 mux_878_i6_4_lut_4_lut (.A(cnt_scan[0]), .B(n3450), .C(n400), 
         .D(n1458[5]), .Z(n3437)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(138[7:11])
    defparam mux_878_i6_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_17 (.A(n60), .B(\state[1] ), .C(state[0]), 
         .D(num_delay[10]), .Z(n11068)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_17.init = 16'h0800;
    LUT4 i8944_4_lut_4_lut (.A(cnt_c[6]), .B(cnt[5]), .C(n30), .D(n11277), 
         .Z(n11377)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8944_4_lut_4_lut.init = 16'h5140;
    LUT4 i8866_2_lut_2_lut (.A(cnt_c[6]), .B(n31), .Z(n11374)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8866_2_lut_2_lut.init = 16'h4444;
    LUT4 cnt_scan_7__I_0_290_i11_2_lut_3_lut_4_lut (.A(cnt_scan[0]), .B(cnt_scan[1]), 
         .C(cnt_scan_c[3]), .D(\cnt_scan[2] ), .Z(n11)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(124[7:11])
    defparam cnt_scan_7__I_0_290_i11_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i21_3_lut (.A(n15), .B(n11247), .C(state[0]), .Z(n11261)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i21_3_lut.init = 16'hcaca;
    LUT4 i3_3_lut_4_lut (.A(n11147), .B(cnt_init[2]), .C(cnt_init[1]), 
         .D(cnt_init[0]), .Z(n15)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(97[7:11])
    defparam i3_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_18 (.A(n60), .B(\state[1] ), .C(state[0]), 
         .D(num_delay[12]), .Z(n11070)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_18.init = 16'h0800;
    LUT4 i1_4_lut_adj_19 (.A(num_delay[8]), .B(n11123), .C(n25), .D(n18_adj_693), 
         .Z(n11107)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i1_4_lut_adj_19.init = 16'hc8c0;
    LUT4 i9085_4_lut (.A(\state[2] ), .B(\state[1] ), .C(n11888), .D(state[0]), 
         .Z(clk_c_enable_146)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i9085_4_lut.init = 16'h0411;
    LUT4 i8878_4_lut_4_lut (.A(cnt_c[6]), .B(cnt[5]), .C(n30), .D(n12002), 
         .Z(n11375)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8878_4_lut_4_lut.init = 16'h5140;
    LUT4 LessThan_127_i26_3_lut (.A(n24_adj_762), .B(cnt_delay_c[12]), .C(num_delay[12]), 
         .Z(n26_adj_759)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i26_3_lut.init = 16'h8e8e;
    LUT4 LessThan_127_i24_3_lut (.A(n22_c), .B(cnt_delay_c[11]), .C(num_delay[11]), 
         .Z(n24_adj_762)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i24_3_lut.init = 16'h8e8e;
    LUT4 i8914_4_lut_4_lut (.A(cnt_c[6]), .B(cnt[5]), .C(n11267), .D(n12151), 
         .Z(n11367)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8914_4_lut_4_lut.init = 16'h5140;
    LUT4 i31_4_lut_adj_20 (.A(n5141), .B(n139[8]), .C(cnt_init[0]), .D(n4965), 
         .Z(n25)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i31_4_lut_adj_20.init = 16'h5c50;
    LUT4 i8873_2_lut_2_lut (.A(cnt_c[6]), .B(n31_adj_53), .Z(n11372)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8873_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_adj_21 (.A(n60), .B(\state[1] ), .C(state[0]), 
         .D(num_delay[13]), .Z(n11067)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_21.init = 16'h0800;
    LUT4 cnt_scan_961_mux_5_i1_3_lut_then_2_lut (.A(n5064), .B(cnt_scan[0]), 
         .Z(n12123)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961_mux_5_i1_3_lut_then_2_lut.init = 16'h8888;
    LUT4 i8936_2_lut_2_lut (.A(cnt_c[6]), .B(n31_adj_54), .Z(n11383)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8936_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_22 (.A(\state[2] ), .B(state[0]), .C(\state[1] ), 
         .D(n11261), .Z(clk_c_enable_39)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_22.init = 16'h0151;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(n10470), .B(n9242), .C(n4965), .Z(n59)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_23.init = 16'he0e0;
    LUT4 i8938_2_lut_2_lut (.A(cnt_c[6]), .B(n31_adj_55), .Z(n11368)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8938_2_lut_2_lut.init = 16'h4444;
    LUT4 cnt_scan_1__bdd_3_lut (.A(cnt_scan_c[3]), .B(n14), .C(n11887), 
         .Z(n11888)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam cnt_scan_1__bdd_3_lut.init = 16'hfefe;
    LUT4 i5918_2_lut_3_lut_4_lut (.A(cnt_scan_c[5]), .B(cnt_scan_c[4]), 
         .C(cnt_scan_c[7]), .D(cnt_scan_c[6]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5918_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 Address_7__I_0_Mux_107_i127_4_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[6]), 
         .C(n94_adj_56), .D(n63_adj_57), .Z(n127_adj_768)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam Address_7__I_0_Mux_107_i127_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_3_lut_4_lut_adj_24 (.A(n60), .B(\state[1] ), .C(state[0]), 
         .D(num_delay[0]), .Z(n11069)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_24.init = 16'h0800;
    LUT4 i1_2_lut_adj_25 (.A(cnt_init[2]), .B(n11147), .Z(n5141)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(95[7:11])
    defparam i1_2_lut_adj_25.init = 16'heeee;
    LUT4 i1_4_lut_then_3_lut (.A(\state[1] ), .B(state[0]), .C(\state[2] ), 
         .Z(n12129)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1_4_lut_then_3_lut.init = 16'h0101;
    LUT4 n4958_bdd_3_lut_4_lut (.A(cnt[0]), .B(n9242), .C(cnt[3]), .D(n12206), 
         .Z(n31_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n4958_bdd_3_lut_4_lut.init = 16'hfffe;
    LUT4 cnt_scan_1__bdd_4_lut_9215 (.A(cnt_scan[1]), .B(n4516), .C(cnt_scan[0]), 
         .D(\cnt_scan[2] ), .Z(n11887)) /* synthesis lut_function=(A (D)+!A !(B+(C))) */ ;
    defparam cnt_scan_1__bdd_4_lut_9215.init = 16'hab01;
    LUT4 n3503_bdd_3_lut (.A(n3503), .B(n14), .C(n11988), .Z(n3473)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n3503_bdd_3_lut.init = 16'h1010;
    LUT4 i8703_3_lut (.A(ram_data_r[12]), .B(ram_data_r[13]), .C(x_cnt[0]), 
         .Z(n11278)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i8703_3_lut.init = 16'hcaca;
    LUT4 Address_7__I_0_Mux_103_i127_4_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[6]), 
         .C(n12136), .D(n63_adj_50), .Z(n127_adj_769)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam Address_7__I_0_Mux_103_i127_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_4_lut_4_lut_adj_26 (.A(\state[2] ), .B(state[0]), .C(\state[1] ), 
         .D(n15_adj_735), .Z(clk_c_enable_173)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_26.init = 16'h0141;
    LUT4 i1_4_lut_adj_27 (.A(n5581), .B(n5138), .C(num_delay[7]), .D(n60), 
         .Z(n3_adj_726)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_27.init = 16'h5111;
    LUT4 i1_2_lut_3_lut_adj_28 (.A(cnt_write_c[4]), .B(cnt_write_c[2]), 
         .C(cnt_write_c[3]), .Z(n106)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_28.init = 16'hfefe;
    LUT4 i8608_2_lut (.A(n8528), .B(cnt_write_c[1]), .Z(n11179)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i8608_2_lut.init = 16'h4444;
    LUT4 LessThan_127_i22_3_lut (.A(n20), .B(cnt_delay_c[10]), .C(num_delay[10]), 
         .Z(n22_c)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i22_3_lut.init = 16'h8e8e;
    LUT4 i2_4_lut (.A(n4947), .B(cnt_write[0]), .C(n11219), .D(cnt_write_c[4]), 
         .Z(clk_c_enable_120)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h4044;
    LUT4 i5434_2_lut_2_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), 
         .Z(n3846)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i5434_2_lut_2_lut_3_lut.init = 16'h1414;
    CCU2D add_491_9 (.A0(n4128), .B0(\state[1] ), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10455), 
          .S0(n3_adj_747));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(129[19] 136[13])
    defparam add_491_9.INIT0 = 16'h7888;
    defparam add_491_9.INIT1 = 16'h0000;
    defparam add_491_9.INJECT1_0 = "NO";
    defparam add_491_9.INJECT1_1 = "NO";
    CCU2D add_491_7 (.A0(n2700[5]), .B0(\state[1] ), .C0(GND_net), .D0(GND_net), 
          .A1(n2700[6]), .B1(\state[1] ), .C1(GND_net), .D1(GND_net), 
          .CIN(n10454), .COUT(n10455), .S0(n3_adj_750), .S1(n3_adj_749));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(129[19] 136[13])
    defparam add_491_7.INIT0 = 16'h7888;
    defparam add_491_7.INIT1 = 16'h7888;
    defparam add_491_7.INJECT1_0 = "NO";
    defparam add_491_7.INJECT1_1 = "NO";
    CCU2D add_491_5 (.A0(n2700[3]), .B0(\state[1] ), .C0(GND_net), .D0(GND_net), 
          .A1(n2700[4]), .B1(\state[1] ), .C1(GND_net), .D1(GND_net), 
          .CIN(n10453), .COUT(n10454), .S0(n3_adj_752), .S1(n3_adj_751));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(129[19] 136[13])
    defparam add_491_5.INIT0 = 16'h7888;
    defparam add_491_5.INIT1 = 16'h7888;
    defparam add_491_5.INJECT1_0 = "NO";
    defparam add_491_5.INJECT1_1 = "NO";
    CCU2D add_491_3 (.A0(n2700[1]), .B0(\state[1] ), .C0(GND_net), .D0(GND_net), 
          .A1(n2700[2]), .B1(\state[1] ), .C1(GND_net), .D1(GND_net), 
          .CIN(n10452), .COUT(n10453), .S0(n3_adj_754), .S1(n3_adj_753));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(129[19] 136[13])
    defparam add_491_3.INIT0 = 16'h7888;
    defparam add_491_3.INIT1 = 16'h7888;
    defparam add_491_3.INJECT1_0 = "NO";
    defparam add_491_3.INJECT1_1 = "NO";
    CCU2D add_491_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2700[0]), .B1(\state[1] ), .C1(n8406), .D1(GND_net), 
          .COUT(n10452), .S1(n3_adj_682));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(129[19] 136[13])
    defparam add_491_1.INIT0 = 16'hF000;
    defparam add_491_1.INIT1 = 16'h7484;
    defparam add_491_1.INJECT1_0 = "NO";
    defparam add_491_1.INJECT1_1 = "NO";
    LUT4 LessThan_127_i20_3_lut (.A(n18_adj_770), .B(cnt_delay_c[9]), .C(num_delay[9]), 
         .Z(n20)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i20_3_lut.init = 16'h8e8e;
    LUT4 i1_2_lut_adj_29 (.A(cnt_write[0]), .B(n3_adj_771), .Z(n2926[0])) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[41:50])
    defparam i1_2_lut_adj_29.init = 16'h8888;
    LUT4 i9082_2_lut_3_lut_4_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(n11), 
         .D(n14), .Z(n3450)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i9082_2_lut_3_lut_4_lut.init = 16'h0007;
    CCU2D add_128_17 (.A0(cnt_delay_c[15]), .B0(n5643), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10451), .S0(n4239));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(171[28:44])
    defparam add_128_17.INIT0 = 16'hd222;
    defparam add_128_17.INIT1 = 16'h0000;
    defparam add_128_17.INJECT1_0 = "NO";
    defparam add_128_17.INJECT1_1 = "NO";
    LUT4 LessThan_127_i18_3_lut (.A(n16), .B(cnt_delay_c[8]), .C(num_delay[8]), 
         .Z(n18_adj_770)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i18_3_lut.init = 16'h8e8e;
    LUT4 Address_7__I_0_Mux_106_i127_4_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[6]), 
         .C(n94_adj_58), .D(n63_adj_59), .Z(n127_adj_774)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam Address_7__I_0_Mux_106_i127_4_lut_4_lut.init = 16'h7340;
    LUT4 n61_bdd_2_lut (.A(n8542), .B(n4516), .Z(n11902)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n61_bdd_2_lut.init = 16'heeee;
    LUT4 i5440_2_lut_3_lut (.A(n15), .B(\state[1] ), .C(n1[0]), .Z(n4393)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5440_2_lut_3_lut.init = 16'h8080;
    CCU2D add_128_15 (.A0(cnt_delay_c[13]), .B0(n5643), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay_c[14]), .B1(n5643), .C1(GND_net), 
          .D1(GND_net), .CIN(n10450), .COUT(n10451), .S0(n4227), .S1(n4233));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(171[28:44])
    defparam add_128_15.INIT0 = 16'hd222;
    defparam add_128_15.INIT1 = 16'hd222;
    defparam add_128_15.INJECT1_0 = "NO";
    defparam add_128_15.INJECT1_1 = "NO";
    CCU2D add_128_13 (.A0(cnt_delay_c[11]), .B0(n5643), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay_c[12]), .B1(n5643), .C1(GND_net), 
          .D1(GND_net), .CIN(n10449), .COUT(n10450), .S0(n4215), .S1(n4221));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(171[28:44])
    defparam add_128_13.INIT0 = 16'hd222;
    defparam add_128_13.INIT1 = 16'hd222;
    defparam add_128_13.INJECT1_0 = "NO";
    defparam add_128_13.INJECT1_1 = "NO";
    LUT4 LessThan_127_i16_3_lut (.A(n14_adj_775), .B(cnt_delay_c[7]), .C(num_delay[7]), 
         .Z(n16)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i16_3_lut.init = 16'h8e8e;
    LUT4 i1_4_lut_adj_30 (.A(n24), .B(cnt_init[0]), .C(n59), .D(n27), 
         .Z(n60)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_30.init = 16'hbbba;
    LUT4 LessThan_127_i14_3_lut (.A(n12_adj_776), .B(cnt_delay_c[6]), .C(num_delay[6]), 
         .Z(n14_adj_775)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i14_3_lut.init = 16'h8e8e;
    LUT4 LessThan_127_i12_3_lut (.A(n10_adj_777), .B(cnt_delay_c[5]), .C(num_delay[5]), 
         .Z(n12_adj_776)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i12_3_lut.init = 16'h8e8e;
    PFUMX i9427 (.BLUT(n12322), .ALUT(n12321), .C0(ram_addr[4]), .Z(n12323));
    FD1P3DX cnt_scan_961__i6 (.D(n37[6]), .SP(clk_c_enable_146), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_scan_c[6])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961__i6.GSR = "ENABLED";
    FD1P3DX cnt_scan_961__i5 (.D(n37[5]), .SP(clk_c_enable_146), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_scan_c[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961__i5.GSR = "ENABLED";
    FD1P3DX cnt_scan_961__i4 (.D(n37[4]), .SP(clk_c_enable_146), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_scan_c[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961__i4.GSR = "ENABLED";
    FD1P3DX cnt_scan_961__i3 (.D(n37[3]), .SP(clk_c_enable_146), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_scan_c[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961__i3.GSR = "ENABLED";
    FD1P3DX cnt_scan_961__i2 (.D(n37[2]), .SP(clk_c_enable_146), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(\cnt_scan[2] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961__i2.GSR = "ENABLED";
    FD1P3DX cnt_scan_961__i1 (.D(n37[1]), .SP(clk_c_enable_146), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_scan[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961__i1.GSR = "ENABLED";
    LUT4 i5637_2_lut_3_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(x_cnt[5]), 
         .Z(n2700[5])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i5637_2_lut_3_lut.init = 16'h7070;
    LUT4 LessThan_127_i10_3_lut (.A(n8_c), .B(cnt_delay_c[4]), .C(num_delay[4]), 
         .Z(n10_adj_777)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i10_3_lut.init = 16'h8e8e;
    LUT4 i8701_4_lut_4_lut_4_lut (.A(cnt[1]), .B(cnt[3]), .C(cnt[0]), 
         .D(cnt[2]), .Z(n11276)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8701_4_lut_4_lut_4_lut.init = 16'h1379;
    MUX161 i8421_i3020 (.D0(ram_data_r[16]), .D1(ram_data_r[17]), .D2(\ram_data[18] ), 
           .D3(\ram_data[19] ), .D4(ram_data_r[20]), .D5(ram_data_r[21]), 
           .D6(ram_data_r[22]), .D7(ram_data_r[23]), .D8(ram_data_r[24]), 
           .D9(ram_data_r[25]), .D10(ram_data_r[26]), .D11(\ram_data[27] ), 
           .D12(\ram_data[28] ), .D13(ram_data_r[29]), .D14(\ram_data[30] ), 
           .D15(ram_data_r[31]), .SD1(x_cnt[0]), .SD2(x_cnt[1]), .SD3(x_cnt[2]), 
           .SD4(x_cnt[3]), .Z(n30_adj_778));
    MUX161 i8442_i3021 (.D0(ram_data_r[48]), .D1(\ram_data[49] ), .D2(ram_data_r[50]), 
           .D3(ram_data_r[51]), .D4(\ram_data[52] ), .D5(ram_data_r[53]), 
           .D6(\ram_data[54] ), .D7(\ram_data[55] ), .D8(\ram_data[56] ), 
           .D9(\ram_data[57] ), .D10(\ram_data[58] ), .D11(\ram_data[59] ), 
           .D12(\ram_data[60] ), .D13(\ram_data[61] ), .D14(\ram_data[62] ), 
           .D15(\ram_data[63] ), .SD1(x_cnt[0]), .SD2(x_cnt[1]), .SD3(x_cnt[2]), 
           .SD4(x_cnt[3]), .Z(n30_adj_779));
    LUT4 LessThan_127_i8_3_lut (.A(n6_adj_780), .B(cnt_delay_c[3]), .C(num_delay[3]), 
         .Z(n8_c)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i8_3_lut.init = 16'h8e8e;
    MUX161 i8442_i1522 (.D0(ram_data_r[32]), .D1(\ram_data[33] ), .D2(\ram_data[34] ), 
           .D3(ram_data_r[35]), .D4(ram_data_r[36]), .D5(ram_data_r[37]), 
           .D6(\ram_data[38] ), .D7(ram_data_r[39]), .D8(ram_data_r[40]), 
           .D9(ram_data_r[41]), .D10(ram_data_r[42]), .D11(ram_data_r[43]), 
           .D12(ram_data_r[44]), .D13(ram_data_r[45]), .D14(ram_data_r[46]), 
           .D15(\ram_data[47] ), .SD1(x_cnt[0]), .SD2(x_cnt[1]), .SD3(x_cnt[2]), 
           .SD4(x_cnt[3]), .Z(n15_adj_781));
    MUX161 i8463_i3023 (.D0(\ram_data[80] ), .D1(ram_data_r[81]), .D2(ram_data_r[82]), 
           .D3(ram_data_r[83]), .D4(ram_data_r[84]), .D5(ram_data_r[85]), 
           .D6(ram_data_r[86]), .D7(ram_data_r[87]), .D8(\ram_data[88] ), 
           .D9(ram_data_r[89]), .D10(\ram_data[90] ), .D11(ram_data_r[91]), 
           .D12(\ram_data[92] ), .D13(ram_data_r[93]), .D14(ram_data_r[94]), 
           .D15(ram_data_r[95]), .SD1(x_cnt[0]), .SD2(x_cnt[1]), .SD3(x_cnt[2]), 
           .SD4(x_cnt[3]), .Z(n30_adj_782));
    LUT4 i1089_4_lut (.A(n10504), .B(y_cnt_c[7]), .C(y_cnt_c[6]), .D(y_cnt_c[5]), 
         .Z(n351)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1089_4_lut.init = 16'hc8c0;
    MUX161 i8463_i1524 (.D0(\ram_data[64] ), .D1(\ram_data[65] ), .D2(\ram_data[66] ), 
           .D3(\ram_data[67] ), .D4(\ram_data[68] ), .D5(\ram_data[69] ), 
           .D6(\ram_data[70] ), .D7(\ram_data[71] ), .D8(\ram_data[72] ), 
           .D9(\ram_data[73] ), .D10(\ram_data[74] ), .D11(\ram_data[75] ), 
           .D12(\ram_data[76] ), .D13(\ram_data[77] ), .D14(\ram_data[78] ), 
           .D15(\ram_data[79] ), .SD1(x_cnt[0]), .SD2(x_cnt[1]), .SD3(x_cnt[2]), 
           .SD4(x_cnt[3]), .Z(n15_adj_783));
    MUX161 i8484_i1525 (.D0(ram_data_r[96]), .D1(\ram_data[97] ), .D2(\ram_data[98] ), 
           .D3(\ram_data[99] ), .D4(ram_data_r[100]), .D5(ram_data_r[101]), 
           .D6(ram_data_r[102]), .D7(ram_data_r[103]), .D8(\ram_data[104] ), 
           .D9(\ram_data[105] ), .D10(ram_data_r[106]), .D11(ram_data_r[107]), 
           .D12(ram_data_r[108]), .D13(\ram_data[109] ), .D14(ram_data_r[110]), 
           .D15(ram_data_r[111]), .SD1(x_cnt[0]), .SD2(x_cnt[1]), .SD3(x_cnt[2]), 
           .SD4(x_cnt[3]), .Z(n15_adj_784));
    LUT4 i2_2_lut_3_lut (.A(high_word), .B(x_cnt[7]), .C(n3_adj_785), 
         .Z(n3190[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_2_lut_3_lut.init = 16'h2020;
    LUT4 LessThan_127_i6_3_lut (.A(n4_adj_786), .B(cnt_delay_c[2]), .C(num_delay[2]), 
         .Z(n6_adj_780)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i6_3_lut.init = 16'h8e8e;
    LUT4 Address_7__I_0_Mux_102_i127_4_lut_4_lut_else_4_lut (.A(ram_addr[5]), 
         .B(ram_addr[6]), .C(n8434), .D(ram_addr[4]), .Z(n12125)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam Address_7__I_0_Mux_102_i127_4_lut_4_lut_else_4_lut.init = 16'h4044;
    LUT4 i4_4_lut_adj_31 (.A(cnt_init[7]), .B(cnt_init[5]), .C(cnt_init[4]), 
         .D(n6_adj_737), .Z(n11147)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(95[7:11])
    defparam i4_4_lut_adj_31.init = 16'hfffe;
    LUT4 i5591_2_lut_3_lut (.A(n15), .B(\state[1] ), .C(n1[7]), .Z(n4361)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5591_2_lut_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_32 (.A(y_cnt_c[1]), .B(y_cnt_c[4]), .C(y_cnt_c[3]), 
         .D(y_cnt_c[2]), .Z(n10504)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_32.init = 16'hfffe;
    LUT4 ram_addr_5__bdd_4_lut_9442 (.A(ram_addr[5]), .B(ram_addr[6]), .C(ram_addr[3]), 
         .D(ram_addr[2]), .Z(n12322)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;
    defparam ram_addr_5__bdd_4_lut_9442.init = 16'h4404;
    LUT4 i1_2_lut_adj_33 (.A(cnt[0]), .B(n9242), .Z(n4958)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i1_2_lut_adj_33.init = 16'heeee;
    LUT4 LessThan_127_i4_4_lut (.A(cnt_delay[0]), .B(cnt_delay_c[1]), .C(num_delay[1]), 
         .D(num_delay[0]), .Z(n4_adj_786)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C (D))+!B (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(168[9:31])
    defparam LessThan_127_i4_4_lut.init = 16'h8ecf;
    LUT4 i2082_2_lut_2_lut (.A(\state[2] ), .B(n5090), .Z(n4689)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i2082_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_adj_34 (.A(\state[1] ), .B(\state[2] ), .Z(n11135)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_34.init = 16'h4444;
    LUT4 ram_addr_5__bdd_3_lut_9443 (.A(ram_addr[5]), .B(ram_addr[6]), .C(n78_adj_60), 
         .Z(n12321)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;
    defparam ram_addr_5__bdd_3_lut_9443.init = 16'h2424;
    LUT4 i8983_4_lut_4_lut (.A(\state[2] ), .B(n11147), .C(n11225), .D(n15), 
         .Z(n11398)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8983_4_lut_4_lut.init = 16'h0100;
    LUT4 cnt_scan_961_mux_5_i1_3_lut_else_2_lut (.A(n5064), .B(n351), .C(\cnt_scan[2] ), 
         .D(n5083), .Z(n12122)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961_mux_5_i1_3_lut_else_2_lut.init = 16'h2000;
    CCU2D add_128_11 (.A0(cnt_delay_c[9]), .B0(n5643), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay_c[10]), .B1(n5643), .C1(GND_net), .D1(GND_net), 
          .CIN(n10448), .COUT(n10449), .S0(n4203), .S1(n4209));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(171[28:44])
    defparam add_128_11.INIT0 = 16'hd222;
    defparam add_128_11.INIT1 = 16'hd222;
    defparam add_128_11.INJECT1_0 = "NO";
    defparam add_128_11.INJECT1_1 = "NO";
    LUT4 i8967_2_lut_2_lut (.A(\state[2] ), .B(state_back[1]), .Z(n11363)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8967_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_2_lut (.A(\state[2] ), .B(\state[1] ), .Z(n5086)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i5605_2_lut_3_lut (.A(n15), .B(\state[1] ), .C(n1[1]), .Z(n4343)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5605_2_lut_3_lut.init = 16'h8080;
    LUT4 i5621_4_lut (.A(n22_adj_789), .B(n5581), .C(num_delay[14]), .D(n24), 
         .Z(n3_adj_725)) /* synthesis lut_function=(!(A (B)+!A (B+!(C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5621_4_lut.init = 16'h3222;
    LUT4 i8929_4_lut_4_lut (.A(\state[2] ), .B(n4516), .C(n6_adj_738), 
         .D(n8542), .Z(n11364)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8929_4_lut_4_lut.init = 16'h5054;
    PFUMX i41 (.BLUT(n11413), .ALUT(n11414), .C0(\cnt_scan[2] ), .Z(n26));
    PFUMX state_2__I_0_276_Mux_0_i7 (.BLUT(n3_adj_700), .ALUT(n11385), .C0(\state[2] ), 
          .Z(state_2__N_248[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;
    LUT4 i3168_4_lut (.A(clk_c_enable_182), .B(ram_addr[7]), .C(ram_addr[6]), 
         .D(ram_addr[5]), .Z(n5763)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i3168_4_lut.init = 16'haa8a;
    LUT4 i1_4_lut_adj_35 (.A(\state[1] ), .B(n11388), .C(n12), .D(state[0]), 
         .Z(n3_adj_685)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(59[11:16])
    defparam i1_4_lut_adj_35.init = 16'h5fdd;
    LUT4 i1_4_lut_adj_36 (.A(cnt_init[0]), .B(n4977), .C(num_delay[14]), 
         .D(n27), .Z(n22_adj_789)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_36.init = 16'h5444;
    LUT4 cnt_1__bdd_4_lut_4_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), 
         .D(cnt[3]), .Z(n12001)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_1__bdd_4_lut_4_lut_4_lut.init = 16'h5880;
    LUT4 i8888_2_lut (.A(state_back[0]), .B(n60), .Z(n11388)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(59[11:16])
    defparam i8888_2_lut.init = 16'h8888;
    LUT4 i3050_2_lut (.A(n786), .B(\state[2] ), .Z(n5643)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i3050_2_lut.init = 16'hbbbb;
    PFUMX state_2__I_0_276_Mux_0_i2 (.BLUT(state_2__N_263[0]), .ALUT(n11386), 
          .C0(state[0]), .Z(n2_adj_699)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;
    LUT4 i1_4_lut_adj_37 (.A(cnt_write[0]), .B(n4947), .C(n106), .D(n11179), 
         .Z(clk_c_enable_118)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[41:50])
    defparam i1_4_lut_adj_37.init = 16'h3332;
    LUT4 cnt_write_0__bdd_3_lut_9375_4_lut (.A(cnt_write_c[4]), .B(cnt_write_c[6]), 
         .C(cnt_write_c[7]), .D(cnt_write_c[5]), .Z(n12165)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_write_0__bdd_3_lut_9375_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_38 (.A(\state[1] ), .B(state[0]), .Z(n11123)) /* synthesis lut_function=(!((B)+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i1_2_lut_adj_38.init = 16'h2222;
    LUT4 i1_2_lut_adj_39 (.A(state[0]), .B(n18_adj_790), .Z(state_2__N_248[1])) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i1_2_lut_adj_39.init = 16'h8888;
    LUT4 i6763_3_lut_3_lut_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .Z(n6)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i6763_3_lut_3_lut_3_lut.init = 16'h1919;
    LUT4 i1_2_lut_adj_40 (.A(cnt_scan[0]), .B(n3450), .Z(n12)) /* synthesis lut_function=(!((B)+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i1_2_lut_adj_40.init = 16'h2222;
    LUT4 i8950_4_lut (.A(n11391), .B(n5141), .C(n11392), .D(cnt_init[0]), 
         .Z(n11390)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8950_4_lut.init = 16'hbbfa;
    LUT4 mux_10_Mux_5_i15_3_lut_4_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), 
         .D(cnt[3]), .Z(n1458[5])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(115[18] 120[12])
    defparam mux_10_Mux_5_i15_3_lut_4_lut.init = 16'h1209;
    LUT4 i8638_2_lut (.A(cnt[1]), .B(cnt_scan[0]), .Z(n11211)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8638_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_41 (.A(n3473), .B(n3450), .C(n220), .D(cnt_scan[0]), 
         .Z(n9)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_41.init = 16'haa8a;
    LUT4 i1940_3_lut_4_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(\cnt_scan[2] ), 
         .D(n220), .Z(n4516)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i1940_3_lut_4_lut.init = 16'h8f80;
    LUT4 i8937_3_lut_4_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(state[0]), 
         .D(cnt_scan[0]), .Z(n11414)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i8937_3_lut_4_lut.init = 16'hff80;
    PFUMX i32 (.BLUT(n11397), .ALUT(n11398), .C0(\state[1] ), .Z(n18_c));
    MUX81 i8484_i2227 (.D0(ram_data_r[112]), .D1(ram_data_r[114]), .D2(ram_data_r[114]), 
          .D3(ram_data_r[115]), .D4(ram_data_r[116]), .D5(ram_data_r[117]), 
          .D6(ram_data_r[118]), .D7(ram_data_r[119]), .SD1(x_cnt[0]), 
          .SD2(x_cnt[1]), .SD3(x_cnt[2]), .Z(n22_adj_792));
    MUX81 i8589_i311 (.D0(n15_adj_793), .D1(n30_adj_778), .D2(n15_adj_781), 
          .D3(n30_adj_779), .D4(n15_adj_783), .D5(n30_adj_782), .D6(n15_adj_784), 
          .D7(n30_adj_794), .SD1(x_cnt[4]), .SD2(x_cnt[5]), .SD3(x_cnt[6]), 
          .Z(n3_adj_785));
    LUT4 i9067_3_lut_4_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(\state[1] ), 
         .D(high_word), .Z(n8466)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D))) */ ;
    defparam i9067_3_lut_4_lut.init = 16'h8f7f;
    MUX81 i389410 (.D0(n3_adj_701), .D1(n11042), .D2(data_reg[5]), .D3(data_reg[4]), 
          .D4(data_reg[3]), .D5(data_reg[2]), .D6(data_reg[1]), .D7(data_reg[0]), 
          .SD1(cnt_write_c[1]), .SD2(cnt_write_c[2]), .SD3(cnt_write_c[3]), 
          .Z(n3_adj_771));
    LUT4 i1_3_lut_4_lut_3_lut_3_lut (.A(cnt[2]), .B(cnt[1]), .C(cnt[0]), 
         .Z(n10)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i1_3_lut_4_lut_3_lut_3_lut.init = 16'h2424;
    LUT4 i1_2_lut_3_lut_adj_42 (.A(cnt_write_c[5]), .B(cnt_write_c[7]), 
         .C(cnt_write_c[6]), .Z(n5116)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[41:50])
    defparam i1_2_lut_3_lut_adj_42.init = 16'hfefe;
    CCU2D add_128_9 (.A0(cnt_delay_c[7]), .B0(n5643), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay_c[8]), .B1(n5643), .C1(GND_net), .D1(GND_net), 
          .CIN(n10447), .COUT(n10448), .S0(n4191), .S1(n4197));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(171[28:44])
    defparam add_128_9.INIT0 = 16'hd222;
    defparam add_128_9.INIT1 = 16'hd222;
    defparam add_128_9.INJECT1_0 = "NO";
    defparam add_128_9.INJECT1_1 = "NO";
    PFUMX i41_adj_43 (.BLUT(n11319), .ALUT(n11320), .C0(state[0]), .Z(n10788));
    LUT4 i3030_2_lut_2_lut (.A(\state[1] ), .B(n351), .Z(n5612)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i3030_2_lut_2_lut.init = 16'hdddd;
    PFUMX mux_139_Mux_2_i2 (.BLUT(n11368), .ALUT(n11369), .C0(state[0]), 
          .Z(n2_adj_707)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;
    CCU2D add_128_7 (.A0(cnt_delay_c[5]), .B0(n5643), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay_c[6]), .B1(n5643), .C1(GND_net), .D1(GND_net), 
          .CIN(n10446), .COUT(n10447), .S0(n4179), .S1(n4185));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(171[28:44])
    defparam add_128_7.INIT0 = 16'hd222;
    defparam add_128_7.INIT1 = 16'hd222;
    defparam add_128_7.INJECT1_0 = "NO";
    defparam add_128_7.INJECT1_1 = "NO";
    CCU2D add_128_5 (.A0(cnt_delay_c[3]), .B0(n5643), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay_c[4]), .B1(n5643), .C1(GND_net), .D1(GND_net), 
          .CIN(n10445), .COUT(n10446), .S0(n4167), .S1(n4173));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(171[28:44])
    defparam add_128_5.INIT0 = 16'hd222;
    defparam add_128_5.INIT1 = 16'hd222;
    defparam add_128_5.INJECT1_0 = "NO";
    defparam add_128_5.INJECT1_1 = "NO";
    CCU2D add_128_3 (.A0(cnt_delay_c[1]), .B0(n5643), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay_c[2]), .B1(n5643), .C1(GND_net), .D1(GND_net), 
          .CIN(n10444), .COUT(n10445), .S0(n4155), .S1(n4161));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(171[28:44])
    defparam add_128_3.INIT0 = 16'hd222;
    defparam add_128_3.INIT1 = 16'hd222;
    defparam add_128_3.INJECT1_0 = "NO";
    defparam add_128_3.INJECT1_1 = "NO";
    CCU2D add_128_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n786), .B1(\state[2] ), .C1(n10392), .D1(GND_net), .COUT(n10444), 
          .S1(n4428));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(171[28:44])
    defparam add_128_1.INIT0 = 16'hF000;
    defparam add_128_1.INIT1 = 16'hb4b4;
    defparam add_128_1.INJECT1_0 = "NO";
    defparam add_128_1.INJECT1_1 = "NO";
    OFS1P3DX lcd_dc_269 (.D(data_reg[8]), .SP(clk_c_enable_105), .SCLK(clk_c), 
            .CD(GND_net), .Q(lcd_dc_c));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam lcd_dc_269.GSR = "ENABLED";
    CCU2D cnt_scan_961_add_4_9 (.A0(cnt_scan_c[7]), .B0(n2563), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10443), .S0(n37[7]));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961_add_4_9.INIT0 = 16'h7888;
    defparam cnt_scan_961_add_4_9.INIT1 = 16'h0000;
    defparam cnt_scan_961_add_4_9.INJECT1_0 = "NO";
    defparam cnt_scan_961_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_scan_961_add_4_7 (.A0(cnt_scan_c[5]), .B0(n2563), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_scan_c[6]), .B1(n2563), .C1(GND_net), 
          .D1(GND_net), .CIN(n10442), .COUT(n10443), .S0(n37[5]), .S1(n37[6]));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961_add_4_7.INIT0 = 16'h7888;
    defparam cnt_scan_961_add_4_7.INIT1 = 16'h7888;
    defparam cnt_scan_961_add_4_7.INJECT1_0 = "NO";
    defparam cnt_scan_961_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_44 (.A(n10470), .B(n9242), .Z(n61_c)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_44.init = 16'heeee;
    CCU2D cnt_scan_961_add_4_5 (.A0(cnt_scan_c[3]), .B0(n2563), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_scan_c[4]), .B1(n2563), .C1(GND_net), 
          .D1(GND_net), .CIN(n10441), .COUT(n10442), .S0(n37[3]), .S1(n37[4]));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961_add_4_5.INIT0 = 16'h7888;
    defparam cnt_scan_961_add_4_5.INIT1 = 16'h7888;
    defparam cnt_scan_961_add_4_5.INJECT1_0 = "NO";
    defparam cnt_scan_961_add_4_5.INJECT1_1 = "NO";
    LUT4 i3144_3_lut (.A(clk_c_enable_182), .B(ram_addr[6]), .C(ram_addr[7]), 
         .Z(n5740)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i3144_3_lut.init = 16'ha2a2;
    LUT4 i1_4_lut_adj_45 (.A(cnt_write_c[2]), .B(n5116), .C(cnt_write_c[4]), 
         .D(n128), .Z(n5090)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i1_4_lut_adj_45.init = 16'hfcec;
    LUT4 i3060_2_lut_2_lut (.A(\state[1] ), .B(n5576), .Z(n5653)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i3060_2_lut_2_lut.init = 16'hdddd;
    LUT4 i8918_4_lut_4_lut_4_lut (.A(n15_adj_690), .B(state_back[0]), .C(state[0]), 
         .D(\state[1] ), .Z(n11385)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (D)+!B (C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(59[11:16])
    defparam i8918_4_lut_4_lut_4_lut.init = 16'h00c5;
    LUT4 i1_4_lut_adj_46 (.A(cnt_init[0]), .B(n4972), .C(num_delay[15]), 
         .D(n27), .Z(n22_adj_796)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_46.init = 16'h5444;
    LUT4 i8935_4_lut_4_lut (.A(cnt_c[6]), .B(cnt[5]), .C(n12082), .D(n11915), 
         .Z(n11319)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8935_4_lut_4_lut.init = 16'h5140;
    LUT4 cnt_4__bdd_4_lut (.A(cnt[4]), .B(cnt[2]), .C(cnt[1]), .D(cnt[0]), 
         .Z(n12081)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A !(B+((D)+!C)))) */ ;
    defparam cnt_4__bdd_4_lut.init = 16'h576f;
    LUT4 i8933_4_lut_4_lut (.A(n15_adj_690), .B(state[0]), .C(state_back[2]), 
         .D(\state[2] ), .Z(n11284)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(59[11:16])
    defparam i8933_4_lut_4_lut.init = 16'hd100;
    PFUMX i9328 (.BLUT(n12122), .ALUT(n12123), .C0(n2586), .Z(n12124));
    LUT4 i1_4_lut_adj_47 (.A(n4965), .B(n31_c), .C(num_delay[14]), .D(n61_c), 
         .Z(n4977)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_47.init = 16'ha022;
    PFUMX i32_adj_48 (.BLUT(n11363), .ALUT(n11364), .C0(\state[1] ), .Z(n18_adj_790));
    LUT4 i8627_4_lut (.A(n9242), .B(n10470), .C(n4), .D(state[0]), .Z(n5576)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8627_4_lut.init = 16'hfaee;
    LUT4 i6_4_lut (.A(cnt_scan[1]), .B(n12_adj_797), .C(n5086), .D(\cnt_scan[2] ), 
         .Z(clk_c_enable_182)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i6_4_lut.init = 16'h0080;
    LUT4 mux_139_Mux_4_i2_4_lut_4_lut (.A(cnt_c[6]), .B(state[0]), .C(n9243), 
         .D(n11850), .Z(n2_adj_705)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam mux_139_Mux_4_i2_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i42 (.BLUT(n11284), .ALUT(n11285), .C0(\state[1] ), .Z(state_2__N_248[2]));
    LUT4 i2_2_lut_3_lut_3_lut_4_lut (.A(cnt[2]), .B(n3450), .C(cnt[1]), 
         .D(cnt[0]), .Z(n6_adj_748)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i2_2_lut_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i5_4_lut (.A(n5067), .B(cnt_scan[0]), .C(rst_n_c), .D(n14), 
         .Z(n12_adj_797)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i5_4_lut.init = 16'h0080;
    LUT4 i5595_2_lut_3_lut (.A(n15), .B(\state[1] ), .C(n1[6]), .Z(n4357)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5595_2_lut_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_adj_49 (.A(\state[2] ), .B(\state[1] ), .C(rst_n_c), 
         .Z(n11120)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_adj_49.init = 16'h4040;
    PFUMX mux_139_Mux_0_i2 (.BLUT(n11383), .ALUT(n3432), .C0(state[0]), 
          .Z(n2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;
    CCU2D cnt_scan_961_add_4_3 (.A0(cnt_scan[1]), .B0(n2563), .C0(GND_net), 
          .D0(GND_net), .A1(\cnt_scan[2] ), .B1(n2563), .C1(GND_net), 
          .D1(GND_net), .CIN(n10440), .COUT(n10441), .S0(n37[1]), .S1(n37[2]));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961_add_4_3.INIT0 = 16'h7888;
    defparam cnt_scan_961_add_4_3.INIT1 = 16'h7888;
    defparam cnt_scan_961_add_4_3.INJECT1_0 = "NO";
    defparam cnt_scan_961_add_4_3.INJECT1_1 = "NO";
    LUT4 i5670_4_lut (.A(n22_adj_796), .B(n5581), .C(num_delay[15]), .D(n24), 
         .Z(n3_adj_724)) /* synthesis lut_function=(!(A (B)+!A (B+!(C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5670_4_lut.init = 16'h3222;
    LUT4 i5638_2_lut_3_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(x_cnt[4]), 
         .Z(n2700[4])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i5638_2_lut_3_lut.init = 16'h7070;
    LUT4 mux_10_Mux_3_i15_3_lut_4_lut_4_lut_4_lut (.A(cnt[2]), .B(cnt[0]), 
         .C(cnt[1]), .D(cnt[3]), .Z(n1458[3])) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D)+!C !(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam mux_10_Mux_3_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h1009;
    LUT4 i9042_2_lut (.A(state[0]), .B(\state[2] ), .Z(clk_c_enable_83)) /* synthesis lut_function=(!(A+(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i9042_2_lut.init = 16'h1111;
    CCU2D cnt_scan_961_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2586), .B1(n5064), .C1(n12124), .D1(GND_net), 
          .COUT(n10440), .S1(n37[0]));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961_add_4_1.INIT0 = 16'hF000;
    defparam cnt_scan_961_add_4_1.INIT1 = 16'h7878;
    defparam cnt_scan_961_add_4_1.INJECT1_0 = "NO";
    defparam cnt_scan_961_add_4_1.INJECT1_1 = "NO";
    LUT4 i929_2_lut_3_lut (.A(n10470), .B(n9242), .C(n15), .Z(n3507)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(92[6] 108[13])
    defparam i929_2_lut_3_lut.init = 16'hfefe;
    LUT4 i5652_4_lut (.A(n22_adj_799), .B(n5581), .C(num_delay[6]), .D(n24), 
         .Z(n3_adj_727)) /* synthesis lut_function=(!(A (B)+!A (B+!(C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5652_4_lut.init = 16'h3222;
    LUT4 i1_4_lut_adj_50 (.A(n5141), .B(n11123), .C(n19), .D(cnt_init[0]), 
         .Z(n11106)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_50.init = 16'hc4c0;
    LUT4 mux_878_i2_4_lut (.A(n11362), .B(n3190[1]), .C(n3450), .D(n11211), 
         .Z(n3433)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam mux_878_i2_4_lut.init = 16'hc0ca;
    PFUMX i9355 (.BLUT(n12165), .ALUT(n8528), .C0(cnt_write[0]), .Z(n12166));
    LUT4 cnt_scan_1__bdd_4_lut_9214 (.A(cnt_scan[1]), .B(n14), .C(n10_c), 
         .D(cnt_scan[0]), .Z(n6_adj_738)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;
    defparam cnt_scan_1__bdd_4_lut_9214.init = 16'h0302;
    LUT4 i1_3_lut_4_lut_4_lut (.A(\state[2] ), .B(state[0]), .C(\state[1] ), 
         .D(n9), .Z(clk_c_enable_69)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h5111;
    LUT4 i1_4_lut_adj_51 (.A(cnt_init[0]), .B(n4981), .C(num_delay[6]), 
         .D(n27), .Z(n22_adj_799)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_51.init = 16'h5444;
    LUT4 i4_4_lut_adj_52 (.A(n7), .B(n11147), .C(cnt_init[0]), .D(n11123), 
         .Z(clk_c_enable_110)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut_adj_52.init = 16'h0200;
    LUT4 cnt_3__bdd_4_lut_9261 (.A(cnt[3]), .B(cnt[1]), .C(cnt[2]), .D(cnt[0]), 
         .Z(n11937)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+!(C+!(D))))) */ ;
    defparam cnt_3__bdd_4_lut_9261.init = 16'h4546;
    LUT4 i2_3_lut_adj_53 (.A(n11147), .B(cnt_init[1]), .C(cnt_init[2]), 
         .Z(n4965)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut_adj_53.init = 16'h1010;
    LUT4 i8894_2_lut_3_lut (.A(x_cnt[7]), .B(n3_adj_785), .C(n3450), .Z(n11376)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8894_2_lut_3_lut.init = 16'h4040;
    PFUMX mux_139_Mux_3_i2 (.BLUT(n11372), .ALUT(n3435), .C0(state[0]), 
          .Z(n2_adj_706)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;
    LUT4 i2_3_lut_adj_54 (.A(rst_n_c), .B(\state[2] ), .C(cnt_init[2]), 
         .Z(n7)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_3_lut_adj_54.init = 16'h0202;
    PFUMX i9495 (.BLUT(n12473), .ALUT(n12474), .C0(cnt_write_c[4]), .Z(n12475));
    LUT4 i1_2_lut_3_lut_4_lut_adj_55 (.A(cnt_write_c[5]), .B(cnt_write_c[7]), 
         .C(cnt_write_c[4]), .D(cnt_write_c[6]), .Z(n14_adj_688)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[41:50])
    defparam i1_2_lut_3_lut_4_lut_adj_55.init = 16'hfffe;
    LUT4 i1552_2_lut (.A(n14_adj_686), .B(x_cnt[7]), .Z(n4128)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(129[19] 136[13])
    defparam i1552_2_lut.init = 16'h4444;
    LUT4 i8646_2_lut (.A(cnt_write_c[2]), .B(cnt_write_c[3]), .Z(n11219)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8646_2_lut.init = 16'heeee;
    LUT4 i3122_2_lut (.A(clk_c_enable_182), .B(ram_addr[7]), .Z(n5717)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i3122_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_56 (.A(num_delay[11]), .B(n60), .Z(n19)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_56.init = 16'h8888;
    LUT4 i1_4_lut_adj_57 (.A(n4965), .B(n31_c), .C(num_delay[6]), .D(n61_c), 
         .Z(n4981)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_57.init = 16'ha022;
    LUT4 i9101_4_lut (.A(\state[1] ), .B(n11420), .C(n12), .D(state[0]), 
         .Z(n13_adj_728)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i9101_4_lut.init = 16'h5f77;
    LUT4 i8964_4_lut (.A(n11233), .B(n5141), .C(n21_adj_800), .D(cnt_init[0]), 
         .Z(n11420)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8964_4_lut.init = 16'h4405;
    LUT4 i3_4_lut_adj_58 (.A(cnt[5]), .B(cnt[4]), .C(cnt[2]), .D(n5054), 
         .Z(n10470)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_58.init = 16'h8000;
    LUT4 i8660_2_lut (.A(num_delay[5]), .B(n24), .Z(n11233)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8660_2_lut.init = 16'h8888;
    LUT4 i3_4_lut_4_lut_4_lut (.A(\state[2] ), .B(rst_n_c), .C(state[0]), 
         .D(n12172), .Z(n4947)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i3_4_lut_4_lut_4_lut.init = 16'hfff7;
    PFUMX mux_139_Mux_1_i2 (.BLUT(n11367), .ALUT(n3433), .C0(state[0]), 
          .Z(n2_adj_708)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;
    LUT4 i5786_2_lut (.A(cnt_scan_c[7]), .B(cnt_scan_c[6]), .Z(n8360)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5786_2_lut.init = 16'heeee;
    LUT4 i5596_2_lut_3_lut (.A(n15), .B(\state[1] ), .C(n1[5]), .Z(n4355)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5596_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_59 (.A(x_cnt[7]), .B(n3_adj_785), .Z(n400)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i1_2_lut_adj_59.init = 16'h4444;
    LUT4 n4958_bdd_4_lut_9396 (.A(cnt[5]), .B(cnt[1]), .C(cnt[4]), .D(cnt[2]), 
         .Z(n12206)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n4958_bdd_4_lut_9396.init = 16'hfffe;
    CCU2D add_97_9 (.A0(cnt_write_c[7]), .B0(n4689), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10439), 
          .S0(n4335));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(144[24:40])
    defparam add_97_9.INIT0 = 16'hd222;
    defparam add_97_9.INIT1 = 16'h0000;
    defparam add_97_9.INJECT1_0 = "NO";
    defparam add_97_9.INJECT1_1 = "NO";
    LUT4 i5636_2_lut_3_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(x_cnt[6]), 
         .Z(n2700[6])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i5636_2_lut_3_lut.init = 16'h7070;
    CCU2D add_97_7 (.A0(cnt_write_c[5]), .B0(n4689), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_write_c[6]), .B1(n4689), .C1(GND_net), .D1(GND_net), 
          .CIN(n10438), .COUT(n10439), .S0(n4351), .S1(n4345));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(144[24:40])
    defparam add_97_7.INIT0 = 16'hd222;
    defparam add_97_7.INIT1 = 16'hd222;
    defparam add_97_7.INJECT1_0 = "NO";
    defparam add_97_7.INJECT1_1 = "NO";
    CCU2D add_97_5 (.A0(cnt_write_c[3]), .B0(n4689), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_write_c[4]), .B1(n4689), .C1(GND_net), .D1(GND_net), 
          .CIN(n10437), .COUT(n10438), .S0(n4367), .S1(n4359));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(144[24:40])
    defparam add_97_5.INIT0 = 16'hd222;
    defparam add_97_5.INIT1 = 16'hd222;
    defparam add_97_5.INJECT1_0 = "NO";
    defparam add_97_5.INJECT1_1 = "NO";
    LUT4 n5104_bdd_4_lut (.A(cnt[0]), .B(cnt[3]), .C(cnt[2]), .D(cnt[1]), 
         .Z(n11948)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam n5104_bdd_4_lut.init = 16'hc8c0;
    CCU2D add_97_3 (.A0(cnt_write_c[1]), .B0(n4689), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_write_c[2]), .B1(n4689), .C1(GND_net), .D1(GND_net), 
          .CIN(n10436), .COUT(n10437), .S0(n4377), .S1(n4371));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(144[24:40])
    defparam add_97_3.INIT0 = 16'hd222;
    defparam add_97_3.INIT1 = 16'hd222;
    defparam add_97_3.INJECT1_0 = "NO";
    defparam add_97_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_60 (.A(state[0]), .B(\state[1] ), .C(n60), 
         .D(num_delay[2]), .Z(n11130)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_60.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_61 (.A(state[0]), .B(\state[1] ), .C(n60), 
         .D(state_back[2]), .Z(n11131)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_61.init = 16'h4000;
    CCU2D add_97_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5090), .B1(\state[2] ), .C1(n10344), .D1(GND_net), .COUT(n10436), 
          .S1(n4634));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(144[24:40])
    defparam add_97_1.INIT0 = 16'hF000;
    defparam add_97_1.INIT1 = 16'hb4b4;
    defparam add_97_1.INJECT1_0 = "NO";
    defparam add_97_1.INJECT1_1 = "NO";
    LUT4 i5641_2_lut_3_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(x_cnt[1]), 
         .Z(n2700[1])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i5641_2_lut_3_lut.init = 16'h7070;
    LUT4 i9_4_lut (.A(n17), .B(cnt_c[8]), .C(n16_adj_801), .D(cnt_c[13]), 
         .Z(n9242)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_62 (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .D(n11147), .Z(lcd_res_N_570)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut_adj_62.init = 16'hffa8;
    LUT4 i1_4_lut_adj_63 (.A(n4965), .B(num_delay[5]), .C(n139[5]), .D(n27), 
         .Z(n21_adj_800)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_63.init = 16'heca0;
    CCU2D add_56_9 (.A0(y_cnt_c[7]), .B0(n5612), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10435), 
          .S0(n3_adj_732));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(128[31:43])
    defparam add_56_9.INIT0 = 16'hd222;
    defparam add_56_9.INIT1 = 16'h0000;
    defparam add_56_9.INJECT1_0 = "NO";
    defparam add_56_9.INJECT1_1 = "NO";
    CCU2D add_56_7 (.A0(y_cnt_c[5]), .B0(n5612), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt_c[6]), .B1(n5612), .C1(GND_net), .D1(GND_net), .CIN(n10434), 
          .COUT(n10435), .S0(n3_adj_742), .S1(n3_adj_739));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(128[31:43])
    defparam add_56_7.INIT0 = 16'hd222;
    defparam add_56_7.INIT1 = 16'hd222;
    defparam add_56_7.INJECT1_0 = "NO";
    defparam add_56_7.INJECT1_1 = "NO";
    CCU2D add_56_5 (.A0(y_cnt_c[3]), .B0(n5612), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt_c[4]), .B1(n5612), .C1(GND_net), .D1(GND_net), .CIN(n10433), 
          .COUT(n10434), .S0(n3_adj_744), .S1(n3_adj_743));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(128[31:43])
    defparam add_56_5.INIT0 = 16'hd222;
    defparam add_56_5.INIT1 = 16'hd222;
    defparam add_56_5.INJECT1_0 = "NO";
    defparam add_56_5.INJECT1_1 = "NO";
    CCU2D add_56_3 (.A0(y_cnt_c[1]), .B0(n5612), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt_c[2]), .B1(n5612), .C1(GND_net), .D1(GND_net), .CIN(n10432), 
          .COUT(n10433), .S0(n3_adj_746), .S1(n3_adj_745));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(128[31:43])
    defparam add_56_3.INIT0 = 16'hd222;
    defparam add_56_3.INIT1 = 16'hd222;
    defparam add_56_3.INJECT1_0 = "NO";
    defparam add_56_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_64 (.A(n4965), .B(n31_c), .C(num_delay[15]), .D(n61_c), 
         .Z(n4972)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_64.init = 16'ha022;
    CCU2D add_56_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n351), .B1(\state[1] ), .C1(n10320), .D1(GND_net), .COUT(n10432), 
          .S1(n3_adj_683));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(128[31:43])
    defparam add_56_1.INIT0 = 16'hF000;
    defparam add_56_1.INIT1 = 16'hb4b4;
    defparam add_56_1.INJECT1_0 = "NO";
    defparam add_56_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_65 (.A(n3507), .B(n11120), .C(n9), .D(state[0]), 
         .Z(clk_c_enable_20)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_65.init = 16'hc044;
    PFUMX mux_139_Mux_7_i2 (.BLUT(n11377), .ALUT(n3439), .C0(state[0]), 
          .Z(n2_adj_702)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;
    LUT4 i1_2_lut_adj_66 (.A(n3450), .B(n3190[1]), .Z(n9243)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_66.init = 16'h8888;
    LUT4 mux_43_Mux_3_i10_4_lut_4_lut_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .Z(n10_adj_61)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam mux_43_Mux_3_i10_4_lut_4_lut_3_lut.init = 16'hd6d6;
    CCU2D add_42_17 (.A0(cnt_c[15]), .B0(n5653), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10431), 
          .S0(n3_adj_709));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(116[17:28])
    defparam add_42_17.INIT0 = 16'hd222;
    defparam add_42_17.INIT1 = 16'h0000;
    defparam add_42_17.INJECT1_0 = "NO";
    defparam add_42_17.INJECT1_1 = "NO";
    LUT4 cnt_4__bdd_2_lut (.A(cnt[3]), .B(n12081), .Z(n12082)) /* synthesis lut_function=((B)+!A) */ ;
    defparam cnt_4__bdd_2_lut.init = 16'hdddd;
    LUT4 i3_4_lut_adj_67 (.A(cnt_write_c[1]), .B(n14_adj_687), .C(cnt_write[0]), 
         .D(n11219), .Z(n11639)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_67.init = 16'hfffe;
    CCU2D add_42_15 (.A0(cnt_c[13]), .B0(n5653), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[14]), .B1(n5653), .C1(GND_net), .D1(GND_net), .CIN(n10430), 
          .COUT(n10431), .S0(n3_adj_711), .S1(n3_adj_710));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(116[17:28])
    defparam add_42_15.INIT0 = 16'hd222;
    defparam add_42_15.INIT1 = 16'hd222;
    defparam add_42_15.INJECT1_0 = "NO";
    defparam add_42_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_68 (.A(cnt_write[0]), .B(cnt_write_c[3]), .C(cnt_write_c[1]), 
         .Z(n128)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i1_2_lut_3_lut_adj_68.init = 16'hfefe;
    CCU2D add_42_13 (.A0(cnt_c[11]), .B0(n5653), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[12]), .B1(n5653), .C1(GND_net), .D1(GND_net), .CIN(n10429), 
          .COUT(n10430), .S0(n3_adj_713), .S1(n3_adj_712));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(116[17:28])
    defparam add_42_13.INIT0 = 16'hd222;
    defparam add_42_13.INIT1 = 16'hd222;
    defparam add_42_13.INJECT1_0 = "NO";
    defparam add_42_13.INJECT1_1 = "NO";
    CCU2D add_42_11 (.A0(cnt_c[9]), .B0(n5653), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[10]), .B1(n5653), .C1(GND_net), .D1(GND_net), .CIN(n10428), 
          .COUT(n10429), .S0(n3_adj_715), .S1(n3_adj_714));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(116[17:28])
    defparam add_42_11.INIT0 = 16'hd222;
    defparam add_42_11.INIT1 = 16'hd222;
    defparam add_42_11.INJECT1_0 = "NO";
    defparam add_42_11.INJECT1_1 = "NO";
    CCU2D add_42_9 (.A0(cnt_c[7]), .B0(n5653), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[8]), .B1(n5653), .C1(GND_net), .D1(GND_net), .CIN(n10427), 
          .COUT(n10428), .S0(n3_adj_717), .S1(n3_adj_716));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(116[17:28])
    defparam add_42_9.INIT0 = 16'hd222;
    defparam add_42_9.INIT1 = 16'hd222;
    defparam add_42_9.INJECT1_0 = "NO";
    defparam add_42_9.INJECT1_1 = "NO";
    CCU2D add_42_7 (.A0(cnt[5]), .B0(n5653), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_c[6]), .B1(n5653), .C1(GND_net), .D1(GND_net), .CIN(n10426), 
          .COUT(n10427), .S0(n3_adj_719), .S1(n3_adj_718));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(116[17:28])
    defparam add_42_7.INIT0 = 16'hd222;
    defparam add_42_7.INIT1 = 16'hd222;
    defparam add_42_7.INJECT1_0 = "NO";
    defparam add_42_7.INJECT1_1 = "NO";
    LUT4 i9070_2_lut_3_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n13_adj_62)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(59[11:16])
    defparam i9070_2_lut_3_lut.init = 16'h0101;
    LUT4 i5597_2_lut_3_lut (.A(n15), .B(\state[1] ), .C(n1[4]), .Z(n4353)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5597_2_lut_3_lut.init = 16'h8080;
    LUT4 i7_4_lut (.A(cnt_c[7]), .B(cnt_c[15]), .C(cnt_c[14]), .D(cnt_c[10]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i7_4_lut.init = 16'hfffe;
    CCU2D add_42_5 (.A0(cnt[3]), .B0(n5653), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(n5653), .C1(GND_net), .D1(GND_net), .CIN(n10425), 
          .COUT(n10426), .S0(n3_adj_721), .S1(n3_adj_720));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(116[17:28])
    defparam add_42_5.INIT0 = 16'hd222;
    defparam add_42_5.INIT1 = 16'hd222;
    defparam add_42_5.INJECT1_0 = "NO";
    defparam add_42_5.INJECT1_1 = "NO";
    CCU2D add_42_3 (.A0(cnt[1]), .B0(n5653), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(n5653), .C1(GND_net), .D1(GND_net), .CIN(n10424), 
          .COUT(n10425), .S0(n3_adj_723), .S1(n3_adj_722));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(116[17:28])
    defparam add_42_3.INIT0 = 16'hd222;
    defparam add_42_3.INIT1 = 16'hd222;
    defparam add_42_3.INJECT1_0 = "NO";
    defparam add_42_3.INJECT1_1 = "NO";
    LUT4 i8971_2_lut (.A(state_back[1]), .B(n24), .Z(n11391)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8971_2_lut.init = 16'h8888;
    FD1P3AX ram_data_r__i75 (.D(\ram_data[84] ), .SP(clk_c_enable_182), 
            .CK(clk_c), .Q(ram_data_r[84])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i75.GSR = "ENABLED";
    FD1P3AX ram_data_r__i74 (.D(\ram_data[83] ), .SP(clk_c_enable_182), 
            .CK(clk_c), .Q(ram_data_r[83])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i74.GSR = "ENABLED";
    FD1P3AX ram_data_r__i73 (.D(\ram_data[82] ), .SP(clk_c_enable_182), 
            .CK(clk_c), .Q(ram_data_r[82])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i73.GSR = "ENABLED";
    FD1P3AX ram_data_r__i72 (.D(\ram_data[81] ), .SP(clk_c_enable_182), 
            .CK(clk_c), .Q(ram_data_r[81])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i72.GSR = "ENABLED";
    LUT4 i6_4_lut_adj_69 (.A(cnt_c[6]), .B(cnt_c[12]), .C(cnt_c[9]), .D(cnt_c[11]), 
         .Z(n16_adj_801)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i6_4_lut_adj_69.init = 16'hfffe;
    LUT4 i1_2_lut_adj_70 (.A(cnt[1]), .B(cnt[3]), .Z(n5054)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(58[34:37])
    defparam i1_2_lut_adj_70.init = 16'h8888;
    LUT4 i8615_2_lut_3_lut_4_lut (.A(cnt_scan_c[3]), .B(cnt_scan[1]), .C(cnt_scan_c[4]), 
         .D(cnt_scan_c[5]), .Z(n11187)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8615_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_adj_71 (.A(cnt_init[2]), .B(n11147), .C(cnt_init[0]), 
         .Z(n24)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_71.init = 16'hecec;
    CCU2D add_42_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5576), .B1(\state[1] ), .C1(n10296), .D1(GND_net), .COUT(n10424), 
          .S1(n3_adj_684));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(116[17:28])
    defparam add_42_1.INIT0 = 16'hF000;
    defparam add_42_1.INIT1 = 16'hb4b4;
    defparam add_42_1.INJECT1_0 = "NO";
    defparam add_42_1.INJECT1_1 = "NO";
    CCU2D add_15_9 (.A0(cnt_init[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n10423), 
          .S0(n1[7]));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(91[27:42])
    defparam add_15_9.INIT0 = 16'h5aaa;
    defparam add_15_9.INIT1 = 16'h0000;
    defparam add_15_9.INJECT1_0 = "NO";
    defparam add_15_9.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(cnt_scan_c[3]), .B(cnt_scan[1]), .C(n14), 
         .D(cnt_scan[0]), .Z(n8542)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5600_2_lut_3_lut (.A(n15), .B(\state[1] ), .C(n1[3]), .Z(n4349)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i5600_2_lut_3_lut.init = 16'h8080;
    LUT4 i5640_2_lut_3_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(x_cnt[2]), 
         .Z(n2700[2])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i5640_2_lut_3_lut.init = 16'h7070;
    LUT4 cnt_3__bdd_4_lut_9193_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), 
         .D(cnt[3]), .Z(n11845)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam cnt_3__bdd_4_lut_9193_4_lut.init = 16'h1440;
    LUT4 mux_163_i1_3_lut_4_lut (.A(n10470), .B(n9242), .C(lcd_res_N_570), 
         .D(n15), .Z(state_2__N_263[0])) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(92[6] 108[13])
    defparam mux_163_i1_3_lut_4_lut.init = 16'h0fee;
    LUT4 i12_3_lut_4_lut (.A(cnt_write_c[4]), .B(data_reg[7]), .C(data_reg[6]), 
         .D(n8528), .Z(n11042)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(57[41:50])
    defparam i12_3_lut_4_lut.init = 16'h44f0;
    LUT4 i7889_4_lut (.A(n11354), .B(x_cnt[3]), .C(n11280), .D(x_cnt[2]), 
         .Z(n15_adj_793)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i7889_4_lut.init = 16'hc088;
    LUT4 mux_25_i2_3_lut_4_lut (.A(n31_c), .B(num_delay[1]), .C(n10470), 
         .D(n9242), .Z(n139[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_25_i2_3_lut_4_lut.init = 16'hccca;
    LUT4 i8952_4_lut (.A(ram_data_r[10]), .B(x_cnt[1]), .C(ram_data_r[11]), 
         .D(x_cnt[0]), .Z(n11354)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i8952_4_lut.init = 16'hc088;
    LUT4 i9357_else_4_lut (.A(cnt_write_c[6]), .B(cnt_write_c[7]), .C(cnt_write_c[5]), 
         .Z(n12473)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i9357_else_4_lut.init = 16'hfefe;
    LUT4 i5660_2_lut (.A(n22_adj_792), .B(x_cnt[3]), .Z(n30_adj_794)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i5660_2_lut.init = 16'h2222;
    LUT4 i5791_2_lut_3_lut (.A(n14_adj_686), .B(x_cnt[7]), .C(x_cnt[0]), 
         .Z(n2700[0])) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;
    defparam i5791_2_lut_3_lut.init = 16'h7070;
    LUT4 i9059_4_lut (.A(\state[1] ), .B(n11309), .C(n12), .D(state[0]), 
         .Z(n13_adj_729)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i9059_4_lut.init = 16'h5f77;
    PFUMX i8705 (.BLUT(n11278), .ALUT(n11279), .C0(x_cnt[1]), .Z(n11280));
    FD1P3AX lcd_res_274 (.D(cnt_init[1]), .SP(clk_c_enable_110), .CK(clk_c), 
            .Q(lcd_res_c));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam lcd_res_274.GSR = "ENABLED";
    LUT4 i8871_4_lut (.A(n11235), .B(n5141), .C(n21), .D(cnt_init[0]), 
         .Z(n11309)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i8871_4_lut.init = 16'h4405;
    FD1P3IX ram_data_r__i11 (.D(n127), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i11.GSR = "ENABLED";
    FD1P3IX ram_data_r__i12 (.D(n127_adj_63), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i12.GSR = "ENABLED";
    FD1P3IX ram_data_r__i13 (.D(n127_adj_64), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i13.GSR = "ENABLED";
    FD1P3IX ram_data_r__i14 (.D(n127_c), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i14.GSR = "ENABLED";
    FD1P3IX ram_data_r__i15 (.D(n127_adj_807), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i15.GSR = "ENABLED";
    FD1P3IX ram_data_r__i16 (.D(n127_adj_65), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i16.GSR = "ENABLED";
    LUT4 i8898_4_lut_4_lut (.A(ram_addr[4]), .B(ram_addr[3]), .C(ram_addr[2]), 
         .D(n70), .Z(n11337)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8898_4_lut_4_lut.init = 16'h7f5d;
    FD1P3IX ram_data_r__i17 (.D(n127_adj_66), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i17.GSR = "ENABLED";
    FD1P3AX lcd_clk_270 (.D(n12_adj_810), .SP(clk_c_enable_118), .CK(clk_c), 
            .Q(lcd_clk_c));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam lcd_clk_270.GSR = "ENABLED";
    FD1P3IX ram_data_r__i20 (.D(n12323), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i20.GSR = "ENABLED";
    FD1P3AX lcd_din_271 (.D(n2926[0]), .SP(clk_c_enable_120), .CK(clk_c), 
            .Q(lcd_din_c));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam lcd_din_271.GSR = "ENABLED";
    FD1P3IX ram_data_r__i22 (.D(n127_adj_731), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i22.GSR = "ENABLED";
    FD1P3IX ram_data_r__i23 (.D(n12154), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[32])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i23.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_72 (.A(cnt[1]), .B(cnt[0]), .Z(n8)) /* synthesis lut_function=(!((B)+!A)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i1_2_lut_adj_72.init = 16'h2222;
    FD1P3IX ram_data_r__i26 (.D(n10824), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[35])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i26.GSR = "ENABLED";
    FD1P3IX ram_data_r__i27 (.D(n12071), .SP(clk_c_enable_182), .CD(n5763), 
            .CK(clk_c), .Q(ram_data_r[36])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i27.GSR = "ENABLED";
    LUT4 i3032_2_lut (.A(state[0]), .B(\state[1] ), .Z(n5581)) /* synthesis lut_function=(A+!(B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i3032_2_lut.init = 16'hbbbb;
    FD1P3IX ram_data_r__i28 (.D(n12148), .SP(clk_c_enable_182), .CD(n5763), 
            .CK(clk_c), .Q(ram_data_r[37])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i28.GSR = "ENABLED";
    FD1P3IX ram_data_r__i30 (.D(n94_adj_67), .SP(clk_c_enable_182), .CD(n5763), 
            .CK(clk_c), .Q(ram_data_r[39])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i30.GSR = "ENABLED";
    LUT4 i29_1_lut_2_lut_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), .Z(n9309)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i29_1_lut_2_lut_3_lut.init = 16'h7f7f;
    FD1P3IX ram_data_r__i31 (.D(n126), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i31.GSR = "ENABLED";
    LUT4 mux_25_i6_3_lut_4_lut (.A(n31_c), .B(num_delay[5]), .C(n10470), 
         .D(n9242), .Z(n139[5])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(100[18] 106[12])
    defparam mux_25_i6_3_lut_4_lut.init = 16'hccca;
    LUT4 i8986_2_lut (.A(n11904), .B(\state[2] ), .Z(n11285)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8986_2_lut.init = 16'h1111;
    LUT4 i3028_4_lut_4_lut (.A(cnt[1]), .B(cnt[3]), .C(cnt[2]), .D(cnt[0]), 
         .Z(n22)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B+(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i3028_4_lut_4_lut.init = 16'h5754;
    FD1P3IX ram_data_r__i32 (.D(n126_adj_68), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i32.GSR = "ENABLED";
    FD1P3IX ram_data_r__i33 (.D(n126_adj_69), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i33.GSR = "ENABLED";
    FD1P3IX ram_data_r__i34 (.D(n126_adj_70), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i34.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(n9242), .B(cnt[4]), .C(cnt[5]), .D(n11948), 
         .Z(n220)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX ram_data_r__i35 (.D(n126_adj_71), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i35.GSR = "ENABLED";
    FD1P3IX ram_data_r__i36 (.D(n126_adj_72), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i36.GSR = "ENABLED";
    FD1P3IX ram_data_r__i37 (.D(n126_adj_73), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[46])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i37.GSR = "ENABLED";
    FD1P3IX ram_data_r__i39 (.D(n126_adj_74), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[48])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i39.GSR = "ENABLED";
    FD1P3IX ram_data_r__i8 (.D(n127_adj_75), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i8.GSR = "ENABLED";
    FD1P3IX ram_data_r__i41 (.D(n126_adj_76), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[50])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i41.GSR = "ENABLED";
    FD1P3IX ram_data_r__i42 (.D(n12145), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[51])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i42.GSR = "ENABLED";
    FD1P3IX ram_data_r__i44 (.D(n126_adj_77), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[53])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i44.GSR = "ENABLED";
    LUT4 i8652_3_lut_4_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(n11147), 
         .Z(n11225)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8652_3_lut_4_lut_4_lut.init = 16'hfefe;
    LUT4 Address_7__I_0_Mux_102_i127_4_lut_4_lut_then_4_lut (.A(ram_addr[5]), 
         .B(ram_addr[6]), .C(ram_addr[2]), .D(ram_addr[4]), .Z(n12126)) /* synthesis lut_function=(!(A (B+!(D))+!A ((C+(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam Address_7__I_0_Mux_102_i127_4_lut_4_lut_then_4_lut.init = 16'h2204;
    LUT4 Address_7__I_0_Mux_24_i127_4_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[6]), 
         .C(n94_adj_78), .D(n63), .Z(n127_adj_807)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam Address_7__I_0_Mux_24_i127_4_lut_4_lut.init = 16'h7340;
    LUT4 i8662_2_lut (.A(num_delay[4]), .B(n24), .Z(n11235)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8662_2_lut.init = 16'h8888;
    FD1P3IX ram_data_r__i4 (.D(n127_adj_79), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i4.GSR = "ENABLED";
    FD1P3IX ram_data_r__i3 (.D(n127_adj_80), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i3.GSR = "ENABLED";
    FD1P3IX ram_data_r__i2 (.D(n127_adj_81), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i2.GSR = "ENABLED";
    FD1P3IX ram_data_r__i76 (.D(n126_adj_82), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[85])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i76.GSR = "ENABLED";
    LUT4 i8953_4_lut_4_lut_4_lut (.A(ram_addr[5]), .B(n92), .C(ram_addr[3]), 
         .D(ram_addr[4]), .Z(n11404)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam i8953_4_lut_4_lut_4_lut.init = 16'h1455;
    FD1P3IX ram_data_r__i77 (.D(n126_adj_83), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[86])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i77.GSR = "ENABLED";
    CCU2D add_15_7 (.A0(cnt_init[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_init[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10422), .COUT(n10423), .S0(n1[5]), .S1(n1[6]));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(91[27:42])
    defparam add_15_7.INIT0 = 16'h5aaa;
    defparam add_15_7.INIT1 = 16'h5aaa;
    defparam add_15_7.INJECT1_0 = "NO";
    defparam add_15_7.INJECT1_1 = "NO";
    FD1P3IX ram_data_r__i78 (.D(n126_adj_84), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[87])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i78.GSR = "ENABLED";
    FD1P3DX cnt_scan_961__i0 (.D(n37[0]), .SP(clk_c_enable_146), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(cnt_scan[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam cnt_scan_961__i0.GSR = "ENABLED";
    FD1P3IX ram_data_r__i80 (.D(n12139), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[89])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i80.GSR = "ENABLED";
    PFUMX mux_139_Mux_6_i2 (.BLUT(n11375), .ALUT(n11376), .C0(state[0]), 
          .Z(n2_adj_703)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;
    FD1P3IX ram_data_r__i82 (.D(n126_adj_85), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[91])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i82.GSR = "ENABLED";
    FD1P3IX ram_data_r__i84 (.D(n126_adj_86), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[93])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i84.GSR = "ENABLED";
    FD1P3IX ram_data_r__i85 (.D(n126_adj_87), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[94])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i85.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_73 (.A(x_cnt[5]), .B(x_cnt[3]), .Z(n6_c)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_73.init = 16'heeee;
    PFUMX i9220 (.BLUT(n11903), .ALUT(n11902), .C0(state[0]), .Z(n11904));
    FD1P3IX ram_data_r__i86 (.D(n126_adj_88), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[95])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i86.GSR = "ENABLED";
    FD1P3IX ram_data_r__i87 (.D(n126_adj_89), .SP(clk_c_enable_182), .CD(n5740), 
            .CK(clk_c), .Q(ram_data_r[96])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i87.GSR = "ENABLED";
    FD1P3IX ram_data_r__i91 (.D(n127_adj_741), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[100])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i91.GSR = "ENABLED";
    FD1P3IX ram_data_r__i92 (.D(n127_adj_758), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[101])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i92.GSR = "ENABLED";
    PFUMX i9332 (.BLUT(n12128), .ALUT(n12129), .C0(n11), .Z(clk_c_enable_97));
    LUT4 i9045_2_lut (.A(\state[1] ), .B(\state[2] ), .Z(clk_c_enable_3)) /* synthesis lut_function=(!(A+(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(69[3] 174[10])
    defparam i9045_2_lut.init = 16'h1111;
    FD1P3IX ram_data_r__i93 (.D(n12127), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[102])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i93.GSR = "ENABLED";
    FD1P3IX ram_data_r__i94 (.D(n127_adj_769), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[103])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i94.GSR = "ENABLED";
    FD1P3IX ram_data_r__i97 (.D(n127_adj_774), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[106])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i97.GSR = "ENABLED";
    FD1P3IX ram_data_r__i98 (.D(n127_adj_768), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[107])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i98.GSR = "ENABLED";
    FD1P3DX ram_addr_i0 (.D(n3_adj_689), .SP(clk_c_enable_173), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(ram_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_addr_i0.GSR = "ENABLED";
    FD1P3IX ram_data_r__i99 (.D(n127_adj_90), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[108])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i99.GSR = "ENABLED";
    FD1P3DX ram_addr_i7 (.D(n3_adj_692), .SP(clk_c_enable_173), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(ram_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_addr_i7.GSR = "ENABLED";
    FD1P3IX ram_data_r__i101 (.D(n127_adj_91), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[110])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i101.GSR = "ENABLED";
    FD1P3IX ram_data_r__i102 (.D(n127_adj_92), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[111])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i102.GSR = "ENABLED";
    FD1P3DX ram_addr_i6 (.D(n3_adj_695), .SP(clk_c_enable_173), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(ram_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_addr_i6.GSR = "ENABLED";
    FD1P3IX ram_data_r__i103 (.D(n127_adj_93), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[112])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i103.GSR = "ENABLED";
    FD1P3DX ram_addr_i5 (.D(n3_adj_696), .SP(clk_c_enable_173), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(ram_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_addr_i5.GSR = "ENABLED";
    FD1P3IX ram_data_r__i104 (.D(n127_adj_94), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[114])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i104.GSR = "ENABLED";
    FD1P3DX ram_addr_i4 (.D(n3_adj_733), .SP(clk_c_enable_173), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(ram_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_addr_i4.GSR = "ENABLED";
    FD1P3DX ram_addr_i3 (.D(n3_adj_734), .SP(clk_c_enable_173), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(ram_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_addr_i3.GSR = "ENABLED";
    FD1P3DX ram_addr_i2 (.D(n3_adj_736), .SP(clk_c_enable_173), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(ram_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_addr_i2.GSR = "ENABLED";
    FD1P3DX ram_addr_i1 (.D(n5537), .SP(clk_c_enable_173), .CK(clk_c), 
            .CD(rst_n_N_10), .Q(ram_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_addr_i1.GSR = "ENABLED";
    FD1P3IX ram_data_r__i105 (.D(n127_adj_95), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[115])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i105.GSR = "ENABLED";
    FD1P3IX ram_data_r__i106 (.D(n127_adj_96), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[116])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i106.GSR = "ENABLED";
    LUT4 mux_43_Mux_5_i3_3_lut_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .Z(n3)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam mux_43_Mux_5_i3_3_lut_3_lut.init = 16'h7474;
    PFUMX mux_139_Mux_5_i2 (.BLUT(n11374), .ALUT(n3437), .C0(state[0]), 
          .Z(n2_adj_704)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;
    CCU2D add_15_5 (.A0(cnt_init[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_init[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10421), .COUT(n10422), .S0(n1[3]), .S1(n1[4]));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(91[27:42])
    defparam add_15_5.INIT0 = 16'h5aaa;
    defparam add_15_5.INIT1 = 16'h5aaa;
    defparam add_15_5.INJECT1_0 = "NO";
    defparam add_15_5.INJECT1_1 = "NO";
    FD1P3IX ram_data_r__i107 (.D(n127_adj_97), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[117])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i107.GSR = "ENABLED";
    FD1P3IX ram_data_r__i108 (.D(n127_adj_98), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[118])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i108.GSR = "ENABLED";
    CCU2D add_15_3 (.A0(cnt_init[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_init[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n10420), .COUT(n10421), .S0(n1[1]), .S1(n1[2]));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(91[27:42])
    defparam add_15_3.INIT0 = 16'h5aaa;
    defparam add_15_3.INIT1 = 16'h5aaa;
    defparam add_15_3.INJECT1_0 = "NO";
    defparam add_15_3.INJECT1_1 = "NO";
    FD1P3IX ram_data_r__i109 (.D(n127_adj_99), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[119])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i109.GSR = "ENABLED";
    CCU2D add_15_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_init[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n10420), .S1(n1[0]));   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(91[27:42])
    defparam add_15_1.INIT0 = 16'hF000;
    defparam add_15_1.INIT1 = 16'h5555;
    defparam add_15_1.INJECT1_0 = "NO";
    defparam add_15_1.INJECT1_1 = "NO";
    LUT4 i9064_4_lut (.A(cnt_write[0]), .B(n11219), .C(cnt_write_c[4]), 
         .D(n11179), .Z(n12_adj_810)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(145[6] 165[13])
    defparam i9064_4_lut.init = 16'h5554;
    FD1P3IX ram_data_r__i7 (.D(n127_adj_100), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i7.GSR = "ENABLED";
    FD1P3IX ram_data_r__i6 (.D(n127_adj_101), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i6.GSR = "ENABLED";
    FD1P3IX ram_data_r__i5 (.D(n127_adj_102), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i5.GSR = "ENABLED";
    FD1P3IX ram_data_r__i1 (.D(n127_adj_103), .SP(clk_c_enable_182), .CD(n5717), 
            .CK(clk_c), .Q(ram_data_r[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=41, LSE_RLINE=55 */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_rgb.v(68[11] 175[5])
    defparam ram_data_r__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module LCD_RAM
//

module LCD_RAM (ram_addr, n127, n61, n12071, n63, n78, n127_adj_1, 
            n127_adj_2, n70, n63_adj_3, n127_adj_4, n63_adj_5, n127_adj_6, 
            n127_adj_7, n126, n126_adj_8, n92, n63_adj_9, n127_adj_10, 
            n127_adj_11, n127_adj_12, n127_adj_13, n126_adj_14, n8434, 
            n127_adj_15, n126_adj_16, n126_adj_17, n126_adj_18, n126_adj_19, 
            n109, n78_adj_20, n127_adj_21, n127_adj_22, n94, n126_adj_23, 
            n126_adj_24, n126_adj_25, n126_adj_26, n93, n126_adj_27, 
            n94_adj_28, \ram_data[84] , n11404, n10824, n126_adj_29, 
            \ram_data[83] , n127_adj_30, \ram_data[82] , n127_adj_31, 
            n126_adj_32, \ram_data[81] , n94_adj_33, n11293, n127_adj_34, 
            n94_adj_35, n12154, n63_adj_36, n127_adj_37, n11300, n127_adj_38, 
            n126_adj_39, n63_adj_40, n127_adj_41, n12148, n127_adj_42, 
            n12145, n127_adj_43, n127_adj_44, n12139, n126_adj_45, 
            n126_adj_46, n126_adj_47, n12077, n127_adj_48, n12136, 
            n94_adj_49, n12133) /* synthesis syn_module_defined=1 */ ;
    input [7:0]ram_addr;
    output n127;
    output n61;
    output n12071;
    output n63;
    output n78;
    output n127_adj_1;
    output n127_adj_2;
    output n70;
    output n63_adj_3;
    output n127_adj_4;
    output n63_adj_5;
    output n127_adj_6;
    output n127_adj_7;
    output n126;
    output n126_adj_8;
    output n92;
    output n63_adj_9;
    output n127_adj_10;
    output n127_adj_11;
    output n127_adj_12;
    output n127_adj_13;
    output n126_adj_14;
    output n8434;
    output n127_adj_15;
    output n126_adj_16;
    output n126_adj_17;
    output n126_adj_18;
    output n126_adj_19;
    output n109;
    output n78_adj_20;
    output n127_adj_21;
    output n127_adj_22;
    output n94;
    output n126_adj_23;
    output n126_adj_24;
    output n126_adj_25;
    output n126_adj_26;
    output n93;
    output n126_adj_27;
    output n94_adj_28;
    output \ram_data[84] ;
    input n11404;
    output n10824;
    output n126_adj_29;
    output \ram_data[83] ;
    output n127_adj_30;
    output \ram_data[82] ;
    output n127_adj_31;
    output n126_adj_32;
    output \ram_data[81] ;
    output n94_adj_33;
    input n11293;
    output n127_adj_34;
    output n94_adj_35;
    output n12154;
    output n63_adj_36;
    output n127_adj_37;
    input n11300;
    output n127_adj_38;
    output n126_adj_39;
    output n63_adj_40;
    output n127_adj_41;
    output n12148;
    output n127_adj_42;
    output n12145;
    output n127_adj_43;
    output n127_adj_44;
    output n12139;
    output n126_adj_45;
    output n126_adj_46;
    output n126_adj_47;
    output n12077;
    output n127_adj_48;
    output n12136;
    output n94_adj_49;
    output n12133;
    
    
    wire n8400, n11314, n11348, n11349, n3902, n8398, n93_c, n4, 
        n4015, n12070, n3843, n11297, n126_c, n63_adj_610, n78_adj_612, 
        n94_c, n11327, n8484, n63_adj_616, n3979, n11312, n94_adj_618, 
        n125, n78_adj_620, n61_adj_621, n11328, n94_adj_622, n85, 
        n78_adj_624, n8490, n3904, n11316, n70_adj_629, n94_adj_631, 
        n11318, n125_adj_632, n12132, n125_adj_634, n93_adj_635, n4076, 
        n12131, n125_adj_637, n12135, n12134, n94_adj_638, n12076, 
        n11310, n11144, n11317, n94_adj_639, n8488, n125_adj_643, 
        n12138, n12137, n4001, n52, n11325, n8512, n63_adj_647, 
        n10538, n12141, n12140, n12144, n12143, n12142, n125_adj_653, 
        n12147, n12146, n11299, n127_adj_658, n4_adj_659, n11403, 
        n125_adj_663, n11323, n254, n12153, n11292, n12152, n62, 
        n3980;
    
    LUT4 i8879_4_lut_4_lut (.A(n8400), .B(ram_addr[2]), .C(ram_addr[3]), 
         .D(ram_addr[4]), .Z(n11314)) /* synthesis lut_function=(A (B (D))+!A !(B (C+!(D))+!B !(C (D)))) */ ;
    defparam i8879_4_lut_4_lut.init = 16'h9c00;
    PFUMX Address_7__I_0_Mux_111_i127 (.BLUT(n11348), .ALUT(n11349), .C0(ram_addr[6]), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 i5483_2_lut_3_lut_4_lut (.A(ram_addr[0]), .B(ram_addr[1]), .C(ram_addr[2]), 
         .D(ram_addr[3]), .Z(n61)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5483_2_lut_3_lut_4_lut.init = 16'hff80;
    LUT4 i5823_2_lut (.A(ram_addr[2]), .B(n3902), .Z(n8398)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5823_2_lut.init = 16'heeee;
    LUT4 Address_7__I_0_Mux_40_i93_3_lut_4_lut_3_lut (.A(ram_addr[1]), .B(ram_addr[2]), 
         .C(ram_addr[3]), .Z(n93_c)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam Address_7__I_0_Mux_40_i93_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i1_2_lut_3_lut_4_lut (.A(ram_addr[1]), .B(ram_addr[2]), .C(ram_addr[3]), 
         .D(ram_addr[4]), .Z(n4)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'he000;
    PFUMX i9308 (.BLUT(n4015), .ALUT(n12070), .C0(ram_addr[4]), .Z(n12071));
    LUT4 Address_7__I_0_Mux_108_i127_4_lut (.A(n63), .B(n78), .C(ram_addr[6]), 
         .D(n3843), .Z(n127_adj_1)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_108_i127_4_lut.init = 16'hca0a;
    PFUMX Address_7__I_0_Mux_26_i127 (.BLUT(n11297), .ALUT(n126_c), .C0(ram_addr[6]), 
          .Z(n127_adj_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 i5567_2_lut_4_lut (.A(n70), .B(ram_addr[3]), .C(ram_addr[4]), 
         .D(ram_addr[5]), .Z(n63_adj_610)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i5567_2_lut_4_lut.init = 16'he000;
    LUT4 Address_7__I_0_Mux_110_i127_4_lut (.A(n63_adj_3), .B(n78_adj_612), 
         .C(ram_addr[6]), .D(n3843), .Z(n127_adj_4)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_110_i127_4_lut.init = 16'hca0a;
    LUT4 i5687_2_lut_3_lut (.A(n70), .B(ram_addr[3]), .C(ram_addr[4]), 
         .Z(n94_c)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i5687_2_lut_3_lut.init = 16'h4040;
    LUT4 i8978_2_lut_3_lut_4_lut (.A(ram_addr[1]), .B(ram_addr[2]), .C(ram_addr[3]), 
         .D(ram_addr[4]), .Z(n11327)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8978_2_lut_3_lut_4_lut.init = 16'h01fe;
    LUT4 Address_7__I_0_Mux_14_i127_3_lut (.A(n63_adj_5), .B(n8484), .C(ram_addr[6]), 
         .Z(n127_adj_6)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_14_i127_3_lut.init = 16'h3a3a;
    LUT4 Address_7__I_0_Mux_10_i127_3_lut (.A(n63_adj_616), .B(n8398), .C(ram_addr[6]), 
         .Z(n127_adj_7)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_10_i127_3_lut.init = 16'h3a3a;
    LUT4 i1403_4_lut_4_lut (.A(ram_addr[0]), .B(ram_addr[1]), .C(ram_addr[2]), 
         .D(ram_addr[3]), .Z(n3979)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i1403_4_lut_4_lut.init = 16'hc7c0;
    LUT4 i8880_3_lut_4_lut (.A(ram_addr[3]), .B(ram_addr[2]), .C(ram_addr[0]), 
         .D(ram_addr[1]), .Z(n11312)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8880_3_lut_4_lut.init = 16'hdccc;
    PFUMX Address_7__I_0_Mux_96_i126 (.BLUT(n94_adj_618), .ALUT(n125), .C0(ram_addr[5]), 
          .Z(n126)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 i5701_3_lut_4_lut (.A(ram_addr[0]), .B(ram_addr[1]), .C(ram_addr[2]), 
         .D(ram_addr[3]), .Z(n78_adj_620)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5701_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut (.A(ram_addr[1]), .B(ram_addr[0]), .C(ram_addr[2]), 
         .D(ram_addr[3]), .Z(n61_adj_621)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'he000;
    PFUMX Address_7__I_0_Mux_94_i126 (.BLUT(n11328), .ALUT(n94_adj_622), 
          .C0(ram_addr[5]), .Z(n126_adj_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 Address_7__I_0_Mux_41_i85_3_lut_3_lut (.A(ram_addr[1]), .B(ram_addr[0]), 
         .C(ram_addr[2]), .Z(n85)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_41_i85_3_lut_3_lut.init = 16'h7e7e;
    LUT4 i5834_4_lut (.A(ram_addr[2]), .B(ram_addr[5]), .C(ram_addr[4]), 
         .D(ram_addr[3]), .Z(n126_c)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i5834_4_lut.init = 16'h0311;
    LUT4 Address_7__I_0_Mux_20_i78_3_lut_4_lut_4_lut (.A(ram_addr[2]), .B(ram_addr[0]), 
         .C(ram_addr[1]), .D(ram_addr[3]), .Z(n78_adj_624)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_20_i78_3_lut_4_lut_4_lut.init = 16'h7faa;
    LUT4 i5914_2_lut_3_lut_4_lut (.A(n92), .B(ram_addr[3]), .C(ram_addr[4]), 
         .D(ram_addr[5]), .Z(n8490)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5914_2_lut_3_lut_4_lut.init = 16'hfff8;
    LUT4 Address_7__I_0_Mux_113_i127_3_lut_4_lut (.A(n3904), .B(n3843), 
         .C(ram_addr[6]), .D(n63_adj_9), .Z(n127_adj_10)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam Address_7__I_0_Mux_113_i127_3_lut_4_lut.init = 16'h4f40;
    LUT4 Address_7__I_0_Mux_16_i127_3_lut_4_lut (.A(n3904), .B(n3843), .C(ram_addr[6]), 
         .D(n63_adj_610), .Z(n127_adj_11)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam Address_7__I_0_Mux_16_i127_3_lut_4_lut.init = 16'h4f40;
    LUT4 Address_7__I_0_Mux_116_i127_4_lut (.A(n4), .B(n8484), .C(ram_addr[6]), 
         .D(ram_addr[5]), .Z(n127_adj_12)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_116_i127_4_lut.init = 16'h3a30;
    LUT4 i8884_2_lut_3_lut (.A(ram_addr[2]), .B(ram_addr[0]), .C(ram_addr[1]), 
         .Z(n11316)) /* synthesis lut_function=((B (C))+!A) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8884_2_lut_3_lut.init = 16'hd5d5;
    LUT4 Address_7__I_0_Mux_118_i127_4_lut (.A(n63_adj_616), .B(n70_adj_629), 
         .C(ram_addr[6]), .D(n3902), .Z(n127_adj_13)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_118_i127_4_lut.init = 16'h0a3a;
    LUT4 i5861_2_lut_3_lut_4_lut (.A(ram_addr[3]), .B(ram_addr[4]), .C(ram_addr[1]), 
         .D(ram_addr[2]), .Z(n94_adj_631)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5861_2_lut_3_lut_4_lut.init = 16'h0111;
    PFUMX Address_7__I_0_Mux_48_i126 (.BLUT(n11318), .ALUT(n125_adj_632), 
          .C0(ram_addr[5]), .Z(n126_adj_14)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 i5756_2_lut_3_lut (.A(n61), .B(ram_addr[4]), .C(ram_addr[5]), 
         .Z(n63_adj_5)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5756_2_lut_3_lut.init = 16'h8080;
    LUT4 i5858_2_lut_3_lut (.A(ram_addr[1]), .B(ram_addr[2]), .C(ram_addr[0]), 
         .Z(n8434)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5858_2_lut_3_lut.init = 16'hfefe;
    LUT4 Address_7__I_0_Mux_101_i94_3_lut_4_lut_then_4_lut (.A(ram_addr[3]), 
         .B(ram_addr[2]), .C(ram_addr[4]), .D(ram_addr[0]), .Z(n12132)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_101_i94_3_lut_4_lut_then_4_lut.init = 16'h5747;
    LUT4 i8912_3_lut_4_lut (.A(n70_adj_629), .B(ram_addr[4]), .C(ram_addr[5]), 
         .D(ram_addr[3]), .Z(n11348)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8912_3_lut_4_lut.init = 16'h4080;
    LUT4 i5653_2_lut_3_lut_4_lut (.A(ram_addr[2]), .B(ram_addr[3]), .C(ram_addr[4]), 
         .D(n8400), .Z(n125_adj_634)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5653_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 Address_7__I_0_Mux_95_i93_3_lut_4_lut_3_lut (.A(ram_addr[1]), .B(ram_addr[2]), 
         .C(ram_addr[3]), .Z(n93_adj_635)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;
    defparam Address_7__I_0_Mux_95_i93_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 Address_7__I_0_Mux_119_i127_4_lut (.A(n78_adj_620), .B(n8398), 
         .C(ram_addr[6]), .D(n4076), .Z(n127_adj_15)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_119_i127_4_lut.init = 16'h3a30;
    LUT4 Address_7__I_0_Mux_101_i94_3_lut_4_lut_else_4_lut (.A(ram_addr[3]), 
         .B(ram_addr[2]), .C(ram_addr[4]), .Z(n12131)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_101_i94_3_lut_4_lut_else_4_lut.init = 16'h6f6f;
    LUT4 i5893_2_lut_3_lut_4_lut (.A(ram_addr[2]), .B(ram_addr[3]), .C(ram_addr[4]), 
         .D(ram_addr[1]), .Z(n125_adj_637)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5893_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 n4015_bdd_3_lut_4_lut (.A(ram_addr[2]), .B(ram_addr[1]), .C(ram_addr[0]), 
         .D(ram_addr[3]), .Z(n12070)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(B (D)+!B ((D)+!C)))) */ ;
    defparam n4015_bdd_3_lut_4_lut.init = 16'h55a9;
    LUT4 Address_7__I_0_Mux_103_i94_4_lut_then_4_lut (.A(ram_addr[4]), .B(ram_addr[3]), 
         .C(ram_addr[2]), .D(ram_addr[0]), .Z(n12135)) /* synthesis lut_function=(!(A (B+(C))+!A !((C (D))+!B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_103_i94_4_lut_then_4_lut.init = 16'h5313;
    LUT4 Address_7__I_0_Mux_103_i94_4_lut_else_4_lut (.A(ram_addr[4]), .B(ram_addr[3]), 
         .C(ram_addr[2]), .Z(n12134)) /* synthesis lut_function=(!(A (B)+!A (B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_103_i94_4_lut_else_4_lut.init = 16'h3737;
    LUT4 i5461_2_lut_3_lut (.A(ram_addr[1]), .B(ram_addr[2]), .C(ram_addr[3]), 
         .Z(n78)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5461_2_lut_3_lut.init = 16'hf8f8;
    LUT4 Address_7__I_0_Mux_40_i94_3_lut (.A(n78_adj_620), .B(n93_c), .C(ram_addr[4]), 
         .Z(n94_adj_638)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_40_i94_3_lut.init = 16'hcaca;
    LUT4 n52_bdd_4_lut_9311_4_lut (.A(ram_addr[0]), .B(ram_addr[1]), .C(ram_addr[4]), 
         .D(ram_addr[2]), .Z(n12076)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C)+!B (C+(D))))) */ ;
    defparam n52_bdd_4_lut_9311_4_lut.init = 16'h0c07;
    LUT4 i8910_4_lut (.A(n85), .B(ram_addr[4]), .C(n92), .D(ram_addr[3]), 
         .Z(n11310)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8910_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_3_lut (.A(ram_addr[3]), .B(ram_addr[4]), .C(ram_addr[2]), 
         .Z(n11144)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i8907_2_lut_4_lut (.A(ram_addr[2]), .B(ram_addr[3]), .C(ram_addr[4]), 
         .D(ram_addr[5]), .Z(n11297)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8907_2_lut_4_lut.init = 16'he000;
    LUT4 i8886_4_lut (.A(n70_adj_629), .B(ram_addr[4]), .C(n11316), .D(ram_addr[3]), 
         .Z(n11317)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8886_4_lut.init = 16'hc088;
    PFUMX Address_7__I_0_Mux_45_i126 (.BLUT(n11317), .ALUT(n94_adj_639), 
          .C0(ram_addr[5]), .Z(n126_adj_16)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 i5912_2_lut_3_lut (.A(ram_addr[3]), .B(ram_addr[4]), .C(n70_adj_629), 
         .Z(n8488)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5912_2_lut_3_lut.init = 16'hfefe;
    PFUMX Address_7__I_0_Mux_43_i126 (.BLUT(n11314), .ALUT(n94_adj_631), 
          .C0(ram_addr[5]), .Z(n126_adj_17)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    PFUMX Address_7__I_0_Mux_41_i126 (.BLUT(n11310), .ALUT(n125_adj_637), 
          .C0(ram_addr[5]), .Z(n126_adj_18)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    PFUMX Address_7__I_0_Mux_40_i126 (.BLUT(n94_adj_638), .ALUT(n125_adj_643), 
          .C0(ram_addr[5]), .Z(n126_adj_19)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 Address_7__I_0_Mux_89_i126_3_lut_then_4_lut (.A(n109), .B(ram_addr[5]), 
         .C(ram_addr[4]), .D(n92), .Z(n12138)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A (B+!(C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_89_i126_3_lut_then_4_lut.init = 16'h3808;
    LUT4 Address_7__I_0_Mux_89_i126_3_lut_else_4_lut (.A(n109), .B(ram_addr[5]), 
         .C(ram_addr[4]), .Z(n12137)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_89_i126_3_lut_else_4_lut.init = 16'hc8c8;
    LUT4 i1326_2_lut_3_lut (.A(ram_addr[3]), .B(ram_addr[4]), .C(ram_addr[5]), 
         .Z(n3902)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i1326_2_lut_3_lut.init = 16'hfefe;
    LUT4 i8932_4_lut (.A(ram_addr[1]), .B(n4001), .C(n52), .D(ram_addr[2]), 
         .Z(n11325)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8932_4_lut.init = 16'hc088;
    LUT4 i5456_2_lut (.A(n70), .B(ram_addr[3]), .Z(n78_adj_20)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5456_2_lut.init = 16'heeee;
    LUT4 Address_7__I_0_Mux_13_i127_3_lut_4_lut (.A(n8512), .B(n3843), .C(ram_addr[6]), 
         .D(n63_adj_9), .Z(n127_adj_21)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam Address_7__I_0_Mux_13_i127_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1412_2_lut (.A(ram_addr[3]), .B(ram_addr[4]), .Z(n4001)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i1412_2_lut.init = 16'h8888;
    LUT4 i5895_2_lut_3_lut (.A(ram_addr[3]), .B(ram_addr[4]), .C(n70), 
         .Z(n125)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5895_2_lut_3_lut.init = 16'h0101;
    LUT4 Address_7__I_0_Mux_117_i127_3_lut_4_lut (.A(n8512), .B(n3843), 
         .C(ram_addr[6]), .D(n63_adj_647), .Z(n127_adj_22)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam Address_7__I_0_Mux_117_i127_3_lut_4_lut.init = 16'h4f40;
    LUT4 i8868_4_lut (.A(n70), .B(ram_addr[4]), .C(n10538), .D(ram_addr[3]), 
         .Z(n11328)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8868_4_lut.init = 16'h0c88;
    LUT4 Address_7__I_0_Mux_86_i125_4_lut_then_3_lut (.A(ram_addr[1]), .B(ram_addr[4]), 
         .C(ram_addr[3]), .Z(n12141)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_86_i125_4_lut_then_3_lut.init = 16'h7f7f;
    LUT4 Address_7__I_0_Mux_96_i94_3_lut_4_lut_4_lut (.A(n92), .B(ram_addr[3]), 
         .C(ram_addr[4]), .D(ram_addr[2]), .Z(n94_adj_618)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (C (D))+!B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_96_i94_3_lut_4_lut_4_lut.init = 16'hf838;
    LUT4 Address_7__I_0_Mux_86_i125_4_lut_else_3_lut (.A(ram_addr[1]), .B(ram_addr[4]), 
         .C(ram_addr[3]), .D(ram_addr[0]), .Z(n12140)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_86_i125_4_lut_else_3_lut.init = 16'hfcfd;
    LUT4 i5490_2_lut (.A(n8434), .B(ram_addr[3]), .Z(n8512)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5490_2_lut.init = 16'h8888;
    LUT4 Address_7__I_0_Mux_51_i126_3_lut_then_4_lut (.A(n8434), .B(n109), 
         .C(ram_addr[3]), .D(ram_addr[4]), .Z(n12144)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A !(B+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_51_i126_3_lut_then_4_lut.init = 16'h5fcc;
    LUT4 Address_7__I_0_Mux_51_i126_3_lut_else_4_lut (.A(ram_addr[3]), .B(ram_addr[4]), 
         .C(n92), .Z(n12143)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_51_i126_3_lut_else_4_lut.init = 16'h8080;
    LUT4 Address_7__I_0_Mux_39_i94_4_lut (.A(n61_adj_621), .B(ram_addr[3]), 
         .C(ram_addr[4]), .D(n70), .Z(n94)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_39_i94_4_lut.init = 16'hcafa;
    LUT4 i1_2_lut_3_lut_adj_6 (.A(ram_addr[0]), .B(ram_addr[1]), .C(ram_addr[2]), 
         .Z(n10538)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1_2_lut_3_lut_adj_6.init = 16'h7878;
    LUT4 Address_7__I_0_Mux_86_i126_3_lut_4_lut (.A(ram_addr[2]), .B(n4001), 
         .C(ram_addr[5]), .D(n12142), .Z(n126_adj_23)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam Address_7__I_0_Mux_86_i126_3_lut_4_lut.init = 16'hf808;
    LUT4 i5849_2_lut (.A(ram_addr[2]), .B(ram_addr[3]), .Z(n3904)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5849_2_lut.init = 16'h8888;
    LUT4 Address_7__I_0_Mux_82_i126_3_lut_4_lut (.A(ram_addr[2]), .B(n4001), 
         .C(ram_addr[5]), .D(n125_adj_634), .Z(n126_adj_24)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam Address_7__I_0_Mux_82_i126_3_lut_4_lut.init = 16'hf808;
    LUT4 Address_7__I_0_Mux_42_i126_4_lut (.A(n11312), .B(n11144), .C(ram_addr[5]), 
         .D(ram_addr[4]), .Z(n126_adj_25)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_42_i126_4_lut.init = 16'h3a30;
    LUT4 Address_7__I_0_Mux_87_i126_3_lut_4_lut (.A(ram_addr[2]), .B(n4001), 
         .C(ram_addr[5]), .D(n125_adj_653), .Z(n126_adj_26)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam Address_7__I_0_Mux_87_i126_3_lut_4_lut.init = 16'hf808;
    LUT4 Address_7__I_0_Mux_37_i94_4_lut_then_4_lut (.A(ram_addr[2]), .B(ram_addr[1]), 
         .C(ram_addr[4]), .D(ram_addr[0]), .Z(n12147)) /* synthesis lut_function=(!(A (B (C)+!B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_37_i94_4_lut_then_4_lut.init = 16'h5f7f;
    LUT4 Address_7__I_0_Mux_37_i94_4_lut_else_4_lut (.A(ram_addr[2]), .B(ram_addr[1]), 
         .C(ram_addr[4]), .Z(n12146)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_37_i94_4_lut_else_4_lut.init = 16'h9090;
    LUT4 i8861_3_lut_4_lut (.A(ram_addr[2]), .B(ram_addr[4]), .C(ram_addr[5]), 
         .D(ram_addr[3]), .Z(n11299)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8861_3_lut_4_lut.init = 16'h4080;
    LUT4 i9062_2_lut (.A(ram_addr[3]), .B(n8434), .Z(n93)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i9062_2_lut.init = 16'h1111;
    LUT4 Address_7__I_0_Mux_44_i126_4_lut (.A(n3979), .B(n8488), .C(ram_addr[5]), 
         .D(ram_addr[4]), .Z(n126_adj_27)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_44_i126_4_lut.init = 16'h3a30;
    LUT4 Address_7__I_0_Mux_23_i94_3_lut_4_lut (.A(ram_addr[1]), .B(n4015), 
         .C(ram_addr[4]), .D(n78_adj_20), .Z(n94_adj_28)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_23_i94_3_lut_4_lut.init = 16'h1f10;
    LUT4 i5455_2_lut_3_lut (.A(ram_addr[1]), .B(ram_addr[0]), .C(ram_addr[2]), 
         .Z(n70)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5455_2_lut_3_lut.init = 16'he0e0;
    LUT4 i5837_2_lut_3_lut (.A(ram_addr[0]), .B(ram_addr[1]), .C(ram_addr[2]), 
         .Z(n92)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i5837_2_lut_3_lut.init = 16'hf8f8;
    LUT4 Address_7__I_0_Mux_84_i255_4_lut (.A(n127_adj_658), .B(n8400), 
         .C(ram_addr[7]), .D(n4_adj_659), .Z(\ram_data[84] )) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_84_i255_4_lut.init = 16'h0a3a;
    LUT4 i5540_2_lut (.A(n126_adj_24), .B(ram_addr[6]), .Z(n127_adj_658)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5540_2_lut.init = 16'h8888;
    PFUMX i22 (.BLUT(n11403), .ALUT(n11404), .C0(ram_addr[6]), .Z(n10824));
    LUT4 Address_7__I_0_Mux_46_i126_4_lut (.A(n94_c), .B(n3904), .C(ram_addr[5]), 
         .D(ram_addr[4]), .Z(n126_adj_29)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_46_i126_4_lut.init = 16'h0a3a;
    LUT4 Address_7__I_0_Mux_83_i255_4_lut (.A(n127_adj_658), .B(ram_addr[1]), 
         .C(ram_addr[7]), .D(n4_adj_659), .Z(\ram_data[83] )) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_83_i255_4_lut.init = 16'h0a3a;
    LUT4 Address_7__I_0_Mux_17_i127_3_lut_4_lut (.A(n61_adj_621), .B(n3843), 
         .C(ram_addr[6]), .D(n63_adj_610), .Z(n127_adj_30)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam Address_7__I_0_Mux_17_i127_3_lut_4_lut.init = 16'h4f40;
    LUT4 Address_7__I_0_Mux_82_i255_4_lut (.A(n127_adj_658), .B(n52), .C(ram_addr[7]), 
         .D(n4_adj_659), .Z(\ram_data[82] )) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_82_i255_4_lut.init = 16'h0aca;
    LUT4 i5474_2_lut (.A(ram_addr[2]), .B(ram_addr[3]), .Z(n4015)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5474_2_lut.init = 16'heeee;
    LUT4 Address_7__I_0_Mux_112_i127_3_lut_4_lut (.A(n61_adj_621), .B(n3843), 
         .C(ram_addr[6]), .D(n63_adj_5), .Z(n127_adj_31)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam Address_7__I_0_Mux_112_i127_3_lut_4_lut.init = 16'h4f40;
    LUT4 Address_7__I_0_Mux_50_i126_3_lut (.A(n4), .B(n125_adj_663), .C(ram_addr[5]), 
         .Z(n126_adj_32)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_50_i126_3_lut.init = 16'hcaca;
    LUT4 Address_7__I_0_Mux_50_i125_3_lut (.A(n109), .B(n78), .C(ram_addr[4]), 
         .Z(n125_adj_663)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_50_i125_3_lut.init = 16'h3a3a;
    LUT4 Address_7__I_0_Mux_48_i125_3_lut_4_lut (.A(ram_addr[1]), .B(n4015), 
         .C(ram_addr[4]), .D(n93), .Z(n125_adj_632)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_48_i125_3_lut_4_lut.init = 16'hfe0e;
    PFUMX Address_7__I_0_Mux_81_i255 (.BLUT(n11323), .ALUT(n254), .C0(ram_addr[7]), 
          .Z(\ram_data[81] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 i9097_2_lut (.A(ram_addr[0]), .B(ram_addr[1]), .Z(n52)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i9097_2_lut.init = 16'h7777;
    LUT4 Address_7__I_0_Mux_32_i127_4_lut_then_4_lut (.A(ram_addr[3]), .B(ram_addr[6]), 
         .C(ram_addr[5]), .D(n8434), .Z(n12153)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_32_i127_4_lut_then_4_lut.init = 16'h242c;
    LUT4 Address_7__I_0_Mux_24_i94_3_lut_4_lut (.A(ram_addr[1]), .B(n4015), 
         .C(ram_addr[4]), .D(n78), .Z(n94_adj_33)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_24_i94_3_lut_4_lut.init = 16'h1f10;
    PFUMX Address_7__I_0_Mux_25_i127 (.BLUT(n11292), .ALUT(n11293), .C0(ram_addr[6]), 
          .Z(n127_adj_34)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 i5666_2_lut_4_lut (.A(ram_addr[0]), .B(ram_addr[1]), .C(ram_addr[2]), 
         .D(ram_addr[3]), .Z(n109)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5666_2_lut_4_lut.init = 16'hfff8;
    LUT4 Address_7__I_0_Mux_32_i127_4_lut_else_4_lut (.A(ram_addr[3]), .B(ram_addr[2]), 
         .C(ram_addr[6]), .D(ram_addr[5]), .Z(n12152)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_32_i127_4_lut_else_4_lut.init = 16'h0070;
    LUT4 i1_2_lut (.A(ram_addr[1]), .B(ram_addr[0]), .Z(n8400)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i5844_2_lut_4_lut (.A(ram_addr[1]), .B(ram_addr[2]), .C(ram_addr[3]), 
         .D(ram_addr[4]), .Z(n94_adj_622)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i5844_2_lut_4_lut.init = 16'h001f;
    LUT4 Address_7__I_0_Mux_106_i94_3_lut_4_lut (.A(ram_addr[1]), .B(n4015), 
         .C(ram_addr[4]), .D(n8512), .Z(n94_adj_35)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_106_i94_3_lut_4_lut.init = 16'h1f10;
    PFUMX i9348 (.BLUT(n12152), .ALUT(n12153), .C0(ram_addr[4]), .Z(n12154));
    LUT4 Address_7__I_0_Mux_20_i127_4_lut (.A(n63_adj_36), .B(n78_adj_624), 
         .C(ram_addr[6]), .D(n3843), .Z(n127_adj_37)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_20_i127_4_lut.init = 16'hca0a;
    PFUMX Address_7__I_0_Mux_22_i127 (.BLUT(n11299), .ALUT(n11300), .C0(ram_addr[6]), 
          .Z(n127_adj_38)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 i5663_2_lut_3_lut (.A(n92), .B(ram_addr[3]), .C(ram_addr[4]), 
         .Z(n62)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5663_2_lut_3_lut.init = 16'h8080;
    LUT4 Address_7__I_0_Mux_53_i126_3_lut (.A(n62), .B(n125_adj_653), .C(ram_addr[5]), 
         .Z(n126_adj_39)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_53_i126_3_lut.init = 16'hcaca;
    LUT4 i8874_2_lut_4_lut_4_lut (.A(ram_addr[2]), .B(ram_addr[1]), .C(ram_addr[3]), 
         .D(n3843), .Z(n11349)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8874_2_lut_4_lut_4_lut.init = 16'h7a00;
    LUT4 i5536_4_lut (.A(n8400), .B(n4015), .C(n3904), .D(ram_addr[4]), 
         .Z(n125_adj_653)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5536_4_lut.init = 16'h5fdd;
    LUT4 i8920_2_lut_4_lut_4_lut (.A(ram_addr[2]), .B(ram_addr[1]), .C(ram_addr[3]), 
         .D(n4076), .Z(n11292)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8920_2_lut_4_lut_4_lut.init = 16'h7a00;
    LUT4 i5935_2_lut_3_lut (.A(n8434), .B(ram_addr[3]), .C(ram_addr[4]), 
         .Z(n94_adj_639)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i5935_2_lut_3_lut.init = 16'h0707;
    LUT4 Address_7__I_0_Mux_12_i127_4_lut (.A(n63_adj_40), .B(ram_addr[3]), 
         .C(ram_addr[6]), .D(n3843), .Z(n127_adj_41)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_12_i127_4_lut.init = 16'h3a0a;
    LUT4 i8887_4_lut_4_lut (.A(ram_addr[1]), .B(ram_addr[2]), .C(n4001), 
         .D(n8400), .Z(n11318)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8887_4_lut_4_lut.init = 16'h7040;
    PFUMX i9344 (.BLUT(n12146), .ALUT(n12147), .C0(ram_addr[3]), .Z(n12148));
    LUT4 i5560_2_lut (.A(n8434), .B(n63_adj_9), .Z(n63_adj_40)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5560_2_lut.init = 16'h8888;
    LUT4 i5549_4_lut (.A(ram_addr[2]), .B(n4076), .C(n70), .D(ram_addr[3]), 
         .Z(n63_adj_36)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i5549_4_lut.init = 16'h0c88;
    LUT4 Address_7__I_0_Mux_11_i127_4_lut (.A(n63_adj_647), .B(n3980), .C(ram_addr[6]), 
         .D(n3902), .Z(n127_adj_42)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_11_i127_4_lut.init = 16'h0a3a;
    LUT4 i5650_2_lut (.A(n92), .B(n63_adj_9), .Z(n63_adj_647)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5650_2_lut.init = 16'h8888;
    PFUMX i9342 (.BLUT(n12143), .ALUT(n12144), .C0(ram_addr[5]), .Z(n12145));
    LUT4 Address_7__I_0_Mux_21_i127_4_lut (.A(n63_adj_36), .B(n78_adj_20), 
         .C(ram_addr[6]), .D(n3843), .Z(n127_adj_43)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_21_i127_4_lut.init = 16'hca0a;
    LUT4 i5586_2_lut_3_lut (.A(n11144), .B(ram_addr[1]), .C(ram_addr[0]), 
         .Z(n125_adj_643)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i5586_2_lut_3_lut.init = 16'h0101;
    PFUMX i9340 (.BLUT(n12140), .ALUT(n12141), .C0(ram_addr[2]), .Z(n12142));
    LUT4 i5755_2_lut_3_lut (.A(ram_addr[3]), .B(ram_addr[4]), .C(ram_addr[5]), 
         .Z(n63_adj_9)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5755_2_lut_3_lut.init = 16'h8080;
    LUT4 i1282_2_lut (.A(ram_addr[4]), .B(ram_addr[5]), .Z(n4076)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i1282_2_lut.init = 16'h8888;
    LUT4 i5577_2_lut (.A(ram_addr[1]), .B(ram_addr[2]), .Z(n3980)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5577_2_lut.init = 16'h8888;
    LUT4 Address_7__I_0_Mux_15_i127_3_lut_4_lut (.A(n78), .B(n4076), .C(n8490), 
         .D(ram_addr[6]), .Z(n127_adj_44)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_15_i127_3_lut_4_lut.init = 16'h0f88;
    PFUMX i9338 (.BLUT(n12137), .ALUT(n12138), .C0(ram_addr[3]), .Z(n12139));
    LUT4 i1_3_lut_4_lut (.A(ram_addr[5]), .B(ram_addr[6]), .C(ram_addr[4]), 
         .D(n4015), .Z(n4_adj_659)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8854_4_lut (.A(n62), .B(ram_addr[6]), .C(n125_adj_634), .D(ram_addr[5]), 
         .Z(n11323)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8854_4_lut.init = 16'hc088;
    LUT4 i2_2_lut_4_lut (.A(ram_addr[4]), .B(ram_addr[5]), .C(n8400), 
         .D(n3904), .Z(n63_adj_616)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_2_lut_4_lut.init = 16'h8000;
    LUT4 Address_7__I_0_Mux_93_i126_4_lut (.A(n94_c), .B(n61_adj_621), .C(ram_addr[5]), 
         .D(ram_addr[4]), .Z(n126_adj_45)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_93_i126_4_lut.init = 16'h0a3a;
    LUT4 i5552_2_lut_3_lut (.A(ram_addr[5]), .B(ram_addr[6]), .C(n11144), 
         .Z(n254)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i5552_2_lut_3_lut.init = 16'h0101;
    LUT4 Address_7__I_0_Mux_95_i126_4_lut (.A(n93_adj_635), .B(n8488), .C(ram_addr[5]), 
         .D(ram_addr[4]), .Z(n126_adj_46)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_95_i126_4_lut.init = 16'h3a30;
    PFUMX Address_7__I_0_Mux_91_i126 (.BLUT(n11325), .ALUT(n11327), .C0(ram_addr[5]), 
          .Z(n126_adj_47)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=61 */ ;
    LUT4 n52_bdd_2_lut (.A(ram_addr[3]), .B(n12076), .Z(n12077)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n52_bdd_2_lut.init = 16'hdddd;
    LUT4 i5908_2_lut_4_lut (.A(ram_addr[1]), .B(ram_addr[2]), .C(ram_addr[3]), 
         .D(n3843), .Z(n8484)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam i5908_2_lut_4_lut.init = 16'he0ff;
    LUT4 Address_7__I_0_Mux_115_i127_3_lut_4_lut (.A(n8434), .B(n63_adj_9), 
         .C(n8490), .D(ram_addr[6]), .Z(n127_adj_48)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_115_i127_3_lut_4_lut.init = 16'h0f88;
    LUT4 Address_7__I_0_Mux_110_i78_3_lut_4_lut (.A(n70), .B(ram_addr[1]), 
         .C(ram_addr[2]), .D(ram_addr[3]), .Z(n78_adj_612)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_110_i78_3_lut_4_lut.init = 16'h3faa;
    PFUMX i9336 (.BLUT(n12134), .ALUT(n12135), .C0(ram_addr[1]), .Z(n12136));
    LUT4 Address_7__I_0_Mux_107_i94_3_lut_4_lut (.A(n61), .B(ram_addr[3]), 
         .C(n8434), .D(ram_addr[4]), .Z(n94_adj_49)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B+(C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam Address_7__I_0_Mux_107_i94_3_lut_4_lut.init = 16'h03aa;
    LUT4 i5559_4_lut (.A(n70_adj_629), .B(n4076), .C(n3980), .D(ram_addr[3]), 
         .Z(n63_adj_3)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i5559_4_lut.init = 16'h0c88;
    LUT4 i5553_3_lut (.A(n3980), .B(n4076), .C(ram_addr[3]), .Z(n63)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i5553_3_lut.init = 16'h4848;
    LUT4 i8851_2_lut_3_lut (.A(n63_adj_9), .B(ram_addr[1]), .C(ram_addr[2]), 
         .Z(n11403)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i8851_2_lut_3_lut.init = 16'h8080;
    PFUMX i9334 (.BLUT(n12131), .ALUT(n12132), .C0(ram_addr[1]), .Z(n12133));
    LUT4 i5696_2_lut_3_lut (.A(ram_addr[0]), .B(ram_addr[1]), .C(ram_addr[2]), 
         .Z(n70_adj_629)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5696_2_lut_3_lut.init = 16'h8080;
    LUT4 i9056_2_lut (.A(ram_addr[4]), .B(ram_addr[5]), .Z(n3843)) /* synthesis lut_function=(!(A+(B))) */ ;   // f:/fpga_project/baseboard/lab11_picture_display/lcd_ram.v(25[3] 187[10])
    defparam i9056_2_lut.init = 16'h1111;
    
endmodule
