// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Fri Jan 25 09:44:03 2019
//
// Verilog Description of module Display_Ctl
//

module Display_Ctl (clk, rst_n, uart_rx, seg_rck, seg_sck, seg_din) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(18[8:19])
    input clk;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(20[11:14])
    input rst_n;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(21[11:16])
    input uart_rx;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(23[11:18])
    output seg_rck;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(25[12:19])
    output seg_sck;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(26[12:19])
    output seg_din;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(27[12:19])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(20[11:14])
    wire rx_data_valid /* synthesis is_clock=1, SET_AS_NETWORK=rx_data_valid */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(32[6:19])
    
    wire GND_net, rst_n_c, uart_rx_c, seg_rck_c, seg_sck_c, seg_din_c;
    wire [7:0]rx_data_out;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(33[12:23])
    wire [7:0]data_en;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(44[12:19])
    wire [31:0]seg_data;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(45[13:21])
    
    wire VCC_net, n2875;
    
    OB seg_din_pad (.I(seg_din_c), .O(seg_din));   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(27[12:19])
    IB uart_rx_pad (.I(uart_rx), .O(uart_rx_c));   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(23[11:18])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(21[11:16])
    OB seg_sck_pad (.I(seg_sck_c), .O(seg_sck));   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(26[12:19])
    IB clk_pad (.I(clk), .O(clk_c));   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(20[11:14])
    GSR GSR_INST (.GSR(rst_n_c));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB seg_rck_pad (.I(seg_rck_c), .O(seg_rck));   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(25[12:19])
    Uart_Bus u1 (.clk_c(clk_c), .\rx_data_out[0] (rx_data_out[0]), .rx_data_valid(rx_data_valid), 
            .uart_rx_c(uart_rx_c), .\rx_data_out[3] (rx_data_out[3]), .\rx_data_out[2] (rx_data_out[2]), 
            .\rx_data_out[1] (rx_data_out[1]), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(35[10] 42[2])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n2875)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    Segment_scan u3 (.seg_data({seg_data}), .clk_c(clk_c), .seg_rck_c(seg_rck_c), 
            .seg_sck_c(seg_sck_c), .seg_din_c(seg_din_c), .data_en({data_en}), 
            .GND_net(GND_net), .rst_n_c(rst_n_c)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(57[14] 74[2])
    Decoder u2 (.data_en({data_en}), .rx_data_valid(rx_data_valid), .seg_data({seg_data}), 
            .\rx_data_out[0] (rx_data_out[0]), .\rx_data_out[1] (rx_data_out[1]), 
            .\rx_data_out[2] (rx_data_out[2]), .\rx_data_out[3] (rx_data_out[3]), 
            .n2875(n2875)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(47[9] 54[2])
    VHI i2583 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Uart_Bus
//

module Uart_Bus (clk_c, \rx_data_out[0] , rx_data_valid, uart_rx_c, 
            \rx_data_out[3] , \rx_data_out[2] , \rx_data_out[1] , GND_net) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    output \rx_data_out[0] ;
    output rx_data_valid;
    input uart_rx_c;
    output \rx_data_out[3] ;
    output \rx_data_out[2] ;
    output \rx_data_out[1] ;
    input GND_net;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(20[11:14])
    wire rx_data_valid /* synthesis is_clock=1, SET_AS_NETWORK=rx_data_valid */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(32[6:19])
    
    wire bps_en_rx;
    wire [3:0]num;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(42[14:17])
    
    wire bps_clk_rx, clk_c_enable_5, clk_c_enable_6, clk_c_enable_7, 
        clk_c_enable_8, n2581;
    wire [12:0]cnt;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(29[15:18])
    
    wire cnt_12__N_29;
    
    Uart_Rx Uart_Rx_uut (.clk_c(clk_c), .bps_en_rx(bps_en_rx), .\rx_data_out[0] (\rx_data_out[0] ), 
            .num({num}), .rx_data_valid(rx_data_valid), .uart_rx_c(uart_rx_c), 
            .\rx_data_out[3] (\rx_data_out[3] ), .\rx_data_out[2] (\rx_data_out[2] ), 
            .\rx_data_out[1] (\rx_data_out[1] ), .bps_clk_rx(bps_clk_rx), 
            .clk_c_enable_5(clk_c_enable_5), .clk_c_enable_6(clk_c_enable_6), 
            .clk_c_enable_7(clk_c_enable_7), .clk_c_enable_8(clk_c_enable_8), 
            .n2581(n2581), .\cnt[12] (cnt[12]), .\cnt[11] (cnt[11]), .cnt_12__N_29(cnt_12__N_29)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_bus.v(53[9] 64[2])
    Baud Baud_rx (.bps_clk_rx(bps_clk_rx), .clk_c(clk_c), .GND_net(GND_net), 
         .\cnt[11] (cnt[11]), .\cnt[12] (cnt[12]), .num({num}), .bps_en_rx(bps_en_rx), 
         .cnt_12__N_29(cnt_12__N_29), .clk_c_enable_7(clk_c_enable_7), .n2581(n2581), 
         .clk_c_enable_5(clk_c_enable_5), .clk_c_enable_8(clk_c_enable_8), 
         .clk_c_enable_6(clk_c_enable_6)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_bus.v(44[1] 50[2])
    
endmodule
//
// Verilog Description of module Uart_Rx
//

module Uart_Rx (clk_c, bps_en_rx, \rx_data_out[0] , num, rx_data_valid, 
            uart_rx_c, \rx_data_out[3] , \rx_data_out[2] , \rx_data_out[1] , 
            bps_clk_rx, clk_c_enable_5, clk_c_enable_6, clk_c_enable_7, 
            clk_c_enable_8, n2581, \cnt[12] , \cnt[11] , cnt_12__N_29) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    output bps_en_rx;
    output \rx_data_out[0] ;
    output [3:0]num;
    output rx_data_valid;
    input uart_rx_c;
    output \rx_data_out[3] ;
    output \rx_data_out[2] ;
    output \rx_data_out[1] ;
    input bps_clk_rx;
    input clk_c_enable_5;
    input clk_c_enable_6;
    input clk_c_enable_7;
    input clk_c_enable_8;
    input n2581;
    input \cnt[12] ;
    input \cnt[11] ;
    output cnt_12__N_29;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(20[11:14])
    wire rx_data_valid /* synthesis is_clock=1, SET_AS_NETWORK=rx_data_valid */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(32[6:19])
    
    wire uart_rx1, uart_rx0, uart_rx2, n2873, clk_c_enable_4;
    wire [7:0]rx_data;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(53[14:21])
    
    wire n2795;
    wire [3:0]n21;
    
    wire n2747, n2798, n2746, n2871, n2872, n2794;
    
    FD1S3AX uart_rx1_47 (.D(uart_rx0), .CK(clk_c), .Q(uart_rx1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(33[8] 37[4])
    defparam uart_rx1_47.GSR = "DISABLED";
    FD1S3AX uart_rx2_48 (.D(uart_rx1), .CK(clk_c), .Q(uart_rx2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(33[8] 37[4])
    defparam uart_rx2_48.GSR = "DISABLED";
    FD1S3AX bps_en_49 (.D(n2873), .CK(clk_c), .Q(bps_en_rx)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(47[7] 50[18])
    defparam bps_en_49.GSR = "ENABLED";
    FD1P3AX rx_data_out__i1 (.D(rx_data[0]), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(\rx_data_out[0] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(76[11] 82[5])
    defparam rx_data_out__i1.GSR = "ENABLED";
    FD1S3IX num_426__i0 (.D(n21[0]), .CK(clk_c), .CD(n2795), .Q(num[0]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(63[12] 65[6])
    defparam num_426__i0.GSR = "ENABLED";
    FD1S3AX rx_data_valid_53 (.D(clk_c_enable_4), .CK(clk_c), .Q(rx_data_valid)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(76[11] 82[5])
    defparam rx_data_valid_53.GSR = "ENABLED";
    FD1S3AX uart_rx0_46 (.D(uart_rx_c), .CK(clk_c), .Q(uart_rx0)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(33[8] 37[4])
    defparam uart_rx0_46.GSR = "DISABLED";
    FD1S3IX num_426__i3 (.D(n2747), .CK(clk_c), .CD(n2795), .Q(num[3]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(63[12] 65[6])
    defparam num_426__i3.GSR = "ENABLED";
    FD1S3IX num_426__i2 (.D(n2798), .CK(clk_c), .CD(n2795), .Q(num[2]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(63[12] 65[6])
    defparam num_426__i2.GSR = "ENABLED";
    FD1S3IX num_426__i1 (.D(n21[1]), .CK(clk_c), .CD(n2795), .Q(num[1]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(63[12] 65[6])
    defparam num_426__i1.GSR = "ENABLED";
    FD1P3AX rx_data_out__i4 (.D(rx_data[3]), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(\rx_data_out[3] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(76[11] 82[5])
    defparam rx_data_out__i4.GSR = "ENABLED";
    FD1P3AX rx_data_out__i3 (.D(rx_data[2]), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(\rx_data_out[2] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(76[11] 82[5])
    defparam rx_data_out__i3.GSR = "ENABLED";
    FD1P3AX rx_data_out__i2 (.D(rx_data[1]), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(\rx_data_out[1] )) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(76[11] 82[5])
    defparam rx_data_out__i2.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_37_4_lut (.A(num[0]), .B(num[3]), .C(num[2]), .D(num[1]), 
         .Z(clk_c_enable_4)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(42[14:17])
    defparam i2_3_lut_rep_37_4_lut.init = 16'h0008;
    LUT4 num_0__bdd_4_lut (.A(bps_clk_rx), .B(num[3]), .C(num[2]), .D(num[1]), 
         .Z(n2746)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(B (C+(D))))) */ ;
    defparam num_0__bdd_4_lut.init = 16'h6cc8;
    FD1P3AX rx_data_i0_i1 (.D(uart_rx1), .SP(clk_c_enable_5), .CK(clk_c), 
            .Q(rx_data[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(59[11] 68[5])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i0 (.D(uart_rx1), .SP(clk_c_enable_6), .CK(clk_c), 
            .Q(rx_data[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(59[11] 68[5])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i3 (.D(uart_rx1), .SP(clk_c_enable_7), .CK(clk_c), 
            .Q(rx_data[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(59[11] 68[5])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    LUT4 i1911_2_lut_3_lut_4_lut_4_lut (.A(num[0]), .B(bps_clk_rx), .C(num[1]), 
         .D(clk_c_enable_4), .Z(n21[1])) /* synthesis lut_function=(!(A (B (C)+!B ((D)+!C))+!A !(B (C)+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(63[12] 65[6])
    defparam i1911_2_lut_3_lut_4_lut_4_lut.init = 16'h4878;
    LUT4 num_3__bdd_3_lut (.A(num[3]), .B(n2746), .C(num[0]), .Z(n2747)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam num_3__bdd_3_lut.init = 16'hcaca;
    FD1P3AX rx_data_i0_i2 (.D(uart_rx1), .SP(clk_c_enable_8), .CK(clk_c), 
            .Q(rx_data[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=53, LSE_RLINE=64 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(59[11] 68[5])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    PFUMX i2577 (.BLUT(n2871), .ALUT(n2872), .C0(bps_en_rx), .Z(n2873));
    LUT4 i1903_4_lut_4_lut (.A(bps_clk_rx), .B(n2794), .C(num[0]), .D(num[3]), 
         .Z(n21[0])) /* synthesis lut_function=(!(A (C)+!A !(B (C)+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(42[14:17])
    defparam i1903_4_lut_4_lut.init = 16'h4a5a;
    LUT4 num_1__bdd_4_lut_2555 (.A(num[1]), .B(bps_clk_rx), .C(num[0]), 
         .D(num[2]), .Z(n2798)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam num_1__bdd_4_lut_2555.init = 16'h7f80;
    LUT4 i1202_then_4_lut (.A(num[2]), .B(num[1]), .C(num[3]), .D(num[0]), 
         .Z(n2872)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1202_then_4_lut.init = 16'hefff;
    LUT4 i1202_else_4_lut (.A(uart_rx2), .B(uart_rx1), .Z(n2871)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1202_else_4_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_41 (.A(num[1]), .B(num[2]), .Z(n2794)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(42[14:17])
    defparam i1_2_lut_rep_41.init = 16'heeee;
    LUT4 i1191_1_lut_rep_42 (.A(bps_en_rx), .Z(n2795)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(47[7] 50[18])
    defparam i1191_1_lut_rep_42.init = 16'h5555;
    LUT4 i2354_4_lut_4_lut (.A(bps_en_rx), .B(n2581), .C(\cnt[12] ), .D(\cnt[11] ), 
         .Z(cnt_12__N_29)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/uart_rx.v(47[7] 50[18])
    defparam i2354_4_lut_4_lut.init = 16'hfffd;
    
endmodule
//
// Verilog Description of module Baud
//

module Baud (bps_clk_rx, clk_c, GND_net, \cnt[11] , \cnt[12] , num, 
            bps_en_rx, cnt_12__N_29, clk_c_enable_7, n2581, clk_c_enable_5, 
            clk_c_enable_8, clk_c_enable_6) /* synthesis syn_module_defined=1 */ ;
    output bps_clk_rx;
    input clk_c;
    input GND_net;
    output \cnt[11] ;
    output \cnt[12] ;
    input [3:0]num;
    input bps_en_rx;
    input cnt_12__N_29;
    output clk_c_enable_7;
    output n2581;
    output clk_c_enable_5;
    output clk_c_enable_8;
    output clk_c_enable_6;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(20[11:14])
    
    wire bps_clk_N_33;
    wire [12:0]cnt;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(29[15:18])
    
    wire n8, n2142;
    wire [12:0]n57;
    
    wire n2143, n2145, n2146, n2147, n2797, n2144, n14, n10, 
        n2203, n2577, n2571, n2554;
    
    FD1S3AX bps_clk_17 (.D(bps_clk_N_33), .CK(clk_c), .Q(bps_clk_rx)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=50 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(44[7] 47[19])
    defparam bps_clk_17.GSR = "ENABLED";
    LUT4 i3_3_lut (.A(cnt[6]), .B(cnt[9]), .C(cnt[5]), .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut.init = 16'h8080;
    CCU2D cnt_425_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2142), 
          .COUT(n2143), .S0(n57[1]), .S1(n57[2]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_425_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_425_add_4_3.INJECT1_0 = "NO";
    defparam cnt_425_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_425_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2145), 
          .COUT(n2146), .S0(n57[7]), .S1(n57[8]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_425_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_425_add_4_9.INJECT1_0 = "NO";
    defparam cnt_425_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_425_add_4_13 (.A0(\cnt[11] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\cnt[12] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2147), .S0(n57[11]), .S1(n57[12]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_425_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_425_add_4_13.INJECT1_0 = "NO";
    defparam cnt_425_add_4_13.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_44 (.A(bps_clk_rx), .B(num[3]), .C(bps_en_rx), .Z(n2797)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(44[7] 47[19])
    defparam i2_3_lut_rep_44.init = 16'h2020;
    FD1S3IX cnt_425__i12 (.D(n57[12]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(\cnt[12] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i12.GSR = "ENABLED";
    FD1S3IX cnt_425__i11 (.D(n57[11]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(\cnt[11] )) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i11.GSR = "ENABLED";
    FD1S3IX cnt_425__i10 (.D(n57[10]), .CK(clk_c), .CD(cnt_12__N_29), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i10.GSR = "ENABLED";
    FD1S3IX cnt_425__i9 (.D(n57[9]), .CK(clk_c), .CD(cnt_12__N_29), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i9.GSR = "ENABLED";
    FD1S3IX cnt_425__i8 (.D(n57[8]), .CK(clk_c), .CD(cnt_12__N_29), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i8.GSR = "ENABLED";
    FD1S3IX cnt_425__i7 (.D(n57[7]), .CK(clk_c), .CD(cnt_12__N_29), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i7.GSR = "ENABLED";
    FD1S3IX cnt_425__i6 (.D(n57[6]), .CK(clk_c), .CD(cnt_12__N_29), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i6.GSR = "ENABLED";
    FD1S3IX cnt_425__i5 (.D(n57[5]), .CK(clk_c), .CD(cnt_12__N_29), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i5.GSR = "ENABLED";
    FD1S3IX cnt_425__i4 (.D(n57[4]), .CK(clk_c), .CD(cnt_12__N_29), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i4.GSR = "ENABLED";
    FD1S3IX cnt_425__i3 (.D(n57[3]), .CK(clk_c), .CD(cnt_12__N_29), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i3.GSR = "ENABLED";
    FD1S3IX cnt_425__i2 (.D(n57[2]), .CK(clk_c), .CD(cnt_12__N_29), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i2.GSR = "ENABLED";
    FD1S3IX cnt_425__i1 (.D(n57[1]), .CK(clk_c), .CD(cnt_12__N_29), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i1.GSR = "ENABLED";
    CCU2D cnt_425_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2144), 
          .COUT(n2145), .S0(n57[5]), .S1(n57[6]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_425_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_425_add_4_7.INJECT1_0 = "NO";
    defparam cnt_425_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_425_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2142), 
          .S1(n57[0]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425_add_4_1.INIT0 = 16'hF000;
    defparam cnt_425_add_4_1.INIT1 = 16'h0555;
    defparam cnt_425_add_4_1.INJECT1_0 = "NO";
    defparam cnt_425_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_425_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2143), 
          .COUT(n2144), .S0(n57[3]), .S1(n57[4]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_425_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_425_add_4_5.INJECT1_0 = "NO";
    defparam cnt_425_add_4_5.INJECT1_1 = "NO";
    FD1S3IX cnt_425__i0 (.D(n57[0]), .CK(clk_c), .CD(cnt_12__N_29), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425__i0.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(num[2]), .B(num[1]), .C(num[0]), .D(n2797), .Z(clk_c_enable_7)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(44[7] 47[19])
    defparam i3_4_lut.init = 16'h0200;
    CCU2D cnt_425_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2146), 
          .COUT(n2147), .S0(n57[9]), .S1(n57[10]));   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(37[10:20])
    defparam cnt_425_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_425_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_425_add_4_11.INJECT1_0 = "NO";
    defparam cnt_425_add_4_11.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(\cnt[11] ), .B(cnt[1]), .C(cnt[3]), .D(\cnt[12] ), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(34[10:40])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(cnt[2]), .B(cnt[8]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(34[10:40])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i7_4_lut (.A(cnt[7]), .B(n14), .C(n10), .D(cnt[10]), .Z(n2203)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(34[10:40])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i2540_4_lut (.A(n2203), .B(cnt[4]), .C(n8), .D(cnt[0]), .Z(bps_clk_N_33)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2540_4_lut.init = 16'h4000;
    LUT4 i2350_4_lut (.A(cnt[10]), .B(n2577), .C(cnt[9]), .D(cnt[8]), 
         .Z(n2581)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i2350_4_lut.init = 16'haaa8;
    LUT4 i1_2_lut_3_lut_4_lut (.A(num[2]), .B(n2797), .C(num[0]), .D(num[1]), 
         .Z(clk_c_enable_5)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(44[7] 47[19])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_20 (.A(num[2]), .B(n2797), .C(num[0]), 
         .D(num[1]), .Z(clk_c_enable_8)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(44[7] 47[19])
    defparam i1_2_lut_3_lut_4_lut_adj_20.init = 16'h4000;
    LUT4 i2346_4_lut (.A(cnt[7]), .B(cnt[6]), .C(cnt[5]), .D(n2571), 
         .Z(n2577)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2346_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(num[2]), .B(n2797), .C(num[0]), .D(num[1]), 
         .Z(clk_c_enable_6)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/uart_bus/baud.v(44[7] 47[19])
    defparam i2_3_lut_4_lut.init = 16'h0040;
    LUT4 i2340_4_lut (.A(cnt[4]), .B(cnt[1]), .C(cnt[3]), .D(n2554), 
         .Z(n2571)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2340_4_lut.init = 16'hfffe;
    LUT4 i2324_2_lut (.A(cnt[2]), .B(cnt[0]), .Z(n2554)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2324_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Segment_scan
//

module Segment_scan (seg_data, clk_c, seg_rck_c, seg_sck_c, seg_din_c, 
            data_en, GND_net, rst_n_c) /* synthesis syn_module_defined=1 */ ;
    input [31:0]seg_data;
    input clk_c;
    output seg_rck_c;
    output seg_sck_c;
    output seg_din_c;
    input [7:0]data_en;
    input GND_net;
    input rst_n_c;
    
    wire clk_40khz /* synthesis is_clock=1, SET_AS_NETWORK=\u3/clk_40khz */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(76[5:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(20[11:14])
    
    wire n14;
    wire [2:0]state;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(87[14:19])
    
    wire n2562, clk_40khz_N_168;
    wire [15:0]data;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(84[14:18])
    
    wire clk_40khz_enable_25;
    wire [15:0]data_15__N_145;
    wire [2:0]cnt_main;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(85[13:21])
    
    wire clk_40khz_enable_26, n1298;
    wire [2:0]cnt_main_2__N_136;
    
    wire n1900, n14_adj_170;
    wire [6:0]n199;
    
    wire n7, n14_adj_171;
    wire [9:0]cnt;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(68[11:14])
    
    wire cnt_9__N_128;
    wire [8:0]n41;
    
    wire clk_40khz_enable_8, seg_rck_N_163;
    wire [5:0]cnt_write;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(86[13:22])
    
    wire clk_40khz_enable_28, n1311;
    wire [5:0]n320;
    
    wire n7_adj_172, n2182;
    wire [6:0]n216;
    
    wire n1894, n14_adj_173, clk_40khz_enable_13, seg_sck_N_164, n7_adj_174, 
        n14_adj_175, n6, n4, clk_40khz_enable_14, seg_din_N_166, n7_adj_176, 
        n2184;
    wire [6:0]n233;
    
    wire n2640, n2641, n2646, n1888, n14_adj_177, n2642, n2643, 
        n2647, n7_adj_178, n14_adj_179, n7_adj_180, clk_40khz_enable_23;
    wire [2:0]state_2__N_115;
    
    wire n1866, n14_adj_181, n2183, n14_adj_182, n7_adj_183, n7_adj_184, 
        n1876, n14_adj_185, n1226, n2152, n2573, n7_adj_186, n2170;
    wire [6:0]n250;
    
    wire n2177;
    wire [6:0]n165;
    wire [6:0]n182;
    
    wire n14_adj_187, n2569, n7_adj_188, n2151;
    wire [6:0]n267;
    
    wire n1906, n7_adj_189, n1882;
    wire [6:0]n284;
    
    wire n14_adj_190, n2150, n2532, n14_adj_191, n14_adj_192, n2561, 
        n2553, n2547, n2545, n7_adj_193, n2543, n2541, n2176, 
        n7_adj_194, n2537, n1912, n14_adj_195, n2149, n2639, n2449, 
        n2423, n2399, n2379, n2633, n2634, n2619, n2620, n2359, 
        n2339, n2319, n2299, n2626, n2627, n2175, n14_adj_196, 
        n2636, n2637, n2644, n2638, n2645, n7_adj_197, n2591, 
        n2592, n2598, n2599, n2605, n2606, n2612, n2613, n2587, 
        n2588, n2589, n2590, n2594, n2595, n2596, n2597, n2792, 
        n7_adj_198, n2601, n2602, n2603, n2604, n2608, n2609, 
        n2610, n2611, n2615, n2616, n2617, n2618, n2622, n2623, 
        n2624, n2625, n2629, n2630, n2631, n2632, n1834, n4_adj_199, 
        n7_adj_200, n2789, n2178, n2648, n2649, seg_din_N_167, n12;
    
    LUT4 i1506_2_lut_3_lut (.A(seg_data[25]), .B(seg_data[26]), .C(seg_data[24]), 
         .Z(n14)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(107[37:42])
    defparam i1506_2_lut_3_lut.init = 16'hfbfb;
    FD1S3AX state_i0 (.D(n2562), .CK(clk_40khz), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam state_i0.GSR = "ENABLED";
    FD1S3AX clk_40khz_68 (.D(clk_40khz_N_168), .CK(clk_c), .Q(clk_40khz)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(79[7] 80[25])
    defparam clk_40khz_68.GSR = "ENABLED";
    FD1P3AX data_i0_i1 (.D(data_15__N_145[0]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i1.GSR = "DISABLED";
    FD1P3IX cnt_main_i0_i1 (.D(cnt_main_2__N_136[1]), .SP(clk_40khz_enable_26), 
            .CD(n1298), .CK(clk_40khz), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3AX data_i0_i2 (.D(data_15__N_145[1]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i2.GSR = "DISABLED";
    PFUMX mux_23_Mux_5_i15 (.BLUT(n1900), .ALUT(n14_adj_170), .C0(seg_data[23]), 
          .Z(n199[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    FD1P3AX data_i0_i4 (.D(data_15__N_145[3]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i4.GSR = "DISABLED";
    FD1P3AX data_i0_i6 (.D(data_15__N_145[5]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i6.GSR = "DISABLED";
    PFUMX mux_23_Mux_6_i15 (.BLUT(n7), .ALUT(n14_adj_171), .C0(seg_data[23]), 
          .Z(n199[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    FD1P3AX data_i0_i8 (.D(data_15__N_145[7]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i8.GSR = "DISABLED";
    FD1S3IX cnt_423_424__i1 (.D(n41[0]), .CK(clk_c), .CD(cnt_9__N_128), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424__i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(cnt_main_2__N_136[2]), .SP(clk_40khz_enable_26), 
            .CD(n1298), .CK(clk_40khz), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX seg_rck_74 (.D(seg_rck_N_163), .SP(clk_40khz_enable_8), .CD(n1298), 
            .CK(clk_40khz), .Q(seg_rck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam seg_rck_74.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i3 (.D(n320[3]), .SP(clk_40khz_enable_28), .CD(n1311), 
            .CK(clk_40khz), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i0 (.D(seg_rck_N_163), .SP(clk_40khz_enable_28), 
            .CD(n1311), .CK(clk_40khz), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i2 (.D(n320[2]), .SP(clk_40khz_enable_28), .CD(n1311), 
            .CK(clk_40khz), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    PFUMX mux_25_Mux_4_i15 (.BLUT(n7_adj_172), .ALUT(n2182), .C0(seg_data[19]), 
          .Z(n216[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    FD1P3IX cnt_write_i0_i4 (.D(n320[4]), .SP(clk_40khz_enable_28), .CD(n1311), 
            .CK(clk_40khz), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i4.GSR = "ENABLED";
    PFUMX mux_25_Mux_5_i15 (.BLUT(n1894), .ALUT(n14_adj_173), .C0(seg_data[19]), 
          .Z(n216[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    FD1P3AX seg_sck_73 (.D(seg_sck_N_164), .SP(clk_40khz_enable_13), .CK(clk_40khz), 
            .Q(seg_sck_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam seg_sck_73.GSR = "ENABLED";
    PFUMX mux_25_Mux_6_i15 (.BLUT(n7_adj_174), .ALUT(n14_adj_175), .C0(seg_data[19]), 
          .Z(n216[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    LUT4 i448_3_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i448_3_lut.init = 16'hecec;
    LUT4 i2331_2_lut (.A(state[0]), .B(n4), .Z(n2562)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam i2331_2_lut.init = 16'h4444;
    FD1P3AX seg_din_72 (.D(seg_din_N_166), .SP(clk_40khz_enable_14), .CK(clk_40khz), 
            .Q(seg_din_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam seg_din_72.GSR = "ENABLED";
    FD1S3IX cnt_423_424__i9 (.D(n41[8]), .CK(clk_c), .CD(cnt_9__N_128), 
            .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424__i9.GSR = "ENABLED";
    PFUMX mux_27_Mux_4_i15 (.BLUT(n7_adj_176), .ALUT(n2184), .C0(seg_data[15]), 
          .Z(n233[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    PFUMX i2415 (.BLUT(n2640), .ALUT(n2641), .C0(cnt_write[2]), .Z(n2646));
    PFUMX mux_27_Mux_5_i15 (.BLUT(n1888), .ALUT(n14_adj_177), .C0(seg_data[15]), 
          .Z(n233[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    FD1S3IX cnt_423_424__i8 (.D(n41[7]), .CK(clk_c), .CD(cnt_9__N_128), 
            .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424__i8.GSR = "ENABLED";
    FD1S3IX cnt_423_424__i7 (.D(n41[6]), .CK(clk_c), .CD(cnt_9__N_128), 
            .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424__i7.GSR = "ENABLED";
    FD1S3IX cnt_423_424__i6 (.D(n41[5]), .CK(clk_c), .CD(cnt_9__N_128), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424__i6.GSR = "ENABLED";
    FD1S3IX cnt_423_424__i5 (.D(n41[4]), .CK(clk_c), .CD(cnt_9__N_128), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424__i5.GSR = "ENABLED";
    FD1S3IX cnt_423_424__i4 (.D(n41[3]), .CK(clk_c), .CD(cnt_9__N_128), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424__i4.GSR = "ENABLED";
    FD1S3IX cnt_423_424__i3 (.D(n41[2]), .CK(clk_c), .CD(cnt_9__N_128), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424__i3.GSR = "ENABLED";
    FD1S3IX cnt_423_424__i2 (.D(n41[1]), .CK(clk_c), .CD(cnt_9__N_128), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424__i2.GSR = "ENABLED";
    PFUMX i2416 (.BLUT(n2642), .ALUT(n2643), .C0(cnt_write[2]), .Z(n2647));
    PFUMX mux_27_Mux_6_i15 (.BLUT(n7_adj_178), .ALUT(n14_adj_179), .C0(seg_data[15]), 
          .Z(n233[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    FD1P3AX data_i0_i15 (.D(data_15__N_145[14]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i15.GSR = "DISABLED";
    FD1P3AX data_i0_i14 (.D(data_15__N_145[13]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i14.GSR = "DISABLED";
    FD1P3AX data_i0_i13 (.D(data_15__N_145[12]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i13.GSR = "DISABLED";
    LUT4 mux_33_Mux_6_i7_3_lut_3_lut (.A(seg_data[0]), .B(seg_data[1]), 
         .C(seg_data[2]), .Z(n7_adj_180)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam mux_33_Mux_6_i7_3_lut_3_lut.init = 16'h7c7c;
    FD1P3AX data_i0_i12 (.D(data_15__N_145[11]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i12.GSR = "DISABLED";
    FD1P3AX data_i0_i11 (.D(data_15__N_145[10]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i11.GSR = "DISABLED";
    FD1P3AX data_i0_i10 (.D(data_15__N_145[9]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i10.GSR = "DISABLED";
    FD1P3AX data_i0_i9 (.D(data_15__N_145[8]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i9.GSR = "DISABLED";
    FD1P3AX data_i0_i7 (.D(data_15__N_145[6]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i7.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(data_en[1]), .Z(data_15__N_145[6])) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hbfff;
    FD1P3AX state_i1 (.D(state_2__N_115[1]), .SP(clk_40khz_enable_23), .CK(clk_40khz), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam state_i1.GSR = "ENABLED";
    FD1P3AX data_i0_i5 (.D(data_15__N_145[4]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i5.GSR = "DISABLED";
    FD1P3AX data_i0_i3 (.D(data_15__N_145[2]), .SP(clk_40khz_enable_25), 
            .CK(clk_40khz), .Q(data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam data_i0_i3.GSR = "DISABLED";
    LUT4 i1645_4_lut_3_lut (.A(seg_data[0]), .B(seg_data[1]), .C(seg_data[2]), 
         .Z(n1866)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i1645_4_lut_3_lut.init = 16'h7171;
    LUT4 i2_3_lut_4_lut_adj_2 (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(data_en[5]), .Z(data_15__N_145[2])) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_3_lut_4_lut_adj_2.init = 16'hfbff;
    FD1P3IX cnt_main_i0_i0 (.D(cnt_main_2__N_136[0]), .SP(clk_40khz_enable_26), 
            .CD(n1298), .CK(clk_40khz), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i484_2_lut (.A(cnt_main[1]), .B(cnt_main[0]), .Z(cnt_main_2__N_136[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(101[18:33])
    defparam i484_2_lut.init = 16'h6666;
    LUT4 i1474_2_lut_3_lut (.A(seg_data[1]), .B(seg_data[2]), .C(seg_data[0]), 
         .Z(n14_adj_181)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(113[37:42])
    defparam i1474_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i2_3_lut_3_lut (.A(seg_data[0]), .B(seg_data[1]), .C(seg_data[2]), 
         .Z(n2183)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(113[37:42])
    defparam i2_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1524_2_lut_3_lut (.A(seg_data[21]), .B(seg_data[22]), .C(seg_data[20]), 
         .Z(n14_adj_171)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(108[37:42])
    defparam i1524_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i1443_2_lut_3_lut_3_lut (.A(seg_data[0]), .B(seg_data[2]), .C(seg_data[1]), 
         .Z(n14_adj_182)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(113[37:42])
    defparam i1443_2_lut_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i1574_2_lut_3_lut_3_lut (.A(seg_data[0]), .B(seg_data[2]), .C(seg_data[1]), 
         .Z(n7_adj_183)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(113[37:42])
    defparam i1574_2_lut_3_lut_3_lut.init = 16'h5151;
    LUT4 mux_31_Mux_6_i7_3_lut_3_lut (.A(seg_data[4]), .B(seg_data[5]), 
         .C(seg_data[6]), .Z(n7_adj_184)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam mux_31_Mux_6_i7_3_lut_3_lut.init = 16'h7c7c;
    LUT4 i1654_4_lut_3_lut (.A(seg_data[4]), .B(seg_data[5]), .C(seg_data[6]), 
         .Z(n1876)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i1654_4_lut_3_lut.init = 16'h7171;
    LUT4 i1519_2_lut_3_lut (.A(seg_data[5]), .B(seg_data[6]), .C(seg_data[4]), 
         .Z(n14_adj_185)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(112[37:42])
    defparam i1519_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i3_4_lut (.A(cnt_write[4]), .B(cnt_write[3]), .C(cnt_write[2]), 
         .D(cnt_write[1]), .Z(n1226)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i580_1_lut (.A(cnt_write[0]), .Z(seg_rck_N_163)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(120[6] 158[13])
    defparam i580_1_lut.init = 16'h5555;
    LUT4 i2524_2_lut (.A(state[0]), .Z(clk_40khz_enable_28)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2524_2_lut.init = 16'h5555;
    CCU2D cnt_423_424_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2152), .S0(n41[7]), .S1(n41[8]));   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_423_424_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_423_424_add_4_9.INJECT1_0 = "NO";
    defparam cnt_423_424_add_4_9.INJECT1_1 = "NO";
    LUT4 i27_4_lut (.A(state[0]), .B(cnt_write[5]), .C(state[1]), .D(n2573), 
         .Z(n1311)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam i27_4_lut.init = 16'h4505;
    LUT4 mux_23_Mux_6_i7_3_lut_3_lut (.A(seg_data[20]), .B(seg_data[21]), 
         .C(seg_data[22]), .Z(n7)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam mux_23_Mux_6_i7_3_lut_3_lut.init = 16'h7c7c;
    PFUMX mux_29_Mux_4_i15 (.BLUT(n7_adj_186), .ALUT(n2170), .C0(seg_data[11]), 
          .Z(n250[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    LUT4 i2412_3_lut (.A(data[1]), .B(data[0]), .C(cnt_write[1]), .Z(n2643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2412_3_lut.init = 16'hcaca;
    LUT4 i2411_3_lut (.A(data[3]), .B(data[2]), .C(cnt_write[1]), .Z(n2642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2411_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut (.A(state[0]), .B(n4), .Z(clk_40khz_enable_23)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i2_3_lut_3_lut_adj_3 (.A(seg_data[4]), .B(seg_data[5]), .C(seg_data[6]), 
         .Z(n2177)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(112[37:42])
    defparam i2_3_lut_3_lut_adj_3.init = 16'hfdfd;
    LUT4 i1674_4_lut_3_lut (.A(seg_data[20]), .B(seg_data[21]), .C(seg_data[22]), 
         .Z(n1900)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i1674_4_lut_3_lut.init = 16'h7171;
    LUT4 mux_19_Mux_0_i15_4_lut_4_lut (.A(seg_data[28]), .B(seg_data[30]), 
         .C(seg_data[29]), .D(seg_data[31]), .Z(n165[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(106[37:42])
    defparam mux_19_Mux_0_i15_4_lut_4_lut.init = 16'hd7f9;
    LUT4 mux_21_Mux_0_i15_4_lut_4_lut (.A(seg_data[24]), .B(seg_data[26]), 
         .C(seg_data[25]), .D(seg_data[27]), .Z(n182[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(107[37:42])
    defparam mux_21_Mux_0_i15_4_lut_4_lut.init = 16'hd7f9;
    LUT4 i1517_2_lut_3_lut_3_lut (.A(seg_data[4]), .B(seg_data[6]), .C(seg_data[5]), 
         .Z(n14_adj_187)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(112[37:42])
    defparam i1517_2_lut_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i2534_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(data_en[2]), .Z(data_15__N_145[5])) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2534_3_lut_4_lut.init = 16'hdfff;
    LUT4 i2530_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(data_en[6]), .Z(data_15__N_145[1])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i2530_3_lut_4_lut.init = 16'hfdff;
    LUT4 mux_23_Mux_0_i15_4_lut_4_lut (.A(seg_data[20]), .B(seg_data[22]), 
         .C(seg_data[21]), .D(seg_data[23]), .Z(n199[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(108[37:42])
    defparam mux_23_Mux_0_i15_4_lut_4_lut.init = 16'hd7f9;
    LUT4 mux_25_Mux_0_i15_4_lut_4_lut (.A(seg_data[16]), .B(seg_data[18]), 
         .C(seg_data[17]), .D(seg_data[19]), .Z(n216[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(109[37:42])
    defparam mux_25_Mux_0_i15_4_lut_4_lut.init = 16'hd7f9;
    LUT4 i2342_2_lut (.A(cnt_write[0]), .B(n2569), .Z(n2573)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2342_2_lut.init = 16'heeee;
    LUT4 i482_1_lut (.A(cnt_main[0]), .Z(cnt_main_2__N_136[0])) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(101[18:33])
    defparam i482_1_lut.init = 16'h5555;
    LUT4 mux_27_Mux_0_i15_4_lut_4_lut (.A(seg_data[12]), .B(seg_data[14]), 
         .C(seg_data[13]), .D(seg_data[15]), .Z(n233[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(110[37:42])
    defparam mux_27_Mux_0_i15_4_lut_4_lut.init = 16'hd7f9;
    LUT4 i1511_2_lut_3_lut_3_lut (.A(seg_data[4]), .B(seg_data[6]), .C(seg_data[5]), 
         .Z(n7_adj_188)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(112[37:42])
    defparam i1511_2_lut_3_lut_3_lut.init = 16'h5151;
    FD1P3IX cnt_write_i0_i5 (.D(n320[5]), .SP(clk_40khz_enable_28), .CD(n1311), 
            .CK(clk_40khz), .Q(cnt_write[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i5.GSR = "ENABLED";
    LUT4 mux_29_Mux_0_i15_4_lut_4_lut (.A(seg_data[8]), .B(seg_data[10]), 
         .C(seg_data[9]), .D(seg_data[11]), .Z(n250[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(111[37:42])
    defparam mux_29_Mux_0_i15_4_lut_4_lut.init = 16'hd7f9;
    CCU2D cnt_423_424_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2151), .COUT(n2152), .S0(n41[5]), .S1(n41[6]));   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_423_424_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_423_424_add_4_7.INJECT1_0 = "NO";
    defparam cnt_423_424_add_4_7.INJECT1_1 = "NO";
    LUT4 mux_31_Mux_0_i15_4_lut_4_lut (.A(seg_data[4]), .B(seg_data[6]), 
         .C(seg_data[5]), .D(seg_data[7]), .Z(n267[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(112[37:42])
    defparam mux_31_Mux_0_i15_4_lut_4_lut.init = 16'hd7f9;
    LUT4 i1679_4_lut_3_lut (.A(seg_data[24]), .B(seg_data[25]), .C(seg_data[26]), 
         .Z(n1906)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i1679_4_lut_3_lut.init = 16'h7171;
    LUT4 mux_29_Mux_6_i7_3_lut_3_lut (.A(seg_data[8]), .B(seg_data[9]), 
         .C(seg_data[10]), .Z(n7_adj_189)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam mux_29_Mux_6_i7_3_lut_3_lut.init = 16'h7c7c;
    FD1P3IX cnt_write_i0_i1 (.D(n320[1]), .SP(clk_40khz_enable_28), .CD(n1311), 
            .CK(clk_40khz), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    LUT4 i1659_4_lut_3_lut (.A(seg_data[8]), .B(seg_data[9]), .C(seg_data[10]), 
         .Z(n1882)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i1659_4_lut_3_lut.init = 16'h7171;
    LUT4 mux_33_Mux_0_i15_4_lut_4_lut (.A(seg_data[0]), .B(seg_data[2]), 
         .C(seg_data[1]), .D(seg_data[3]), .Z(n284[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(113[37:42])
    defparam mux_33_Mux_0_i15_4_lut_4_lut.init = 16'hd7f9;
    PFUMX mux_29_Mux_5_i15 (.BLUT(n1882), .ALUT(n14_adj_190), .C0(seg_data[11]), 
          .Z(n250[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    LUT4 mux_27_Mux_6_i7_3_lut_3_lut (.A(seg_data[12]), .B(seg_data[13]), 
         .C(seg_data[14]), .Z(n7_adj_178)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam mux_27_Mux_6_i7_3_lut_3_lut.init = 16'h7c7c;
    CCU2D cnt_423_424_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2150), .COUT(n2151), .S0(n41[3]), .S1(n41[4]));   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_423_424_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_423_424_add_4_5.INJECT1_0 = "NO";
    defparam cnt_423_424_add_4_5.INJECT1_1 = "NO";
    LUT4 i2308_4_lut_4_lut (.A(seg_data[28]), .B(seg_data[29]), .C(seg_data[30]), 
         .D(seg_data[31]), .Z(n2532)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A (B (C)+!B (C (D))))) */ ;
    defparam i2308_4_lut_4_lut.init = 16'h279f;
    LUT4 i1475_2_lut_3_lut (.A(seg_data[9]), .B(seg_data[10]), .C(seg_data[8]), 
         .Z(n14_adj_191)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(111[37:42])
    defparam i1475_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i1502_2_lut_3_lut_3_lut (.A(seg_data[24]), .B(seg_data[26]), .C(seg_data[25]), 
         .Z(n14_adj_192)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(107[37:42])
    defparam i1502_2_lut_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i1468_2_lut_3_lut_3_lut (.A(seg_data[8]), .B(seg_data[10]), .C(seg_data[9]), 
         .Z(n14_adj_190)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(111[37:42])
    defparam i1468_2_lut_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i2330_4_lut_4_lut (.A(seg_data[24]), .B(seg_data[25]), .C(seg_data[26]), 
         .D(seg_data[27]), .Z(n2561)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A (B (C)+!B (C (D))))) */ ;
    defparam i2330_4_lut_4_lut.init = 16'h279f;
    LUT4 i2323_4_lut_4_lut (.A(seg_data[20]), .B(seg_data[21]), .C(seg_data[22]), 
         .D(seg_data[23]), .Z(n2553)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A (B (C)+!B (C (D))))) */ ;
    defparam i2323_4_lut_4_lut.init = 16'h279f;
    LUT4 i2_3_lut_3_lut_adj_4 (.A(seg_data[8]), .B(seg_data[9]), .C(seg_data[10]), 
         .Z(n2170)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(111[37:42])
    defparam i2_3_lut_3_lut_adj_4.init = 16'hfdfd;
    LUT4 i2318_4_lut_4_lut (.A(seg_data[16]), .B(seg_data[17]), .C(seg_data[18]), 
         .D(seg_data[19]), .Z(n2547)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A (B (C)+!B (C (D))))) */ ;
    defparam i2318_4_lut_4_lut.init = 16'h279f;
    LUT4 i2317_4_lut_4_lut (.A(seg_data[12]), .B(seg_data[13]), .C(seg_data[14]), 
         .D(seg_data[15]), .Z(n2545)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A (B (C)+!B (C (D))))) */ ;
    defparam i2317_4_lut_4_lut.init = 16'h279f;
    PFUMX mux_29_Mux_6_i15 (.BLUT(n7_adj_189), .ALUT(n14_adj_191), .C0(seg_data[11]), 
          .Z(n250[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    LUT4 i1453_2_lut_3_lut_3_lut (.A(seg_data[8]), .B(seg_data[10]), .C(seg_data[9]), 
         .Z(n7_adj_186)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(111[37:42])
    defparam i1453_2_lut_3_lut_3_lut.init = 16'h5151;
    LUT4 i1499_2_lut_3_lut_3_lut (.A(seg_data[24]), .B(seg_data[26]), .C(seg_data[25]), 
         .Z(n7_adj_193)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(107[37:42])
    defparam i1499_2_lut_3_lut_3_lut.init = 16'h5151;
    LUT4 i2410_3_lut (.A(data[5]), .B(data[4]), .C(cnt_write[1]), .Z(n2641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2410_3_lut.init = 16'hcaca;
    LUT4 i2316_4_lut_4_lut (.A(seg_data[8]), .B(seg_data[9]), .C(seg_data[10]), 
         .D(seg_data[11]), .Z(n2543)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A (B (C)+!B (C (D))))) */ ;
    defparam i2316_4_lut_4_lut.init = 16'h279f;
    LUT4 i2315_4_lut_4_lut (.A(seg_data[4]), .B(seg_data[5]), .C(seg_data[6]), 
         .D(seg_data[7]), .Z(n2541)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A (B (C)+!B (C (D))))) */ ;
    defparam i2315_4_lut_4_lut.init = 16'h279f;
    LUT4 i2_3_lut_3_lut_adj_5 (.A(seg_data[24]), .B(seg_data[25]), .C(seg_data[26]), 
         .Z(n2176)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(107[37:42])
    defparam i2_3_lut_3_lut_adj_5.init = 16'hfdfd;
    PFUMX mux_31_Mux_4_i15 (.BLUT(n7_adj_188), .ALUT(n2177), .C0(seg_data[7]), 
          .Z(n267[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    LUT4 mux_19_Mux_6_i7_3_lut_3_lut (.A(seg_data[28]), .B(seg_data[29]), 
         .C(seg_data[30]), .Z(n7_adj_194)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam mux_19_Mux_6_i7_3_lut_3_lut.init = 16'h7c7c;
    LUT4 i2312_4_lut_4_lut (.A(seg_data[0]), .B(seg_data[1]), .C(seg_data[2]), 
         .D(seg_data[3]), .Z(n2537)) /* synthesis lut_function=(!(A (B (D)+!B !((D)+!C))+!A (B (C)+!B (C (D))))) */ ;
    defparam i2312_4_lut_4_lut.init = 16'h279f;
    LUT4 i2409_3_lut (.A(data[7]), .B(data[6]), .C(cnt_write[1]), .Z(n2640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2409_3_lut.init = 16'hcaca;
    LUT4 mux_19_Mux_2_i15_4_lut_4_lut (.A(seg_data[30]), .B(seg_data[28]), 
         .C(seg_data[29]), .D(seg_data[31]), .Z(n165[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(106[37:42])
    defparam mux_19_Mux_2_i15_4_lut_4_lut.init = 16'h5def;
    PFUMX mux_31_Mux_5_i15 (.BLUT(n1876), .ALUT(n14_adj_187), .C0(seg_data[7]), 
          .Z(n267[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    LUT4 i1664_4_lut_3_lut (.A(seg_data[12]), .B(seg_data[13]), .C(seg_data[14]), 
         .Z(n1888)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i1664_4_lut_3_lut.init = 16'h7171;
    LUT4 i1684_4_lut_3_lut (.A(seg_data[28]), .B(seg_data[29]), .C(seg_data[30]), 
         .Z(n1912)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i1684_4_lut_3_lut.init = 16'h7171;
    LUT4 i1493_2_lut_3_lut (.A(seg_data[29]), .B(seg_data[30]), .C(seg_data[28]), 
         .Z(n14_adj_195)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(106[37:42])
    defparam i1493_2_lut_3_lut.init = 16'hfbfb;
    PFUMX mux_31_Mux_6_i15 (.BLUT(n7_adj_184), .ALUT(n14_adj_185), .C0(seg_data[7]), 
          .Z(n267[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    LUT4 mux_21_Mux_2_i15_4_lut_4_lut (.A(seg_data[26]), .B(seg_data[24]), 
         .C(seg_data[25]), .D(seg_data[27]), .Z(n182[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(107[37:42])
    defparam mux_21_Mux_2_i15_4_lut_4_lut.init = 16'h5def;
    LUT4 mux_23_Mux_2_i15_4_lut_4_lut (.A(seg_data[22]), .B(seg_data[20]), 
         .C(seg_data[21]), .D(seg_data[23]), .Z(n199[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(108[37:42])
    defparam mux_23_Mux_2_i15_4_lut_4_lut.init = 16'h5def;
    LUT4 mux_25_Mux_2_i15_4_lut_4_lut (.A(seg_data[18]), .B(seg_data[16]), 
         .C(seg_data[17]), .D(seg_data[19]), .Z(n216[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(109[37:42])
    defparam mux_25_Mux_2_i15_4_lut_4_lut.init = 16'h5def;
    LUT4 mux_27_Mux_2_i15_4_lut_4_lut (.A(seg_data[14]), .B(seg_data[12]), 
         .C(seg_data[13]), .D(seg_data[15]), .Z(n233[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(110[37:42])
    defparam mux_27_Mux_2_i15_4_lut_4_lut.init = 16'h5def;
    PFUMX mux_33_Mux_4_i15 (.BLUT(n7_adj_183), .ALUT(n2183), .C0(seg_data[3]), 
          .Z(n284[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    LUT4 mux_29_Mux_2_i15_4_lut_4_lut (.A(seg_data[10]), .B(seg_data[8]), 
         .C(seg_data[9]), .D(seg_data[11]), .Z(n250[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(111[37:42])
    defparam mux_29_Mux_2_i15_4_lut_4_lut.init = 16'h5def;
    CCU2D cnt_423_424_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2149), .COUT(n2150), .S0(n41[1]), .S1(n41[2]));   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_423_424_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_423_424_add_4_3.INJECT1_0 = "NO";
    defparam cnt_423_424_add_4_3.INJECT1_1 = "NO";
    LUT4 i2408_3_lut (.A(data[9]), .B(data[8]), .C(cnt_write[1]), .Z(n2639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2408_3_lut.init = 16'hcaca;
    LUT4 i2520_4_lut (.A(state[1]), .B(state[0]), .C(cnt_write[0]), .D(cnt_write[5]), 
         .Z(clk_40khz_enable_14)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B))) */ ;
    defparam i2520_4_lut.init = 16'h1113;
    CCU2D cnt_423_424_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2149), .S1(n41[0]));   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(72[14:24])
    defparam cnt_423_424_add_4_1.INIT0 = 16'hF000;
    defparam cnt_423_424_add_4_1.INIT1 = 16'h0555;
    defparam cnt_423_424_add_4_1.INJECT1_0 = "NO";
    defparam cnt_423_424_add_4_1.INJECT1_1 = "NO";
    LUT4 mux_31_Mux_2_i15_4_lut_4_lut (.A(seg_data[6]), .B(seg_data[4]), 
         .C(seg_data[5]), .D(seg_data[7]), .Z(n267[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(112[37:42])
    defparam mux_31_Mux_2_i15_4_lut_4_lut.init = 16'h5def;
    LUT4 mux_33_Mux_2_i15_4_lut_4_lut (.A(seg_data[2]), .B(seg_data[0]), 
         .C(seg_data[1]), .D(seg_data[3]), .Z(n284[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(B+((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(113[37:42])
    defparam mux_33_Mux_2_i15_4_lut_4_lut.init = 16'h5def;
    LUT4 i14_4_lut_4_lut (.A(seg_data[31]), .B(seg_data[28]), .C(seg_data[30]), 
         .D(seg_data[29]), .Z(n2449)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(106[37:42])
    defparam i14_4_lut_4_lut.init = 16'h3deb;
    LUT4 i14_4_lut_4_lut_adj_6 (.A(seg_data[27]), .B(seg_data[24]), .C(seg_data[26]), 
         .D(seg_data[25]), .Z(n2423)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(107[37:42])
    defparam i14_4_lut_4_lut_adj_6.init = 16'h3deb;
    LUT4 i14_4_lut_4_lut_adj_7 (.A(seg_data[23]), .B(seg_data[20]), .C(seg_data[22]), 
         .D(seg_data[21]), .Z(n2399)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(108[37:42])
    defparam i14_4_lut_4_lut_adj_7.init = 16'h3deb;
    LUT4 i1409_2_lut_3_lut (.A(seg_data[13]), .B(seg_data[14]), .C(seg_data[12]), 
         .Z(n14_adj_179)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(110[37:42])
    defparam i1409_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i14_4_lut_4_lut_adj_8 (.A(seg_data[19]), .B(seg_data[16]), .C(seg_data[18]), 
         .D(seg_data[17]), .Z(n2379)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(109[37:42])
    defparam i14_4_lut_4_lut_adj_8.init = 16'h3deb;
    LUT4 i2404_3_lut (.A(n2633), .B(n2634), .C(cnt_main[2]), .Z(data_15__N_145[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2404_3_lut.init = 16'hcaca;
    LUT4 i2390_3_lut (.A(n2619), .B(n2620), .C(cnt_main[2]), .Z(data_15__N_145[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2390_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_3_lut_adj_9 (.A(seg_data[12]), .B(seg_data[13]), .C(seg_data[14]), 
         .Z(n2184)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(110[37:42])
    defparam i2_3_lut_3_lut_adj_9.init = 16'hfdfd;
    LUT4 i14_4_lut_4_lut_adj_10 (.A(seg_data[15]), .B(seg_data[12]), .C(seg_data[14]), 
         .D(seg_data[13]), .Z(n2359)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(110[37:42])
    defparam i14_4_lut_4_lut_adj_10.init = 16'h3deb;
    PFUMX mux_33_Mux_5_i15 (.BLUT(n1866), .ALUT(n14_adj_182), .C0(seg_data[3]), 
          .Z(n284[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    LUT4 i14_4_lut_4_lut_adj_11 (.A(seg_data[11]), .B(seg_data[8]), .C(seg_data[10]), 
         .D(seg_data[9]), .Z(n2339)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(111[37:42])
    defparam i14_4_lut_4_lut_adj_11.init = 16'h3deb;
    LUT4 i14_4_lut_4_lut_adj_12 (.A(seg_data[7]), .B(seg_data[4]), .C(seg_data[6]), 
         .D(seg_data[5]), .Z(n2319)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(112[37:42])
    defparam i14_4_lut_4_lut_adj_12.init = 16'h3deb;
    LUT4 i14_4_lut_4_lut_adj_13 (.A(seg_data[3]), .B(seg_data[0]), .C(seg_data[2]), 
         .D(seg_data[1]), .Z(n2299)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(113[37:42])
    defparam i14_4_lut_4_lut_adj_13.init = 16'h3deb;
    LUT4 i2397_3_lut (.A(n2626), .B(n2627), .C(cnt_main[2]), .Z(data_15__N_145[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2397_3_lut.init = 16'hcaca;
    LUT4 i506_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n320[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(119[24:40])
    defparam i506_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_3_lut_adj_14 (.A(seg_data[28]), .B(seg_data[29]), .C(seg_data[30]), 
         .Z(n2175)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(106[37:42])
    defparam i2_3_lut_3_lut_adj_14.init = 16'hfdfd;
    PFUMX mux_33_Mux_6_i15 (.BLUT(n7_adj_180), .ALUT(n14_adj_181), .C0(seg_data[3]), 
          .Z(n284[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    LUT4 i1578_2_lut_3_lut_3_lut (.A(seg_data[12]), .B(seg_data[14]), .C(seg_data[13]), 
         .Z(n7_adj_176)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(110[37:42])
    defparam i1578_2_lut_3_lut_3_lut.init = 16'h5151;
    LUT4 i1_4_lut (.A(state[1]), .B(n2569), .C(cnt_write[0]), .D(cnt_write[5]), 
         .Z(n4)) /* synthesis lut_function=(!(A (B+!(C (D))))) */ ;
    defparam i1_4_lut.init = 16'h7555;
    LUT4 i1490_2_lut_3_lut_3_lut (.A(seg_data[28]), .B(seg_data[30]), .C(seg_data[29]), 
         .Z(n14_adj_196)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(106[37:42])
    defparam i1490_2_lut_3_lut_3_lut.init = 16'hf7f7;
    PFUMX i2413 (.BLUT(n2636), .ALUT(n2637), .C0(cnt_write[2]), .Z(n2644));
    PFUMX i2414 (.BLUT(n2638), .ALUT(n2639), .C0(cnt_write[2]), .Z(n2645));
    LUT4 mux_25_Mux_6_i7_3_lut_3_lut (.A(seg_data[16]), .B(seg_data[17]), 
         .C(seg_data[18]), .Z(n7_adj_174)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam mux_25_Mux_6_i7_3_lut_3_lut.init = 16'h7c7c;
    LUT4 i2338_4_lut (.A(cnt_write[1]), .B(cnt_write[4]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n2569)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2338_4_lut.init = 16'hfffe;
    LUT4 i1669_4_lut_3_lut (.A(seg_data[16]), .B(seg_data[17]), .C(seg_data[18]), 
         .Z(n1894)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i1669_4_lut_3_lut.init = 16'h7171;
    LUT4 mux_21_Mux_6_i7_3_lut_3_lut (.A(seg_data[24]), .B(seg_data[25]), 
         .C(seg_data[26]), .Z(n7_adj_197)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam mux_21_Mux_6_i7_3_lut_3_lut.init = 16'h7c7c;
    L6MUX21 i2362 (.D0(n2591), .D1(n2592), .SD(cnt_main[2]), .Z(data_15__N_145[8]));
    L6MUX21 i2369 (.D0(n2598), .D1(n2599), .SD(cnt_main[2]), .Z(data_15__N_145[9]));
    L6MUX21 i2376 (.D0(n2605), .D1(n2606), .SD(cnt_main[2]), .Z(data_15__N_145[10]));
    L6MUX21 i2383 (.D0(n2612), .D1(n2613), .SD(cnt_main[2]), .Z(data_15__N_145[11]));
    L6MUX21 i2360 (.D0(n2587), .D1(n2588), .SD(cnt_main[1]), .Z(n2591));
    L6MUX21 i2361 (.D0(n2589), .D1(n2590), .SD(cnt_main[1]), .Z(n2592));
    L6MUX21 i2367 (.D0(n2594), .D1(n2595), .SD(cnt_main[1]), .Z(n2598));
    L6MUX21 i2368 (.D0(n2596), .D1(n2597), .SD(cnt_main[1]), .Z(n2599));
    LUT4 i1579_2_lut_3_lut_3_lut (.A(seg_data[12]), .B(seg_data[14]), .C(seg_data[13]), 
         .Z(n14_adj_177)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(110[37:42])
    defparam i1579_2_lut_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i527_2_lut_3_lut_4_lut (.A(cnt_write[2]), .B(n2792), .C(cnt_write[4]), 
         .D(cnt_write[3]), .Z(n320[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(119[24:40])
    defparam i527_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1489_2_lut_3_lut_3_lut (.A(seg_data[28]), .B(seg_data[30]), .C(seg_data[29]), 
         .Z(n7_adj_198)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(106[37:42])
    defparam i1489_2_lut_3_lut_3_lut.init = 16'h5151;
    L6MUX21 i2374 (.D0(n2601), .D1(n2602), .SD(cnt_main[1]), .Z(n2605));
    LUT4 i1550_2_lut_3_lut (.A(seg_data[17]), .B(seg_data[18]), .C(seg_data[16]), 
         .Z(n14_adj_175)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(109[37:42])
    defparam i1550_2_lut_3_lut.init = 16'hfbfb;
    L6MUX21 i2375 (.D0(n2603), .D1(n2604), .SD(cnt_main[1]), .Z(n2606));
    L6MUX21 i2381 (.D0(n2608), .D1(n2609), .SD(cnt_main[1]), .Z(n2612));
    L6MUX21 i2382 (.D0(n2610), .D1(n2611), .SD(cnt_main[1]), .Z(n2613));
    L6MUX21 i2388 (.D0(n2615), .D1(n2616), .SD(cnt_main[1]), .Z(n2619));
    LUT4 i1546_2_lut_3_lut_3_lut (.A(seg_data[16]), .B(seg_data[18]), .C(seg_data[17]), 
         .Z(n14_adj_173)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(109[37:42])
    defparam i1546_2_lut_3_lut_3_lut.init = 16'hf7f7;
    L6MUX21 i2389 (.D0(n2617), .D1(n2618), .SD(cnt_main[1]), .Z(n2620));
    L6MUX21 i2395 (.D0(n2622), .D1(n2623), .SD(cnt_main[1]), .Z(n2626));
    L6MUX21 i2396 (.D0(n2624), .D1(n2625), .SD(cnt_main[1]), .Z(n2627));
    L6MUX21 i2402 (.D0(n2629), .D1(n2630), .SD(cnt_main[1]), .Z(n2633));
    L6MUX21 i2403 (.D0(n2631), .D1(n2632), .SD(cnt_main[1]), .Z(n2634));
    PFUMX i2356 (.BLUT(n165[0]), .ALUT(n182[0]), .C0(cnt_main[0]), .Z(n2587));
    PFUMX i2357 (.BLUT(n199[0]), .ALUT(n216[0]), .C0(cnt_main[0]), .Z(n2588));
    LUT4 i1_4_lut_adj_15 (.A(n1834), .B(cnt[5]), .C(cnt[4]), .D(cnt[3]), 
         .Z(n4_adj_199)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_15.init = 16'hfcec;
    LUT4 i1520_2_lut_3_lut_3_lut (.A(seg_data[20]), .B(seg_data[22]), .C(seg_data[21]), 
         .Z(n14_adj_170)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(108[37:42])
    defparam i1520_2_lut_3_lut_3_lut.init = 16'hf7f7;
    PFUMX i2358 (.BLUT(n233[0]), .ALUT(n250[0]), .C0(cnt_main[0]), .Z(n2589));
    LUT4 i1614_2_lut (.A(cnt[1]), .B(cnt[2]), .Z(n1834)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1614_2_lut.init = 16'h8888;
    LUT4 i1518_2_lut_3_lut_3_lut (.A(seg_data[20]), .B(seg_data[22]), .C(seg_data[21]), 
         .Z(n7_adj_200)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(108[37:42])
    defparam i1518_2_lut_3_lut_3_lut.init = 16'h5151;
    PFUMX i2359 (.BLUT(n267[0]), .ALUT(n284[0]), .C0(cnt_main[0]), .Z(n2590));
    LUT4 i534_3_lut_4_lut (.A(cnt_write[3]), .B(n2789), .C(cnt_write[4]), 
         .D(cnt_write[5]), .Z(n320[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(119[24:40])
    defparam i534_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_3_lut_3_lut_adj_16 (.A(seg_data[20]), .B(seg_data[21]), .C(seg_data[22]), 
         .Z(n2178)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(108[37:42])
    defparam i2_3_lut_3_lut_adj_16.init = 16'hfdfd;
    PFUMX i2363 (.BLUT(n2532), .ALUT(n2561), .C0(cnt_main[0]), .Z(n2594));
    LUT4 i2527_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(data_en[4]), .Z(data_15__N_145[3])) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(103[6] 115[13])
    defparam i2527_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i2406_3_lut (.A(data[13]), .B(data[12]), .C(cnt_write[1]), .Z(n2637)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2406_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_3_lut_adj_17 (.A(seg_data[16]), .B(seg_data[17]), .C(seg_data[18]), 
         .Z(n2182)) /* synthesis lut_function=((B+(C))+!A) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(109[37:42])
    defparam i2_3_lut_3_lut_adj_17.init = 16'hfdfd;
    PFUMX i2364 (.BLUT(n2553), .ALUT(n2547), .C0(cnt_main[0]), .Z(n2595));
    LUT4 i2405_3_lut (.A(data[14]), .B(cnt_write[1]), .Z(n2636)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2405_3_lut.init = 16'h8888;
    LUT4 i2538_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(data_en[0]), .Z(data_15__N_145[7])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(103[6] 115[13])
    defparam i2538_3_lut_4_lut.init = 16'h7fff;
    PFUMX i2365 (.BLUT(n2545), .ALUT(n2543), .C0(cnt_main[0]), .Z(n2596));
    LUT4 i491_2_lut_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(cnt_main_2__N_136[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(103[6] 115[13])
    defparam i491_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_3_lut (.A(state[1]), .B(state[0]), .C(rst_n_c), .Z(clk_40khz_enable_25)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam i2_3_lut.init = 16'h4040;
    PFUMX i2366 (.BLUT(n2541), .ALUT(n2537), .C0(cnt_main[0]), .Z(n2597));
    LUT4 i2_1_lut_rep_40 (.A(state[1]), .Z(clk_40khz_enable_26)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam i2_1_lut_rep_40.init = 16'h5555;
    L6MUX21 i2419 (.D0(n2648), .D1(n2649), .SD(cnt_write[4]), .Z(seg_din_N_167));
    PFUMX i2370 (.BLUT(n165[2]), .ALUT(n182[2]), .C0(cnt_main[0]), .Z(n2601));
    LUT4 i1630_2_lut_3_lut_3_lut (.A(state[1]), .B(seg_din_N_167), .C(state[0]), 
         .Z(seg_din_N_166)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam i1630_2_lut_3_lut_3_lut.init = 16'h0808;
    LUT4 i2522_3_lut_3_lut_3_lut (.A(state[1]), .B(cnt_write[5]), .C(state[0]), 
         .Z(clk_40khz_enable_13)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam i2522_3_lut_3_lut_3_lut.init = 16'h0707;
    PFUMX i2371 (.BLUT(n199[2]), .ALUT(n216[2]), .C0(cnt_main[0]), .Z(n2602));
    LUT4 i2517_2_lut (.A(state[1]), .B(state[0]), .Z(n1298)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2517_2_lut.init = 16'h1111;
    LUT4 i1588_2_lut_2_lut (.A(state[1]), .B(state[0]), .Z(state_2__N_115[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam i1588_2_lut_2_lut.init = 16'h4444;
    PFUMX i2372 (.BLUT(n233[2]), .ALUT(n250[2]), .C0(cnt_main[0]), .Z(n2603));
    LUT4 i1_4_lut_4_lut (.A(state[1]), .B(n1226), .C(cnt_write[5]), .D(state[0]), 
         .Z(clk_40khz_enable_8)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (D))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam i1_4_lut_4_lut.init = 16'h0075;
    LUT4 i1627_2_lut_3_lut_3_lut (.A(state[1]), .B(cnt_write[0]), .C(state[0]), 
         .Z(seg_sck_N_164)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(93[11] 162[5])
    defparam i1627_2_lut_3_lut_3_lut.init = 16'h0808;
    PFUMX i2373 (.BLUT(n267[2]), .ALUT(n284[2]), .C0(cnt_main[0]), .Z(n2604));
    PFUMX i2377 (.BLUT(n2449), .ALUT(n2423), .C0(cnt_main[0]), .Z(n2608));
    LUT4 i2407_3_lut (.A(data[11]), .B(data[10]), .C(cnt_write[1]), .Z(n2638)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2407_3_lut.init = 16'hcaca;
    PFUMX i2378 (.BLUT(n2399), .ALUT(n2379), .C0(cnt_main[0]), .Z(n2609));
    LUT4 i468_4_lut (.A(cnt[7]), .B(cnt[8]), .C(cnt[6]), .D(n12), .Z(cnt_9__N_128)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i468_4_lut.init = 16'hccc8;
    LUT4 i1545_2_lut_3_lut_3_lut (.A(seg_data[16]), .B(seg_data[18]), .C(seg_data[17]), 
         .Z(n7_adj_172)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(109[37:42])
    defparam i1545_2_lut_3_lut_3_lut.init = 16'h5151;
    LUT4 i2_3_lut_4_lut_adj_18 (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(data_en[7]), .Z(data_15__N_145[0])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(103[6] 115[13])
    defparam i2_3_lut_4_lut_adj_18.init = 16'hfeff;
    LUT4 i508_2_lut_rep_39 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n2792)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(119[24:40])
    defparam i508_2_lut_rep_39.init = 16'h8888;
    LUT4 i1648_4_lut (.A(cnt[6]), .B(cnt[8]), .C(cnt[7]), .D(n4_adj_199), 
         .Z(clk_40khz_N_168)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1648_4_lut.init = 16'hfcec;
    PFUMX i2379 (.BLUT(n2359), .ALUT(n2339), .C0(cnt_main[0]), .Z(n2610));
    LUT4 i469_4_lut (.A(n6), .B(cnt[5]), .C(cnt[4]), .D(cnt[3]), .Z(n12)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i469_4_lut.init = 16'hc8c0;
    LUT4 i2_3_lut_4_lut_adj_19 (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(data_en[3]), .Z(data_15__N_145[4])) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(103[6] 115[13])
    defparam i2_3_lut_4_lut_adj_19.init = 16'hefff;
    LUT4 i515_2_lut_rep_36_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n2789)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(119[24:40])
    defparam i515_2_lut_rep_36_3_lut.init = 16'h8080;
    PFUMX i2380 (.BLUT(n2319), .ALUT(n2299), .C0(cnt_main[0]), .Z(n2611));
    LUT4 i520_2_lut_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n320[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(119[24:40])
    defparam i520_2_lut_3_lut_4_lut.init = 16'h78f0;
    L6MUX21 i2384 (.D0(n165[6]), .D1(n182[6]), .SD(cnt_main[0]), .Z(n2615));
    L6MUX21 i2385 (.D0(n199[6]), .D1(n216[6]), .SD(cnt_main[0]), .Z(n2616));
    L6MUX21 i2386 (.D0(n233[6]), .D1(n250[6]), .SD(cnt_main[0]), .Z(n2617));
    LUT4 i513_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n320[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/segment_scan.v(119[24:40])
    defparam i513_2_lut_3_lut.init = 16'h7878;
    L6MUX21 i2387 (.D0(n267[6]), .D1(n284[6]), .SD(cnt_main[0]), .Z(n2618));
    L6MUX21 i2391 (.D0(n165[4]), .D1(n182[4]), .SD(cnt_main[0]), .Z(n2622));
    L6MUX21 i2392 (.D0(n199[4]), .D1(n216[4]), .SD(cnt_main[0]), .Z(n2623));
    L6MUX21 i2393 (.D0(n233[4]), .D1(n250[4]), .SD(cnt_main[0]), .Z(n2624));
    L6MUX21 i2394 (.D0(n267[4]), .D1(n284[4]), .SD(cnt_main[0]), .Z(n2625));
    L6MUX21 i2398 (.D0(n165[5]), .D1(n182[5]), .SD(cnt_main[0]), .Z(n2629));
    L6MUX21 i2399 (.D0(n199[5]), .D1(n216[5]), .SD(cnt_main[0]), .Z(n2630));
    L6MUX21 i2400 (.D0(n233[5]), .D1(n250[5]), .SD(cnt_main[0]), .Z(n2631));
    L6MUX21 i2401 (.D0(n267[5]), .D1(n284[5]), .SD(cnt_main[0]), .Z(n2632));
    L6MUX21 i2417 (.D0(n2644), .D1(n2645), .SD(cnt_write[3]), .Z(n2648));
    L6MUX21 i2418 (.D0(n2646), .D1(n2647), .SD(cnt_write[3]), .Z(n2649));
    PFUMX mux_19_Mux_4_i15 (.BLUT(n7_adj_198), .ALUT(n2175), .C0(seg_data[31]), 
          .Z(n165[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    PFUMX mux_19_Mux_5_i15 (.BLUT(n1912), .ALUT(n14_adj_196), .C0(seg_data[31]), 
          .Z(n165[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    PFUMX mux_19_Mux_6_i15 (.BLUT(n7_adj_194), .ALUT(n14_adj_195), .C0(seg_data[31]), 
          .Z(n165[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    PFUMX mux_21_Mux_4_i15 (.BLUT(n7_adj_193), .ALUT(n2176), .C0(seg_data[27]), 
          .Z(n182[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    PFUMX mux_21_Mux_5_i15 (.BLUT(n1906), .ALUT(n14_adj_192), .C0(seg_data[27]), 
          .Z(n182[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    PFUMX mux_21_Mux_6_i15 (.BLUT(n7_adj_197), .ALUT(n14), .C0(seg_data[27]), 
          .Z(n182[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    PFUMX mux_23_Mux_4_i15 (.BLUT(n7_adj_200), .ALUT(n2178), .C0(seg_data[23]), 
          .Z(n199[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=57, LSE_RLINE=74 */ ;
    
endmodule
//
// Verilog Description of module Decoder
//

module Decoder (data_en, rx_data_valid, seg_data, \rx_data_out[0] , 
            \rx_data_out[1] , \rx_data_out[2] , \rx_data_out[3] , n2875) /* synthesis syn_module_defined=1 */ ;
    output [7:0]data_en;
    input rx_data_valid;
    output [31:0]seg_data;
    input \rx_data_out[0] ;
    input \rx_data_out[1] ;
    input \rx_data_out[2] ;
    input \rx_data_out[3] ;
    input n2875;
    
    wire rx_data_valid /* synthesis is_clock=1, SET_AS_NETWORK=rx_data_valid */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/display_ctl.v(32[6:19])
    
    FD1S3AX data_en_i7 (.D(data_en[6]), .CK(rx_data_valid), .Q(data_en[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(38[8:39])
    defparam data_en_i7.GSR = "ENABLED";
    FD1S3AX data_en_i6 (.D(data_en[5]), .CK(rx_data_valid), .Q(data_en[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(38[8:39])
    defparam data_en_i6.GSR = "ENABLED";
    FD1S3AX seg_data_i31 (.D(seg_data[27]), .CK(rx_data_valid), .Q(seg_data[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i31.GSR = "ENABLED";
    FD1S3AX seg_data_i30 (.D(seg_data[26]), .CK(rx_data_valid), .Q(seg_data[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i30.GSR = "ENABLED";
    FD1S3AX seg_data_i29 (.D(seg_data[25]), .CK(rx_data_valid), .Q(seg_data[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i29.GSR = "ENABLED";
    FD1S3AX seg_data_i28 (.D(seg_data[24]), .CK(rx_data_valid), .Q(seg_data[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i28.GSR = "ENABLED";
    FD1S3AX seg_data_i27 (.D(seg_data[23]), .CK(rx_data_valid), .Q(seg_data[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i27.GSR = "ENABLED";
    FD1S3AX seg_data_i26 (.D(seg_data[22]), .CK(rx_data_valid), .Q(seg_data[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i26.GSR = "ENABLED";
    FD1S3AX seg_data_i25 (.D(seg_data[21]), .CK(rx_data_valid), .Q(seg_data[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i25.GSR = "ENABLED";
    FD1S3AX data_en_i5 (.D(data_en[4]), .CK(rx_data_valid), .Q(data_en[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(38[8:39])
    defparam data_en_i5.GSR = "ENABLED";
    FD1S3AX seg_data_i24 (.D(seg_data[20]), .CK(rx_data_valid), .Q(seg_data[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i24.GSR = "ENABLED";
    FD1S3AX data_en_i4 (.D(data_en[3]), .CK(rx_data_valid), .Q(data_en[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(38[8:39])
    defparam data_en_i4.GSR = "ENABLED";
    FD1S3AX seg_data_i23 (.D(seg_data[19]), .CK(rx_data_valid), .Q(seg_data[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i23.GSR = "ENABLED";
    FD1S3AX seg_data_i22 (.D(seg_data[18]), .CK(rx_data_valid), .Q(seg_data[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i22.GSR = "ENABLED";
    FD1S3AX seg_data_i21 (.D(seg_data[17]), .CK(rx_data_valid), .Q(seg_data[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i21.GSR = "ENABLED";
    FD1S3AX seg_data_i20 (.D(seg_data[16]), .CK(rx_data_valid), .Q(seg_data[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i20.GSR = "ENABLED";
    FD1S3AX seg_data_i19 (.D(seg_data[15]), .CK(rx_data_valid), .Q(seg_data[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i19.GSR = "ENABLED";
    FD1S3AX seg_data_i18 (.D(seg_data[14]), .CK(rx_data_valid), .Q(seg_data[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i18.GSR = "ENABLED";
    FD1S3AX seg_data_i17 (.D(seg_data[13]), .CK(rx_data_valid), .Q(seg_data[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i17.GSR = "ENABLED";
    FD1S3AX seg_data_i16 (.D(seg_data[12]), .CK(rx_data_valid), .Q(seg_data[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i16.GSR = "ENABLED";
    FD1S3AX seg_data_i15 (.D(seg_data[11]), .CK(rx_data_valid), .Q(seg_data[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i15.GSR = "ENABLED";
    FD1S3AX seg_data_i14 (.D(seg_data[10]), .CK(rx_data_valid), .Q(seg_data[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i14.GSR = "ENABLED";
    FD1S3AX seg_data_i13 (.D(seg_data[9]), .CK(rx_data_valid), .Q(seg_data[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i13.GSR = "ENABLED";
    FD1S3AX seg_data_i12 (.D(seg_data[8]), .CK(rx_data_valid), .Q(seg_data[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i12.GSR = "ENABLED";
    FD1S3AX seg_data_i11 (.D(seg_data[7]), .CK(rx_data_valid), .Q(seg_data[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i11.GSR = "ENABLED";
    FD1S3AX seg_data_i10 (.D(seg_data[6]), .CK(rx_data_valid), .Q(seg_data[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i10.GSR = "ENABLED";
    FD1S3AX data_en_i3 (.D(data_en[2]), .CK(rx_data_valid), .Q(data_en[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(38[8:39])
    defparam data_en_i3.GSR = "ENABLED";
    FD1S3AX seg_data_i9 (.D(seg_data[5]), .CK(rx_data_valid), .Q(seg_data[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i9.GSR = "ENABLED";
    FD1S3AX seg_data_i8 (.D(seg_data[4]), .CK(rx_data_valid), .Q(seg_data[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i8.GSR = "ENABLED";
    FD1S3AX seg_data_i7 (.D(seg_data[3]), .CK(rx_data_valid), .Q(seg_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i7.GSR = "ENABLED";
    FD1S3AX seg_data_i6 (.D(seg_data[2]), .CK(rx_data_valid), .Q(seg_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i6.GSR = "ENABLED";
    FD1S3AX seg_data_i5 (.D(seg_data[1]), .CK(rx_data_valid), .Q(seg_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i5.GSR = "ENABLED";
    FD1S3AX seg_data_i4 (.D(seg_data[0]), .CK(rx_data_valid), .Q(seg_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i4.GSR = "ENABLED";
    FD1S3AX seg_data_i0 (.D(\rx_data_out[0] ), .CK(rx_data_valid), .Q(seg_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i0.GSR = "ENABLED";
    FD1S3AX data_en_i2 (.D(data_en[1]), .CK(rx_data_valid), .Q(data_en[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(38[8:39])
    defparam data_en_i2.GSR = "ENABLED";
    FD1S3AX seg_data_i1 (.D(\rx_data_out[1] ), .CK(rx_data_valid), .Q(seg_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i1.GSR = "ENABLED";
    FD1S3AX data_en_i1 (.D(data_en[0]), .CK(rx_data_valid), .Q(data_en[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(38[8:39])
    defparam data_en_i1.GSR = "ENABLED";
    FD1S3AX seg_data_i2 (.D(\rx_data_out[2] ), .CK(rx_data_valid), .Q(seg_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i2.GSR = "ENABLED";
    FD1S3AX seg_data_i3 (.D(\rx_data_out[3] ), .CK(rx_data_valid), .Q(seg_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(32[8:53])
    defparam seg_data_i3.GSR = "ENABLED";
    FD1S3AX data_en_i0 (.D(n2875), .CK(rx_data_valid), .Q(data_en[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=47, LSE_RLINE=54 */ ;   // f:/fpga_project/baseboard/lab5_display_ctl/decoder.v(38[8:39])
    defparam data_en_i0.GSR = "ENABLED";
    
endmodule
