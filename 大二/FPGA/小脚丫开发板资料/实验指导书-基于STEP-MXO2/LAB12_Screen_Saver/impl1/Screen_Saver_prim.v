// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Tue Jan 29 10:24:14 2019
//
// Verilog Description of module Screen_Saver
//

module Screen_Saver (clk, rst_n, sync_v, sync_h, vga) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(21[8:20])
    input clk;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(23[11:14])
    input rst_n;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(24[11:16])
    output sync_v;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(25[12:18])
    output sync_h;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(26[12:18])
    output [2:0]vga;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(27[16:19])
    
    wire clk_c /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(23[11:14])
    wire clk_240mhz /* synthesis SET_AS_NETWORK=clk_240mhz, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(30[10:20])
    wire clk_40mhz /* synthesis is_clock=1, SET_AS_NETWORK=clk_40mhz */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(39[10:19])
    
    wire GND_net, rst_n_c, sync_v_c, sync_h_c, vga_c_2, vga_c_1, 
        vga_c_0;
    wire [1:0]cnt;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(38[14:17])
    wire [6:0]rom_addr;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(53[12:20])
    wire [127:0]rom_data;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(54[14:22])
    
    wire n2853, n2852, n1631, n2851, clk_40mhz_N_8, n180;
    wire [15:0]x_set;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(33[14:19])
    wire [15:0]y_set;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(33[20:25])
    
    wire x_flag, y_flag, n3887, n3886, n2805, n3885, n2850;
    wire [15:0]rom_addr_6__N_152;
    wire [15:0]rom_addr_6__N_170;
    
    wire n1629, n2804, n550, n549, n548, n547, n546, n545, n544, 
        n543, n542, n1485, n523, n522, n521, n8, n2849, n4178, 
        n515, n514, n513, n512, n511, n510, n509, n508, n2803, 
        n181, n3874, n520, n519, n518, n517, n516, n3413, VCC_net, 
        n557, n988, n3412, n46, n3942, n3411, n31, n4653, n4647, 
        n23, n4645, n46_adj_372, n62, n3408, n3405, n3721, n4174, 
        n4173, n61, n4089, n4146, n4145, n63, n61_adj_373, n63_adj_374, 
        n4144, n2390, n3856, n63_adj_375, n63_adj_376, n4074, n4170, 
        n62_adj_377, n4169, n63_adj_378, n126, n126_adj_379, n63_adj_380, 
        n126_adj_381, n3410, n126_adj_382, n61_adj_383, n4137, n126_adj_384, 
        n3420, n126_adj_385, n4168, n126_adj_386, n63_adj_387, n78, 
        n94, n78_adj_388, n126_adj_389, n4167, n94_adj_390, n77, 
        n3391, n2810, n126_adj_391, n3836, n126_adj_392, n94_adj_393, 
        n3835, n126_adj_394, n126_adj_395, n31_adj_396, n126_adj_397, 
        n3288, n126_adj_398, n1121, n126_adj_399, n63_adj_400, n3377, 
        n3830, n3318, n3904, n3903, n2325, n3267, n3774, n2314, 
        n4163, n3980, n3717, n94_adj_401, n4162, n4161, n2809, 
        n3716, n2808, n2856, n3276, n2807, n3647, n2855, n2806, 
        n2854, clk_240mhz_enable_91, n94_adj_402, n126_adj_403, n3335, 
        n3507, n4155, n126_adj_404, n1258, n4141, n94_adj_405, n3964, 
        n3996, n94_adj_406, n4136, n4153, n94_adj_407, n4208, n94_adj_408, 
        n3572, n28, n126_adj_409, n78_adj_410, n126_adj_411, n4135, 
        n3775, n3301, n3771, n3770, n3768, n3970, n4152, n3767, 
        n3701, n4140, n4150, n4149, n14, n4148, n3404, n3500, 
        n4196, n3510, n3509, n4654, n3496, n3495, n3494, n15, 
        n4188, n4187, n3203, n3463, n4186, n1583, n4182, n1628, 
        n3889, n4181, n4147, clk_240mhz_enable_95, clk_240mhz_enable_90, 
        n556, n555, n554, n553, n552, clk_240mhz_enable_47, n551;
    
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt[0]), .B(cnt[1]), .C(n3267), .D(clk_40mhz), 
         .Z(clk_240mhz_enable_90)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(46[6:15])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0040;
    OB sync_h_pad (.I(sync_h_c), .O(sync_h));   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(26[12:18])
    ROM128X1A Address_6__I_0_Mux_57 (.AD0(rom_addr[0]), .AD1(rom_addr[1]), 
            .AD2(rom_addr[2]), .AD3(rom_addr[3]), .AD4(rom_addr[4]), .AD5(rom_addr[5]), 
            .AD6(rom_addr[6]), .DO0(rom_data[57])) /* synthesis initstate=0x007FFFFFFFF9FF8000000003FFFFFF00 */ ;
    defparam Address_6__I_0_Mux_57.initval = 128'h007FFFFFFFF9FF8000000003FFFFFF00;
    ROM128X1A Address_6__I_0_Mux_69 (.AD0(rom_addr[0]), .AD1(rom_addr[1]), 
            .AD2(rom_addr[2]), .AD3(rom_addr[3]), .AD4(rom_addr[4]), .AD5(rom_addr[5]), 
            .AD6(rom_addr[6]), .DO0(rom_data[69])) /* synthesis initstate=0x07FFFFFFFFFFE0FFFC000007FE00FFF0 */ ;
    defparam Address_6__I_0_Mux_69.initval = 128'h07FFFFFFFFFFE0FFFC000007FE00FFF0;
    ROM128X1A Address_6__I_0_Mux_75 (.AD0(rom_addr[0]), .AD1(rom_addr[1]), 
            .AD2(rom_addr[2]), .AD3(rom_addr[3]), .AD4(rom_addr[4]), .AD5(rom_addr[5]), 
            .AD6(rom_addr[6]), .DO0(rom_data[75])) /* synthesis initstate=0x03FFFFFFFFFF87FFFC001FFFFFFFFF80 */ ;
    defparam Address_6__I_0_Mux_75.initval = 128'h03FFFFFFFFFF87FFFC001FFFFFFFFF80;
    ROM128X1A Address_6__I_0_Mux_77 (.AD0(rom_addr[0]), .AD1(rom_addr[1]), 
            .AD2(rom_addr[2]), .AD3(rom_addr[3]), .AD4(rom_addr[4]), .AD5(rom_addr[5]), 
            .AD6(rom_addr[6]), .DO0(rom_data[77])) /* synthesis initstate=0x01FFFFFFFFFE1FF800000007FFFFFF00 */ ;
    defparam Address_6__I_0_Mux_77.initval = 128'h01FFFFFFFFFE1FF800000007FFFFFF00;
    LUT4 i3183_2_lut_3_lut_4_lut (.A(cnt[0]), .B(cnt[1]), .C(n3647), .D(clk_40mhz), 
         .Z(clk_240mhz_enable_95)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(46[6:15])
    defparam i3183_2_lut_3_lut_4_lut.init = 16'h0040;
    ROM128X1A Address_6__I_0_Mux_58 (.AD0(rom_addr[0]), .AD1(rom_addr[1]), 
            .AD2(rom_addr[2]), .AD3(rom_addr[3]), .AD4(rom_addr[4]), .AD5(rom_addr[5]), 
            .AD6(rom_addr[6]), .DO0(rom_data[58])) /* synthesis initstate=0x007FFFFFFFF9FFC00000001FFFFFFF80 */ ;
    defparam Address_6__I_0_Mux_58.initval = 128'h007FFFFFFFF9FFC00000001FFFFFFF80;
    CCU2D add_162_17 (.A0(x_set[14]), .B0(x_flag), .C0(GND_net), .D0(GND_net), 
          .A1(x_set[15]), .B1(x_flag), .C1(GND_net), .D1(GND_net), .CIN(n2810), 
          .S0(n509), .S1(n508));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(110[7:22])
    defparam add_162_17.INIT0 = 16'h5999;
    defparam add_162_17.INIT1 = 16'h5999;
    defparam add_162_17.INJECT1_0 = "NO";
    defparam add_162_17.INJECT1_1 = "NO";
    CCU2D add_162_15 (.A0(x_set[12]), .B0(x_flag), .C0(GND_net), .D0(GND_net), 
          .A1(x_set[13]), .B1(x_flag), .C1(GND_net), .D1(GND_net), .CIN(n2809), 
          .COUT(n2810), .S0(n511), .S1(n510));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(110[7:22])
    defparam add_162_15.INIT0 = 16'h5999;
    defparam add_162_15.INIT1 = 16'h5999;
    defparam add_162_15.INJECT1_0 = "NO";
    defparam add_162_15.INJECT1_1 = "NO";
    CCU2D add_180_17 (.A0(y_set[14]), .B0(y_flag), .C0(GND_net), .D0(GND_net), 
          .A1(y_set[15]), .B1(y_flag), .C1(GND_net), .D1(GND_net), .CIN(n2856), 
          .S0(n543), .S1(n542));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(126[7:22])
    defparam add_180_17.INIT0 = 16'h5999;
    defparam add_180_17.INIT1 = 16'h5999;
    defparam add_180_17.INJECT1_0 = "NO";
    defparam add_180_17.INJECT1_1 = "NO";
    CCU2D add_180_15 (.A0(y_set[12]), .B0(y_flag), .C0(GND_net), .D0(GND_net), 
          .A1(y_set[13]), .B1(y_flag), .C1(GND_net), .D1(GND_net), .CIN(n2855), 
          .COUT(n2856), .S0(n545), .S1(n544));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(126[7:22])
    defparam add_180_15.INIT0 = 16'h5999;
    defparam add_180_15.INIT1 = 16'h5999;
    defparam add_180_15.INJECT1_0 = "NO";
    defparam add_180_15.INJECT1_1 = "NO";
    CCU2D add_180_13 (.A0(y_set[10]), .B0(y_flag), .C0(GND_net), .D0(GND_net), 
          .A1(y_set[11]), .B1(y_flag), .C1(GND_net), .D1(GND_net), .CIN(n2854), 
          .COUT(n2855), .S0(n547), .S1(n546));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(126[7:22])
    defparam add_180_13.INIT0 = 16'h5999;
    defparam add_180_13.INIT1 = 16'h5999;
    defparam add_180_13.INJECT1_0 = "NO";
    defparam add_180_13.INJECT1_1 = "NO";
    CCU2D add_162_13 (.A0(x_set[10]), .B0(x_flag), .C0(GND_net), .D0(GND_net), 
          .A1(x_set[11]), .B1(x_flag), .C1(GND_net), .D1(GND_net), .CIN(n2808), 
          .COUT(n2809), .S0(n513), .S1(n512));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(110[7:22])
    defparam add_162_13.INIT0 = 16'h5999;
    defparam add_162_13.INIT1 = 16'h5999;
    defparam add_162_13.INJECT1_0 = "NO";
    defparam add_162_13.INJECT1_1 = "NO";
    CCU2D add_180_11 (.A0(y_set[8]), .B0(y_flag), .C0(GND_net), .D0(GND_net), 
          .A1(y_set[9]), .B1(y_flag), .C1(GND_net), .D1(GND_net), .CIN(n2853), 
          .COUT(n2854), .S0(n549), .S1(n548));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(126[7:22])
    defparam add_180_11.INIT0 = 16'h5999;
    defparam add_180_11.INIT1 = 16'h5999;
    defparam add_180_11.INJECT1_0 = "NO";
    defparam add_180_11.INJECT1_1 = "NO";
    CCU2D add_180_9 (.A0(rom_addr_6__N_170[6]), .B0(y_flag), .C0(GND_net), 
          .D0(GND_net), .A1(y_set[7]), .B1(y_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n2852), .COUT(n2853), .S0(n551), .S1(n550));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(126[7:22])
    defparam add_180_9.INIT0 = 16'h5999;
    defparam add_180_9.INIT1 = 16'h5999;
    defparam add_180_9.INJECT1_0 = "NO";
    defparam add_180_9.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3IX cnt_468__i1 (.D(n14), .CK(clk_240mhz), .CD(n4182), .Q(cnt[1]));   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(49[19:29])
    defparam cnt_468__i1.GSR = "ENABLED";
    FD1S3AX clk_40mhz_14 (.D(clk_40mhz_N_8), .CK(clk_240mhz), .Q(clk_40mhz));   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(45[11] 50[5])
    defparam clk_40mhz_14.GSR = "ENABLED";
    CCU2D add_162_11 (.A0(x_set[8]), .B0(x_flag), .C0(GND_net), .D0(GND_net), 
          .A1(x_set[9]), .B1(x_flag), .C1(GND_net), .D1(GND_net), .CIN(n2807), 
          .COUT(n2808), .S0(n515), .S1(n514));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(110[7:22])
    defparam add_162_11.INIT0 = 16'h5999;
    defparam add_162_11.INIT1 = 16'h5999;
    defparam add_162_11.INJECT1_0 = "NO";
    defparam add_162_11.INJECT1_1 = "NO";
    CCU2D add_162_9 (.A0(rom_addr_6__N_152[6]), .B0(x_flag), .C0(GND_net), 
          .D0(GND_net), .A1(x_set[7]), .B1(x_flag), .C1(GND_net), .D1(GND_net), 
          .CIN(n2806), .COUT(n2807), .S0(n517), .S1(n516));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(110[7:22])
    defparam add_162_9.INIT0 = 16'h5999;
    defparam add_162_9.INIT1 = 16'h5999;
    defparam add_162_9.INJECT1_0 = "NO";
    defparam add_162_9.INJECT1_1 = "NO";
    CCU2D add_162_7 (.A0(rom_addr_6__N_152[4]), .B0(x_flag), .C0(GND_net), 
          .D0(GND_net), .A1(rom_addr_6__N_152[5]), .B1(x_flag), .C1(GND_net), 
          .D1(GND_net), .CIN(n2805), .COUT(n2806), .S0(n519), .S1(n518));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(110[7:22])
    defparam add_162_7.INIT0 = 16'h5999;
    defparam add_162_7.INIT1 = 16'h5999;
    defparam add_162_7.INJECT1_0 = "NO";
    defparam add_162_7.INJECT1_1 = "NO";
    CCU2D add_180_7 (.A0(rom_addr_6__N_170[4]), .B0(y_flag), .C0(GND_net), 
          .D0(GND_net), .A1(rom_addr_6__N_170[5]), .B1(y_flag), .C1(GND_net), 
          .D1(GND_net), .CIN(n2851), .COUT(n2852), .S0(n553), .S1(n552));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(126[7:22])
    defparam add_180_7.INIT0 = 16'h5999;
    defparam add_180_7.INIT1 = 16'h5999;
    defparam add_180_7.INJECT1_0 = "NO";
    defparam add_180_7.INJECT1_1 = "NO";
    CCU2D add_180_5 (.A0(rom_addr_6__N_170[2]), .B0(y_flag), .C0(GND_net), 
          .D0(GND_net), .A1(rom_addr_6__N_170[3]), .B1(y_flag), .C1(GND_net), 
          .D1(GND_net), .CIN(n2850), .COUT(n2851), .S0(n555), .S1(n554));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(126[7:22])
    defparam add_180_5.INIT0 = 16'h5999;
    defparam add_180_5.INIT1 = 16'h5999;
    defparam add_180_5.INJECT1_0 = "NO";
    defparam add_180_5.INJECT1_1 = "NO";
    CCU2D add_162_5 (.A0(rom_addr_6__N_152[2]), .B0(x_flag), .C0(GND_net), 
          .D0(GND_net), .A1(rom_addr_6__N_152[3]), .B1(x_flag), .C1(GND_net), 
          .D1(GND_net), .CIN(n2804), .COUT(n2805), .S0(n521), .S1(n520));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(110[7:22])
    defparam add_162_5.INIT0 = 16'h5999;
    defparam add_162_5.INIT1 = 16'h5999;
    defparam add_162_5.INJECT1_0 = "NO";
    defparam add_162_5.INJECT1_1 = "NO";
    CCU2D add_180_3 (.A0(rom_addr_6__N_170[0]), .B0(y_flag), .C0(GND_net), 
          .D0(GND_net), .A1(rom_addr_6__N_170[1]), .B1(y_flag), .C1(GND_net), 
          .D1(GND_net), .CIN(n2849), .COUT(n2850), .S0(n557), .S1(n556));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(126[7:22])
    defparam add_180_3.INIT0 = 16'h5666;
    defparam add_180_3.INIT1 = 16'h5999;
    defparam add_180_3.INJECT1_0 = "NO";
    defparam add_180_3.INJECT1_1 = "NO";
    CCU2D add_162_3 (.A0(rom_addr_6__N_152[0]), .B0(x_flag), .C0(GND_net), 
          .D0(GND_net), .A1(rom_addr_6__N_152[1]), .B1(x_flag), .C1(GND_net), 
          .D1(GND_net), .CIN(n2803), .COUT(n2804), .S0(n523), .S1(n522));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(110[7:22])
    defparam add_162_3.INIT0 = 16'h5666;
    defparam add_162_3.INIT1 = 16'h5999;
    defparam add_162_3.INJECT1_0 = "NO";
    defparam add_162_3.INJECT1_1 = "NO";
    OB sync_v_pad (.I(sync_v_c), .O(sync_v));   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(25[12:18])
    ROM128X1A Address_6__I_0_Mux_78 (.AD0(rom_addr[0]), .AD1(rom_addr[1]), 
            .AD2(rom_addr[2]), .AD3(rom_addr[3]), .AD4(rom_addr[4]), .AD5(rom_addr[5]), 
            .AD6(rom_addr[6]), .DO0(rom_data[78])) /* synthesis initstate=0x01FFFFFFFFFE3FE000000001FFFFFE00 */ ;
    defparam Address_6__I_0_Mux_78.initval = 128'h01FFFFFFFFFE3FE000000001FFFFFE00;
    CCU2D add_180_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_flag), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2849));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(126[7:22])
    defparam add_180_1.INIT0 = 16'hF000;
    defparam add_180_1.INIT1 = 16'h0aaa;
    defparam add_180_1.INJECT1_0 = "NO";
    defparam add_180_1.INJECT1_1 = "NO";
    FD1S3IX cnt_468__i0 (.D(n15), .CK(clk_240mhz), .CD(n4182), .Q(cnt[0]));   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(49[19:29])
    defparam cnt_468__i0.GSR = "ENABLED";
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(24[11:16])
    IB clk_pad (.I(clk), .O(clk_c));   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(23[11:14])
    OB vga_pad_0 (.I(vga_c_0), .O(vga[0]));   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(27[16:19])
    OB vga_pad_1 (.I(vga_c_1), .O(vga[1]));   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(27[16:19])
    LUT4 i2281_2_lut (.A(cnt[1]), .B(cnt[0]), .Z(n14)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(49[19:29])
    defparam i2281_2_lut.init = 16'h6666;
    OB vga_pad_2 (.I(vga_c_2), .O(vga[2]));   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(27[16:19])
    LUT4 i2279_1_lut (.A(cnt[0]), .Z(n15)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(49[19:29])
    defparam i2279_1_lut.init = 16'h5555;
    CCU2D add_162_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_flag), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2803));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(110[7:22])
    defparam add_162_1.INIT0 = 16'hF000;
    defparam add_162_1.INIT1 = 16'h0aaa;
    defparam add_162_1.INJECT1_0 = "NO";
    defparam add_162_1.INJECT1_1 = "NO";
    LUT4 i3196_4_lut_4_lut (.A(clk_240mhz_enable_91), .B(n4174), .C(n8), 
         .D(n1583), .Z(clk_240mhz_enable_47)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(85[7] 89[16])
    defparam i3196_4_lut_4_lut.init = 16'h0008;
    LUT4 i3162_2_lut_rep_74 (.A(cnt[0]), .B(cnt[1]), .Z(n4182)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(46[6:15])
    defparam i3162_2_lut_rep_74.init = 16'h4444;
    LUT4 i1_2_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(clk_40mhz), .Z(clk_40mhz_N_8)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(46[6:15])
    defparam i1_2_lut_3_lut.init = 16'hb4b4;
    LUT4 i3193_2_lut_rep_50_3_lut (.A(cnt[0]), .B(cnt[1]), .C(clk_40mhz), 
         .Z(clk_240mhz_enable_91)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(46[6:15])
    defparam i3193_2_lut_rep_50_3_lut.init = 16'h0404;
    LUT4 i3108_2_lut_3_lut_4_lut (.A(cnt[0]), .B(cnt[1]), .C(n3572), .D(clk_40mhz), 
         .Z(n988)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(46[6:15])
    defparam i3108_2_lut_3_lut_4_lut.init = 16'h0040;
    GSR GSR_INST (.GSR(rst_n_c));
    step_rom u3 (.rom_addr({rom_addr}), .n126(n126_adj_411), .\rom_data[99] (rom_data[99]), 
            .n126_adj_41(n126_adj_409), .\rom_data[98] (rom_data[98]), .\rom_data[59] (rom_data[59]), 
            .n126_adj_42(n126_adj_403), .\rom_data[79] (rom_data[79]), .n4168(n4168), 
            .\rom_data[60] (rom_data[60]), .n4150(n4150), .n63(n63_adj_375), 
            .n126_adj_43(n126_adj_386), .n3463(n3463), .\rom_data[61] (rom_data[61]), 
            .n3391(n3391), .\rom_data[70] (rom_data[70]), .n126_adj_44(n126_adj_389), 
            .\rom_data[40] (rom_data[40]), .\rom_data[71] (rom_data[71]), 
            .n181(n181), .n3886(n3886), .n4196(n4196), .n4169(n4169), 
            .n4654(n4654), .n46(n46), .n3996(n3996), .n3775(n3775), 
            .n46_adj_45(n46_adj_372), .n63_adj_46(n63), .n4162(n4162), 
            .\rom_data[72] (rom_data[72]), .n61(n61), .n78(n78_adj_388), 
            .n3716(n3716), .n4170(n4170), .n4152(n4152), .n3495(n3495), 
            .n4167(n4167), .n3767(n3767), .n4163(n4163), .n94(n94_adj_401), 
            .n3335(n3335), .n28(n28), .n4147(n4147), .n2390(n2390), 
            .\rom_data[66] (rom_data[66]), .n3288(n3288), .\rom_data[64] (rom_data[64]), 
            .n4181(n4181), .n3410(n3410), .n62(n62_adj_377), .n3903(n3903), 
            .n3904(n3904), .n31(n31), .n3874(n3874), .n94_adj_47(n94_adj_393), 
            .n61_adj_48(n61_adj_383), .n126_adj_49(n126_adj_404), .n4647(n4647), 
            .n3964(n3964), .n3408(n3408), .n3318(n3318), .n4188(n4188), 
            .n2325(n2325), .n3701(n3701), .n3496(n3496), .n78_adj_50(n78), 
            .n126_adj_51(n126), .n3405(n3405), .n94_adj_52(n94_adj_406), 
            .n126_adj_53(n126_adj_394), .n4149(n4149), .n126_adj_54(n126_adj_384), 
            .n4155(n4155), .n3404(n3404), .n126_adj_55(n126_adj_381), 
            .n4178(n4178), .n4089(n4089), .n4145(n4145), .n4146(n4146), 
            .n3856(n3856), .n4186(n4186), .n3276(n3276), .n3377(n3377), 
            .n126_adj_56(n126_adj_399), .n3507(n3507), .n1121(n1121), 
            .n63_adj_57(n63_adj_374), .\rom_data[76] (rom_data[76]), .n63_adj_58(n63_adj_378), 
            .n63_adj_59(n63_adj_380), .n180(n180), .n3836(n3836), .n4653(n4653), 
            .n126_adj_60(n126_adj_385), .n4140(n4140), .n4173(n4173), 
            .\rom_data[96] (rom_data[96]), .n3413(n3413), .\rom_data[101] (rom_data[101]), 
            .n126_adj_61(n126_adj_398), .n4136(n4136), .n23(n23), .n63_adj_62(n63_adj_387), 
            .n3771(n3771), .n94_adj_63(n94_adj_408), .n94_adj_64(n94_adj_390), 
            .n3412(n3412), .n3203(n3203), .n31_adj_65(n31_adj_396), .n1628(n1628), 
            .n1629(n1629), .n3889(n3889), .n1631(n1631), .n126_adj_66(n126_adj_397), 
            .n3830(n3830), .\rom_data[100] (rom_data[100]), .n4187(n4187), 
            .n1258(n1258), .n78_adj_67(n78_adj_410), .n4137(n4137), .n3980(n3980), 
            .n4161(n4161), .n126_adj_68(n126_adj_379), .n94_adj_69(n94), 
            .n94_adj_70(n94_adj_405), .\rom_data[74] (rom_data[74]), .n4135(n4135), 
            .n2314(n2314), .n4074(n4074), .n3494(n3494), .n126_adj_71(n126_adj_382), 
            .\rom_data[102] (rom_data[102]), .n3774(n3774), .n3301(n3301), 
            .n1485(n1485), .n3510(n3510), .n4141(n4141), .n63_adj_72(n63_adj_400), 
            .\rom_data[56] (rom_data[56]), .n3770(n3770), .n126_adj_73(n126_adj_392), 
            .n126_adj_74(n126_adj_391), .\rom_data[63] (rom_data[63]), .n3887(n3887), 
            .n62_adj_75(n62), .n3970(n3970), .n77(n77), .n3717(n3717), 
            .n4645(n4645), .n3942(n3942), .n61_adj_76(n61_adj_373), .n126_adj_77(n126_adj_395), 
            .n4153(n4153), .n3500(n3500), .n94_adj_78(n94_adj_402), .n3420(n3420), 
            .n4148(n4148), .n3509(n3509), .n94_adj_79(n94_adj_407), .n3721(n3721), 
            .n3411(n3411), .n4144(n4144), .n3885(n3885), .n63_adj_80(n63_adj_376), 
            .n3835(n3835), .n3768(n3768), .n4208(n4208), .\rom_data[68] (rom_data[68])) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(70[10] 74[2])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    Vga_Module u2 (.rom_addr_6__N_152({Open_0, Open_1, Open_2, Open_3, 
            Open_4, Open_5, Open_6, Open_7, Open_8, rom_addr_6__N_152[6:0]}), 
            .clk_240mhz(clk_240mhz), .clk_240mhz_enable_95(clk_240mhz_enable_95), 
            .n507({n508, n509, n510, n511, n512, n513, n514, n515, 
            n516, n517, n518, n519, n520, n521, n522, n523}), 
            .rom_addr_6__N_170({Open_9, Open_10, Open_11, Open_12, Open_13, 
            Open_14, Open_15, Open_16, Open_17, rom_addr_6__N_170[6:3], 
            Open_18, Open_19, rom_addr_6__N_170[0]}), .n541({n542, n543, 
            n544, n545, n546, n547, n548, n549, n550, n551, 
            n552, n553, n554, n555, n556, n557}), .n174({Open_20, 
            Open_21, Open_22, Open_23, Open_24, n180, n181}), .sync_h_c(sync_h_c), 
            .clk_40mhz(clk_40mhz), .sync_v_c(sync_v_c), .GND_net(GND_net), 
            .clk_240mhz_enable_91(clk_240mhz_enable_91), .rom_addr({rom_addr}), 
            .x_flag(x_flag), .clk_240mhz_enable_47(clk_240mhz_enable_47), 
            .y_flag(y_flag), .vga_c_2(vga_c_2), .n988(n988), .n3980(n3980), 
            .n4174(n4174), .n1583(n1583), .n8(n8), .n3885(n3885), .n3889(n3889), 
            .n4150(n4150), .n3970(n3970), .n126(n126_adj_398), .n3964(n3964), 
            .n126_adj_1(n126_adj_399), .n46(n46_adj_372), .n62(n62), .n1485(n1485), 
            .\x_set[14] (x_set[14]), .\x_set[15] (x_set[15]), .n28(n28), 
            .\y_set[15] (y_set[15]), .\y_set[13] (y_set[13]), .\y_set[14] (y_set[14]), 
            .\x_set[7] (x_set[7]), .\y_set[11] (y_set[11]), .\y_set[12] (y_set[12]), 
            .n3942(n3942), .\x_set[9] (x_set[9]), .\x_set[10] (x_set[10]), 
            .\x_set[8] (x_set[8]), .\y_set[9] (y_set[9]), .\y_set[10] (y_set[10]), 
            .\rom_addr_6__N_170[1] (rom_addr_6__N_170[1]), .\rom_addr_6__N_170[2] (rom_addr_6__N_170[2]), 
            .\y_set[7] (y_set[7]), .\y_set[8] (y_set[8]), .n3404(n3404), 
            .n3405(n3405), .clk_240mhz_enable_90(clk_240mhz_enable_90), 
            .n4653(n4653), .n3408(n3408), .\x_set[12] (x_set[12]), .\x_set[13] (x_set[13]), 
            .\x_set[11] (x_set[11]), .n63(n63_adj_374), .n4152(n4152), 
            .vga_c_1(vga_c_1), .n3903(n3903), .n3996(n3996), .n3267(n3267), 
            .n3572(n3572), .n3412(n3412), .n3413(n3413), .n3301(n3301), 
            .n3887(n3887), .n3886(n3886), .n126_adj_2(n126_adj_391), .n126_adj_3(n126_adj_392), 
            .n31(n31), .n3377(n3377), .n4155(n4155), .n4168(n4168), 
            .n1258(n1258), .n3391(n3391), .n3856(n3856), .n2314(n2314), 
            .\rom_data[63] (rom_data[63]), .n61(n61_adj_383), .n4186(n4186), 
            .n126_adj_4(n126_adj_384), .n3203(n3203), .n126_adj_5(n126_adj_379), 
            .\rom_data[78] (rom_data[78]), .\rom_data[79] (rom_data[79]), 
            .\rom_data[76] (rom_data[76]), .\rom_data[77] (rom_data[77]), 
            .\rom_data[72] (rom_data[72]), .\rom_data[100] (rom_data[100]), 
            .\rom_data[101] (rom_data[101]), .\rom_data[96] (rom_data[96]), 
            .\rom_data[40] (rom_data[40]), .n94(n94_adj_390), .n4173(n4173), 
            .\rom_data[60] (rom_data[60]), .\rom_data[61] (rom_data[61]), 
            .\rom_data[58] (rom_data[58]), .\rom_data[59] (rom_data[59]), 
            .\rom_data[56] (rom_data[56]), .\rom_data[57] (rom_data[57]), 
            .\rom_data[70] (rom_data[70]), .\rom_data[71] (rom_data[71]), 
            .n4187(n4187), .\rom_data[68] (rom_data[68]), .\rom_data[69] (rom_data[69]), 
            .n3775(n3775), .n3774(n3774), .n4153(n4153), .n126_adj_6(n126_adj_404), 
            .n3318(n3318), .n23(n23), .n3276(n3276), .n126_adj_7(n126_adj_385), 
            .n3716(n3716), .n3717(n3717), .n2325(n2325), .n3420(n3420), 
            .n63_adj_8(n63_adj_378), .n126_adj_9(n126), .n4089(n4089), 
            .n94_adj_10(n94_adj_405), .n3721(n3721), .n4645(n4645), .n4162(n4162), 
            .n63_adj_11(n63_adj_375), .n63_adj_12(n63_adj_376), .n4144(n4144), 
            .n4188(n4188), .n77(n77), .n1628(n1628), .n4181(n4181), 
            .n4146(n4146), .n4074(n4074), .n4647(n4647), .n4163(n4163), 
            .n4145(n4145), .n126_adj_13(n126_adj_382), .n4167(n4167), 
            .n4196(n4196), .n3701(n3701), .n3836(n3836), .n3835(n3835), 
            .n61_adj_14(n61), .n94_adj_15(n94_adj_406), .n94_adj_16(n94_adj_407), 
            .\rom_data[74] (rom_data[74]), .\rom_data[75] (rom_data[75]), 
            .\rom_data[102] (rom_data[102]), .n63_adj_17(n63), .n94_adj_18(n94_adj_402), 
            .n126_adj_19(n126_adj_403), .n3904(n3904), .n4147(n4147), 
            .n4136(n4136), .n3874(n3874), .n3288(n3288), .n4148(n4148), 
            .n3335(n3335), .n4170(n4170), .n3830(n3830), .n3771(n3771), 
            .n3770(n3770), .\rom_data[98] (rom_data[98]), .\rom_data[99] (rom_data[99]), 
            .n3768(n3768), .n3767(n3767), .n1631(n1631), .n4161(n4161), 
            .n1629(n1629), .n3647(n3647), .n3509(n3509), .n3510(n3510), 
            .n3410(n3410), .n3411(n3411), .n78(n78), .n4178(n4178), 
            .n126_adj_20(n126_adj_409), .n63_adj_21(n63_adj_400), .\rom_data[64] (rom_data[64]), 
            .\rom_data[66] (rom_data[66]), .n4654(n4654), .n4208(n4208), 
            .n78_adj_22(n78_adj_388), .n126_adj_23(n126_adj_389), .n61_adj_24(n61_adj_373), 
            .n126_adj_25(n126_adj_386), .n3463(n3463), .n4149(n4149), 
            .n3494(n3494), .n78_adj_26(n78_adj_410), .n126_adj_27(n126_adj_411), 
            .n4140(n4140), .n94_adj_28(n94_adj_408), .n63_adj_29(n63_adj_387), 
            .n126_adj_30(n126_adj_397), .n31_adj_31(n31_adj_396), .n3495(n3495), 
            .n3496(n3496), .n94_adj_32(n94), .n62_adj_33(n62_adj_377), 
            .n94_adj_34(n94_adj_401), .n126_adj_35(n126_adj_394), .n63_adj_36(n63_adj_380), 
            .n126_adj_37(n126_adj_381), .n3500(n3500), .n4141(n4141), 
            .n4169(n4169), .n4137(n4137), .n1121(n1121), .n94_adj_38(n94_adj_393), 
            .n126_adj_39(n126_adj_395), .n3507(n3507), .n2390(n2390), 
            .vga_c_0(vga_c_0), .n46_adj_40(n46), .n4135(n4135)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(56[12] 67[2])
    pll_mxo2 u1 (.clk_c(clk_c), .clk_240mhz(clk_240mhz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(32[10] 36[2])
    VHI i3756 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module step_rom
//

module step_rom (rom_addr, n126, \rom_data[99] , n126_adj_41, \rom_data[98] , 
            \rom_data[59] , n126_adj_42, \rom_data[79] , n4168, \rom_data[60] , 
            n4150, n63, n126_adj_43, n3463, \rom_data[61] , n3391, 
            \rom_data[70] , n126_adj_44, \rom_data[40] , \rom_data[71] , 
            n181, n3886, n4196, n4169, n4654, n46, n3996, n3775, 
            n46_adj_45, n63_adj_46, n4162, \rom_data[72] , n61, n78, 
            n3716, n4170, n4152, n3495, n4167, n3767, n4163, n94, 
            n3335, n28, n4147, n2390, \rom_data[66] , n3288, \rom_data[64] , 
            n4181, n3410, n62, n3903, n3904, n31, n3874, n94_adj_47, 
            n61_adj_48, n126_adj_49, n4647, n3964, n3408, n3318, 
            n4188, n2325, n3701, n3496, n78_adj_50, n126_adj_51, 
            n3405, n94_adj_52, n126_adj_53, n4149, n126_adj_54, n4155, 
            n3404, n126_adj_55, n4178, n4089, n4145, n4146, n3856, 
            n4186, n3276, n3377, n126_adj_56, n3507, n1121, n63_adj_57, 
            \rom_data[76] , n63_adj_58, n63_adj_59, n180, n3836, n4653, 
            n126_adj_60, n4140, n4173, \rom_data[96] , n3413, \rom_data[101] , 
            n126_adj_61, n4136, n23, n63_adj_62, n3771, n94_adj_63, 
            n94_adj_64, n3412, n3203, n31_adj_65, n1628, n1629, 
            n3889, n1631, n126_adj_66, n3830, \rom_data[100] , n4187, 
            n1258, n78_adj_67, n4137, n3980, n4161, n126_adj_68, 
            n94_adj_69, n94_adj_70, \rom_data[74] , n4135, n2314, 
            n4074, n3494, n126_adj_71, \rom_data[102] , n3774, n3301, 
            n1485, n3510, n4141, n63_adj_72, \rom_data[56] , n3770, 
            n126_adj_73, n126_adj_74, \rom_data[63] , n3887, n62_adj_75, 
            n3970, n77, n3717, n4645, n3942, n61_adj_76, n126_adj_77, 
            n4153, n3500, n94_adj_78, n3420, n4148, n3509, n94_adj_79, 
            n3721, n3411, n4144, n3885, n63_adj_80, n3835, n3768, 
            n4208, \rom_data[68] ) /* synthesis syn_module_defined=1 */ ;
    input [6:0]rom_addr;
    input n126;
    output \rom_data[99] ;
    input n126_adj_41;
    output \rom_data[98] ;
    output \rom_data[59] ;
    input n126_adj_42;
    output \rom_data[79] ;
    output n4168;
    output \rom_data[60] ;
    output n4150;
    output n63;
    input n126_adj_43;
    output n3463;
    output \rom_data[61] ;
    input n3391;
    output \rom_data[70] ;
    input n126_adj_44;
    output \rom_data[40] ;
    output \rom_data[71] ;
    input n181;
    output n3886;
    output n4196;
    output n4169;
    input n4654;
    output n46;
    output n3996;
    output n3775;
    output n46_adj_45;
    output n63_adj_46;
    output n4162;
    output \rom_data[72] ;
    output n61;
    output n78;
    output n3716;
    output n4170;
    output n4152;
    output n3495;
    output n4167;
    output n3767;
    output n4163;
    output n94;
    output n3335;
    output n28;
    output n4147;
    input n2390;
    output \rom_data[66] ;
    output n3288;
    output \rom_data[64] ;
    output n4181;
    output n3410;
    output n62;
    input n3903;
    output n3904;
    output n31;
    output n3874;
    output n94_adj_47;
    output n61_adj_48;
    output n126_adj_49;
    output n4647;
    output n3964;
    output n3408;
    output n3318;
    output n4188;
    output n2325;
    output n3701;
    output n3496;
    output n78_adj_50;
    output n126_adj_51;
    output n3405;
    output n94_adj_52;
    output n126_adj_53;
    output n4149;
    output n126_adj_54;
    output n4155;
    output n3404;
    output n126_adj_55;
    output n4178;
    output n4089;
    output n4145;
    output n4146;
    output n3856;
    output n4186;
    output n3276;
    output n3377;
    output n126_adj_56;
    output n3507;
    input n1121;
    output n63_adj_57;
    output \rom_data[76] ;
    output n63_adj_58;
    output n63_adj_59;
    input n180;
    output n3836;
    input n4653;
    output n126_adj_60;
    output n4140;
    output n4173;
    output \rom_data[96] ;
    output n3413;
    output \rom_data[101] ;
    output n126_adj_61;
    output n4136;
    output n23;
    output n63_adj_62;
    output n3771;
    output n94_adj_63;
    output n94_adj_64;
    output n3412;
    output n3203;
    output n31_adj_65;
    input n1628;
    output n1629;
    input n3889;
    output n1631;
    output n126_adj_66;
    input n3830;
    output \rom_data[100] ;
    output n4187;
    output n1258;
    output n78_adj_67;
    output n4137;
    output n3980;
    output n4161;
    output n126_adj_68;
    output n94_adj_69;
    output n94_adj_70;
    output \rom_data[74] ;
    output n4135;
    output n2314;
    output n4074;
    output n3494;
    output n126_adj_71;
    output \rom_data[102] ;
    output n3774;
    output n3301;
    input n1485;
    output n3510;
    output n4141;
    input n63_adj_72;
    output \rom_data[56] ;
    output n3770;
    output n126_adj_73;
    output n126_adj_74;
    output \rom_data[63] ;
    output n3887;
    output n62_adj_75;
    output n3970;
    output n77;
    input n3717;
    input n4645;
    output n3942;
    output n61_adj_76;
    input n126_adj_77;
    input n4153;
    output n3500;
    output n94_adj_78;
    output n3420;
    output n4148;
    output n3509;
    output n94_adj_79;
    output n3721;
    output n3411;
    output n4144;
    output n3885;
    output n63_adj_80;
    output n3835;
    output n3768;
    output n4208;
    output \rom_data[68] ;
    
    
    wire n4198, n78_c, n63_c, n63_adj_298, n3379, n3380, n4197, 
        n126_adj_300, n78_adj_301, n3351, n3962, n3963, n3382, n3383, 
        n61_c, n4166, n3385, n3386, n3392, n3283, n3394, n3395, 
        n4157, n78_adj_306, n4194, n4195, n4151, n31_c, n46_c, 
        n1232, n126_adj_310, n4204, n2286, n4203, n3831, n4179, 
        n4207, n4206, n4159, n94_adj_313, n78_adj_314, n4189, n4171, 
        n4190, n3873, n4177, n4142, n61_adj_319, n63_adj_320, n94_adj_321, 
        n4172, n126_adj_322, n63_adj_323, n4175, n63_adj_324, n78_adj_326, 
        n4154, n94_adj_328, n4165, n126_adj_332, n63_adj_334, n78_adj_335, 
        n4184, n3857, n4139, n4138, n4143, n4156, n3855, n61_adj_338, 
        n94_adj_341, n78_adj_343, n46_adj_344, n62_adj_345, n94_adj_351, 
        n125, n4192, n1224, n63_adj_353, n126_adj_354, n94_adj_356, 
        n2336, n63_adj_360, n4183, n1260, n4185, n4191, n4193, 
        n3260, n61_adj_366;
    
    LUT4 Address_6__I_0_Mux_63_i126_3_lut_4_lut_4_lut_then_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n4198)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_63_i126_3_lut_4_lut_4_lut_then_3_lut_4_lut.init = 16'h1fff;
    LUT4 i1618_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[0]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n78_c)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1618_2_lut_3_lut_4_lut.init = 16'h10f0;
    PFUMX Address_6__I_0_Mux_99_i127 (.BLUT(n63_c), .ALUT(n126), .C0(rom_addr[6]), 
          .Z(\rom_data[99] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;
    PFUMX Address_6__I_0_Mux_98_i127 (.BLUT(n63_adj_298), .ALUT(n126_adj_41), 
          .C0(rom_addr[6]), .Z(\rom_data[98] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;
    PFUMX i2800 (.BLUT(n3379), .ALUT(n3380), .C0(rom_addr[6]), .Z(\rom_data[59] ));
    PFUMX i3489 (.BLUT(n4197), .ALUT(n4198), .C0(rom_addr[5]), .Z(n126_adj_300));
    PFUMX Address_6__I_0_Mux_79_i127 (.BLUT(n78_adj_301), .ALUT(n126_adj_42), 
          .C0(n3351), .Z(\rom_data[79] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;
    PFUMX i3362 (.BLUT(n3962), .ALUT(n4168), .C0(rom_addr[4]), .Z(n3963));
    PFUMX i2803 (.BLUT(n3382), .ALUT(n3383), .C0(rom_addr[6]), .Z(\rom_data[60] ));
    LUT4 Address_6__I_0_Mux_28_i63_4_lut (.A(n4150), .B(n61_c), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n63)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_28_i63_4_lut.init = 16'hcafa;
    LUT4 i3044_3_lut_4_lut (.A(rom_addr[5]), .B(n4166), .C(rom_addr[6]), 
         .D(n126_adj_43), .Z(n3463)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i3044_3_lut_4_lut.init = 16'hf808;
    PFUMX i2806 (.BLUT(n3385), .ALUT(n3386), .C0(rom_addr[6]), .Z(\rom_data[61] ));
    PFUMX i2812 (.BLUT(n3391), .ALUT(n3392), .C0(rom_addr[6]), .Z(\rom_data[70] ));
    PFUMX Address_6__I_0_Mux_40_i127 (.BLUT(n3283), .ALUT(n126_adj_44), 
          .C0(rom_addr[6]), .Z(\rom_data[40] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;
    PFUMX i2815 (.BLUT(n3394), .ALUT(n3395), .C0(rom_addr[6]), .Z(\rom_data[71] ));
    LUT4 Address_6__I_0_Mux_63_i22_3_lut_rep_49_3_lut (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .Z(n4157)) /* synthesis lut_function=(A (C)+!A !(B+(C))) */ ;
    defparam Address_6__I_0_Mux_63_i22_3_lut_rep_49_3_lut.init = 16'ha1a1;
    LUT4 n181_bdd_4_lut_3315_4_lut (.A(rom_addr[1]), .B(rom_addr[0]), .C(rom_addr[2]), 
         .D(n181), .Z(n3886)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B !(C (D)))) */ ;
    defparam n181_bdd_4_lut_3315_4_lut.init = 16'he5f1;
    LUT4 Address_6__I_0_Mux_43_i78_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n78_adj_306)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B (C)+!B !(C (D)+!C !(D)))) */ ;
    defparam Address_6__I_0_Mux_43_i78_3_lut_4_lut_4_lut.init = 16'he3f8;
    PFUMX i3487 (.BLUT(n4194), .ALUT(n4195), .C0(rom_addr[3]), .Z(n4196));
    LUT4 Address_6__I_0_Mux_66_i31_3_lut_4_lut (.A(n4151), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n4169), .Z(n31_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam Address_6__I_0_Mux_66_i31_3_lut_4_lut.init = 16'h8f80;
    LUT4 Address_6__I_0_Mux_17_i46_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n46_c)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C+(D))+!B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_17_i46_3_lut_4_lut_4_lut_4_lut.init = 16'h8387;
    LUT4 Address_6__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut (.A(n4654), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n46)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B ((D)+!C)+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut.init = 16'h3878;
    LUT4 n181_bdd_4_lut_3467_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n3996)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n181_bdd_4_lut_3467_4_lut_4_lut.init = 16'h9388;
    LUT4 n2240_bdd_4_lut_3294_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n3775)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A !(B+!(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n2240_bdd_4_lut_3294_4_lut_4_lut.init = 16'hb838;
    LUT4 n25_bdd_4_lut_3374_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n3962)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B (C (D))))) */ ;
    defparam n25_bdd_4_lut_3374_4_lut.init = 16'h70e0;
    LUT4 Address_6__I_0_Mux_15_i46_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n46_adj_45)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B ((D)+!C)+!B !(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_15_i46_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hc787;
    LUT4 i706_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n1232)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(B+(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i706_4_lut_4_lut.init = 16'h81aa;
    LUT4 Address_6__I_0_Mux_23_i63_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[5]), .Z(n63_adj_46)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam Address_6__I_0_Mux_23_i63_4_lut_4_lut_4_lut.init = 16'hef80;
    LUT4 Address_6__I_0_Mux_72_i127_3_lut_4_lut (.A(rom_addr[2]), .B(n4162), 
         .C(rom_addr[6]), .D(n126_adj_310), .Z(\rom_data[72] )) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_72_i127_3_lut_4_lut.init = 16'hfe0e;
    LUT4 Address_6__I_0_Mux_21_i61_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n61)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+(C+(D))))) */ ;
    defparam Address_6__I_0_Mux_21_i61_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h7ffe;
    LUT4 Address_6__I_0_Mux_40_i78_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n78)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D)))) */ ;
    defparam Address_6__I_0_Mux_40_i78_3_lut_3_lut_4_lut_4_lut.init = 16'hfc7f;
    LUT4 Address_6__I_0_Mux_28_i61_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n61_c)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_28_i61_3_lut_4_lut_4_lut.init = 16'hfe3f;
    LUT4 n60_bdd_3_lut_3237_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n3716)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n60_bdd_3_lut_3237_4_lut_4_lut.init = 16'h01c0;
    LUT4 Address_6__I_0_Mux_68_i127_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[6]), .D(n4170), .Z(n4204)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (C)) */ ;
    defparam Address_6__I_0_Mux_68_i127_then_4_lut.init = 16'hfa7a;
    LUT4 Address_6__I_0_Mux_68_i127_else_4_lut (.A(rom_addr[4]), .B(n2286), 
         .C(rom_addr[6]), .D(n4169), .Z(n4203)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam Address_6__I_0_Mux_68_i127_else_4_lut.init = 16'h3530;
    LUT4 i2914_3_lut_4_lut_4_lut (.A(n4152), .B(n3831), .C(rom_addr[6]), 
         .D(n4179), .Z(n3495)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam i2914_3_lut_4_lut_4_lut.init = 16'h0c5c;
    LUT4 Address_6__I_0_Mux_21_i62_then_4_lut (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n4207)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam Address_6__I_0_Mux_21_i62_then_4_lut.init = 16'h1f0f;
    LUT4 Address_6__I_0_Mux_21_i62_else_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n4206)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A !(B+!(C)))) */ ;
    defparam Address_6__I_0_Mux_21_i62_else_4_lut.init = 16'h4dcf;
    LUT4 n46_bdd_3_lut_3246_4_lut_4_lut (.A(rom_addr[3]), .B(n4151), .C(rom_addr[4]), 
         .D(n4167), .Z(n3767)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n46_bdd_3_lut_3246_4_lut_4_lut.init = 16'h1f1a;
    LUT4 Address_6__I_0_Mux_65_i94_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(n4151), 
         .C(rom_addr[4]), .D(n4163), .Z(n94)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_65_i94_3_lut_3_lut_4_lut.init = 16'he0ef;
    LUT4 i56_4_lut_4_lut (.A(rom_addr[3]), .B(n4151), .C(n3335), .D(rom_addr[4]), 
         .Z(n28)) /* synthesis lut_function=(A ((D)+!C)+!A (B (D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i56_4_lut_4_lut.init = 16'hee0a;
    LUT4 Address_6__I_0_Mux_48_i94_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(n4151), 
         .C(rom_addr[5]), .D(n4159), .Z(n94_adj_313)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_48_i94_3_lut_3_lut_4_lut.init = 16'h0efe;
    LUT4 Address_6__I_0_Mux_72_i126_4_lut (.A(n78_adj_314), .B(n4147), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n126_adj_310)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_72_i126_4_lut.init = 16'h3f3a;
    LUT4 Address_6__I_0_Mux_66_i127_4_lut (.A(n31_c), .B(n2390), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(\rom_data[66] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_66_i127_4_lut.init = 16'hcfca;
    LUT4 Address_6__I_0_Mux_64_i127_4_lut (.A(n1232), .B(n126_adj_300), 
         .C(rom_addr[6]), .D(n3288), .Z(\rom_data[64] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_64_i127_4_lut.init = 16'hcfca;
    LUT4 i2829_4_lut_4_lut_4_lut (.A(n4170), .B(rom_addr[3]), .C(n4181), 
         .D(rom_addr[4]), .Z(n3410)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A !(B ((D)+!C)+!B !((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2829_4_lut_4_lut_4_lut.init = 16'hbbc3;
    LUT4 Address_6__I_0_Mux_31_i62_4_lut (.A(n4169), .B(n4189), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n62)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_31_i62_4_lut.init = 16'h3afa;
    LUT4 n31_bdd_3_lut_4_lut (.A(rom_addr[1]), .B(n4171), .C(rom_addr[5]), 
         .D(n3903), .Z(n3904)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n31_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i1569_2_lut_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n4190), .Z(n31)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1569_2_lut_2_lut_3_lut_4_lut.init = 16'he000;
    PFUMX i3306 (.BLUT(n4147), .ALUT(n3873), .C0(rom_addr[5]), .Z(n3874));
    LUT4 Address_6__I_0_Mux_81_i126_4_lut (.A(n94_adj_47), .B(n61_adj_48), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n126_adj_49)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_81_i126_4_lut.init = 16'h3afa;
    LUT4 n30_bdd_4_lut_3364_4_lut (.A(rom_addr[0]), .B(n4647), .C(rom_addr[3]), 
         .D(n4177), .Z(n3964)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n30_bdd_4_lut_3364_4_lut.init = 16'h003e;
    LUT4 Address_6__I_0_Mux_29_i63_4_lut_4_lut (.A(rom_addr[4]), .B(n4142), 
         .C(rom_addr[5]), .D(n61_adj_319), .Z(n63_adj_320)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_29_i63_4_lut_4_lut.init = 16'hf858;
    LUT4 i2827_3_lut_4_lut (.A(n4142), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(n3963), .Z(n3408)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i2827_3_lut_4_lut.init = 16'h1f10;
    LUT4 i2738_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n4647), .C(n181), 
         .D(rom_addr[3]), .Z(n3318)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2738_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 Address_6__I_0_Mux_56_i126_4_lut (.A(n94_adj_321), .B(n4172), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n126_adj_322)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_56_i126_4_lut.init = 16'h3afa;
    LUT4 i1791_4_lut (.A(rom_addr[2]), .B(n4147), .C(rom_addr[5]), .D(n4188), 
         .Z(n2325)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B (C)))) */ ;
    defparam i1791_4_lut.init = 16'h353f;
    LUT4 n63_bdd_3_lut_4_lut_4_lut (.A(n4152), .B(n63_adj_323), .C(rom_addr[6]), 
         .D(n4175), .Z(n3701)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam n63_bdd_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i2915_3_lut_4_lut_4_lut (.A(n4152), .B(n63_adj_324), .C(rom_addr[6]), 
         .D(n4175), .Z(n3496)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i2915_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 Address_6__I_0_Mux_39_i78_3_lut_4_lut (.A(rom_addr[0]), .B(n4647), 
         .C(rom_addr[3]), .D(n4167), .Z(n78_adj_50)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_39_i78_3_lut_4_lut.init = 16'he0ef;
    LUT4 i2816_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n4195)) /* synthesis lut_function=(A+!((C (D)+!C !(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2816_4_lut_4_lut_then_4_lut.init = 16'haeea;
    LUT4 Address_6__I_0_Mux_41_i78_3_lut_4_lut (.A(rom_addr[0]), .B(n4647), 
         .C(rom_addr[3]), .D(n4170), .Z(n78_adj_326)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_41_i78_3_lut_4_lut.init = 16'h0efe;
    LUT4 i1776_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n4647), .C(n4177), 
         .D(rom_addr[3]), .Z(n126_adj_51)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1776_2_lut_3_lut_4_lut.init = 16'h010f;
    LUT4 i2824_3_lut_4_lut (.A(n4179), .B(n4154), .C(rom_addr[5]), .D(n94_adj_328), 
         .Z(n3405)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2824_3_lut_4_lut.init = 16'h1f10;
    LUT4 i1620_4_lut (.A(n4167), .B(rom_addr[4]), .C(n4165), .D(rom_addr[3]), 
         .Z(n94_adj_52)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1620_4_lut.init = 16'hfcee;
    LUT4 Address_6__I_0_Mux_51_i126_3_lut_4_lut (.A(n4142), .B(rom_addr[4]), 
         .C(rom_addr[5]), .D(n94_adj_47), .Z(n126_adj_53)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam Address_6__I_0_Mux_51_i126_3_lut_4_lut.init = 16'h1f10;
    LUT4 i2811_3_lut_3_lut_4_lut (.A(n4149), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(n4147), .Z(n3392)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2811_3_lut_3_lut_4_lut.init = 16'h0efe;
    LUT4 i2801_3_lut_4_lut (.A(n4149), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(n4159), .Z(n3382)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2801_3_lut_4_lut.init = 16'h1f10;
    LUT4 i1511_4_lut_4_lut (.A(n4177), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(n4175), .Z(n126_adj_54)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1511_4_lut_4_lut.init = 16'h5514;
    LUT4 i1442_2_lut_4_lut_4_lut (.A(n4177), .B(rom_addr[3]), .C(n4155), 
         .D(n4167), .Z(n126_adj_332)) /* synthesis lut_function=(!(A+(B (C)+!B !(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1442_2_lut_4_lut_4_lut.init = 16'h1504;
    LUT4 i2823_4_lut_4_lut (.A(n4159), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(n78_c), .Z(n3404)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B+(C+(D))))) */ ;
    defparam i2823_4_lut_4_lut.init = 16'h5f5c;
    LUT4 i1515_4_lut_4_lut (.A(n4177), .B(rom_addr[3]), .C(n4170), .D(n4647), 
         .Z(n126_adj_55)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1515_4_lut_4_lut.init = 16'h5140;
    LUT4 i1629_2_lut_3_lut_4_lut (.A(n4178), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(n4179), .Z(n63_adj_334)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1629_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 Address_6__I_0_Mux_48_i78_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n4181), 
         .C(rom_addr[3]), .D(n4167), .Z(n78_adj_335)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam Address_6__I_0_Mux_48_i78_3_lut_3_lut_4_lut.init = 16'h08f8;
    LUT4 Address_6__I_0_Mux_29_i61_3_lut_4_lut (.A(rom_addr[0]), .B(n4181), 
         .C(rom_addr[3]), .D(n4170), .Z(n61_adj_319)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (C (D)))) */ ;
    defparam Address_6__I_0_Mux_29_i61_3_lut_4_lut.init = 16'h07f7;
    LUT4 n2240_bdd_4_lut_3370_4_lut (.A(rom_addr[0]), .B(n4181), .C(n4184), 
         .D(rom_addr[5]), .Z(n3857)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam n2240_bdd_4_lut_3370_4_lut.init = 16'h03f8;
    LUT4 i3149_2_lut_rep_31_3_lut_4_lut (.A(rom_addr[0]), .B(n4181), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n4139)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;
    defparam i3149_2_lut_rep_31_3_lut_4_lut.init = 16'h070f;
    LUT4 i1_2_lut_rep_30_3_lut_4_lut (.A(rom_addr[0]), .B(n4181), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n4138)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_30_3_lut_4_lut.init = 16'h8000;
    LUT4 i2816_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n4194)) /* synthesis lut_function=((B (C))+!A) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2816_4_lut_4_lut_else_4_lut.init = 16'hd5d5;
    LUT4 n125_bdd_3_lut_4_lut (.A(n4143), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(n4156), .Z(n4089)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n125_bdd_3_lut_4_lut.init = 16'h7f70;
    LUT4 Address_6__I_0_Mux_35_i61_3_lut_rep_37_4_lut (.A(rom_addr[0]), .B(n4181), 
         .C(rom_addr[3]), .D(n4167), .Z(n4145)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam Address_6__I_0_Mux_35_i61_3_lut_rep_37_4_lut.init = 16'h7f70;
    PFUMX i3292 (.BLUT(n4146), .ALUT(n3855), .C0(rom_addr[4]), .Z(n3856));
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[3]), .B(n4186), .C(n4181), 
         .D(rom_addr[0]), .Z(n3283)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_25 (.A(rom_addr[3]), .B(n4186), .C(n4647), 
         .D(rom_addr[0]), .Z(n3276)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1_2_lut_3_lut_4_lut_adj_25.init = 16'h8880;
    LUT4 i1_2_lut (.A(rom_addr[3]), .B(rom_addr[5]), .Z(n3288)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2796_3_lut_4_lut (.A(rom_addr[2]), .B(n4184), .C(rom_addr[5]), 
         .D(n94_adj_328), .Z(n3377)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i2796_3_lut_4_lut.init = 16'h1f10;
    LUT4 Address_6__I_0_Mux_55_i126_3_lut_4_lut (.A(n4143), .B(rom_addr[4]), 
         .C(rom_addr[5]), .D(n94_adj_321), .Z(n126_adj_56)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam Address_6__I_0_Mux_55_i126_3_lut_4_lut.init = 16'h7f70;
    LUT4 i2926_3_lut_4_lut (.A(n4143), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(n4150), .Z(n3507)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam i2926_3_lut_4_lut.init = 16'h7f70;
    LUT4 Address_6__I_0_Mux_25_i63_4_lut (.A(n31), .B(n4165), .C(rom_addr[5]), 
         .D(n1121), .Z(n63_adj_57)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_25_i63_4_lut.init = 16'hfaca;
    PFUMX i3295 (.BLUT(n3857), .ALUT(n2390), .C0(rom_addr[6]), .Z(\rom_data[76] ));
    LUT4 i1406_4_lut (.A(n4172), .B(rom_addr[5]), .C(n61_adj_338), .D(rom_addr[4]), 
         .Z(n63_adj_58)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1406_4_lut.init = 16'hc088;
    LUT4 i2798_3_lut_4_lut_4_lut (.A(n4181), .B(n4184), .C(rom_addr[5]), 
         .D(n4155), .Z(n3379)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C)+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2798_3_lut_4_lut_4_lut.init = 16'h0e3e;
    LUT4 i1443_4_lut (.A(n4155), .B(rom_addr[4]), .C(rom_addr[2]), .D(rom_addr[3]), 
         .Z(n94_adj_328)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1443_4_lut.init = 16'hcfee;
    LUT4 i1516_4_lut_4_lut (.A(n4181), .B(rom_addr[3]), .C(n4186), .D(n4151), 
         .Z(n63_adj_59)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;
    defparam i1516_4_lut_4_lut.init = 16'h7040;
    LUT4 Address_6__I_0_Mux_24_i63_4_lut (.A(n4166), .B(n4189), .C(rom_addr[5]), 
         .D(n1121), .Z(n63_adj_323)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_24_i63_4_lut.init = 16'hfa3a;
    LUT4 n180_bdd_4_lut_4_lut (.A(n4181), .B(n4155), .C(rom_addr[3]), 
         .D(n180), .Z(n3836)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A (B (D)+!B !(C))) */ ;
    defparam n180_bdd_4_lut_4_lut.init = 16'hc503;
    LUT4 Address_6__I_0_Mux_49_i94_4_lut_4_lut_4_lut (.A(n4181), .B(rom_addr[4]), 
         .C(n4151), .D(rom_addr[3]), .Z(n94_adj_341)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C+(D))+!B (D))) */ ;
    defparam Address_6__I_0_Mux_49_i94_4_lut_4_lut_4_lut.init = 16'hddc0;
    LUT4 i1364_2_lut_rep_59_3_lut (.A(n4654), .B(n4653), .C(rom_addr[2]), 
         .Z(n4167)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1364_2_lut_rep_59_3_lut.init = 16'he0e0;
    LUT4 i1770_4_lut (.A(n4189), .B(n4177), .C(n4155), .D(rom_addr[3]), 
         .Z(n126_adj_60)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i1770_4_lut.init = 16'h0311;
    LUT4 i1448_4_lut_4_lut (.A(n4140), .B(rom_addr[4]), .C(n4173), .D(n78_adj_343), 
         .Z(\rom_data[96] )) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;
    defparam i1448_4_lut_4_lut.init = 16'h7040;
    LUT4 n31_bdd_3_lut_4_lut_adj_26 (.A(rom_addr[1]), .B(n4190), .C(rom_addr[4]), 
         .D(n4169), .Z(n3873)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam n31_bdd_3_lut_4_lut_adj_26.init = 16'hf707;
    LUT4 i2832_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(n4190), .C(n46_adj_344), 
         .D(rom_addr[4]), .Z(n3413)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam i2832_3_lut_3_lut_4_lut.init = 16'h77f0;
    PFUMX Address_6__I_0_Mux_101_i127 (.BLUT(n63_adj_334), .ALUT(n126_adj_332), 
          .C0(rom_addr[6]), .Z(\rom_data[101] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;
    LUT4 Address_6__I_0_Mux_102_i62_3_lut_4_lut (.A(rom_addr[3]), .B(n4155), 
         .C(rom_addr[4]), .D(n4169), .Z(n62_adj_345)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam Address_6__I_0_Mux_102_i62_3_lut_4_lut.init = 16'h7f70;
    LUT4 Address_6__I_0_Mux_54_i126_3_lut_4_lut (.A(n4178), .B(rom_addr[4]), 
         .C(rom_addr[5]), .D(n94_adj_321), .Z(n126_adj_61)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam Address_6__I_0_Mux_54_i126_3_lut_4_lut.init = 16'h7f70;
    LUT4 i3164_2_lut_rep_28_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(n4177), .D(n4178), .Z(n4136)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3164_2_lut_rep_28_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i48_3_lut_4_lut_4_lut (.A(n4178), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(n4142), .Z(n23)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(B (C+(D))+!B (C)))) */ ;
    defparam i48_3_lut_4_lut_4_lut.init = 16'h7c70;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n4190), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(rom_addr[1]), .Z(n63_adj_62)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 n46_bdd_3_lut_3426_4_lut_4_lut (.A(n4181), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n4151), .Z(n3771)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C)+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n46_bdd_3_lut_3426_4_lut_4_lut.init = 16'h1f1c;
    LUT4 Address_6__I_0_Mux_97_i94_3_lut_4_lut (.A(n4181), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n61_adj_319), .Z(n94_adj_63)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_97_i94_3_lut_4_lut.init = 16'h1f10;
    LUT4 Address_6__I_0_Mux_41_i94_3_lut_3_lut_4_lut (.A(n4181), .B(rom_addr[3]), 
         .C(n78_adj_326), .D(rom_addr[4]), .Z(n94_adj_64)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_41_i94_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i2831_3_lut_3_lut_4_lut_4_lut (.A(n4175), .B(rom_addr[4]), .C(n46_c), 
         .D(n4190), .Z(n3412)) /* synthesis lut_function=(A (B+(C))+!A !(B (D)+!B !(C))) */ ;
    defparam i2831_3_lut_3_lut_4_lut_4_lut.init = 16'hb8fc;
    LUT4 i3124_2_lut_rep_65 (.A(rom_addr[5]), .B(rom_addr[6]), .Z(n4173)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3124_2_lut_rep_65.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n4175), .B(rom_addr[5]), .C(rom_addr[4]), 
         .D(n4190), .Z(n3203)) /* synthesis lut_function=(A (B (C))+!A !((C (D)+!C !(D))+!B)) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h84c0;
    LUT4 Address_6__I_0_Mux_53_i31_3_lut_3_lut_4_lut_4_lut (.A(n4175), .B(n4149), 
         .C(rom_addr[4]), .D(n4190), .Z(n31_adj_65)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam Address_6__I_0_Mux_53_i31_3_lut_3_lut_4_lut_4_lut.init = 16'h3530;
    LUT4 i1669_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[6]), .C(n1628), 
         .Z(n1629)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1669_2_lut_3_lut.init = 16'h4040;
    LUT4 i1422_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[6]), .C(n3889), 
         .Z(n1631)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1422_2_lut_3_lut.init = 16'h4040;
    PFUMX Address_6__I_0_Mux_53_i126 (.BLUT(n94_adj_351), .ALUT(n125), .C0(rom_addr[5]), 
          .Z(n126_adj_66)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;
    LUT4 i1496_2_lut_rep_35_3_lut_4_lut (.A(n4654), .B(n4653), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n4143)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1496_2_lut_rep_35_3_lut_4_lut.init = 16'hfef0;
    PFUMX i3275 (.BLUT(n4138), .ALUT(n3830), .C0(rom_addr[5]), .Z(n3831));
    LUT4 Address_6__I_0_Mux_59_i94_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n4192)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_59_i94_3_lut_4_lut_then_4_lut.init = 16'hfeef;
    LUT4 i698_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n1224)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B (C (D)+!C !(D)))) */ ;
    defparam i698_3_lut_4_lut_4_lut.init = 16'haf10;
    PFUMX Address_6__I_0_Mux_100_i127 (.BLUT(n63_adj_353), .ALUT(n126_adj_354), 
          .C0(rom_addr[6]), .Z(\rom_data[100] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;
    LUT4 i3119_2_lut_rep_67 (.A(n4654), .B(n4653), .Z(n4175)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i3119_2_lut_rep_67.init = 16'h1111;
    LUT4 i2805_3_lut_4_lut_4_lut (.A(n4151), .B(n4168), .C(rom_addr[5]), 
         .D(n4187), .Z(n3386)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;
    defparam i2805_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 i2814_4_lut_4_lut (.A(n4147), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(n4140), .Z(n3395)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B+(C+(D))))) */ ;
    defparam i2814_4_lut_4_lut.init = 16'h5f5c;
    LUT4 i2_2_lut_rep_38_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n4653), .Z(n4146)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2_2_lut_rep_38_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1556_2_lut_rep_43_3_lut (.A(n4654), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n4151)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1556_2_lut_rep_43_3_lut.init = 16'hfefe;
    LUT4 i1720_2_lut_rep_32_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n4140)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1720_2_lut_rep_32_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i732_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1258)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i732_3_lut_4_lut_4_lut.init = 16'h0c1c;
    LUT4 i1625_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n78_adj_67)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1625_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i3155_2_lut_rep_29_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(n4187), .D(rom_addr[0]), .Z(n4137)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3155_2_lut_rep_29_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 n29_bdd_3_lut_3375_4_lut (.A(n4175), .B(rom_addr[2]), .C(n4184), 
         .D(rom_addr[5]), .Z(n3980)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n29_bdd_3_lut_3375_4_lut.init = 16'hfff4;
    LUT4 i2728_2_lut_rep_53_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4161)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2728_2_lut_rep_53_3_lut.init = 16'he0e0;
    LUT4 i1733_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n94_adj_356)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1733_2_lut_3_lut_4_lut.init = 16'h010f;
    LUT4 i1772_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(n4177), 
         .D(rom_addr[3]), .Z(n126_adj_68)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1772_2_lut_3_lut_4_lut.init = 16'h010f;
    LUT4 i2_2_lut_rep_69 (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n4177)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2_2_lut_rep_69.init = 16'heeee;
    LUT4 Address_6__I_0_Mux_39_i94_3_lut_4_lut (.A(rom_addr[1]), .B(n4178), 
         .C(rom_addr[4]), .D(n78_adj_50), .Z(n94_adj_69)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_39_i94_3_lut_4_lut.init = 16'h1f10;
    LUT4 Address_6__I_0_Mux_84_i94_3_lut_4_lut (.A(n4151), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n4168), .Z(n94_adj_70)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam Address_6__I_0_Mux_84_i94_3_lut_4_lut.init = 16'hf808;
    LUT4 Address_6__I_0_Mux_74_i127_3_lut_4_lut_4_lut (.A(n4162), .B(n2336), 
         .C(rom_addr[6]), .D(n4181), .Z(\rom_data[74] )) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam Address_6__I_0_Mux_74_i127_3_lut_4_lut_4_lut.init = 16'h3f3a;
    LUT4 i3122_2_lut_rep_27_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n4179), .D(n4178), .Z(n4135)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3122_2_lut_rep_27_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i3158_2_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(rom_addr[3]), 
         .Z(n2314)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3158_2_lut_3_lut.init = 16'h0101;
    LUT4 n63_bdd_3_lut_4_lut_4_lut_adj_27 (.A(n4162), .B(n63_adj_320), .C(rom_addr[6]), 
         .D(n4181), .Z(n4074)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam n63_bdd_3_lut_4_lut_4_lut_adj_27.init = 16'h0c5c;
    LUT4 i1444_3_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n4157), 
         .D(rom_addr[3]), .Z(n126_adj_354)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1444_3_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 i544_2_lut_rep_70 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n4178)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i544_2_lut_rep_70.init = 16'heeee;
    LUT4 Address_6__I_0_Mux_105_i63_4_lut (.A(n4138), .B(n4167), .C(rom_addr[5]), 
         .D(n4187), .Z(n63_adj_360)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_105_i63_4_lut.init = 16'hfaca;
    LUT4 i2913_3_lut_4_lut_4_lut (.A(n4162), .B(n63_adj_360), .C(rom_addr[6]), 
         .D(n4181), .Z(n3494)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam i2913_3_lut_4_lut_4_lut.init = 16'h0c5c;
    LUT4 Address_6__I_0_Mux_107_i63_4_lut (.A(n4150), .B(n4170), .C(rom_addr[5]), 
         .D(n1121), .Z(n63_adj_324)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_107_i63_4_lut.init = 16'hfaca;
    LUT4 Address_6__I_0_Mux_102_i127_4_lut (.A(n62_adj_345), .B(n126_adj_71), 
         .C(rom_addr[6]), .D(rom_addr[5]), .Z(\rom_data[102] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_102_i127_4_lut.init = 16'hcac0;
    LUT4 n2240_bdd_3_lut_3455_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[1]), .Z(n3774)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n2240_bdd_3_lut_3455_4_lut.init = 16'h0001;
    LUT4 i675_2_lut_rep_46_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .Z(n4154)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i675_2_lut_rep_46_3_lut.init = 16'hfefe;
    LUT4 i3_2_lut_rep_44_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n4152)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3_2_lut_rep_44_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2724_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n4179), 
         .D(n181), .Z(n3301)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2724_3_lut_4_lut.init = 16'hfeee;
    LUT4 i2929_3_lut_4_lut_4_lut (.A(n4187), .B(n1485), .C(rom_addr[5]), 
         .D(n4170), .Z(n3510)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2929_3_lut_4_lut_4_lut.init = 16'hc0c5;
    LUT4 i1473_2_lut_rep_33_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n4179), .D(rom_addr[4]), .Z(n4141)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1473_2_lut_rep_33_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3180_2_lut_rep_75 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n4183)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3180_2_lut_rep_75.init = 16'heeee;
    LUT4 i2813_4_lut (.A(n1260), .B(n4137), .C(rom_addr[5]), .D(rom_addr[3]), 
         .Z(n3394)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i2813_4_lut.init = 16'hcfca;
    LUT4 i3171_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[6]), 
         .Z(n3351)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3171_2_lut_3_lut.init = 16'hefef;
    LUT4 Address_6__I_0_Mux_54_i94_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n4185), .Z(n94_adj_321)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_54_i94_3_lut_4_lut_4_lut.init = 16'hecfc;
    PFUMX Address_6__I_0_Mux_56_i127 (.BLUT(n63_adj_72), .ALUT(n126_adj_322), 
          .C0(rom_addr[6]), .Z(\rom_data[56] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;
    LUT4 i1_2_lut_rep_60_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n4654), 
         .Z(n4168)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1_2_lut_rep_60_3_lut.init = 16'hfefe;
    LUT4 Address_6__I_0_Mux_51_i94_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n94_adj_47)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_51_i94_3_lut_4_lut_4_lut.init = 16'hfcec;
    LUT4 i1845_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[1]), .Z(n125)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1845_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 Address_6__I_0_Mux_53_i94_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n4179), .Z(n94_adj_351)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_53_i94_3_lut_4_lut_4_lut.init = 16'hfcec;
    LUT4 n46_bdd_2_lut_3425_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n4179), .Z(n3770)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n46_bdd_2_lut_3425_3_lut_4_lut.init = 16'h0f1e;
    PFUMX Address_6__I_0_Mux_49_i126 (.BLUT(n94_adj_341), .ALUT(n94_adj_356), 
          .C0(rom_addr[5]), .Z(n126_adj_73)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;
    PFUMX Address_6__I_0_Mux_48_i126 (.BLUT(n78_adj_335), .ALUT(n94_adj_313), 
          .C0(n4183), .Z(n126_adj_74)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=70, LSE_RLINE=74 */ ;
    LUT4 Address_6__I_0_Mux_59_i94_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n4191)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_59_i94_3_lut_4_lut_else_4_lut.init = 16'heeea;
    PFUMX i3485 (.BLUT(n4191), .ALUT(n4192), .C0(rom_addr[4]), .Z(n4193));
    LUT4 i1636_2_lut_rep_71 (.A(n4653), .B(n4654), .Z(n4179)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1636_2_lut_rep_71.init = 16'h8888;
    LUT4 i1484_2_lut_rep_76 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n4184)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1484_2_lut_rep_76.init = 16'heeee;
    LUT4 i1658_2_lut_rep_48_3_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .Z(n4156)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1658_2_lut_rep_48_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_57_3_lut (.A(n4653), .B(n4654), .C(rom_addr[2]), 
         .Z(n4165)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(C)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1_2_lut_rep_57_3_lut.init = 16'h8787;
    LUT4 i1490_2_lut_rep_51_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(n4654), .Z(n4159)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1490_2_lut_rep_51_3_lut_4_lut.init = 16'hfeee;
    LUT4 i1375_2_lut_rep_41_3_lut_4_lut (.A(n4653), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n4149)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1375_2_lut_rep_41_3_lut_4_lut.init = 16'hf080;
    LUT4 i740_2_lut_rep_54_3_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[5]), 
         .Z(n4162)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i740_2_lut_rep_54_3_lut.init = 16'hfefe;
    LUT4 Address_6__I_0_Mux_63_i127_4_lut (.A(n1224), .B(n126_adj_300), 
         .C(rom_addr[6]), .D(n3288), .Z(\rom_data[63] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_63_i127_4_lut.init = 16'hcfca;
    LUT4 i1628_2_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(rom_addr[2]), .Z(n63_adj_353)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1628_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i490_2_lut_rep_77 (.A(n4653), .B(n4654), .Z(n4185)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i490_2_lut_rep_77.init = 16'h6666;
    LUT4 i1560_2_lut_rep_39_2_lut_3_lut_4_lut (.A(n4653), .B(n4654), .C(n4187), 
         .D(rom_addr[2]), .Z(n4147)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1560_2_lut_rep_39_2_lut_3_lut_4_lut.init = 16'h0f08;
    LUT4 n181_bdd_4_lut_3333_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(n181), .D(rom_addr[2]), .Z(n3887)) /* synthesis lut_function=(A (B+(D))+!A (B ((D)+!C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n181_bdd_4_lut_3333_4_lut_4_lut.init = 16'hff8c;
    LUT4 Address_6__I_0_Mux_96_i78_4_lut (.A(n4151), .B(n4175), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n78_adj_343)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_96_i78_4_lut.init = 16'hfaca;
    LUT4 i2804_4_lut (.A(n4167), .B(n4139), .C(rom_addr[5]), .D(n4184), 
         .Z(n3385)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i2804_4_lut.init = 16'hcfca;
    LUT4 i635_2_lut_rep_78 (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n4186)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i635_2_lut_rep_78.init = 16'h8888;
    LUT4 n46_bdd_4_lut_3463_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n3855)) /* synthesis lut_function=((B (C (D))+!B !(C))+!A) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n46_bdd_4_lut_3463_4_lut_4_lut.init = 16'hd757;
    LUT4 Address_6__I_0_Mux_15_i62_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), 
         .B(n4161), .C(n1258), .D(n181), .Z(n62_adj_75)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A (B (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_15_i62_4_lut_4_lut_4_lut_4_lut.init = 16'h33f5;
    LUT4 n31_bdd_4_lut_3429_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(n4175), 
         .D(rom_addr[4]), .Z(n3970)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n31_bdd_4_lut_3429_4_lut.init = 16'hfbff;
    LUT4 Address_6__I_0_Mux_72_i78_3_lut_4_lut_4_lut_4_lut (.A(n4653), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n78_adj_314)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B (C (D)+!C !(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_72_i78_3_lut_4_lut_4_lut_4_lut.init = 16'hf083;
    LUT4 Address_6__I_0_Mux_44_i77_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n77)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+!(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_44_i77_3_lut_3_lut_3_lut.init = 16'hc7c7;
    LUT4 i1489_2_lut_rep_61_3_lut_4_lut (.A(n4653), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n4169)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1489_2_lut_rep_61_3_lut_4_lut.init = 16'hfff8;
    LUT4 n3722_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(n180), .C(n3717), 
         .D(n4645), .Z(n3942)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n3722_bdd_4_lut_4_lut.init = 16'hf7c4;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n3260)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 Address_6__I_0_Mux_74_i126_3_lut_4_lut_4_lut (.A(n4647), .B(n2286), 
         .C(rom_addr[5]), .D(n4187), .Z(n2336)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;
    defparam Address_6__I_0_Mux_74_i126_3_lut_4_lut_4_lut.init = 16'h0cac;
    LUT4 i1631_2_lut_rep_83 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n4647)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1631_2_lut_rep_83.init = 16'heeee;
    LUT4 i1395_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n61_adj_366)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1395_2_lut_3_lut_4_lut_4_lut.init = 16'hddd5;
    LUT4 i1381_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n61_adj_76)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1381_2_lut_3_lut_4_lut.init = 16'hf8f7;
    LUT4 i3139_2_lut_rep_62_3_lut (.A(n4653), .B(n4654), .C(rom_addr[2]), 
         .Z(n4170)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3139_2_lut_rep_62_3_lut.init = 16'h0707;
    LUT4 i3040_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n126_adj_77), .C(rom_addr[6]), 
         .D(n4153), .Z(n3500)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3040_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i3146_2_lut_rep_79 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n4187)) /* synthesis lut_function=(!(A (B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3146_2_lut_rep_79.init = 16'h7777;
    LUT4 Address_6__I_0_Mux_79_i94_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[5]), .D(n4151), .Z(n94_adj_78)) /* synthesis lut_function=(!(A (B (C))+!A !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_79_i94_3_lut_4_lut_4_lut.init = 16'h7f7a;
    LUT4 i1_2_lut_rep_58_3_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .Z(n4166)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1_2_lut_rep_58_3_lut.init = 16'h8080;
    LUT4 i2839_4_lut_4_lut (.A(rom_addr[2]), .B(n1121), .C(rom_addr[5]), 
         .D(n31), .Z(n3420)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2839_4_lut_4_lut.init = 16'hdfd0;
    LUT4 i2799_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(n4193), .Z(n3380)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2799_3_lut_4_lut.init = 16'h7f70;
    LUT4 i3153_2_lut_rep_40_2_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(n4654), .Z(n4148)) /* synthesis lut_function=(!(A (B (C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i3153_2_lut_rep_40_2_lut_3_lut_4_lut.init = 16'h777f;
    LUT4 i2928_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[5]), 
         .D(rom_addr[2]), .Z(n3509)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2928_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i1642_2_lut_rep_73 (.A(n4654), .B(rom_addr[2]), .Z(n4181)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1642_2_lut_rep_73.init = 16'h8888;
    LUT4 i726_2_lut_rep_80 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n4188)) /* synthesis lut_function=(!((B)+!A)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i726_2_lut_rep_80.init = 16'h2222;
    LUT4 i492_2_lut_rep_81 (.A(n4654), .B(rom_addr[2]), .Z(n4189)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i492_2_lut_rep_81.init = 16'h6666;
    LUT4 i1753_2_lut_3_lut_4_lut (.A(n4654), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2286)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1753_2_lut_3_lut_4_lut.init = 16'h0600;
    LUT4 i2802_3_lut_4_lut (.A(n4179), .B(n4178), .C(rom_addr[5]), .D(n4187), 
         .Z(n3383)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2802_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i734_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .Z(n1260)) /* synthesis lut_function=(A (B)+!A !(B (C)+!B !(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i734_3_lut_3_lut.init = 16'h9c9c;
    LUT4 i1595_2_lut_rep_82 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n4190)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1595_2_lut_rep_82.init = 16'h8888;
    LUT4 Address_6__I_0_Mux_63_i126_3_lut_4_lut_4_lut_else_3_lut (.A(n4155), 
         .B(rom_addr[3]), .C(rom_addr[4]), .D(n4168), .Z(n4197)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam Address_6__I_0_Mux_63_i126_3_lut_4_lut_4_lut_else_3_lut.init = 16'hf707;
    LUT4 i564_2_lut_rep_63_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .Z(n4171)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i564_2_lut_rep_63_3_lut.init = 16'h8080;
    LUT4 i1521_2_lut_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n61_adj_338)) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1521_2_lut_2_lut_3_lut_4_lut.init = 16'hf777;
    LUT4 Address_6__I_0_Mux_95_i94_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n78_adj_306), .D(rom_addr[4]), .Z(n94_adj_79)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_95_i94_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 i1789_2_lut_rep_55_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n4163)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1789_2_lut_rep_55_3_lut.init = 16'h8080;
    LUT4 i1403_2_lut_rep_64_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n4172)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1403_2_lut_rep_64_3_lut.init = 16'hf8f8;
    LUT4 rom_addr_1__bdd_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n3721)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(C)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam rom_addr_1__bdd_2_lut_3_lut_4_lut.init = 16'h870f;
    LUT4 i2830_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n46_c), 
         .D(rom_addr[4]), .Z(n3411)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2830_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 i1675_2_lut_rep_47_3_lut (.A(n4654), .B(rom_addr[2]), .C(n4653), 
         .Z(n4155)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1675_2_lut_rep_47_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_42_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n4654), .D(rom_addr[4]), .Z(n4150)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1_2_lut_rep_42_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_36_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n4653), .D(n4654), .Z(n4144)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1_2_lut_rep_36_2_lut_3_lut_4_lut.init = 16'h8880;
    LUT4 i1624_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .D(n4184), .Z(n63_c)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1624_2_lut_3_lut_4_lut.init = 16'hf080;
    LUT4 Address_6__I_0_Mux_79_i78_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n78_adj_301)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_79_i78_3_lut_3_lut_3_lut_4_lut.init = 16'h78f8;
    LUT4 i1622_4_lut (.A(n3260), .B(rom_addr[5]), .C(n4143), .D(rom_addr[4]), 
         .Z(n63_adj_298)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1622_4_lut.init = 16'hc044;
    LUT4 i1_2_lut_rep_34_3_lut_4_lut (.A(n4654), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n4653), .Z(n4142)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1_2_lut_rep_34_3_lut_4_lut.init = 16'h8000;
    LUT4 i1416_2_lut_3_lut_4_lut (.A(n4654), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n4653), .Z(n61_adj_48)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1416_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 n61_bdd_4_lut_4_lut (.A(n4151), .B(rom_addr[3]), .C(n4170), .D(n181), 
         .Z(n3885)) /* synthesis lut_function=(A ((C (D))+!B)+!A ((C+!(D))+!B)) */ ;
    defparam n61_bdd_4_lut_4_lut.init = 16'hf377;
    LUT4 i2754_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(n181), .Z(n3335)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i2754_2_lut_3_lut_4_lut.init = 16'h8880;
    LUT4 i1396_4_lut (.A(n4146), .B(rom_addr[5]), .C(n61_adj_366), .D(rom_addr[4]), 
         .Z(n63_adj_80)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam i1396_4_lut.init = 16'hc088;
    LUT4 n180_bdd_4_lut_3279_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(n180), .D(rom_addr[3]), .Z(n3835)) /* synthesis lut_function=(!(A (B (D)+!B !(C+(D)))+!A (B (C (D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n180_bdd_4_lut_3279_4_lut_4_lut.init = 16'h37fc;
    LUT4 Address_6__I_0_Mux_19_i46_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n46_adj_344)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !(D)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam Address_6__I_0_Mux_19_i46_3_lut_4_lut_3_lut_4_lut.init = 16'h8077;
    LUT4 n46_bdd_3_lut_3249_4_lut (.A(n4167), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n4168), .Z(n3768)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/step_rom.v(8[3] 138[10])
    defparam n46_bdd_3_lut_3249_4_lut.init = 16'h1f10;
    PFUMX i3495 (.BLUT(n4206), .ALUT(n4207), .C0(n181), .Z(n4208));
    LUT4 i1513_4_lut_4_lut (.A(n4179), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n4177), .Z(n126_adj_71)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i1513_4_lut_4_lut.init = 16'h003e;
    PFUMX i3493 (.BLUT(n4203), .ALUT(n4204), .C0(rom_addr[5]), .Z(\rom_data[68] ));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Vga_Module
//

module Vga_Module (rom_addr_6__N_152, clk_240mhz, clk_240mhz_enable_95, 
            n507, rom_addr_6__N_170, n541, n174, sync_h_c, clk_40mhz, 
            sync_v_c, GND_net, clk_240mhz_enable_91, rom_addr, x_flag, 
            clk_240mhz_enable_47, y_flag, vga_c_2, n988, n3980, n4174, 
            n1583, n8, n3885, n3889, n4150, n3970, n126, n3964, 
            n126_adj_1, n46, n62, n1485, \x_set[14] , \x_set[15] , 
            n28, \y_set[15] , \y_set[13] , \y_set[14] , \x_set[7] , 
            \y_set[11] , \y_set[12] , n3942, \x_set[9] , \x_set[10] , 
            \x_set[8] , \y_set[9] , \y_set[10] , \rom_addr_6__N_170[1] , 
            \rom_addr_6__N_170[2] , \y_set[7] , \y_set[8] , n3404, n3405, 
            clk_240mhz_enable_90, n4653, n3408, \x_set[12] , \x_set[13] , 
            \x_set[11] , n63, n4152, vga_c_1, n3903, n3996, n3267, 
            n3572, n3412, n3413, n3301, n3887, n3886, n126_adj_2, 
            n126_adj_3, n31, n3377, n4155, n4168, n1258, n3391, 
            n3856, n2314, \rom_data[63] , n61, n4186, n126_adj_4, 
            n3203, n126_adj_5, \rom_data[78] , \rom_data[79] , \rom_data[76] , 
            \rom_data[77] , \rom_data[72] , \rom_data[100] , \rom_data[101] , 
            \rom_data[96] , \rom_data[40] , n94, n4173, \rom_data[60] , 
            \rom_data[61] , \rom_data[58] , \rom_data[59] , \rom_data[56] , 
            \rom_data[57] , \rom_data[70] , \rom_data[71] , n4187, \rom_data[68] , 
            \rom_data[69] , n3775, n3774, n4153, n126_adj_6, n3318, 
            n23, n3276, n126_adj_7, n3716, n3717, n2325, n3420, 
            n63_adj_8, n126_adj_9, n4089, n94_adj_10, n3721, n4645, 
            n4162, n63_adj_11, n63_adj_12, n4144, n4188, n77, n1628, 
            n4181, n4146, n4074, n4647, n4163, n4145, n126_adj_13, 
            n4167, n4196, n3701, n3836, n3835, n61_adj_14, n94_adj_15, 
            n94_adj_16, \rom_data[74] , \rom_data[75] , \rom_data[102] , 
            n63_adj_17, n94_adj_18, n126_adj_19, n3904, n4147, n4136, 
            n3874, n3288, n4148, n3335, n4170, n3830, n3771, n3770, 
            \rom_data[98] , \rom_data[99] , n3768, n3767, n1631, n4161, 
            n1629, n3647, n3509, n3510, n3410, n3411, n78, n4178, 
            n126_adj_20, n63_adj_21, \rom_data[64] , \rom_data[66] , 
            n4654, n4208, n78_adj_22, n126_adj_23, n61_adj_24, n126_adj_25, 
            n3463, n4149, n3494, n78_adj_26, n126_adj_27, n4140, 
            n94_adj_28, n63_adj_29, n126_adj_30, n31_adj_31, n3495, 
            n3496, n94_adj_32, n62_adj_33, n94_adj_34, n126_adj_35, 
            n63_adj_36, n126_adj_37, n3500, n4141, n4169, n4137, 
            n1121, n94_adj_38, n126_adj_39, n3507, n2390, vga_c_0, 
            n46_adj_40, n4135) /* synthesis syn_module_defined=1 */ ;
    output [15:0]rom_addr_6__N_152;
    input clk_240mhz;
    input clk_240mhz_enable_95;
    input [15:0]n507;
    output [15:0]rom_addr_6__N_170;
    input [15:0]n541;
    output [6:0]n174;
    output sync_h_c;
    input clk_40mhz;
    output sync_v_c;
    input GND_net;
    input clk_240mhz_enable_91;
    output [6:0]rom_addr;
    output x_flag;
    input clk_240mhz_enable_47;
    output y_flag;
    output vga_c_2;
    input n988;
    input n3980;
    output n4174;
    output n1583;
    output n8;
    input n3885;
    output n3889;
    input n4150;
    input n3970;
    input n126;
    input n3964;
    input n126_adj_1;
    input n46;
    input n62;
    output n1485;
    output \x_set[14] ;
    output \x_set[15] ;
    input n28;
    output \y_set[15] ;
    output \y_set[13] ;
    output \y_set[14] ;
    output \x_set[7] ;
    output \y_set[11] ;
    output \y_set[12] ;
    input n3942;
    output \x_set[9] ;
    output \x_set[10] ;
    output \x_set[8] ;
    output \y_set[9] ;
    output \y_set[10] ;
    output \rom_addr_6__N_170[1] ;
    output \rom_addr_6__N_170[2] ;
    output \y_set[7] ;
    output \y_set[8] ;
    input n3404;
    input n3405;
    input clk_240mhz_enable_90;
    output n4653;
    input n3408;
    output \x_set[12] ;
    output \x_set[13] ;
    output \x_set[11] ;
    input n63;
    input n4152;
    output vga_c_1;
    output n3903;
    input n3996;
    output n3267;
    output n3572;
    input n3412;
    input n3413;
    input n3301;
    input n3887;
    input n3886;
    input n126_adj_2;
    input n126_adj_3;
    input n31;
    input n3377;
    input n4155;
    input n4168;
    input n1258;
    output n3391;
    input n3856;
    input n2314;
    input \rom_data[63] ;
    input n61;
    input n4186;
    input n126_adj_4;
    input n3203;
    input n126_adj_5;
    input \rom_data[78] ;
    input \rom_data[79] ;
    input \rom_data[76] ;
    input \rom_data[77] ;
    input \rom_data[72] ;
    input \rom_data[100] ;
    input \rom_data[101] ;
    input \rom_data[96] ;
    input \rom_data[40] ;
    input n94;
    input n4173;
    input \rom_data[60] ;
    input \rom_data[61] ;
    input \rom_data[58] ;
    input \rom_data[59] ;
    input \rom_data[56] ;
    input \rom_data[57] ;
    input \rom_data[70] ;
    input \rom_data[71] ;
    input n4187;
    input \rom_data[68] ;
    input \rom_data[69] ;
    input n3775;
    input n3774;
    output n4153;
    input n126_adj_6;
    input n3318;
    input n23;
    input n3276;
    input n126_adj_7;
    input n3716;
    output n3717;
    input n2325;
    input n3420;
    input n63_adj_8;
    input n126_adj_9;
    input n4089;
    input n94_adj_10;
    input n3721;
    output n4645;
    input n4162;
    input n63_adj_11;
    input n63_adj_12;
    input n4144;
    input n4188;
    input n77;
    output n1628;
    input n4181;
    input n4146;
    input n4074;
    input n4647;
    input n4163;
    input n4145;
    input n126_adj_13;
    input n4167;
    input n4196;
    input n3701;
    input n3836;
    input n3835;
    input n61_adj_14;
    input n94_adj_15;
    input n94_adj_16;
    input \rom_data[74] ;
    input \rom_data[75] ;
    input \rom_data[102] ;
    input n63_adj_17;
    input n94_adj_18;
    output n126_adj_19;
    input n3904;
    input n4147;
    input n4136;
    input n3874;
    input n3288;
    input n4148;
    input n3335;
    input n4170;
    output n3830;
    input n3771;
    input n3770;
    input \rom_data[98] ;
    input \rom_data[99] ;
    input n3768;
    input n3767;
    input n1631;
    input n4161;
    input n1629;
    output n3647;
    input n3509;
    input n3510;
    input n3410;
    input n3411;
    input n78;
    input n4178;
    output n126_adj_20;
    output n63_adj_21;
    input \rom_data[64] ;
    input \rom_data[66] ;
    output n4654;
    input n4208;
    input n78_adj_22;
    output n126_adj_23;
    input n61_adj_24;
    output n126_adj_25;
    input n3463;
    input n4149;
    input n3494;
    input n78_adj_26;
    output n126_adj_27;
    input n4140;
    input n94_adj_28;
    input n63_adj_29;
    input n126_adj_30;
    input n31_adj_31;
    input n3495;
    input n3496;
    input n94_adj_32;
    input n62_adj_33;
    input n94_adj_34;
    input n126_adj_35;
    input n63_adj_36;
    input n126_adj_37;
    input n3500;
    input n4141;
    input n4169;
    input n4137;
    output n1121;
    input n94_adj_38;
    output n126_adj_39;
    input n3507;
    output n2390;
    output vga_c_0;
    input n46_adj_40;
    input n4135;
    
    wire clk_240mhz /* synthesis SET_AS_NETWORK=clk_240mhz, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(30[10:20])
    wire clk_40mhz /* synthesis is_clock=1, SET_AS_NETWORK=clk_40mhz */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(39[10:19])
    wire change_en /* synthesis is_clock=1, SET_AS_NETWORK=\u2/change_en */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(35[9:18])
    
    wire n3409, n3063, n3475, sync_h_N_224, sync_v_N_222, n2814;
    wire [18:0]cnt;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(31[14:17])
    wire [18:0]n1;
    
    wire n2815;
    wire [15:0]x_cnt;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(32[15:20])
    wire [15:0]x_cnt_15__N_40;
    
    wire n2813, n4200, n4201, n4202, n1660, n2861, n2382, n1588, 
        n5;
    wire [15:0]y_cnt;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(32[21:26])
    wire [15:0]y_cnt_15__N_124;
    
    wire n2862, n1658;
    wire [2:0]color;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(36[13:18])
    wire [2:0]color_2__N_104;
    
    wire change_en_N_234, n2830, n2860, n3979;
    wire [127:0]rom_data;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(54[14:22])
    
    wire n2799, n15, n14, n3888, n3457, n3458, n3465, n3459, 
        n3460, n3466, n3421, n4130, n3462, n3467, n63_c, n3502, 
        n3965, n63_adj_237, n3503, n3367, n2812, n2828;
    wire [6:0]n174_c;
    
    wire n2798, n2827, n2826, n2859, n2769;
    wire [15:0]rom_addr_6__N_152_c;
    
    wire n38, n2845, rom_addr_6__N_168, n2844, n2784, n2785, n2766, 
        n2824;
    wire [15:0]rom_addr_6__N_140;
    
    wire n2797, n2338, n2396, n4, n2771, n2772, n3943, n3941, 
        n3944, n2823, n2843, n2775, n2776, n2774, n2782;
    wire [15:0]rom_addr_6__N_170_c;
    
    wire n3940, n1348, n2842, n2822, n2796, n2841, n2858, n2795, 
        n1612, n7, n2794, n3406, n2781, n2820, n2840, n2839, 
        n2838, n3407, n2793, n2768, n2767, n2792, n3414, n3415, 
        n3416, n3700, n23_c, n3902, n3901, n34, n28_adj_240, n36, 
        n3997, n3492, n2837, n706, n2836, rom_addr_6__N_150, n669, 
        n2835, n2819, n2398, n32, n3514, n3515, n1478, n3019, 
        n3485, n2362, n3508, n24, n2834, n30, n4131, n1320, 
        n3746, n2773, n2818, n3358, n3493, n3336, n1594, n4134, 
        n4124, n4120, n4125, n18, n21, n4646, n3450, n4180, 
        n3433, n3432, n3430, n3425, n3423, n39, n3449, n3448, 
        n3447, n2791, n3440, n4121, n4122, n3439, n4020, n4019, 
        n4021, n3504, n3505, n3506, n3468, n3470, n3469, n1518, 
        n81, n1306, n3286, n1598, n1596, n1599, n4_adj_248, n3007, 
        n3474, n3479, n53, n3453, n3481, n3471, n3456, n3480, 
        n3773, n4_adj_250, n7_adj_251, n3703, n4079, n3715, n3429, 
        n108, n3484, n1524, n3478, n85_adj_252, n3477, n3483, 
        n3443, n3436, n3482, n63_adj_253, n3698, n4088, n2790, 
        n3710, n3719, n4076, n4077, n4078, n4075, n4132, n4133, 
        n3521, n2789, n31_adj_259, n2788, n2787, n2786, n2817, 
        n2780, n2779, n2816, n4123, n12, n3441, n3442, n3476, 
        n6, n2094, n2833, n2832, n8_adj_261, n7_adj_262, n3702, 
        n3699, n2778, n2777, n2831, n1429, n3341, n1430, n1464, 
        n3431, n3426, n1597, n3322, n4017, n63_adj_267, n3499, 
        n4018, n3490, n3491, n3488, n3489, n3486, n3487, n2320, 
        n126_adj_270, n3513, n6_adj_271, n3434, n3435, n3451, n3452, 
        n3454, n3455, n3511, n3512, n17, n18_adj_272, n3772, n3769, 
        n16, n3424, n3427, n3428, n3437, n3438, n6_adj_273, n3497, 
        n3498, n10, n15_adj_276, n16_adj_277, n3464, n10_adj_284, 
        n3501, n2865, n2864, n2863;
    
    FD1P3AX x_set_i0_i0 (.D(n507[0]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_152[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i0.GSR = "ENABLED";
    FD1P3AY y_set_i0_i0 (.D(n541[0]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_170[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i0.GSR = "ENABLED";
    L6MUX21 i2894 (.D0(n3409), .D1(n3063), .SD(n174[1]), .Z(n3475));
    FD1S3AY sync_h_109 (.D(sync_h_N_224), .CK(clk_40mhz), .Q(sync_h_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(63[7] 64[22])
    defparam sync_h_109.GSR = "ENABLED";
    FD1S3AY sync_v_110 (.D(sync_v_N_222), .CK(clk_40mhz), .Q(sync_v_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(69[7] 70[22])
    defparam sync_v_110.GSR = "ENABLED";
    CCU2D cnt_469_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2814), 
          .COUT(n2815), .S0(n1[5]), .S1(n1[6]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_469_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_469_add_4_7.INJECT1_0 = "NO";
    defparam cnt_469_add_4_7.INJECT1_1 = "NO";
    FD1P3AY x_cnt_i0_i0 (.D(x_cnt_15__N_40[0]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i0.GSR = "ENABLED";
    CCU2D cnt_469_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2813), 
          .COUT(n2814), .S0(n1[3]), .S1(n1[4]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_469_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_469_add_4_5.INJECT1_0 = "NO";
    defparam cnt_469_add_4_5.INJECT1_1 = "NO";
    PFUMX i3491 (.BLUT(n4200), .ALUT(n4201), .C0(rom_addr[1]), .Z(n4202));
    FD1S3AY x_flag_114 (.D(n1660), .CK(clk_40mhz), .Q(x_flag)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(99[7] 101[24])
    defparam x_flag_114.GSR = "ENABLED";
    CCU2D add_188_9 (.A0(n2382), .B0(n1588), .C0(n5), .D0(y_cnt[7]), 
          .A1(n2382), .B1(n1588), .C1(n5), .D1(y_cnt[8]), .CIN(n2861), 
          .COUT(n2862), .S0(y_cnt_15__N_124[7]), .S1(y_cnt_15__N_124[8]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(57[8:30])
    defparam add_188_9.INIT0 = 16'hfd00;
    defparam add_188_9.INIT1 = 16'hfd00;
    defparam add_188_9.INJECT1_0 = "NO";
    defparam add_188_9.INJECT1_1 = "NO";
    FD1P3AY y_cnt_i0_i0 (.D(y_cnt_15__N_124[0]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i0.GSR = "ENABLED";
    FD1S3AY y_flag_116 (.D(n1658), .CK(clk_40mhz), .Q(y_flag)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(115[7] 117[24])
    defparam y_flag_116.GSR = "ENABLED";
    FD1S3AX color_i0 (.D(color_2__N_104[0]), .CK(change_en), .Q(color[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(140[7] 148[10])
    defparam color_i0.GSR = "ENABLED";
    FD1S3AX change_en_118 (.D(change_en_N_234), .CK(clk_40mhz), .Q(change_en)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(132[7] 135[21])
    defparam change_en_118.GSR = "ENABLED";
    CCU2D sub_193_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[0]), .B1(rom_addr_6__N_170[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2830));
    defparam sub_193_add_2_1.INIT0 = 16'h0000;
    defparam sub_193_add_2_1.INIT1 = 16'h5999;
    defparam sub_193_add_2_1.INJECT1_0 = "NO";
    defparam sub_193_add_2_1.INJECT1_1 = "NO";
    FD1P3AX cnt_469__i0 (.D(n1[0]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i0.GSR = "ENABLED";
    CCU2D add_188_7 (.A0(n2382), .B0(n1588), .C0(n5), .D0(y_cnt[5]), 
          .A1(n2382), .B1(n1588), .C1(n5), .D1(y_cnt[6]), .CIN(n2860), 
          .COUT(n2861), .S0(y_cnt_15__N_124[5]), .S1(y_cnt_15__N_124[6]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(57[8:30])
    defparam add_188_7.INIT0 = 16'hfd00;
    defparam add_188_7.INIT1 = 16'hfd00;
    defparam add_188_7.INJECT1_0 = "NO";
    defparam add_188_7.INJECT1_1 = "NO";
    FD1P3IX vga__i3 (.D(color[2]), .SP(clk_240mhz_enable_91), .CD(n988), 
            .CK(clk_240mhz), .Q(vga_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(85[7] 89[16])
    defparam vga__i3.GSR = "ENABLED";
    PFUMX i3372 (.BLUT(n3980), .ALUT(n3979), .C0(rom_addr[6]), .Z(rom_data[73]));
    CCU2D add_186_17 (.A0(n4174), .B0(n1583), .C0(n8), .D0(x_cnt[15]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2799), 
          .S0(x_cnt_15__N_40[15]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(50[7:29])
    defparam add_186_17.INIT0 = 16'hfd00;
    defparam add_186_17.INIT1 = 16'h0000;
    defparam add_186_17.INJECT1_0 = "NO";
    defparam add_186_17.INJECT1_1 = "NO";
    LUT4 i8_4_lut (.A(n15), .B(y_cnt[13]), .C(n14), .D(y_cnt[8]), .Z(n1588)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(56[6:23])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 n3888_bdd_3_lut (.A(n3888), .B(n3885), .C(rom_addr[4]), .Z(n3889)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3888_bdd_3_lut.init = 16'hcaca;
    L6MUX21 i2884 (.D0(n3457), .D1(n3458), .SD(n174[0]), .Z(n3465));
    PFUMX i2885 (.BLUT(n3459), .ALUT(n3460), .C0(n174[0]), .Z(n3466));
    PFUMX i3368 (.BLUT(n4150), .ALUT(n3970), .C0(rom_addr[5]), .Z(n3421));
    L6MUX21 i2886 (.D0(n4130), .D1(n3462), .SD(n174[0]), .Z(n3467));
    PFUMX i2921 (.BLUT(n63_c), .ALUT(n126), .C0(rom_addr[6]), .Z(n3502));
    PFUMX i3365 (.BLUT(n3965), .ALUT(n3964), .C0(rom_addr[6]), .Z(rom_data[103]));
    PFUMX i2922 (.BLUT(n63_adj_237), .ALUT(n126_adj_1), .C0(rom_addr[6]), 
          .Z(n3503));
    PFUMX i959 (.BLUT(n46), .ALUT(n62), .C0(n3367), .Z(n1485));
    CCU2D cnt_469_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2812), 
          .COUT(n2813), .S0(n1[1]), .S1(n1[2]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_469_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_469_add_4_3.INJECT1_0 = "NO";
    defparam cnt_469_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_469_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2812), 
          .S1(n1[0]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469_add_4_1.INIT0 = 16'hF000;
    defparam cnt_469_add_4_1.INIT1 = 16'h0555;
    defparam cnt_469_add_4_1.INJECT1_0 = "NO";
    defparam cnt_469_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_7 (.A0(x_cnt[5]), .B0(rom_addr_6__N_152[5]), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[6]), .B1(rom_addr_6__N_152[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2828), .S0(n174_c[5]), .S1(n174_c[6]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam sub_19_add_2_7.INIT0 = 16'h5999;
    defparam sub_19_add_2_7.INIT1 = 16'h5999;
    defparam sub_19_add_2_7.INJECT1_0 = "NO";
    defparam sub_19_add_2_7.INJECT1_1 = "NO";
    CCU2D add_186_15 (.A0(n4174), .B0(n1583), .C0(n8), .D0(x_cnt[13]), 
          .A1(n4174), .B1(n1583), .C1(n8), .D1(x_cnt[14]), .CIN(n2798), 
          .COUT(n2799), .S0(x_cnt_15__N_40[13]), .S1(x_cnt_15__N_40[14]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(50[7:29])
    defparam add_186_15.INIT0 = 16'hfd00;
    defparam add_186_15.INIT1 = 16'hfd00;
    defparam add_186_15.INJECT1_0 = "NO";
    defparam add_186_15.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_5 (.A0(x_cnt[3]), .B0(rom_addr_6__N_152[3]), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[4]), .B1(rom_addr_6__N_152[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2827), .COUT(n2828), .S0(n174_c[3]), .S1(n174_c[4]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam sub_19_add_2_5.INIT0 = 16'h5999;
    defparam sub_19_add_2_5.INIT1 = 16'h5999;
    defparam sub_19_add_2_5.INJECT1_0 = "NO";
    defparam sub_19_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_19_add_2_3 (.A0(x_cnt[1]), .B0(rom_addr_6__N_152[1]), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[2]), .B1(rom_addr_6__N_152[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2826), .COUT(n2827), .S0(n174[1]), .S1(n174_c[2]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam sub_19_add_2_3.INIT0 = 16'h5999;
    defparam sub_19_add_2_3.INIT1 = 16'h5999;
    defparam sub_19_add_2_3.INJECT1_0 = "NO";
    defparam sub_19_add_2_3.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(y_cnt[14]), .B(y_cnt[15]), .C(y_cnt[3]), .D(y_cnt[7]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(56[6:23])
    defparam i6_4_lut.init = 16'hfffe;
    CCU2D sub_19_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_cnt[0]), .B1(rom_addr_6__N_152[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2826), .S1(n174[0]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam sub_19_add_2_1.INIT0 = 16'h0000;
    defparam sub_19_add_2_1.INIT1 = 16'h5999;
    defparam sub_19_add_2_1.INJECT1_0 = "NO";
    defparam sub_19_add_2_1.INJECT1_1 = "NO";
    CCU2D add_188_5 (.A0(n2382), .B0(n1588), .C0(n5), .D0(y_cnt[3]), 
          .A1(n2382), .B1(n1588), .C1(n5), .D1(y_cnt[4]), .CIN(n2859), 
          .COUT(n2860), .S0(y_cnt_15__N_124[3]), .S1(y_cnt_15__N_124[4]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(57[8:30])
    defparam add_188_5.INIT0 = 16'hfd00;
    defparam add_188_5.INIT1 = 16'hfd00;
    defparam add_188_5.INJECT1_0 = "NO";
    defparam add_188_5.INJECT1_1 = "NO";
    CCU2D add_30_9 (.A0(\x_set[14] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\x_set[15] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2769), .S0(rom_addr_6__N_152_c[14]), .S1(rom_addr_6__N_152_c[15]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[39:57])
    defparam add_30_9.INIT0 = 16'h5aaa;
    defparam add_30_9.INIT1 = 16'h5aaa;
    defparam add_30_9.INJECT1_0 = "NO";
    defparam add_30_9.INJECT1_1 = "NO";
    PFUMX i54 (.BLUT(n28), .ALUT(n38), .C0(rom_addr[5]), .Z(n3063));
    CCU2D sub_192_add_2_17 (.A0(y_cnt[15]), .B0(\y_set[15] ), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2845), .S1(rom_addr_6__N_168));
    defparam sub_192_add_2_17.INIT0 = 16'h5999;
    defparam sub_192_add_2_17.INIT1 = 16'h0000;
    defparam sub_192_add_2_17.INJECT1_0 = "NO";
    defparam sub_192_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_192_add_2_15 (.A0(y_cnt[13]), .B0(\y_set[13] ), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[14]), .B1(\y_set[14] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2844), .COUT(n2845));
    defparam sub_192_add_2_15.INIT0 = 16'h5999;
    defparam sub_192_add_2_15.INIT1 = 16'h5999;
    defparam sub_192_add_2_15.INJECT1_0 = "NO";
    defparam sub_192_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_190_add_2_3 (.A0(x_cnt[1]), .B0(rom_addr_6__N_152[1]), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[2]), .B1(rom_addr_6__N_152[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2784), .COUT(n2785));
    defparam sub_190_add_2_3.INIT0 = 16'h5999;
    defparam sub_190_add_2_3.INIT1 = 16'h5999;
    defparam sub_190_add_2_3.INJECT1_0 = "NO";
    defparam sub_190_add_2_3.INJECT1_1 = "NO";
    CCU2D add_30_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\x_set[7] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2766), .S1(rom_addr_6__N_152_c[7]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[39:57])
    defparam add_30_1.INIT0 = 16'hF000;
    defparam add_30_1.INIT1 = 16'h5555;
    defparam add_30_1.INJECT1_0 = "NO";
    defparam add_30_1.INJECT1_1 = "NO";
    CCU2D sub_18_add_2_7 (.A0(y_cnt[5]), .B0(rom_addr_6__N_170[5]), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[6]), .B1(rom_addr_6__N_170[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2824), .S0(rom_addr_6__N_140[5]), .S1(rom_addr_6__N_140[6]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(77[15:28])
    defparam sub_18_add_2_7.INIT0 = 16'h5999;
    defparam sub_18_add_2_7.INIT1 = 16'h5999;
    defparam sub_18_add_2_7.INJECT1_0 = "NO";
    defparam sub_18_add_2_7.INJECT1_1 = "NO";
    CCU2D add_186_13 (.A0(n4174), .B0(n1583), .C0(n8), .D0(x_cnt[11]), 
          .A1(n4174), .B1(n1583), .C1(n8), .D1(x_cnt[12]), .CIN(n2797), 
          .COUT(n2798), .S0(x_cnt_15__N_40[11]), .S1(x_cnt_15__N_40[12]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(50[7:29])
    defparam add_186_13.INIT0 = 16'hfd00;
    defparam add_186_13.INIT1 = 16'hfd00;
    defparam add_186_13.INJECT1_0 = "NO";
    defparam add_186_13.INJECT1_1 = "NO";
    LUT4 i1855_4_lut (.A(n2338), .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), 
         .Z(n2396)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1855_4_lut.init = 16'hfcec;
    LUT4 i1_2_lut (.A(n174[1]), .B(n174[0]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i1_2_lut.init = 16'h8888;
    CCU2D sub_189_add_2_3 (.A0(x_cnt[1]), .B0(rom_addr_6__N_152[1]), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[2]), .B1(rom_addr_6__N_152[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2771), .COUT(n2772));
    defparam sub_189_add_2_3.INIT0 = 16'h5999;
    defparam sub_189_add_2_3.INIT1 = 16'h5999;
    defparam sub_189_add_2_3.INJECT1_0 = "NO";
    defparam sub_189_add_2_3.INJECT1_1 = "NO";
    L6MUX21 i3351 (.D0(n3943), .D1(n3941), .SD(n174_c[2]), .Z(n3944));
    CCU2D sub_18_add_2_5 (.A0(y_cnt[3]), .B0(rom_addr_6__N_170[3]), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[4]), .B1(rom_addr_6__N_170[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2823), .COUT(n2824), .S0(rom_addr_6__N_140[3]), 
          .S1(rom_addr_6__N_140[4]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(77[15:28])
    defparam sub_18_add_2_5.INIT0 = 16'h5999;
    defparam sub_18_add_2_5.INIT1 = 16'h5999;
    defparam sub_18_add_2_5.INJECT1_0 = "NO";
    defparam sub_18_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_192_add_2_13 (.A0(y_cnt[11]), .B0(\y_set[11] ), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[12]), .B1(\y_set[12] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2843), .COUT(n2844));
    defparam sub_192_add_2_13.INIT0 = 16'h5999;
    defparam sub_192_add_2_13.INIT1 = 16'h5999;
    defparam sub_192_add_2_13.INJECT1_0 = "NO";
    defparam sub_192_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_190_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_cnt[0]), .B1(rom_addr_6__N_152[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2784));
    defparam sub_190_add_2_1.INIT0 = 16'h0000;
    defparam sub_190_add_2_1.INIT1 = 16'h5999;
    defparam sub_190_add_2_1.INJECT1_0 = "NO";
    defparam sub_190_add_2_1.INJECT1_1 = "NO";
    PFUMX i3349 (.BLUT(n4150), .ALUT(n3942), .C0(rom_addr[5]), .Z(n3943));
    CCU2D sub_189_add_2_11 (.A0(x_cnt[9]), .B0(\x_set[9] ), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[10]), .B1(\x_set[10] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2775), .COUT(n2776));
    defparam sub_189_add_2_11.INIT0 = 16'h5999;
    defparam sub_189_add_2_11.INIT1 = 16'h5999;
    defparam sub_189_add_2_11.INJECT1_0 = "NO";
    defparam sub_189_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_189_add_2_9 (.A0(x_cnt[7]), .B0(\x_set[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[8]), .B1(\x_set[8] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2774), .COUT(n2775));
    defparam sub_189_add_2_9.INIT0 = 16'h5999;
    defparam sub_189_add_2_9.INIT1 = 16'h5999;
    defparam sub_189_add_2_9.INJECT1_0 = "NO";
    defparam sub_189_add_2_9.INJECT1_1 = "NO";
    CCU2D add_35_9 (.A0(\y_set[14] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\y_set[15] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2782), .S0(rom_addr_6__N_170_c[14]), .S1(rom_addr_6__N_170_c[15]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[91:109])
    defparam add_35_9.INIT0 = 16'h5aaa;
    defparam add_35_9.INIT1 = 16'h5aaa;
    defparam add_35_9.INJECT1_0 = "NO";
    defparam add_35_9.INJECT1_1 = "NO";
    PFUMX i3347 (.BLUT(n3940), .ALUT(n1348), .C0(n174[1]), .Z(n3941));
    CCU2D sub_192_add_2_11 (.A0(y_cnt[9]), .B0(\y_set[9] ), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[10]), .B1(\y_set[10] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2842), .COUT(n2843));
    defparam sub_192_add_2_11.INIT0 = 16'h5999;
    defparam sub_192_add_2_11.INIT1 = 16'h5999;
    defparam sub_192_add_2_11.INJECT1_0 = "NO";
    defparam sub_192_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_18_add_2_3 (.A0(y_cnt[1]), .B0(\rom_addr_6__N_170[1] ), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[2]), .B1(\rom_addr_6__N_170[2] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2822), .COUT(n2823), .S0(rom_addr_6__N_140[1]), 
          .S1(rom_addr_6__N_140[2]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(77[15:28])
    defparam sub_18_add_2_3.INIT0 = 16'h5999;
    defparam sub_18_add_2_3.INIT1 = 16'h5999;
    defparam sub_18_add_2_3.INJECT1_0 = "NO";
    defparam sub_18_add_2_3.INJECT1_1 = "NO";
    CCU2D add_186_11 (.A0(n4174), .B0(n1583), .C0(n8), .D0(x_cnt[9]), 
          .A1(x_cnt[5]), .B1(n1583), .C1(n8), .D1(x_cnt[10]), .CIN(n2796), 
          .COUT(n2797), .S0(x_cnt_15__N_40[9]), .S1(x_cnt_15__N_40[10]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(50[7:29])
    defparam add_186_11.INIT0 = 16'hfd00;
    defparam add_186_11.INIT1 = 16'hfd00;
    defparam add_186_11.INJECT1_0 = "NO";
    defparam add_186_11.INJECT1_1 = "NO";
    CCU2D sub_192_add_2_9 (.A0(y_cnt[7]), .B0(\y_set[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[8]), .B1(\y_set[8] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2841), .COUT(n2842));
    defparam sub_192_add_2_9.INIT0 = 16'h5999;
    defparam sub_192_add_2_9.INIT1 = 16'h5999;
    defparam sub_192_add_2_9.INJECT1_0 = "NO";
    defparam sub_192_add_2_9.INJECT1_1 = "NO";
    CCU2D add_188_3 (.A0(n2382), .B0(n1588), .C0(y_cnt[0]), .D0(y_cnt[1]), 
          .A1(n2382), .B1(n1588), .C1(n5), .D1(y_cnt[2]), .CIN(n2858), 
          .COUT(n2859), .S0(y_cnt_15__N_124[1]), .S1(y_cnt_15__N_124[2]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(57[8:30])
    defparam add_188_3.INIT0 = 16'hff00;
    defparam add_188_3.INIT1 = 16'hfd00;
    defparam add_188_3.INJECT1_0 = "NO";
    defparam add_188_3.INJECT1_1 = "NO";
    CCU2D add_186_9 (.A0(x_cnt[0]), .B0(n1612), .C0(n7), .D0(x_cnt[7]), 
          .A1(n4174), .B1(n1583), .C1(n8), .D1(x_cnt[8]), .CIN(n2795), 
          .COUT(n2796), .S0(x_cnt_15__N_40[7]), .S1(x_cnt_15__N_40[8]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(50[7:29])
    defparam add_186_9.INIT0 = 16'hff00;
    defparam add_186_9.INIT1 = 16'hfd00;
    defparam add_186_9.INJECT1_0 = "NO";
    defparam add_186_9.INJECT1_1 = "NO";
    CCU2D add_186_7 (.A0(x_cnt[10]), .B0(n1583), .C0(n8), .D0(x_cnt[5]), 
          .A1(n4174), .B1(n1583), .C1(n8), .D1(x_cnt[6]), .CIN(n2794), 
          .COUT(n2795), .S0(x_cnt_15__N_40[5]), .S1(x_cnt_15__N_40[6]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(50[7:29])
    defparam add_186_7.INIT0 = 16'hfd00;
    defparam add_186_7.INIT1 = 16'hfd00;
    defparam add_186_7.INJECT1_0 = "NO";
    defparam add_186_7.INJECT1_1 = "NO";
    PFUMX i2825 (.BLUT(n3404), .ALUT(n3405), .C0(n174[0]), .Z(n3406));
    CCU2D add_35_7 (.A0(\y_set[12] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\y_set[13] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2781), .COUT(n2782), .S0(rom_addr_6__N_170_c[12]), .S1(rom_addr_6__N_170_c[13]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[91:109])
    defparam add_35_7.INIT0 = 16'h5aaa;
    defparam add_35_7.INIT1 = 16'h5aaa;
    defparam add_35_7.INJECT1_0 = "NO";
    defparam add_35_7.INJECT1_1 = "NO";
    CCU2D sub_18_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[0]), .B1(rom_addr_6__N_170[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2822), .S1(rom_addr_6__N_140[0]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(77[15:28])
    defparam sub_18_add_2_1.INIT0 = 16'h0000;
    defparam sub_18_add_2_1.INIT1 = 16'h5999;
    defparam sub_18_add_2_1.INJECT1_0 = "NO";
    defparam sub_18_add_2_1.INJECT1_1 = "NO";
    FD1P3AX rom_addr_i0_i0_rep_84 (.D(rom_addr_6__N_140[0]), .SP(clk_240mhz_enable_90), 
            .CK(clk_240mhz), .Q(n4653)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam rom_addr_i0_i0_rep_84.GSR = "ENABLED";
    CCU2D cnt_469_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2820), .S0(n1[17]), .S1(n1[18]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_469_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_469_add_4_19.INJECT1_0 = "NO";
    defparam cnt_469_add_4_19.INJECT1_1 = "NO";
    CCU2D sub_192_add_2_7 (.A0(y_cnt[5]), .B0(rom_addr_6__N_170[5]), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[6]), .B1(rom_addr_6__N_170[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2840), .COUT(n2841));
    defparam sub_192_add_2_7.INIT0 = 16'h5999;
    defparam sub_192_add_2_7.INIT1 = 16'h5999;
    defparam sub_192_add_2_7.INJECT1_0 = "NO";
    defparam sub_192_add_2_7.INJECT1_1 = "NO";
    CCU2D add_188_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2382), .B1(n1588), .C1(y_cnt[1]), .D1(y_cnt[0]), .COUT(n2858), 
          .S1(y_cnt_15__N_124[0]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(57[8:30])
    defparam add_188_1.INIT0 = 16'hF000;
    defparam add_188_1.INIT1 = 16'h00ff;
    defparam add_188_1.INJECT1_0 = "NO";
    defparam add_188_1.INJECT1_1 = "NO";
    CCU2D sub_192_add_2_5 (.A0(y_cnt[3]), .B0(rom_addr_6__N_170[3]), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[4]), .B1(rom_addr_6__N_170[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2839), .COUT(n2840));
    defparam sub_192_add_2_5.INIT0 = 16'h5999;
    defparam sub_192_add_2_5.INIT1 = 16'h5999;
    defparam sub_192_add_2_5.INJECT1_0 = "NO";
    defparam sub_192_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_192_add_2_3 (.A0(y_cnt[1]), .B0(\rom_addr_6__N_170[1] ), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[2]), .B1(\rom_addr_6__N_170[2] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2838), .COUT(n2839));
    defparam sub_192_add_2_3.INIT0 = 16'h5999;
    defparam sub_192_add_2_3.INIT1 = 16'h5999;
    defparam sub_192_add_2_3.INJECT1_0 = "NO";
    defparam sub_192_add_2_3.INJECT1_1 = "NO";
    PFUMX i2828 (.BLUT(n3407), .ALUT(n3408), .C0(n174[0]), .Z(n3409));
    CCU2D add_186_5 (.A0(n4174), .B0(n1583), .C0(n8), .D0(x_cnt[3]), 
          .A1(n4174), .B1(n1583), .C1(n8), .D1(x_cnt[4]), .CIN(n2793), 
          .COUT(n2794), .S0(x_cnt_15__N_40[3]), .S1(x_cnt_15__N_40[4]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(50[7:29])
    defparam add_186_5.INIT0 = 16'hfd00;
    defparam add_186_5.INIT1 = 16'hfd00;
    defparam add_186_5.INJECT1_0 = "NO";
    defparam add_186_5.INJECT1_1 = "NO";
    CCU2D sub_192_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[0]), .B1(rom_addr_6__N_170[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2838));
    defparam sub_192_add_2_1.INIT0 = 16'h0000;
    defparam sub_192_add_2_1.INIT1 = 16'h5999;
    defparam sub_192_add_2_1.INJECT1_0 = "NO";
    defparam sub_192_add_2_1.INJECT1_1 = "NO";
    CCU2D add_30_7 (.A0(\x_set[12] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\x_set[13] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2768), .COUT(n2769), .S0(rom_addr_6__N_152_c[12]), .S1(rom_addr_6__N_152_c[13]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[39:57])
    defparam add_30_7.INIT0 = 16'h5aaa;
    defparam add_30_7.INIT1 = 16'h5aaa;
    defparam add_30_7.INJECT1_0 = "NO";
    defparam add_30_7.INJECT1_1 = "NO";
    CCU2D add_30_5 (.A0(\x_set[10] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\x_set[11] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2767), .COUT(n2768), .S0(rom_addr_6__N_152_c[10]), .S1(rom_addr_6__N_152_c[11]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[39:57])
    defparam add_30_5.INIT0 = 16'h5aaa;
    defparam add_30_5.INIT1 = 16'h5aaa;
    defparam add_30_5.INJECT1_0 = "NO";
    defparam add_30_5.INJECT1_1 = "NO";
    LUT4 i5_3_lut (.A(y_cnt[12]), .B(y_cnt[10]), .C(y_cnt[11]), .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(56[6:23])
    defparam i5_3_lut.init = 16'hfefe;
    CCU2D add_186_3 (.A0(n4174), .B0(n1583), .C0(n8), .D0(x_cnt[1]), 
          .A1(n4174), .B1(n1583), .C1(n8), .D1(x_cnt[2]), .CIN(n2792), 
          .COUT(n2793), .S0(x_cnt_15__N_40[1]), .S1(x_cnt_15__N_40[2]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(50[7:29])
    defparam add_186_3.INIT0 = 16'hfd00;
    defparam add_186_3.INIT1 = 16'hfd00;
    defparam add_186_3.INJECT1_0 = "NO";
    defparam add_186_3.INJECT1_1 = "NO";
    L6MUX21 i2835 (.D0(n3414), .D1(n3415), .SD(n174[1]), .Z(n3416));
    LUT4 n63_bdd_4_lut_3626 (.A(n63), .B(n4152), .C(rom_addr[6]), .D(rom_addr[1]), 
         .Z(n3700)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam n63_bdd_4_lut_3626.init = 16'h0a3a;
    CCU2D add_186_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_cnt[7]), .B1(n1612), .C1(n7), .D1(x_cnt[0]), .COUT(n2792), 
          .S1(x_cnt_15__N_40[0]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(50[7:29])
    defparam add_186_1.INIT0 = 16'hF000;
    defparam add_186_1.INIT1 = 16'h00ff;
    defparam add_186_1.INJECT1_0 = "NO";
    defparam add_186_1.INJECT1_1 = "NO";
    LUT4 i4_2_lut (.A(cnt[13]), .B(cnt[17]), .Z(n23_c)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    FD1P3IX vga__i2 (.D(color[1]), .SP(clk_240mhz_enable_91), .CD(n988), 
            .CK(clk_240mhz), .Q(vga_c_1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(85[7] 89[16])
    defparam vga__i2.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i6 (.D(rom_addr_6__N_140[6]), .SP(clk_240mhz_enable_90), 
            .CK(clk_240mhz), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i5 (.D(rom_addr_6__N_140[5]), .SP(clk_240mhz_enable_90), 
            .CK(clk_240mhz), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i4 (.D(rom_addr_6__N_140[4]), .SP(clk_240mhz_enable_90), 
            .CK(clk_240mhz), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i3 (.D(rom_addr_6__N_140[3]), .SP(clk_240mhz_enable_90), 
            .CK(clk_240mhz), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i2 (.D(rom_addr_6__N_140[2]), .SP(clk_240mhz_enable_90), 
            .CK(clk_240mhz), .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i1 (.D(rom_addr_6__N_140[1]), .SP(clk_240mhz_enable_90), 
            .CK(clk_240mhz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    PFUMX i3325 (.BLUT(n3902), .ALUT(n3901), .C0(n174[0]), .Z(n3903));
    LUT4 i17_4_lut (.A(cnt[12]), .B(n34), .C(n28_adj_240), .D(cnt[1]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i17_4_lut.init = 16'hfffe;
    CCU2D sub_189_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_cnt[0]), .B1(rom_addr_6__N_152[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2771));
    defparam sub_189_add_2_1.INIT0 = 16'h0000;
    defparam sub_189_add_2_1.INIT1 = 16'h5999;
    defparam sub_189_add_2_1.INJECT1_0 = "NO";
    defparam sub_189_add_2_1.INJECT1_1 = "NO";
    LUT4 rom_addr_2__bdd_3_lut_3519 (.A(rom_addr[2]), .B(n3996), .C(n174[0]), 
         .Z(n3997)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam rom_addr_2__bdd_3_lut_3519.init = 16'hcaca;
    LUT4 i3107_2_lut (.A(n3492), .B(n3267), .Z(n3572)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i3107_2_lut.init = 16'h7777;
    CCU2D sub_193_add_2_17 (.A0(y_cnt[15]), .B0(rom_addr_6__N_170_c[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2837), .S1(n706));
    defparam sub_193_add_2_17.INIT0 = 16'h5999;
    defparam sub_193_add_2_17.INIT1 = 16'h0000;
    defparam sub_193_add_2_17.INJECT1_0 = "NO";
    defparam sub_193_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_15 (.A0(y_cnt[13]), .B0(rom_addr_6__N_170_c[13]), 
          .C0(GND_net), .D0(GND_net), .A1(y_cnt[14]), .B1(rom_addr_6__N_170_c[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2836), .COUT(n2837));
    defparam sub_193_add_2_15.INIT0 = 16'h5999;
    defparam sub_193_add_2_15.INIT1 = 16'h5999;
    defparam sub_193_add_2_15.INJECT1_0 = "NO";
    defparam sub_193_add_2_15.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(rom_addr_6__N_150), .B(n706), .C(rom_addr_6__N_168), 
         .D(n669), .Z(n3267)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[10:110])
    defparam i3_4_lut.init = 16'h0020;
    CCU2D sub_193_add_2_13 (.A0(y_cnt[11]), .B0(rom_addr_6__N_170_c[11]), 
          .C0(GND_net), .D0(GND_net), .A1(y_cnt[12]), .B1(rom_addr_6__N_170_c[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2835), .COUT(n2836));
    defparam sub_193_add_2_13.INIT0 = 16'h5999;
    defparam sub_193_add_2_13.INIT1 = 16'h5999;
    defparam sub_193_add_2_13.INJECT1_0 = "NO";
    defparam sub_193_add_2_13.INJECT1_1 = "NO";
    CCU2D cnt_469_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2819), .COUT(n2820), .S0(n1[15]), .S1(n1[16]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_469_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_469_add_4_17.INJECT1_0 = "NO";
    defparam cnt_469_add_4_17.INJECT1_1 = "NO";
    PFUMX i2834 (.BLUT(n3412), .ALUT(n3413), .C0(n174[0]), .Z(n3415));
    PFUMX i1096 (.BLUT(n2396), .ALUT(n3301), .C0(n174[1]), .Z(n2398));
    LUT4 i13_4_lut (.A(cnt[5]), .B(cnt[0]), .C(cnt[4]), .D(cnt[8]), 
         .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i1397_2_lut_4_lut (.A(n3514), .B(n3515), .C(n174[1]), .D(rom_addr[6]), 
         .Z(n1478)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1397_2_lut_4_lut.init = 16'hca00;
    LUT4 i3091_3_lut_4_lut (.A(rom_addr[6]), .B(n3944), .C(n3019), .D(n174_c[3]), 
         .Z(n3485)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i3091_3_lut_4_lut.init = 16'hf044;
    PFUMX i3316 (.BLUT(n3887), .ALUT(n3886), .C0(rom_addr[3]), .Z(n3888));
    LUT4 i2933_3_lut (.A(n126_adj_2), .B(n126_adj_3), .C(n174[0]), .Z(n3514)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2933_3_lut.init = 16'hcaca;
    LUT4 i2927_4_lut (.A(n31), .B(n2362), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n3508)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i2927_4_lut.init = 16'h3afa;
    LUT4 i5_2_lut (.A(cnt[15]), .B(cnt[16]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut.init = 16'heeee;
    CCU2D sub_193_add_2_11 (.A0(y_cnt[9]), .B0(rom_addr_6__N_170_c[9]), 
          .C0(GND_net), .D0(GND_net), .A1(y_cnt[10]), .B1(rom_addr_6__N_170_c[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2834), .COUT(n2835));
    defparam sub_193_add_2_11.INIT0 = 16'h5999;
    defparam sub_193_add_2_11.INIT1 = 16'h5999;
    defparam sub_193_add_2_11.INJECT1_0 = "NO";
    defparam sub_193_add_2_11.INJECT1_1 = "NO";
    LUT4 i15_4_lut (.A(cnt[14]), .B(n30), .C(cnt[11]), .D(cnt[7]), .Z(n34)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i1445_2_lut_4_lut (.A(n4131), .B(n3377), .C(n174[0]), .D(rom_addr[6]), 
         .Z(n1320)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1445_2_lut_4_lut.init = 16'hca00;
    LUT4 n30_bdd_4_lut_3319 (.A(n4155), .B(n4168), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n3746)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam n30_bdd_4_lut_3319.init = 16'hc5c0;
    CCU2D sub_189_add_2_7 (.A0(x_cnt[5]), .B0(rom_addr_6__N_152[5]), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[6]), .B1(rom_addr_6__N_152[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2773), .COUT(n2774));
    defparam sub_189_add_2_7.INIT0 = 16'h5999;
    defparam sub_189_add_2_7.INIT1 = 16'h5999;
    defparam sub_189_add_2_7.INJECT1_0 = "NO";
    defparam sub_189_add_2_7.INJECT1_1 = "NO";
    CCU2D cnt_469_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2818), .COUT(n2819), .S0(n1[13]), .S1(n1[14]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_469_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_469_add_4_15.INJECT1_0 = "NO";
    defparam cnt_469_add_4_15.INJECT1_1 = "NO";
    FD1P3AX cnt_469__i18 (.D(n1[18]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i18.GSR = "ENABLED";
    LUT4 i2810_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .D(n1258), .Z(n3391)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B+(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i2810_4_lut_4_lut.init = 16'h5f5c;
    LUT4 i3102_2_lut_2_lut (.A(n174[1]), .B(n174_c[2]), .Z(n3358)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i3102_2_lut_2_lut.init = 16'hdddd;
    LUT4 i2912_4_lut (.A(n3856), .B(n2314), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n3493)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i2912_4_lut.init = 16'hcac0;
    LUT4 i2_3_lut_rep_26 (.A(n3336), .B(n1594), .C(rom_addr_6__N_170[3]), 
         .Z(n4134)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2_3_lut_rep_26.init = 16'hfdfd;
    PFUMX i3482 (.BLUT(n4124), .ALUT(n4120), .C0(n174[0]), .Z(n4125));
    LUT4 n18_bdd_4_lut (.A(n18), .B(n21), .C(n174[1]), .D(rom_addr[5]), 
         .Z(n4646)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n18_bdd_4_lut.init = 16'hca00;
    LUT4 i3069_3_lut (.A(rom_data[62]), .B(\rom_data[63] ), .C(n174[0]), 
         .Z(n3450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3069_3_lut.init = 16'hcaca;
    FD1P3AX cnt_469__i17 (.D(n1[17]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i17.GSR = "ENABLED";
    FD1P3AX cnt_469__i16 (.D(n1[16]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i16.GSR = "ENABLED";
    FD1P3AX cnt_469__i15 (.D(n1[15]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i15.GSR = "ENABLED";
    FD1P3AX cnt_469__i14 (.D(n1[14]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i14.GSR = "ENABLED";
    FD1P3AX cnt_469__i13 (.D(n1[13]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i13.GSR = "ENABLED";
    FD1P3AX cnt_469__i12 (.D(n1[12]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i12.GSR = "ENABLED";
    FD1P3AX cnt_469__i11 (.D(n1[11]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i11.GSR = "ENABLED";
    FD1P3AX cnt_469__i10 (.D(n1[10]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i10.GSR = "ENABLED";
    FD1P3AX cnt_469__i9 (.D(n1[9]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i9.GSR = "ENABLED";
    FD1P3AX cnt_469__i8 (.D(n1[8]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i8.GSR = "ENABLED";
    FD1P3AX cnt_469__i7 (.D(n1[7]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i7.GSR = "ENABLED";
    FD1P3AX cnt_469__i6 (.D(n1[6]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i6.GSR = "ENABLED";
    FD1P3AX cnt_469__i5 (.D(n1[5]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i5.GSR = "ENABLED";
    FD1P3AX cnt_469__i4 (.D(n1[4]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i4.GSR = "ENABLED";
    FD1P3AX cnt_469__i3 (.D(n1[3]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i3.GSR = "ENABLED";
    FD1P3AX cnt_469__i2 (.D(n1[2]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i2.GSR = "ENABLED";
    FD1P3AX cnt_469__i1 (.D(n1[1]), .SP(clk_240mhz_enable_91), .CK(clk_240mhz), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469__i1.GSR = "ENABLED";
    FD1S3JX color_i2 (.D(n4180), .CK(change_en), .PD(color[0]), .Q(color[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(140[7] 148[10])
    defparam color_i2.GSR = "ENABLED";
    LUT4 n61_bdd_4_lut (.A(n61), .B(n4186), .C(n126_adj_4), .D(rom_addr[6]), 
         .Z(n4130)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n61_bdd_4_lut.init = 16'hf088;
    FD1S3AX color_i1 (.D(color_2__N_104[1]), .CK(change_en), .Q(color[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(140[7] 148[10])
    defparam color_i1.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i15 (.D(y_cnt_15__N_124[15]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i15.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i14 (.D(y_cnt_15__N_124[14]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i14.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i13 (.D(y_cnt_15__N_124[13]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i13.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i12 (.D(y_cnt_15__N_124[12]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i12.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i11 (.D(y_cnt_15__N_124[11]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i11.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i10 (.D(y_cnt_15__N_124[10]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i10.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i9 (.D(y_cnt_15__N_124[9]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i9.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i8 (.D(y_cnt_15__N_124[8]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i8.GSR = "ENABLED";
    PFUMX i2877 (.BLUT(n3203), .ALUT(n126_adj_5), .C0(rom_addr[6]), .Z(n3458));
    FD1P3AX y_cnt_i0_i7 (.D(y_cnt_15__N_124[7]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i7.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i6 (.D(y_cnt_15__N_124[6]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i6.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i5 (.D(y_cnt_15__N_124[5]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i5.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i4 (.D(y_cnt_15__N_124[4]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i4.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i3 (.D(y_cnt_15__N_124[3]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i3.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i2 (.D(y_cnt_15__N_124[2]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i2.GSR = "ENABLED";
    FD1P3AX y_cnt_i0_i1 (.D(y_cnt_15__N_124[1]), .SP(clk_240mhz_enable_47), 
            .CK(clk_240mhz), .Q(y_cnt[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(55[7] 58[26])
    defparam y_cnt_i0_i1.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i15 (.D(x_cnt_15__N_40[15]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i15.GSR = "ENABLED";
    LUT4 i2852_3_lut (.A(\rom_data[78] ), .B(\rom_data[79] ), .C(n174[0]), 
         .Z(n3433)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2852_3_lut.init = 16'hcaca;
    LUT4 i2851_3_lut (.A(\rom_data[76] ), .B(\rom_data[77] ), .C(n174[0]), 
         .Z(n3432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2851_3_lut.init = 16'hcaca;
    LUT4 i3053_3_lut (.A(\rom_data[72] ), .B(rom_data[73]), .C(n174[0]), 
         .Z(n3430)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3053_3_lut.init = 16'hcaca;
    LUT4 i1656_2_lut (.A(y_cnt[0]), .B(y_cnt[1]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1656_2_lut.init = 16'heeee;
    LUT4 i2844_3_lut (.A(\rom_data[100] ), .B(\rom_data[101] ), .C(n174[0]), 
         .Z(n3425)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2844_3_lut.init = 16'hcaca;
    LUT4 i3057_3_lut (.A(\rom_data[96] ), .B(rom_data[97]), .C(n174[0]), 
         .Z(n3423)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3057_3_lut.init = 16'hcaca;
    FD1P3AX x_cnt_i0_i14 (.D(x_cnt_15__N_40[14]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i14.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i13 (.D(x_cnt_15__N_40[13]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i13.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i12 (.D(x_cnt_15__N_40[12]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i12.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i11 (.D(x_cnt_15__N_40[11]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i11.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i10 (.D(x_cnt_15__N_40[10]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i10.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i9 (.D(x_cnt_15__N_40[9]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i9.GSR = "ENABLED";
    LUT4 Mux_53_i39_4_lut (.A(\rom_data[40] ), .B(n94), .C(n174[0]), .D(n4173), 
         .Z(n39)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam Mux_53_i39_4_lut.init = 16'hca0a;
    FD1P3AX x_cnt_i0_i8 (.D(x_cnt_15__N_40[8]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i8.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i7 (.D(x_cnt_15__N_40[7]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i7.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i6 (.D(x_cnt_15__N_40[6]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i6.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i5 (.D(x_cnt_15__N_40[5]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i5.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i4 (.D(x_cnt_15__N_40[4]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i4.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i3 (.D(x_cnt_15__N_40[3]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i3.GSR = "ENABLED";
    LUT4 i2868_3_lut (.A(\rom_data[60] ), .B(\rom_data[61] ), .C(n174[0]), 
         .Z(n3449)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2868_3_lut.init = 16'hcaca;
    FD1P3AX x_cnt_i0_i2 (.D(x_cnt_15__N_40[2]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i2.GSR = "ENABLED";
    FD1P3AX x_cnt_i0_i1 (.D(x_cnt_15__N_40[1]), .SP(clk_240mhz_enable_91), 
            .CK(clk_240mhz), .Q(x_cnt[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(49[7] 50[29])
    defparam x_cnt_i0_i1.GSR = "ENABLED";
    LUT4 i2867_3_lut (.A(\rom_data[58] ), .B(\rom_data[59] ), .C(n174[0]), 
         .Z(n3448)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2867_3_lut.init = 16'hcaca;
    LUT4 i2866_3_lut (.A(\rom_data[56] ), .B(\rom_data[57] ), .C(n174[0]), 
         .Z(n3447)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2866_3_lut.init = 16'hcaca;
    CCU2D sub_190_add_2_17 (.A0(x_cnt[15]), .B0(rom_addr_6__N_152_c[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2791), .S1(n669));
    defparam sub_190_add_2_17.INIT0 = 16'h5999;
    defparam sub_190_add_2_17.INIT1 = 16'h0000;
    defparam sub_190_add_2_17.INJECT1_0 = "NO";
    defparam sub_190_add_2_17.INJECT1_1 = "NO";
    LUT4 i2859_3_lut (.A(\rom_data[70] ), .B(\rom_data[71] ), .C(n174[0]), 
         .Z(n3440)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2859_3_lut.init = 16'hcaca;
    PFUMX i3480 (.BLUT(n4121), .ALUT(n4187), .C0(rom_addr[5]), .Z(n4122));
    LUT4 i2858_3_lut (.A(\rom_data[68] ), .B(\rom_data[69] ), .C(n174[0]), 
         .Z(n3439)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2858_3_lut.init = 16'hcaca;
    LUT4 n3775_bdd_4_lut (.A(n3775), .B(rom_addr[4]), .C(n3774), .D(rom_addr[5]), 
         .Z(n4131)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n3775_bdd_4_lut.init = 16'hf0ee;
    LUT4 n4020_bdd_3_lut (.A(n4020), .B(n4019), .C(n174_c[2]), .Z(n4021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4020_bdd_3_lut.init = 16'hcaca;
    LUT4 i3173_2_lut (.A(n174[0]), .B(rom_addr[4]), .Z(n3367)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i3173_2_lut.init = 16'hdddd;
    LUT4 i2925_3_lut (.A(n3504), .B(n3505), .C(n174[1]), .Z(n3506)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2925_3_lut.init = 16'hcaca;
    LUT4 i2889_3_lut (.A(n3467), .B(n3468), .C(n174[1]), .Z(n3470)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2889_3_lut.init = 16'hcaca;
    LUT4 i2888_3_lut (.A(n3465), .B(n3466), .C(n174[1]), .Z(n3469)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2888_3_lut.init = 16'hcaca;
    LUT4 Mux_53_i81_4_lut (.A(n4125), .B(n1518), .C(n174_c[2]), .D(rom_addr[6]), 
         .Z(n81)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam Mux_53_i81_4_lut.init = 16'hca0a;
    LUT4 i780_4_lut (.A(n4153), .B(n126_adj_6), .C(rom_addr[6]), .D(n3318), 
         .Z(n1306)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i780_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_3_lut (.A(x_cnt[0]), .B(n1612), .C(x_cnt[5]), .Z(n3286)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i9_2_lut (.A(cnt[2]), .B(cnt[9]), .Z(n28_adj_240)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_5 (.A(x_cnt[0]), .B(n1612), .C(x_cnt[7]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_5.init = 16'hfefe;
    LUT4 i3186_3_lut_4_lut (.A(n4134), .B(n1598), .C(n1596), .D(n1599), 
         .Z(change_en_N_234)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i3186_3_lut_4_lut.init = 16'h7fff;
    LUT4 i2_4_lut (.A(n23), .B(n4_adj_248), .C(n4646), .D(n4), .Z(n3007)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i2_4_lut.init = 16'hc8c0;
    LUT4 i11_4_lut (.A(cnt[3]), .B(cnt[10]), .C(cnt[6]), .D(cnt[18]), 
         .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i2898_3_lut (.A(n4021), .B(n3474), .C(n174_c[3]), .Z(n3479)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2898_3_lut.init = 16'hcaca;
    LUT4 i2900_3_lut (.A(n53), .B(n3453), .C(n174_c[3]), .Z(n3481)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2900_3_lut.init = 16'hcaca;
    PFUMX i2881 (.BLUT(n3276), .ALUT(n126_adj_7), .C0(rom_addr[6]), .Z(n3462));
    LUT4 i2899_3_lut (.A(n3471), .B(n3456), .C(n174_c[3]), .Z(n3480)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2899_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_6 (.A(n3773), .B(n4_adj_250), .C(n7_adj_251), .D(n174_c[2]), 
         .Z(n3019)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i2_4_lut_adj_6.init = 16'hc088;
    LUT4 i2893_3_lut (.A(n3703), .B(n4079), .C(n174_c[2]), .Z(n3474)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2893_3_lut.init = 16'hcaca;
    PFUMX i3216 (.BLUT(n3716), .ALUT(n3715), .C0(n174[0]), .Z(n3717));
    LUT4 i2903_3_lut (.A(n3429), .B(n108), .C(n174_c[3]), .Z(n3484)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2903_3_lut.init = 16'hcaca;
    LUT4 i3093_3_lut (.A(n3007), .B(n1524), .C(n174_c[3]), .Z(n3478)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3093_3_lut.init = 16'hcaca;
    LUT4 i2902_4_lut (.A(n85_adj_252), .B(n3477), .C(n174_c[3]), .D(rom_addr[6]), 
         .Z(n3483)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i2902_4_lut.init = 16'hca0a;
    LUT4 i2901_3_lut (.A(n3443), .B(n3436), .C(n174_c[3]), .Z(n3482)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2901_3_lut.init = 16'hcaca;
    LUT4 i3048_3_lut (.A(n63_adj_253), .B(n2325), .C(rom_addr[6]), .Z(rom_data[67])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3048_3_lut.init = 16'hcaca;
    LUT4 n3420_bdd_3_lut_3623 (.A(n3420), .B(n3421), .C(n174[0]), .Z(n3698)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3420_bdd_3_lut_3623.init = 16'hcaca;
    PFUMX i2876 (.BLUT(n63_adj_8), .ALUT(n126_adj_9), .C0(rom_addr[6]), 
          .Z(n3457));
    PFUMX i3459 (.BLUT(n4089), .ALUT(n4088), .C0(rom_addr[6]), .Z(rom_data[62]));
    LUT4 i992_4_lut (.A(n94_adj_10), .B(n2398), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n1518)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i992_4_lut.init = 16'h3afa;
    CCU2D sub_190_add_2_15 (.A0(x_cnt[13]), .B0(rom_addr_6__N_152_c[13]), 
          .C0(GND_net), .D0(GND_net), .A1(x_cnt[14]), .B1(rom_addr_6__N_152_c[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2790), .COUT(n2791));
    defparam sub_190_add_2_15.INIT0 = 16'h5999;
    defparam sub_190_add_2_15.INIT1 = 16'h5999;
    defparam sub_190_add_2_15.INJECT1_0 = "NO";
    defparam sub_190_add_2_15.INJECT1_1 = "NO";
    LUT4 n181_bdd_4_lut_3227 (.A(n174[0]), .B(n4155), .C(rom_addr[5]), 
         .D(rom_addr[3]), .Z(n3710)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;
    defparam n181_bdd_4_lut_3227.init = 16'h0c70;
    LUT4 n3719_bdd_4_lut (.A(n3719), .B(rom_addr[3]), .C(n3721), .D(rom_addr[4]), 
         .Z(n4645)) /* synthesis lut_function=(A (C+(D))+!A !(B ((D)+!C)+!B !(C+(D)))) */ ;
    defparam n3719_bdd_4_lut.init = 16'hbbf0;
    LUT4 n63_bdd_4_lut (.A(n174[1]), .B(n4162), .C(n4155), .D(rom_addr[2]), 
         .Z(n4076)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(D)))) */ ;
    defparam n63_bdd_4_lut.init = 16'h0213;
    LUT4 n63_bdd_3_lut (.A(n63_adj_11), .B(n174[1]), .C(n63_adj_12), .Z(n4077)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n63_bdd_3_lut.init = 16'he2e2;
    L6MUX21 i3451 (.D0(n4078), .D1(n4075), .SD(n174[0]), .Z(n4079));
    LUT4 n30_bdd_4_lut_3484 (.A(n4144), .B(rom_addr[4]), .C(n3746), .D(rom_addr[5]), 
         .Z(n4132)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n30_bdd_4_lut_3484.init = 16'h11f0;
    LUT4 n30_bdd_4_lut (.A(n4144), .B(n174[0]), .C(n3997), .D(rom_addr[4]), 
         .Z(n4133)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (C+(D))) */ ;
    defparam n30_bdd_4_lut.init = 16'hddf0;
    LUT4 i3065_4_lut_4_lut (.A(n174[0]), .B(n4188), .C(n4133), .D(n77), 
         .Z(n1628)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i3065_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i1824_4_lut_4_lut (.A(n174[0]), .B(rom_addr[0]), .C(n4181), .D(rom_addr[3]), 
         .Z(n2362)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i1824_4_lut_4_lut.init = 16'hffd0;
    FD1P3AX y_set_i0_i15 (.D(n541[15]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\y_set[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i15.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_4_lut (.A(n174[0]), .B(n4146), .C(rom_addr[4]), 
         .D(n4168), .Z(n21)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0454;
    PFUMX i3449 (.BLUT(n4077), .ALUT(n4076), .C0(rom_addr[6]), .Z(n4078));
    LUT4 i1802_2_lut (.A(n174[0]), .B(rom_addr[0]), .Z(n2338)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1802_2_lut.init = 16'h8888;
    LUT4 n2207_bdd_4_lut (.A(n4155), .B(n4168), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n4121)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam n2207_bdd_4_lut.init = 16'hc5ca;
    PFUMX i3447 (.BLUT(n4074), .ALUT(n3521), .C0(n174[1]), .Z(n4075));
    CCU2D sub_190_add_2_13 (.A0(x_cnt[11]), .B0(rom_addr_6__N_152_c[11]), 
          .C0(GND_net), .D0(GND_net), .A1(x_cnt[12]), .B1(rom_addr_6__N_152_c[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2789), .COUT(n2790));
    defparam sub_190_add_2_13.INIT0 = 16'h5999;
    defparam sub_190_add_2_13.INIT1 = 16'h5999;
    defparam sub_190_add_2_13.INJECT1_0 = "NO";
    defparam sub_190_add_2_13.INJECT1_1 = "NO";
    LUT4 Address_6__I_0_Mux_81_i31_3_lut_4_lut (.A(n4647), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n4163), .Z(n31_adj_259)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam Address_6__I_0_Mux_81_i31_3_lut_4_lut.init = 16'h7f70;
    CCU2D sub_190_add_2_11 (.A0(x_cnt[9]), .B0(rom_addr_6__N_152_c[9]), 
          .C0(GND_net), .D0(GND_net), .A1(x_cnt[10]), .B1(rom_addr_6__N_152_c[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2788), .COUT(n2789));
    defparam sub_190_add_2_11.INIT0 = 16'h5999;
    defparam sub_190_add_2_11.INIT1 = 16'h5999;
    defparam sub_190_add_2_11.INJECT1_0 = "NO";
    defparam sub_190_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_190_add_2_9 (.A0(x_cnt[7]), .B0(rom_addr_6__N_152_c[7]), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[8]), .B1(rom_addr_6__N_152_c[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2787), .COUT(n2788));
    defparam sub_190_add_2_9.INIT0 = 16'h5999;
    defparam sub_190_add_2_9.INIT1 = 16'h5999;
    defparam sub_190_add_2_9.INJECT1_0 = "NO";
    defparam sub_190_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_190_add_2_7 (.A0(x_cnt[5]), .B0(rom_addr_6__N_152[5]), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[6]), .B1(rom_addr_6__N_152[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2786), .COUT(n2787));
    defparam sub_190_add_2_7.INIT0 = 16'h5999;
    defparam sub_190_add_2_7.INIT1 = 16'h5999;
    defparam sub_190_add_2_7.INJECT1_0 = "NO";
    defparam sub_190_add_2_7.INJECT1_1 = "NO";
    CCU2D cnt_469_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2817), .COUT(n2818), .S0(n1[11]), .S1(n1[12]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_469_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_469_add_4_13.INJECT1_0 = "NO";
    defparam cnt_469_add_4_13.INJECT1_1 = "NO";
    CCU2D add_35_5 (.A0(\y_set[10] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\y_set[11] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2780), .COUT(n2781), .S0(rom_addr_6__N_170_c[10]), .S1(rom_addr_6__N_170_c[11]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[91:109])
    defparam add_35_5.INIT0 = 16'h5aaa;
    defparam add_35_5.INIT1 = 16'h5aaa;
    defparam add_35_5.INJECT1_0 = "NO";
    defparam add_35_5.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_7 (.A(n1583), .B(n3286), .C(x_cnt[10]), .D(x_cnt[7]), 
         .Z(sync_h_N_224)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2_4_lut_adj_7.init = 16'hfefa;
    CCU2D add_35_3 (.A0(\y_set[8] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\y_set[9] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2779), .COUT(n2780), .S0(rom_addr_6__N_170_c[8]), .S1(rom_addr_6__N_170_c[9]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[91:109])
    defparam add_35_3.INIT0 = 16'h5aaa;
    defparam add_35_3.INIT1 = 16'h5aaa;
    defparam add_35_3.INJECT1_0 = "NO";
    defparam add_35_3.INJECT1_1 = "NO";
    LUT4 i2879_4_lut (.A(n4145), .B(n126_adj_13), .C(rom_addr[6]), .D(n4186), 
         .Z(n3460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i2879_4_lut.init = 16'hcac0;
    CCU2D cnt_469_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2816), 
          .COUT(n2817), .S0(n1[9]), .S1(n1[10]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_469_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_469_add_4_11.INJECT1_0 = "NO";
    defparam cnt_469_add_4_11.INJECT1_1 = "NO";
    LUT4 n4123_bdd_3_lut (.A(n4123), .B(n4122), .C(rom_addr[6]), .Z(n4124)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n4123_bdd_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut_adj_8 (.A(x_cnt[11]), .B(n12), .C(x_cnt[15]), .D(x_cnt[9]), 
         .Z(n1583)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(63[10:27])
    defparam i6_4_lut_adj_8.init = 16'hfffe;
    LUT4 i5_4_lut (.A(x_cnt[8]), .B(x_cnt[14]), .C(x_cnt[13]), .D(x_cnt[12]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(63[10:27])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 rom_addr_1__bdd_4_lut_3224 (.A(rom_addr[1]), .B(n174[0]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n3719)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C))) */ ;
    defparam rom_addr_1__bdd_4_lut_3224.init = 16'h0507;
    LUT4 i2862_3_lut (.A(n3441), .B(n3442), .C(n174_c[2]), .Z(n3443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2862_3_lut.init = 16'hcaca;
    CCU2D add_35_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\y_set[7] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2779), .S1(rom_addr_6__N_170_c[7]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[91:109])
    defparam add_35_1.INIT0 = 16'hF000;
    defparam add_35_1.INIT1 = 16'h5555;
    defparam add_35_1.INJECT1_0 = "NO";
    defparam add_35_1.INJECT1_1 = "NO";
    LUT4 i2896_3_lut (.A(n3475), .B(n3476), .C(n174_c[2]), .Z(n3477)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2896_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut (.A(x_cnt[6]), .B(x_cnt[4]), .C(x_cnt[1]), .D(n6), 
         .Z(n1612)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(63[10:27])
    defparam i4_4_lut.init = 16'hfffe;
    CCU2D cnt_469_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2815), 
          .COUT(n2816), .S0(n1[7]), .S1(n1[8]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(94[14:24])
    defparam cnt_469_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_469_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_469_add_4_9.INJECT1_0 = "NO";
    defparam cnt_469_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_9 (.A(x_cnt[2]), .B(x_cnt[3]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(63[10:27])
    defparam i1_2_lut_adj_9.init = 16'heeee;
    LUT4 i3_4_lut_adj_10 (.A(n4167), .B(rom_addr[3]), .C(n174[0]), .D(n2094), 
         .Z(n7_adj_251)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i3_4_lut_adj_10.init = 16'h0004;
    LUT4 i1562_2_lut (.A(rom_addr[4]), .B(n174[1]), .Z(n2094)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1562_2_lut.init = 16'heeee;
    CCU2D sub_193_add_2_9 (.A0(y_cnt[7]), .B0(rom_addr_6__N_170_c[7]), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[8]), .B1(rom_addr_6__N_170_c[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2833), .COUT(n2834));
    defparam sub_193_add_2_9.INIT0 = 16'h5999;
    defparam sub_193_add_2_9.INIT1 = 16'h5999;
    defparam sub_193_add_2_9.INJECT1_0 = "NO";
    defparam sub_193_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_190_add_2_5 (.A0(x_cnt[3]), .B0(rom_addr_6__N_152[3]), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[4]), .B1(rom_addr_6__N_152[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2785), .COUT(n2786));
    defparam sub_190_add_2_5.INIT0 = 16'h5999;
    defparam sub_190_add_2_5.INIT1 = 16'h5999;
    defparam sub_190_add_2_5.INJECT1_0 = "NO";
    defparam sub_190_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_7 (.A0(y_cnt[5]), .B0(rom_addr_6__N_170[5]), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[6]), .B1(rom_addr_6__N_170[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2832), .COUT(n2833));
    defparam sub_193_add_2_7.INIT0 = 16'h5999;
    defparam sub_193_add_2_7.INIT1 = 16'h5999;
    defparam sub_193_add_2_7.INJECT1_0 = "NO";
    defparam sub_193_add_2_7.INJECT1_1 = "NO";
    LUT4 i1664_2_lut_rep_66 (.A(x_cnt[10]), .B(x_cnt[5]), .Z(n4174)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1664_2_lut_rep_66.init = 16'h8888;
    LUT4 i3_3_lut (.A(n1588), .B(y_cnt[5]), .C(y_cnt[9]), .Z(n8_adj_261)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(56[6:23])
    defparam i3_3_lut.init = 16'hfefe;
    LUT4 i2_2_lut_3_lut (.A(x_cnt[10]), .B(x_cnt[5]), .C(n1583), .Z(n7)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_2_lut_3_lut.init = 16'hf7f7;
    LUT4 i2_2_lut (.A(y_cnt[6]), .B(y_cnt[4]), .Z(n7_adj_262)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(56[6:23])
    defparam i2_2_lut.init = 16'heeee;
    L6MUX21 i3207 (.D0(n3702), .D1(n3699), .SD(n174[1]), .Z(n3703));
    CCU2D sub_189_add_2_17 (.A0(x_cnt[15]), .B0(\x_set[15] ), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2778), .S1(rom_addr_6__N_150));
    defparam sub_189_add_2_17.INIT0 = 16'h5999;
    defparam sub_189_add_2_17.INIT1 = 16'h0000;
    defparam sub_189_add_2_17.INJECT1_0 = "NO";
    defparam sub_189_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_189_add_2_15 (.A0(x_cnt[13]), .B0(\x_set[13] ), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[14]), .B1(\x_set[14] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2777), .COUT(n2778));
    defparam sub_189_add_2_15.INIT0 = 16'h5999;
    defparam sub_189_add_2_15.INIT1 = 16'h5999;
    defparam sub_189_add_2_15.INJECT1_0 = "NO";
    defparam sub_189_add_2_15.INJECT1_1 = "NO";
    LUT4 n3840_bdd_3_lut_3336 (.A(n4202), .B(n4196), .C(n174[1]), .Z(n3902)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n3840_bdd_3_lut_3336.init = 16'hacac;
    PFUMX i3205 (.BLUT(n3701), .ALUT(n3700), .C0(n174[0]), .Z(n3702));
    LUT4 n3840_bdd_3_lut_3324 (.A(n3836), .B(n3835), .C(rom_addr[4]), 
         .Z(n3901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3840_bdd_3_lut_3324.init = 16'hcaca;
    FD1P3AX y_set_i0_i14 (.D(n541[14]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\y_set[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i14.GSR = "ENABLED";
    FD1P3AX y_set_i0_i13 (.D(n541[13]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\y_set[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i13.GSR = "ENABLED";
    FD1P3AX y_set_i0_i12 (.D(n541[12]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\y_set[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i12.GSR = "ENABLED";
    FD1P3AX y_set_i0_i11 (.D(n541[11]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\y_set[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i11.GSR = "ENABLED";
    FD1P3AX y_set_i0_i10 (.D(n541[10]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\y_set[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i10.GSR = "ENABLED";
    FD1P3AX y_set_i0_i9 (.D(n541[9]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\y_set[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i9.GSR = "ENABLED";
    FD1P3AX y_set_i0_i8 (.D(n541[8]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\y_set[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i8.GSR = "ENABLED";
    FD1P3AX y_set_i0_i7 (.D(n541[7]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\y_set[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i7.GSR = "ENABLED";
    CCU2D sub_189_add_2_13 (.A0(x_cnt[11]), .B0(\x_set[11] ), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[12]), .B1(\x_set[12] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2776), .COUT(n2777));
    defparam sub_189_add_2_13.INIT0 = 16'h5999;
    defparam sub_189_add_2_13.INIT1 = 16'h5999;
    defparam sub_189_add_2_13.INJECT1_0 = "NO";
    defparam sub_189_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_5 (.A0(y_cnt[3]), .B0(rom_addr_6__N_170[3]), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[4]), .B1(rom_addr_6__N_170[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2831), .COUT(n2832));
    defparam sub_193_add_2_5.INIT0 = 16'h5999;
    defparam sub_193_add_2_5.INIT1 = 16'h5999;
    defparam sub_193_add_2_5.INJECT1_0 = "NO";
    defparam sub_193_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_3 (.A0(y_cnt[1]), .B0(\rom_addr_6__N_170[1] ), .C0(GND_net), 
          .D0(GND_net), .A1(y_cnt[2]), .B1(\rom_addr_6__N_170[2] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n2830), .COUT(n2831));
    defparam sub_193_add_2_3.INIT0 = 16'h5999;
    defparam sub_193_add_2_3.INIT1 = 16'h5999;
    defparam sub_193_add_2_3.INJECT1_0 = "NO";
    defparam sub_193_add_2_3.INJECT1_1 = "NO";
    LUT4 i3059_4_lut (.A(n61_adj_14), .B(n1429), .C(rom_addr[5]), .D(n3341), 
         .Z(n1430)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;
    defparam i3059_4_lut.init = 16'haccc;
    FD1P3AX y_set_i0_i6 (.D(n541[6]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_170[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i6.GSR = "ENABLED";
    FD1P3AX y_set_i0_i5 (.D(n541[5]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_170[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i5.GSR = "ENABLED";
    FD1P3AY y_set_i0_i4 (.D(n541[4]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_170[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i4.GSR = "ENABLED";
    FD1P3AY y_set_i0_i3 (.D(n541[3]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_170[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i3.GSR = "ENABLED";
    LUT4 i2760_2_lut (.A(n174[0]), .B(rom_addr[4]), .Z(n3341)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i2760_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n5), .B(n7_adj_262), .C(y_cnt[2]), .D(n8_adj_261), 
         .Z(sync_v_N_222)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(56[6:23])
    defparam i1_4_lut.init = 16'hffec;
    FD1P3AX y_set_i0_i2 (.D(n541[2]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\rom_addr_6__N_170[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i2.GSR = "ENABLED";
    FD1P3AY y_set_i0_i1 (.D(n541[1]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\rom_addr_6__N_170[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(123[7] 126[22])
    defparam y_set_i0_i1.GSR = "ENABLED";
    FD1P3AX x_set_i0_i15 (.D(n507[15]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\x_set[15] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i15.GSR = "ENABLED";
    PFUMX i938 (.BLUT(n94_adj_15), .ALUT(n94_adj_16), .C0(n174[0]), .Z(n1464));
    LUT4 i2850_3_lut (.A(\rom_data[74] ), .B(\rom_data[75] ), .C(n174[0]), 
         .Z(n3431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2850_3_lut.init = 16'hcaca;
    LUT4 i3055_3_lut (.A(\rom_data[102] ), .B(rom_data[103]), .C(n174[0]), 
         .Z(n3426)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3055_3_lut.init = 16'hcaca;
    LUT4 i1128_3_lut (.A(n1598), .B(n1599), .C(x_flag), .Z(n1660)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(99[7] 101[24])
    defparam i1128_3_lut.init = 16'hb3b3;
    LUT4 i2_4_lut_adj_11 (.A(\x_set[9] ), .B(n1597), .C(n3322), .D(\x_set[7] ), 
         .Z(n1598)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_11.init = 16'hffdf;
    LUT4 n1348_bdd_3_lut (.A(n3710), .B(rom_addr[5]), .C(rom_addr[4]), 
         .Z(n3940)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1348_bdd_3_lut.init = 16'hacac;
    LUT4 rom_data_23__bdd_4_lut_4_lut (.A(rom_addr[6]), .B(n174[0]), .C(n63_adj_17), 
         .D(rom_data[23]), .Z(n4017)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam rom_data_23__bdd_4_lut_4_lut.init = 16'hfb40;
    LUT4 i1_2_lut_2_lut (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n4_adj_250)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_12 (.A(rom_addr[6]), .B(n174_c[2]), .Z(n4_adj_248)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i1_2_lut_2_lut_adj_12.init = 16'h4444;
    LUT4 i2998_3_lut_3_lut (.A(rom_addr[6]), .B(n63_adj_267), .C(n94_adj_18), 
         .Z(n126_adj_19)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i2998_3_lut_3_lut.init = 16'he4e4;
    LUT4 Mux_53_i108_4_lut_4_lut (.A(rom_addr[6]), .B(n174_c[2]), .C(n3904), 
         .D(n3499), .Z(n108)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam Mux_53_i108_4_lut_4_lut.init = 16'h7340;
    FD1P3AX x_set_i0_i14 (.D(n507[14]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\x_set[14] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i14.GSR = "ENABLED";
    LUT4 rom_data_23__bdd_2_lut_2_lut (.A(rom_addr[6]), .B(n1430), .Z(n4018)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam rom_data_23__bdd_2_lut_2_lut.init = 16'h4444;
    LUT4 n3416_bdd_4_lut_4_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(n4147), 
         .D(n3416), .Z(n4020)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam n3416_bdd_4_lut_4_lut.init = 16'h5410;
    FD1P3AX x_set_i0_i13 (.D(n507[13]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\x_set[13] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i13.GSR = "ENABLED";
    LUT4 Address_6__I_0_Mux_23_i127_4_lut_4_lut_4_lut (.A(rom_addr[6]), .B(n4136), 
         .C(n3874), .D(n174[0]), .Z(rom_data[23])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam Address_6__I_0_Mux_23_i127_4_lut_4_lut_4_lut.init = 16'hcc50;
    FD1P3AX x_set_i0_i12 (.D(n507[12]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\x_set[12] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i12.GSR = "ENABLED";
    L6MUX21 i2911 (.D0(n3490), .D1(n3491), .SD(n174_c[6]), .Z(n3492));
    L6MUX21 i2910 (.D0(n3488), .D1(n3489), .SD(n174_c[5]), .Z(n3491));
    PFUMX i2907 (.BLUT(n3482), .ALUT(n3483), .C0(n174_c[4]), .Z(n3488));
    L6MUX21 i2909 (.D0(n3486), .D1(n3487), .SD(n174_c[5]), .Z(n3490));
    LUT4 i2742_2_lut (.A(rom_addr_6__N_152[5]), .B(\x_set[8] ), .Z(n3322)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2742_2_lut.init = 16'h8888;
    PFUMX i2905 (.BLUT(n3478), .ALUT(n3479), .C0(n174_c[4]), .Z(n3486));
    LUT4 Address_6__I_0_Mux_65_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n3288), 
         .C(n2320), .D(n4148), .Z(n126_adj_270)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam Address_6__I_0_Mux_65_i126_4_lut_4_lut.init = 16'hfe54;
    PFUMX i2908 (.BLUT(n3484), .ALUT(n3485), .C0(n174_c[4]), .Z(n3489));
    LUT4 i1387_2_lut_2_lut (.A(rom_addr[6]), .B(n3513), .Z(n1524)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i1387_2_lut_2_lut.init = 16'h4444;
    LUT4 i4_4_lut_adj_13 (.A(\x_set[7] ), .B(\x_set[9] ), .C(\x_set[8] ), 
         .D(n6_adj_271), .Z(n1599)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(99[10:27])
    defparam i4_4_lut_adj_13.init = 16'hfffd;
    LUT4 i1432_4_lut (.A(n3335), .B(rom_addr[5]), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n1348)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C (D))+!B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i1432_4_lut.init = 16'h0c4c;
    LUT4 i1_2_lut_adj_14 (.A(rom_addr_6__N_152[5]), .B(n1597), .Z(n6_adj_271)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(99[10:27])
    defparam i1_2_lut_adj_14.init = 16'heeee;
    PFUMX i2906 (.BLUT(n3480), .ALUT(n3481), .C0(n174_c[4]), .Z(n3487));
    FD1P3AX x_set_i0_i11 (.D(n507[11]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\x_set[11] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i11.GSR = "ENABLED";
    LUT4 n62_bdd_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n4170), 
         .D(n4167), .Z(n3830)) /* synthesis lut_function=(!(A (B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam n62_bdd_4_lut_4_lut.init = 16'h5d7f;
    PFUMX Mux_53_i85 (.BLUT(n1306), .ALUT(n81), .C0(n3358), .Z(n85_adj_252)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;
    L6MUX21 i2855 (.D0(n3434), .D1(n3435), .SD(n174_c[2]), .Z(n3436));
    L6MUX21 i2872 (.D0(n3451), .D1(n3452), .SD(n174_c[2]), .Z(n3453));
    L6MUX21 i2875 (.D0(n3454), .D1(n3455), .SD(n174_c[2]), .Z(n3456));
    PFUMX i2890 (.BLUT(n3469), .ALUT(n3470), .C0(n174_c[2]), .Z(n3471));
    L6MUX21 i2932 (.D0(n3511), .D1(n3512), .SD(n174_c[2]), .Z(n3513));
    LUT4 i1_4_lut_adj_15 (.A(n17), .B(rom_addr_6__N_152[6]), .C(n18_adj_272), 
         .D(rom_addr_6__N_152[3]), .Z(n1597)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(100[10:40])
    defparam i1_4_lut_adj_15.init = 16'hfbff;
    PFUMX Mux_53_i53 (.BLUT(n1478), .ALUT(n3506), .C0(n174_c[2]), .Z(n53)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;
    L6MUX21 i3252 (.D0(n3772), .D1(n3769), .SD(n174[0]), .Z(n3773));
    LUT4 i7_4_lut (.A(\x_set[12] ), .B(rom_addr_6__N_152[4]), .C(rom_addr_6__N_152[2]), 
         .D(\x_set[15] ), .Z(n17)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(100[10:40])
    defparam i7_4_lut.init = 16'hfffb;
    LUT4 i8_3_lut (.A(\x_set[10] ), .B(n16), .C(rom_addr_6__N_152[1]), 
         .Z(n18_adj_272)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(100[10:40])
    defparam i8_3_lut.init = 16'hfefe;
    PFUMX i3250 (.BLUT(n3771), .ALUT(n3770), .C0(n174[1]), .Z(n3772));
    LUT4 i2843_3_lut (.A(\rom_data[98] ), .B(\rom_data[99] ), .C(n174[0]), 
         .Z(n3424)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2843_3_lut.init = 16'hcaca;
    PFUMX i3247 (.BLUT(n3768), .ALUT(n3767), .C0(n174[1]), .Z(n3769));
    L6MUX21 i2848 (.D0(n3427), .D1(n3428), .SD(n174_c[2]), .Z(n3429));
    L6MUX21 i2860 (.D0(n3437), .D1(n3438), .SD(n174[1]), .Z(n3441));
    PFUMX i2861 (.BLUT(n3439), .ALUT(n3440), .C0(n174[1]), .Z(n3442));
    PFUMX i2870 (.BLUT(n3447), .ALUT(n3448), .C0(n174[1]), .Z(n3451));
    LUT4 i6_4_lut_adj_16 (.A(\x_set[14] ), .B(\x_set[11] ), .C(rom_addr_6__N_152[0]), 
         .D(\x_set[13] ), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(100[10:40])
    defparam i6_4_lut_adj_16.init = 16'hfffe;
    PFUMX i2871 (.BLUT(n3449), .ALUT(n3450), .C0(n174[1]), .Z(n3452));
    PFUMX i2873 (.BLUT(n39), .ALUT(n1631), .C0(n174[1]), .Z(n3454));
    PFUMX i3399 (.BLUT(n4018), .ALUT(n4017), .C0(n174[1]), .Z(n4019));
    LUT4 i3105_2_lut_rep_72 (.A(color[1]), .B(color[2]), .Z(n4180)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i3105_2_lut_rep_72.init = 16'h1111;
    LUT4 i2732_4_lut (.A(rom_addr[4]), .B(n4144), .C(n4161), .D(n174[0]), 
         .Z(n38)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i2732_4_lut.init = 16'h0511;
    LUT4 i4_4_lut_adj_17 (.A(y_cnt[6]), .B(y_cnt[2]), .C(y_cnt[4]), .D(n6_adj_273), 
         .Z(n2382)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_17.init = 16'h8000;
    PFUMX i2874 (.BLUT(n1629), .ALUT(n1320), .C0(n174[1]), .Z(n3455));
    LUT4 i3182_4_lut (.A(n23_c), .B(n36), .C(n32), .D(n24), .Z(n3647)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3182_4_lut.init = 16'h0001;
    LUT4 i13_3_lut_3_lut (.A(color[1]), .B(color[2]), .C(color[0]), .Z(color_2__N_104[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;
    defparam i13_3_lut_3_lut.init = 16'h1c1c;
    L6MUX21 i2918 (.D0(n3497), .D1(n3498), .SD(n174[1]), .Z(n3499));
    PFUMX i2931 (.BLUT(n3509), .ALUT(n3510), .C0(n174[1]), .Z(n3512));
    PFUMX i2833 (.BLUT(n3410), .ALUT(n3411), .C0(n174[0]), .Z(n3414));
    LUT4 n30_bdd_4_lut_3475 (.A(n4144), .B(n4168), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n3965)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C)+!B (C (D))))) */ ;
    defparam n30_bdd_4_lut_3475.init = 16'h50c0;
    PFUMX i2846 (.BLUT(n3423), .ALUT(n3424), .C0(n174[1]), .Z(n3427));
    LUT4 i1126_3_lut (.A(n4134), .B(n1596), .C(y_flag), .Z(n1658)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(115[7] 117[24])
    defparam i1126_3_lut.init = 16'hb3b3;
    LUT4 i3282_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n4201)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))+!B (C)))) */ ;
    defparam i3282_then_4_lut.init = 16'h2b2f;
    PFUMX i2847 (.BLUT(n3425), .ALUT(n3426), .C0(n174[1]), .Z(n3428));
    LUT4 i1623_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n78), .C(rom_addr[4]), 
         .D(n4178), .Z(n126_adj_20)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i1623_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i2755_4_lut (.A(\y_set[7] ), .B(rom_addr_6__N_170[5]), .C(\y_set[8] ), 
         .D(rom_addr_6__N_170[6]), .Z(n3336)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2755_4_lut.init = 16'h8000;
    LUT4 i5_3_lut_adj_18 (.A(rom_addr_6__N_170[6]), .B(n10), .C(rom_addr_6__N_170[3]), 
         .Z(n1596)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(115[10:27])
    defparam i5_3_lut_adj_18.init = 16'hefef;
    LUT4 i1485_2_lut_3_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[3]), 
         .Z(n63_adj_21)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i1485_2_lut_3_lut_3_lut.init = 16'h5454;
    LUT4 i4_4_lut_adj_19 (.A(\y_set[7] ), .B(n1594), .C(\y_set[8] ), .D(rom_addr_6__N_170[5]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(115[10:27])
    defparam i4_4_lut_adj_19.init = 16'hfffe;
    LUT4 i1_2_lut_adj_20 (.A(y_cnt[9]), .B(y_cnt[5]), .Z(n6_adj_273)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_20.init = 16'h8888;
    LUT4 n31_bdd_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), .C(n126_adj_6), 
         .D(n31_adj_259), .Z(n4120)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam n31_bdd_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i2853 (.BLUT(n3430), .ALUT(n3431), .C0(n174[1]), .Z(n3434));
    LUT4 i1_4_lut_adj_21 (.A(n15_adj_276), .B(rom_addr_6__N_170[0]), .C(n16_adj_277), 
         .D(rom_addr_6__N_170[4]), .Z(n1594)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(116[10:40])
    defparam i1_4_lut_adj_21.init = 16'hfbff;
    LUT4 rom_addr_2__bdd_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n4123)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam rom_addr_2__bdd_4_lut_4_lut.init = 16'h1450;
    PFUMX i2854 (.BLUT(n3432), .ALUT(n3433), .C0(n174[1]), .Z(n3435));
    LUT4 i3282_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n4200)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A (C))) */ ;
    defparam i3282_else_4_lut.init = 16'h2fad;
    PFUMX i2856 (.BLUT(\rom_data[64] ), .ALUT(rom_data[65]), .C0(n174[0]), 
          .Z(n3437));
    LUT4 i2895_4_lut_4_lut (.A(rom_addr[5]), .B(n174[1]), .C(n1464), .D(n3406), 
         .Z(n3476)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i2895_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_45_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n4153)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i1_2_lut_rep_45_2_lut.init = 16'h4444;
    PFUMX i2857 (.BLUT(\rom_data[66] ), .ALUT(rom_data[67]), .C0(n174[0]), 
          .Z(n3438));
    FD1P3AX rom_addr_i0_i1_rep_85 (.D(rom_addr_6__N_140[1]), .SP(clk_240mhz_enable_90), 
            .CK(clk_240mhz), .Q(n4654)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam rom_addr_i0_i1_rep_85.GSR = "ENABLED";
    LUT4 i903_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n4170), .C(n4208), 
         .D(n4187), .Z(n1429)) /* synthesis lut_function=(A (C)+!A !(B+(D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i903_3_lut_4_lut_4_lut_4_lut.init = 16'ha0b1;
    LUT4 i1425_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n78_adj_22), .C(rom_addr[4]), 
         .D(n4178), .Z(n126_adj_23)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i1425_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i1423_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n61_adj_24), .C(rom_addr[4]), 
         .D(n4146), .Z(n126_adj_25)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i1423_4_lut_4_lut_4_lut.init = 16'h0454;
    PFUMX i2887 (.BLUT(n3463), .ALUT(n3464), .C0(n174[0]), .Z(n3468));
    LUT4 i1476_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n4149), .C(rom_addr[4]), 
         .D(n4144), .Z(n63_c)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i1476_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i1594_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n4161), .C(rom_addr[4]), 
         .D(n4163), .Z(n63_adj_267)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i1594_4_lut_4_lut_4_lut.init = 16'h0454;
    PFUMX i2916 (.BLUT(n3493), .ALUT(n3494), .C0(n174[0]), .Z(n3497));
    LUT4 i1626_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n78_adj_26), .C(rom_addr[4]), 
         .D(n4146), .Z(n126_adj_27)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i1626_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i6_4_lut_adj_22 (.A(\y_set[13] ), .B(\rom_addr_6__N_170[2] ), .C(\y_set[14] ), 
         .D(\y_set[11] ), .Z(n15_adj_276)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(116[10:40])
    defparam i6_4_lut_adj_22.init = 16'hfffe;
    LUT4 i7_4_lut_adj_23 (.A(\y_set[12] ), .B(\y_set[10] ), .C(\rom_addr_6__N_170[1] ), 
         .D(n10_adj_284), .Z(n16_adj_277)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(116[10:40])
    defparam i7_4_lut_adj_23.init = 16'hffef;
    FD1P3AX x_set_i0_i10 (.D(n507[10]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\x_set[10] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i10.GSR = "ENABLED";
    LUT4 i1480_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n4140), .C(rom_addr[4]), 
         .D(n4163), .Z(n63_adj_237)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i1480_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 Address_6__I_0_Mux_97_i127_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n94_adj_28), .D(n63_adj_29), .Z(rom_data[97])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam Address_6__I_0_Mux_97_i127_4_lut_4_lut.init = 16'h7340;
    LUT4 i2920_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), .C(n126_adj_30), 
         .D(n31_adj_31), .Z(n3501)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i2920_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i2917 (.BLUT(n3495), .ALUT(n3496), .C0(n174[0]), .Z(n3498));
    LUT4 i2883_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), .C(n94_adj_32), 
         .D(n63_adj_29), .Z(n3464)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i2883_4_lut_4_lut.init = 16'h7340;
    LUT4 i2940_4_lut (.A(n62_adj_33), .B(n2314), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n3521)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i2940_4_lut.init = 16'hcac0;
    LUT4 i3050_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), .C(n126_adj_270), 
         .D(n94_adj_34), .Z(rom_data[65])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam i3050_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i3036_3_lut (.A(n4132), .B(n126_adj_35), .C(n174[0]), .Z(n3515)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3036_3_lut.init = 16'hcaca;
    LUT4 i3016_3_lut (.A(n63_adj_36), .B(n126_adj_37), .C(rom_addr[6]), 
         .Z(n3459)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3016_3_lut.init = 16'hcaca;
    PFUMX i2923 (.BLUT(n3500), .ALUT(n3501), .C0(n174[0]), .Z(n3504));
    LUT4 i1_2_lut_adj_24 (.A(\y_set[9] ), .B(\y_set[15] ), .Z(n10_adj_284)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(116[10:40])
    defparam i1_2_lut_adj_24.init = 16'heeee;
    FD1P3AX x_set_i0_i9 (.D(n507[9]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\x_set[9] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i9.GSR = "ENABLED";
    CCU2D sub_189_add_2_5 (.A0(x_cnt[3]), .B0(rom_addr_6__N_152[3]), .C0(GND_net), 
          .D0(GND_net), .A1(x_cnt[4]), .B1(rom_addr_6__N_152[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2772), .COUT(n2773));
    defparam sub_189_add_2_5.INIT0 = 16'h5999;
    defparam sub_189_add_2_5.INIT1 = 16'h5999;
    defparam sub_189_add_2_5.INJECT1_0 = "NO";
    defparam sub_189_add_2_5.INJECT1_1 = "NO";
    LUT4 i2826_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n94_adj_10), 
         .Z(n3407)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i2826_3_lut_3_lut.init = 16'h7474;
    FD1P3AX x_set_i0_i8 (.D(n507[8]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\x_set[8] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i8.GSR = "ENABLED";
    LUT4 Address_6__I_0_Mux_67_i63_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n4141), 
         .C(rom_addr[5]), .D(n4169), .Z(n63_adj_253)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam Address_6__I_0_Mux_67_i63_3_lut_4_lut_4_lut.init = 16'hc5c0;
    FD1P3AY x_set_i0_i7 (.D(n507[7]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(\x_set[7] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i7.GSR = "ENABLED";
    LUT4 n125_bdd_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n4168), 
         .D(n4137), .Z(n4088)) /* synthesis lut_function=(A (B (D)+!B (C))+!A ((D)+!B)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam n125_bdd_4_lut_4_lut.init = 16'hfd31;
    LUT4 i1_3_lut (.A(color[1]), .B(color[0]), .C(color[2]), .Z(color_2__N_104[0])) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(140[7] 148[10])
    defparam i1_3_lut.init = 16'h2a2a;
    LUT4 i583_2_lut_2_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n1121)) /* synthesis lut_function=((B)+!A) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i583_2_lut_2_lut.init = 16'hdddd;
    LUT4 Address_6__I_0_Mux_52_i126_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n94_adj_38), .Z(n126_adj_39)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam Address_6__I_0_Mux_52_i126_3_lut_3_lut.init = 16'h7474;
    LUT4 n29_bdd_4_lut (.A(n4147), .B(n4188), .C(rom_addr[2]), .D(rom_addr[5]), 
         .Z(n3979)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A !((C+(D))+!B))) */ ;
    defparam n29_bdd_4_lut.init = 16'h55f3;
    L6MUX21 i2924 (.D0(n3502), .D1(n3503), .SD(n174[0]), .Z(n3505));
    LUT4 n60_bdd_3_lut_3215_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n3715)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam n60_bdd_3_lut_3215_3_lut.init = 16'h4545;
    LUT4 i1787_2_lut_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n2320)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i1787_2_lut_2_lut.init = 16'h4444;
    PFUMX i2930 (.BLUT(n3507), .ALUT(n3508), .C0(n174[1]), .Z(n3511));
    LUT4 Address_6__I_0_Mux_66_i126_4_lut_4_lut (.A(rom_addr[4]), .B(n4144), 
         .C(rom_addr[5]), .D(n4148), .Z(n2390)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam Address_6__I_0_Mux_66_i126_4_lut_4_lut.init = 16'hfb0b;
    FD1P3AY x_set_i0_i6 (.D(n507[6]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_152[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i6.GSR = "ENABLED";
    FD1P3AX x_set_i0_i5 (.D(n507[5]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_152[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i0 (.D(rom_addr_6__N_140[0]), .SP(clk_240mhz_enable_90), 
            .CK(clk_240mhz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[7] 79[24])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    FD1P3IX vga__i1 (.D(color[0]), .SP(clk_240mhz_enable_91), .CD(n988), 
            .CK(clk_240mhz), .Q(vga_c_0)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(85[7] 89[16])
    defparam vga__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(rom_addr[4]), .B(n174[0]), .C(n4169), .D(n46_adj_40), 
         .Z(n18)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(86[15:28])
    defparam i1_4_lut_4_lut.init = 16'h5140;
    FD1P3AY x_set_i0_i4 (.D(n507[4]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_152[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i4.GSR = "ENABLED";
    FD1P3AY x_set_i0_i3 (.D(n507[3]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_152[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i3.GSR = "ENABLED";
    FD1P3AX x_set_i0_i2 (.D(n507[2]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_152[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i2.GSR = "ENABLED";
    FD1P3AX x_set_i0_i1 (.D(n507[1]), .SP(clk_240mhz_enable_95), .CK(clk_240mhz), 
            .Q(rom_addr_6__N_152[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=56, LSE_RLINE=67 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(107[7] 110[22])
    defparam x_set_i0_i1.GSR = "ENABLED";
    CCU2D add_188_17 (.A0(n2382), .B0(n1588), .C0(n5), .D0(y_cnt[15]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2865), 
          .S0(y_cnt_15__N_124[15]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(57[8:30])
    defparam add_188_17.INIT0 = 16'hfd00;
    defparam add_188_17.INIT1 = 16'h0000;
    defparam add_188_17.INJECT1_0 = "NO";
    defparam add_188_17.INJECT1_1 = "NO";
    CCU2D add_188_15 (.A0(n2382), .B0(n1588), .C0(n5), .D0(y_cnt[13]), 
          .A1(n2382), .B1(n1588), .C1(n5), .D1(y_cnt[14]), .CIN(n2864), 
          .COUT(n2865), .S0(y_cnt_15__N_124[13]), .S1(y_cnt_15__N_124[14]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(57[8:30])
    defparam add_188_15.INIT0 = 16'hfd00;
    defparam add_188_15.INIT1 = 16'hfd00;
    defparam add_188_15.INJECT1_0 = "NO";
    defparam add_188_15.INJECT1_1 = "NO";
    CCU2D add_188_13 (.A0(n2382), .B0(n1588), .C0(n5), .D0(y_cnt[11]), 
          .A1(n2382), .B1(n1588), .C1(n5), .D1(y_cnt[12]), .CIN(n2863), 
          .COUT(n2864), .S0(y_cnt_15__N_124[11]), .S1(y_cnt_15__N_124[12]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(57[8:30])
    defparam add_188_13.INIT0 = 16'hfd00;
    defparam add_188_13.INIT1 = 16'hfd00;
    defparam add_188_13.INJECT1_0 = "NO";
    defparam add_188_13.INJECT1_1 = "NO";
    CCU2D add_30_3 (.A0(\x_set[8] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\x_set[9] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2766), .COUT(n2767), .S0(rom_addr_6__N_152_c[8]), .S1(rom_addr_6__N_152_c[9]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(76[39:57])
    defparam add_30_3.INIT0 = 16'h5aaa;
    defparam add_30_3.INIT1 = 16'h5aaa;
    defparam add_30_3.INJECT1_0 = "NO";
    defparam add_30_3.INJECT1_1 = "NO";
    CCU2D add_188_11 (.A0(n2382), .B0(n1588), .C0(n5), .D0(y_cnt[9]), 
          .A1(n2382), .B1(n1588), .C1(n5), .D1(y_cnt[10]), .CIN(n2862), 
          .COUT(n2863), .S0(y_cnt_15__N_124[9]), .S1(y_cnt_15__N_124[10]));   // f:/fpga_project/baseboard/lab12_screen_saver/vga_module.v(57[8:30])
    defparam add_188_11.INIT0 = 16'hfd00;
    defparam add_188_11.INIT1 = 16'hfd00;
    defparam add_188_11.INJECT1_0 = "NO";
    defparam add_188_11.INJECT1_1 = "NO";
    PFUMX i3203 (.BLUT(n3698), .ALUT(n4135), .C0(rom_addr[6]), .Z(n3699));
    
endmodule
//
// Verilog Description of module pll_mxo2
//

module pll_mxo2 (clk_c, clk_240mhz, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_c;
    output clk_240mhz;
    input GND_net;
    
    wire clk_c /* synthesis is_clock=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(23[11:14])
    wire clk_240mhz /* synthesis SET_AS_NETWORK=clk_240mhz, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(30[10:20])
    
    EHXPLLJ PLLInst_0 (.CLKI(clk_c), .CLKFB(clk_240mhz), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_240mhz)) /* synthesis FREQUENCY_PIN_CLKOP="240.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="7", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=36 */ ;   // f:/fpga_project/baseboard/lab12_screen_saver/screen_saver.v(32[10] 36[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 20;
    defparam PLLInst_0.CLKOP_DIV = 2;
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
    defparam PLLInst_0.CLKOP_CPHASE = 1;
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
