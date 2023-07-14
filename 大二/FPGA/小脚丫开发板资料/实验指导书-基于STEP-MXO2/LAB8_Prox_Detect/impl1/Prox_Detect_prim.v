// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.9.0.99.2
// Netlist written on Fri Jan 25 17:01:32 2019
//
// Verilog Description of module Prox_Detect
//

module Prox_Detect (clk, rst_n, i2c_scl, i2c_sda, led) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(18[8:19])
    input clk;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(20[10:13])
    input rst_n;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(21[10:15])
    output i2c_scl;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(23[11:18])
    inout i2c_sda;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(24[10:17])
    output [7:0]led;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(26[15:18])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(20[10:13])
    wire dat_valid /* synthesis is_clock=1, SET_AS_NETWORK=dat_valid */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(29[6:15])
    wire clk_400khz /* synthesis is_clock=1, SET_AS_NETWORK=\u1/clk_400khz */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(48[10:20])
    
    wire rst_n_c, i2c_scl_c, led_c_7, led_c_5, led_c_4, led_c_3, 
        led_c_2, led_c_1;
    wire [15:0]prox_dat;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(30[31:39])
    
    wire VCC_net, n9113;
    wire [3:0]cnt;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[12:15])
    wire [3:0]cnt_mode1;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[27:36])
    wire [3:0]cnt_mode2;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[38:47])
    wire [3:0]cnt_read;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[71:79])
    wire [7:0]data_wr;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(64[12:19])
    wire [3:0]state;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    wire [3:0]state_back;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[20:30])
    
    wire n4818, dat_valid_N_458, n91;
    wire [3:0]state_3__N_260;
    
    wire n9537, clk_c_enable_87, clk_c_enable_105, i2c_sda_N_454, n9170, 
        GND_net, n7, n2267, n9164, i2c_sda_out, n4754, n9698, 
        n9697, n9146, n1375, n1374, n1371, n9696, n1360, n1359, 
        n9141, n1349, n1348, n9534, n1322, n9527, n9695, n9533, 
        clk_c_enable_119, n37, n9071, n9694, n4, n9693, n9692, 
        n9691, clk_c_enable_106, n9106, n9574, n9523, n9572, n8239, 
        n9584, n9571, n9068, n9570, n9194, n9568, n9567, n9529, 
        n9115, n9561, n8945, n4_adj_550, n9129, n9761, n9028, 
        n9032, n9601, n9555, n9600, n4820, n9078, n9599, n9551, 
        clk_c_enable_102, n9589, n9588, n9544, n9587, n9542, n9541, 
        n9585, n2383, n4765, n9539, n4662;
    
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(26[15:18])
    OB i2c_scl_pad (.I(i2c_scl_c), .O(i2c_scl));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(23[11:18])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(26[15:18])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(26[15:18])
    OB led_pad_6 (.I(n9572), .O(led[6]));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(26[15:18])
    LUT4 i8568_2_lut_3_lut_4_lut (.A(state[3]), .B(n2383), .C(n9170), 
         .D(n9544), .Z(n9141)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i8568_2_lut_3_lut_4_lut.init = 16'h4000;
    PFUMX i8617 (.BLUT(n9028), .ALUT(n8945), .C0(state[0]), .Z(n9194));
    LUT4 i6495_3_lut_4_lut (.A(state[3]), .B(n2383), .C(state[2]), .D(n9541), 
         .Z(n1359)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i6495_3_lut_4_lut.init = 16'hbbbf;
    L6MUX21 i8619 (.D0(n9194), .D1(n9523), .SD(state[1]), .Z(n37));
    LUT4 n9529_bdd_2_lut_8929 (.A(n91), .B(state[0]), .Z(n9696)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam n9529_bdd_2_lut_8929.init = 16'hbbbb;
    LUT4 i1114_4_lut_then_3_lut (.A(n9574), .B(clk_400khz), .C(n4818), 
         .Z(n9585)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1114_4_lut_then_3_lut.init = 16'h2020;
    LUT4 i1114_4_lut_else_3_lut (.A(state[2]), .B(n9146), .C(n9574), .D(clk_400khz), 
         .Z(n9584)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1114_4_lut_else_3_lut.init = 16'h0020;
    LUT4 i8614_then_3_lut (.A(data_wr[6]), .B(data_wr[4]), .C(cnt[1]), 
         .Z(n9588)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i8614_then_3_lut.init = 16'hcaca;
    LUT4 i8614_else_3_lut (.A(data_wr[5]), .B(data_wr[7]), .C(cnt[1]), 
         .Z(n9587)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i8614_else_3_lut.init = 16'hacac;
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(26[15:18])
    BB i2c_sda_pad (.I(i2c_sda_N_454), .T(n2267), .B(i2c_sda), .O(i2c_sda_out));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(68[2] 218[5])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(26[15:18])
    LUT4 i8615_then_3_lut (.A(data_wr[2]), .B(data_wr[0]), .C(cnt[1]), 
         .Z(n9600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i8615_then_3_lut.init = 16'hcaca;
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(26[15:18])
    OB led_pad_0 (.I(GND_net), .O(led[0]));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(26[15:18])
    IB clk_pad (.I(clk), .O(clk_c));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(20[10:13])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(21[10:15])
    LUT4 i8615_else_3_lut (.A(data_wr[1]), .B(data_wr[3]), .C(cnt[1]), 
         .Z(n9599)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i8615_else_3_lut.init = 16'hacac;
    LUT4 state_2__bdd_4_lut (.A(cnt_mode2[1]), .B(cnt_mode2[0]), .C(cnt_mode2[2]), 
         .D(cnt_mode2[3]), .Z(n9691)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B ((D)+!C)))) */ ;
    defparam state_2__bdd_4_lut.init = 16'h0616;
    LUT4 i6452_4_lut (.A(state_3__N_260[1]), .B(n9527), .C(state_back[1]), 
         .D(state[2]), .Z(n1360)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i6452_4_lut.init = 16'hc088;
    LUT4 mux_998_i2_4_lut (.A(n9542), .B(n1322), .C(n9529), .D(n9113), 
         .Z(n1349)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam mux_998_i2_4_lut.init = 16'hc0c5;
    LUT4 n9529_bdd_2_lut_8903 (.A(n9078), .B(cnt_mode1[2]), .Z(n9695)) /* synthesis lut_function=(A (B)) */ ;
    defparam n9529_bdd_2_lut_8903.init = 16'h8888;
    LUT4 i6433_2_lut_rep_108 (.A(cnt_read[0]), .B(cnt_read[3]), .Z(n9567)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6433_2_lut_rep_108.init = 16'heeee;
    LUT4 i1_4_lut (.A(cnt[1]), .B(n9068), .C(cnt[2]), .D(cnt[0]), .Z(n9071)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1_4_lut.init = 16'h48c0;
    LUT4 n2088_bdd_4_lut (.A(n9539), .B(cnt_read[3]), .C(n4662), .D(state[0]), 
         .Z(n9523)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n2088_bdd_4_lut.init = 16'hf011;
    LUT4 i1_2_lut_rep_112 (.A(dat_valid_N_458), .B(state[0]), .Z(n9571)) /* synthesis lut_function=(A+!(B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_112.init = 16'hbbbb;
    LUT4 i1_3_lut_4_lut_4_lut (.A(dat_valid_N_458), .B(state[0]), .C(n9129), 
         .D(n9542), .Z(n9032)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 i6454_2_lut_4_lut (.A(state[3]), .B(n9544), .C(n4820), .D(n1322), 
         .Z(n1348)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i6454_2_lut_4_lut.init = 16'h4000;
    LUT4 i8578_4_lut (.A(state[3]), .B(n9544), .C(n9170), .D(n4820), 
         .Z(n9129)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i8578_4_lut.init = 16'h4440;
    LUT4 i1110_3_lut (.A(n9115), .B(n4818), .C(state[0]), .Z(n9170)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1110_3_lut.init = 16'hcaca;
    LUT4 i1090_4_lut (.A(n9555), .B(n9146), .C(state[2]), .D(state[1]), 
         .Z(n9115)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1090_4_lut.init = 16'h3530;
    GSR GSR_INST (.GSR(rst_n_c));
    PFUMX i8901 (.BLUT(n9693), .ALUT(n9692), .C0(n9527), .Z(n9694));
    LUT4 n9527_bdd_2_lut_8926 (.A(n9078), .B(cnt_mode1[2]), .Z(n9693)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n9527_bdd_2_lut_8926.init = 16'hdddd;
    LUT4 i1_4_lut_adj_74 (.A(n9164), .B(state[2]), .C(n4_adj_550), .D(n37), 
         .Z(n4)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_74.init = 16'hdc50;
    LUT4 i1_2_lut (.A(n8239), .B(state[0]), .Z(n4_adj_550)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1862_2_lut_rep_68 (.A(state[3]), .B(n2383), .Z(n9527)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1862_2_lut_rep_68.init = 16'h4444;
    Decoder u2 (.dat_valid(dat_valid), .prox_dat({prox_dat}), .GND_net(GND_net), 
            .led_c_3(led_c_3), .led_c_4(led_c_4), .led_c_2(led_c_2), .n9572(n9572), 
            .led_c_7(led_c_7), .led_c_5(led_c_5), .led_c_1(led_c_1)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(44[9] 49[2])
    VLO i1 (.Z(GND_net));
    LUT4 n9691_bdd_3_lut (.A(n9691), .B(state_back[0]), .C(state[2]), 
         .Z(n9692)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9691_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(clk_400khz), .B(n9574), .C(n4765), .D(rst_n_c), 
         .Z(n4754)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 m0_lut (.Z(n9761)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    PFUMX mux_1016_i3 (.BLUT(n1348), .ALUT(n1359), .C0(n1371), .Z(n1374));
    LUT4 i8680_2_lut_2_lut_3_lut_4_lut (.A(clk_400khz), .B(n9574), .C(n9570), 
         .D(state[3]), .Z(clk_c_enable_105)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i8680_2_lut_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i8699_2_lut_rep_73_2_lut_3_lut_4_lut (.A(clk_400khz), .B(n9574), 
         .C(n9551), .D(state[0]), .Z(clk_c_enable_119)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i8699_2_lut_rep_73_2_lut_3_lut_4_lut.init = 16'h0004;
    PFUMX mux_1016_i2 (.BLUT(n1349), .ALUT(n1360), .C0(n1371), .Z(n1375));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i2_2_lut_3_lut_4_lut (.A(clk_400khz), .B(n9574), .C(n9551), .D(rst_n_c), 
         .Z(n7)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfbff;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i8706_2_lut_rep_72_3_lut_4_lut (.A(clk_400khz), .B(n9574), .C(state[1]), 
         .D(n9561), .Z(clk_c_enable_106)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i8706_2_lut_rep_72_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_3_lut (.A(clk_400khz), .B(n9574), .C(n4), .Z(n9106)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_3_lut.init = 16'hfbfb;
    L6MUX21 i8906 (.D0(n9697), .D1(n9694), .SD(n1371), .Z(n9698));
    LUT4 i1_2_lut_rep_75_3_lut (.A(clk_400khz), .B(n9574), .C(state[3]), 
         .Z(n9534)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_75_3_lut.init = 16'hfbfb;
    PFUMX i8904 (.BLUT(n9696), .ALUT(n9695), .C0(n9529), .Z(n9697));
    LUT4 i1_2_lut_3_lut_4_lut_adj_75 (.A(clk_400khz), .B(n9574), .C(n9568), 
         .D(n9561), .Z(clk_c_enable_87)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_3_lut_4_lut_adj_75.init = 16'h0040;
    LUT4 i1_2_lut_rep_78_3_lut (.A(clk_400khz), .B(n9574), .C(rst_n_c), 
         .Z(n9537)) /* synthesis lut_function=(A+!(B (C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_78_3_lut.init = 16'hbfbf;
    PFUMX i8853 (.BLUT(n9599), .ALUT(n9600), .C0(cnt[0]), .Z(n9601));
    LUT4 i8742_2_lut_3_lut_4_lut (.A(clk_400khz), .B(n9574), .C(state[0]), 
         .D(n9561), .Z(clk_c_enable_102)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i8742_2_lut_3_lut_4_lut.init = 16'h0004;
    PFUMX i8845 (.BLUT(n9587), .ALUT(n9588), .C0(cnt[0]), .Z(n9589));
    PFUMX i8843 (.BLUT(n9584), .ALUT(n9585), .C0(state[0]), .Z(n2383));
    LUT4 i1_2_lut_rep_74_3_lut (.A(clk_400khz), .B(n9574), .C(rst_n_c), 
         .Z(n9533)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_74_3_lut.init = 16'h4040;
    APDS_9901_Driver u1 (.state({state}), .clk_400khz(clk_400khz), .clk_c(clk_c), 
            .clk_c_enable_119(clk_c_enable_119), .n9574(n9574), .i2c_sda_N_454(i2c_sda_N_454), 
            .data_wr({data_wr}), .prox_dat({prox_dat}), .cnt_mode2({cnt_mode2}), 
            .n9534(n9534), .\state_back[0] (state_back[0]), .clk_c_enable_87(clk_c_enable_87), 
            .GND_net(GND_net), .cnt({Open_0, cnt[2:0]}), .dat_valid_N_458(dat_valid_N_458), 
            .n9567(n9567), .n4754(n4754), .n91(n91), .n9028(n9028), 
            .n9068(n9068), .n8945(n8945), .n9601(n9601), .n9589(n9589), 
            .\state_3__N_260[1] (state_3__N_260[1]), .n9568(n9568), .n9551(n9551), 
            .dat_valid(dat_valid), .\cnt_read[3] (cnt_read[3]), .\cnt_read[0] (cnt_read[0]), 
            .n9106(n9106), .clk_c_enable_102(clk_c_enable_102), .n4818(n4818), 
            .n9032(n9032), .clk_c_enable_105(clk_c_enable_105), .\cnt_mode1[2] (cnt_mode1[2]), 
            .n9555(n9555), .n9539(n9539), .n9570(n9570), .clk_c_enable_106(clk_c_enable_106), 
            .n9561(n9561), .rst_n_c(rst_n_c), .n9078(n9078), .n1322(n1322), 
            .n9544(n9544), .n4765(n4765), .n8239(n8239), .n9542(n9542), 
            .i2c_sda_out(i2c_sda_out), .n9761(n9761), .n9541(n9541), .n2267(n2267), 
            .\state_back[1] (state_back[1]), .n9141(n9141), .n37(n37), 
            .n2383(n2383), .n4662(n4662), .n1374(n1374), .n1375(n1375), 
            .n4(n4), .n9164(n9164), .n9113(n9113), .n4820(n4820), .n9537(n9537), 
            .n9129(n9129), .i2c_scl_c(i2c_scl_c), .n9170(n9170), .n1371(n1371), 
            .n9529(n9529), .n7(n7), .n9571(n9571), .n9146(n9146), .n9071(n9071), 
            .n9533(n9533), .n9698(n9698)) /* synthesis syn_module_defined=1 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(31[18] 42[2])
    VHI i8953 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module Decoder
//

module Decoder (dat_valid, prox_dat, GND_net, led_c_3, led_c_4, led_c_2, 
            n9572, led_c_7, led_c_5, led_c_1) /* synthesis syn_module_defined=1 */ ;
    input dat_valid;
    input [15:0]prox_dat;
    input GND_net;
    output led_c_3;
    output led_c_4;
    output led_c_2;
    output n9572;
    output led_c_7;
    output led_c_5;
    output led_c_1;
    
    wire dat_valid /* synthesis is_clock=1, SET_AS_NETWORK=dat_valid */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(29[6:15])
    wire [15:0]prox_dat1;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(25[22:31])
    wire [15:0]prox_dat0;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(25[12:21])
    wire [15:0]prox_dat2;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(25[32:41])
    
    wire prox_dat2_15__N_511, n8468, n8469, n8467, n8466;
    wire [15:0]prox_dat2_15__N_512;
    
    wire n9238, n8473, n8472, n8471, n8470;
    
    FD1S3AX prox_dat1_i0 (.D(prox_dat0[0]), .CK(dat_valid), .Q(prox_dat1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i0.GSR = "DISABLED";
    FD1S3AX prox_dat0_i0 (.D(prox_dat[0]), .CK(dat_valid), .Q(prox_dat0[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i0.GSR = "DISABLED";
    FD1P3AX prox_dat2__0__i1 (.D(prox_dat0[7]), .SP(prox_dat2_15__N_511), 
            .CK(dat_valid), .Q(prox_dat2[7]));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat2__0__i1.GSR = "DISABLED";
    CCU2D sub_3_add_2_7 (.A0(prox_dat1[5]), .B0(prox_dat0[5]), .C0(GND_net), 
          .D0(GND_net), .A1(prox_dat1[6]), .B1(prox_dat0[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8468), .COUT(n8469));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[6:27])
    defparam sub_3_add_2_7.INIT0 = 16'h5999;
    defparam sub_3_add_2_7.INIT1 = 16'h5999;
    defparam sub_3_add_2_7.INJECT1_0 = "NO";
    defparam sub_3_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_3_add_2_5 (.A0(prox_dat1[3]), .B0(prox_dat0[3]), .C0(GND_net), 
          .D0(GND_net), .A1(prox_dat1[4]), .B1(prox_dat0[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8467), .COUT(n8468));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[6:27])
    defparam sub_3_add_2_5.INIT0 = 16'h5999;
    defparam sub_3_add_2_5.INIT1 = 16'h5999;
    defparam sub_3_add_2_5.INJECT1_0 = "NO";
    defparam sub_3_add_2_5.INJECT1_1 = "NO";
    LUT4 i8674_3_lut (.A(prox_dat2[9]), .B(prox_dat2[7]), .C(prox_dat2[8]), 
         .Z(led_c_3)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i8674_3_lut.init = 16'h1515;
    LUT4 i2_1_lut (.A(prox_dat2[9]), .Z(led_c_4)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(34[2] 44[9])
    defparam i2_1_lut.init = 16'h5555;
    FD1S3AX prox_dat1_i1 (.D(prox_dat0[1]), .CK(dat_valid), .Q(prox_dat1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i1.GSR = "DISABLED";
    FD1S3AX prox_dat1_i2 (.D(prox_dat0[2]), .CK(dat_valid), .Q(prox_dat1[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i2.GSR = "DISABLED";
    FD1S3AX prox_dat1_i3 (.D(prox_dat0[3]), .CK(dat_valid), .Q(prox_dat1[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i3.GSR = "DISABLED";
    FD1S3AX prox_dat1_i4 (.D(prox_dat0[4]), .CK(dat_valid), .Q(prox_dat1[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i4.GSR = "DISABLED";
    FD1S3AX prox_dat1_i5 (.D(prox_dat0[5]), .CK(dat_valid), .Q(prox_dat1[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i5.GSR = "DISABLED";
    FD1S3AX prox_dat1_i6 (.D(prox_dat0[6]), .CK(dat_valid), .Q(prox_dat1[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i6.GSR = "DISABLED";
    FD1S3AX prox_dat1_i7 (.D(prox_dat0[7]), .CK(dat_valid), .Q(prox_dat1[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i7.GSR = "DISABLED";
    FD1S3AX prox_dat1_i8 (.D(prox_dat0[8]), .CK(dat_valid), .Q(prox_dat1[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i8.GSR = "DISABLED";
    FD1S3AX prox_dat1_i9 (.D(prox_dat0[9]), .CK(dat_valid), .Q(prox_dat1[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i9.GSR = "DISABLED";
    FD1S3AX prox_dat1_i10 (.D(prox_dat0[10]), .CK(dat_valid), .Q(prox_dat1[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i10.GSR = "DISABLED";
    FD1S3AX prox_dat1_i11 (.D(prox_dat0[11]), .CK(dat_valid), .Q(prox_dat1[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i11.GSR = "DISABLED";
    FD1S3AX prox_dat1_i12 (.D(prox_dat0[12]), .CK(dat_valid), .Q(prox_dat1[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i12.GSR = "DISABLED";
    FD1S3AX prox_dat1_i13 (.D(prox_dat0[13]), .CK(dat_valid), .Q(prox_dat1[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i13.GSR = "DISABLED";
    FD1S3AX prox_dat1_i14 (.D(prox_dat0[14]), .CK(dat_valid), .Q(prox_dat1[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i14.GSR = "DISABLED";
    FD1S3AX prox_dat1_i15 (.D(prox_dat0[15]), .CK(dat_valid), .Q(prox_dat1[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat1_i15.GSR = "DISABLED";
    FD1S3AX prox_dat0_i1 (.D(prox_dat[1]), .CK(dat_valid), .Q(prox_dat0[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i1.GSR = "DISABLED";
    FD1S3AX prox_dat0_i2 (.D(prox_dat[2]), .CK(dat_valid), .Q(prox_dat0[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i2.GSR = "DISABLED";
    FD1S3AX prox_dat0_i3 (.D(prox_dat[3]), .CK(dat_valid), .Q(prox_dat0[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i3.GSR = "DISABLED";
    FD1S3AX prox_dat0_i4 (.D(prox_dat[4]), .CK(dat_valid), .Q(prox_dat0[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i4.GSR = "DISABLED";
    FD1S3AX prox_dat0_i5 (.D(prox_dat[5]), .CK(dat_valid), .Q(prox_dat0[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i5.GSR = "DISABLED";
    FD1S3AX prox_dat0_i6 (.D(prox_dat[6]), .CK(dat_valid), .Q(prox_dat0[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i6.GSR = "DISABLED";
    FD1S3AX prox_dat0_i7 (.D(prox_dat[7]), .CK(dat_valid), .Q(prox_dat0[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i7.GSR = "DISABLED";
    FD1S3AX prox_dat0_i8 (.D(prox_dat[8]), .CK(dat_valid), .Q(prox_dat0[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i8.GSR = "DISABLED";
    FD1S3AX prox_dat0_i9 (.D(prox_dat[9]), .CK(dat_valid), .Q(prox_dat0[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i9.GSR = "DISABLED";
    FD1S3AX prox_dat0_i10 (.D(prox_dat[10]), .CK(dat_valid), .Q(prox_dat0[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i10.GSR = "DISABLED";
    FD1S3AX prox_dat0_i11 (.D(prox_dat[11]), .CK(dat_valid), .Q(prox_dat0[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i11.GSR = "DISABLED";
    FD1S3AX prox_dat0_i12 (.D(prox_dat[12]), .CK(dat_valid), .Q(prox_dat0[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i12.GSR = "DISABLED";
    FD1S3AX prox_dat0_i13 (.D(prox_dat[13]), .CK(dat_valid), .Q(prox_dat0[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i13.GSR = "DISABLED";
    FD1S3AX prox_dat0_i14 (.D(prox_dat[14]), .CK(dat_valid), .Q(prox_dat0[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i14.GSR = "DISABLED";
    FD1S3AX prox_dat0_i15 (.D(prox_dat[15]), .CK(dat_valid), .Q(prox_dat0[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=44, LSE_RLINE=49 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat0_i15.GSR = "DISABLED";
    FD1P3AX prox_dat2__0__i2 (.D(prox_dat0[8]), .SP(prox_dat2_15__N_511), 
            .CK(dat_valid), .Q(prox_dat2[8]));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat2__0__i2.GSR = "DISABLED";
    LUT4 i8723_2_lut (.A(prox_dat2[8]), .B(prox_dat2[9]), .Z(led_c_2)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8723_2_lut.init = 16'h1111;
    CCU2D sub_3_add_2_3 (.A0(prox_dat1[1]), .B0(prox_dat0[1]), .C0(GND_net), 
          .D0(GND_net), .A1(prox_dat1[2]), .B1(prox_dat0[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8466), .COUT(n8467));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[6:27])
    defparam sub_3_add_2_3.INIT0 = 16'h5999;
    defparam sub_3_add_2_3.INIT1 = 16'h5999;
    defparam sub_3_add_2_3.INJECT1_0 = "NO";
    defparam sub_3_add_2_3.INJECT1_1 = "NO";
    LUT4 i8720_2_lut_rep_113 (.A(prox_dat2[8]), .B(prox_dat2[9]), .Z(n9572)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i8720_2_lut_rep_113.init = 16'h7777;
    LUT4 i8671_2_lut_3_lut (.A(prox_dat2[8]), .B(prox_dat2[9]), .C(prox_dat2[7]), 
         .Z(led_c_7)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i8671_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i8668_2_lut_3_lut (.A(prox_dat2[7]), .B(prox_dat2[8]), .C(prox_dat2[9]), 
         .Z(led_c_5)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;
    defparam i8668_2_lut_3_lut.init = 16'h1f1f;
    LUT4 i8677_2_lut_3_lut (.A(prox_dat2[7]), .B(prox_dat2[8]), .C(prox_dat2[9]), 
         .Z(led_c_1)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i8677_2_lut_3_lut.init = 16'h0101;
    LUT4 i8687_4_lut (.A(prox_dat2_15__N_512[12]), .B(n9238), .C(prox_dat2_15__N_512[11]), 
         .D(prox_dat2_15__N_512[15]), .Z(prox_dat2_15__N_511)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[5:39])
    defparam i8687_4_lut.init = 16'h0004;
    LUT4 i8686_4_lut (.A(prox_dat2_15__N_512[9]), .B(prox_dat2_15__N_512[13]), 
         .C(prox_dat2_15__N_512[10]), .D(prox_dat2_15__N_512[14]), .Z(n9238)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[5:39])
    defparam i8686_4_lut.init = 16'h0001;
    CCU2D sub_3_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(prox_dat1[0]), .B1(prox_dat0[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n8466));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[6:27])
    defparam sub_3_add_2_1.INIT0 = 16'h0000;
    defparam sub_3_add_2_1.INIT1 = 16'h5999;
    defparam sub_3_add_2_1.INJECT1_0 = "NO";
    defparam sub_3_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_3_add_2_17 (.A0(prox_dat1[15]), .B0(prox_dat0[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8473), .S0(prox_dat2_15__N_512[15]));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[6:27])
    defparam sub_3_add_2_17.INIT0 = 16'h5999;
    defparam sub_3_add_2_17.INIT1 = 16'h0000;
    defparam sub_3_add_2_17.INJECT1_0 = "NO";
    defparam sub_3_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_3_add_2_15 (.A0(prox_dat1[13]), .B0(prox_dat0[13]), .C0(GND_net), 
          .D0(GND_net), .A1(prox_dat1[14]), .B1(prox_dat0[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8472), .COUT(n8473), .S0(prox_dat2_15__N_512[13]), 
          .S1(prox_dat2_15__N_512[14]));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[6:27])
    defparam sub_3_add_2_15.INIT0 = 16'h5999;
    defparam sub_3_add_2_15.INIT1 = 16'h5999;
    defparam sub_3_add_2_15.INJECT1_0 = "NO";
    defparam sub_3_add_2_15.INJECT1_1 = "NO";
    FD1P3AX prox_dat2__0__i3 (.D(prox_dat0[9]), .SP(prox_dat2_15__N_511), 
            .CK(dat_valid), .Q(prox_dat2[9]));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(26[8] 31[4])
    defparam prox_dat2__0__i3.GSR = "DISABLED";
    CCU2D sub_3_add_2_13 (.A0(prox_dat1[11]), .B0(prox_dat0[11]), .C0(GND_net), 
          .D0(GND_net), .A1(prox_dat1[12]), .B1(prox_dat0[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8471), .COUT(n8472), .S0(prox_dat2_15__N_512[11]), 
          .S1(prox_dat2_15__N_512[12]));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[6:27])
    defparam sub_3_add_2_13.INIT0 = 16'h5999;
    defparam sub_3_add_2_13.INIT1 = 16'h5999;
    defparam sub_3_add_2_13.INJECT1_0 = "NO";
    defparam sub_3_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_3_add_2_11 (.A0(prox_dat1[9]), .B0(prox_dat0[9]), .C0(GND_net), 
          .D0(GND_net), .A1(prox_dat1[10]), .B1(prox_dat0[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8470), .COUT(n8471), .S0(prox_dat2_15__N_512[9]), 
          .S1(prox_dat2_15__N_512[10]));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[6:27])
    defparam sub_3_add_2_11.INIT0 = 16'h5999;
    defparam sub_3_add_2_11.INIT1 = 16'h5999;
    defparam sub_3_add_2_11.INJECT1_0 = "NO";
    defparam sub_3_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_3_add_2_9 (.A0(prox_dat1[7]), .B0(prox_dat0[7]), .C0(GND_net), 
          .D0(GND_net), .A1(prox_dat1[8]), .B1(prox_dat0[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8469), .COUT(n8470));   // f:/fpga_project/baseboard/lab8_prox_detect/decoder.v(29[6:27])
    defparam sub_3_add_2_9.INIT0 = 16'h5999;
    defparam sub_3_add_2_9.INIT1 = 16'h5999;
    defparam sub_3_add_2_9.INJECT1_0 = "NO";
    defparam sub_3_add_2_9.INJECT1_1 = "NO";
    
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
// Verilog Description of module APDS_9901_Driver
//

module APDS_9901_Driver (state, clk_400khz, clk_c, clk_c_enable_119, 
            n9574, i2c_sda_N_454, data_wr, prox_dat, cnt_mode2, n9534, 
            \state_back[0] , clk_c_enable_87, GND_net, cnt, dat_valid_N_458, 
            n9567, n4754, n91, n9028, n9068, n8945, n9601, n9589, 
            \state_3__N_260[1] , n9568, n9551, dat_valid, \cnt_read[3] , 
            \cnt_read[0] , n9106, clk_c_enable_102, n4818, n9032, 
            clk_c_enable_105, \cnt_mode1[2] , n9555, n9539, n9570, 
            clk_c_enable_106, n9561, rst_n_c, n9078, n1322, n9544, 
            n4765, n8239, n9542, i2c_sda_out, n9761, n9541, n2267, 
            \state_back[1] , n9141, n37, n2383, n4662, n1374, n1375, 
            n4, n9164, n9113, n4820, n9537, n9129, i2c_scl_c, 
            n9170, n1371, n9529, n7, n9571, n9146, n9071, n9533, 
            n9698) /* synthesis syn_module_defined=1 */ ;
    output [3:0]state;
    output clk_400khz;
    input clk_c;
    input clk_c_enable_119;
    output n9574;
    output i2c_sda_N_454;
    output [7:0]data_wr;
    output [15:0]prox_dat;
    output [3:0]cnt_mode2;
    input n9534;
    output \state_back[0] ;
    input clk_c_enable_87;
    input GND_net;
    output [3:0]cnt;
    output dat_valid_N_458;
    input n9567;
    input n4754;
    output n91;
    output n9028;
    output n9068;
    output n8945;
    input n9601;
    input n9589;
    output \state_3__N_260[1] ;
    output n9568;
    output n9551;
    output dat_valid;
    output \cnt_read[3] ;
    output \cnt_read[0] ;
    input n9106;
    input clk_c_enable_102;
    output n4818;
    input n9032;
    input clk_c_enable_105;
    output \cnt_mode1[2] ;
    output n9555;
    output n9539;
    output n9570;
    input clk_c_enable_106;
    output n9561;
    input rst_n_c;
    output n9078;
    output n1322;
    output n9544;
    output n4765;
    output n8239;
    output n9542;
    input i2c_sda_out;
    input n9761;
    output n9541;
    output n2267;
    output \state_back[1] ;
    input n9141;
    input n37;
    input n2383;
    output n4662;
    input n1374;
    input n1375;
    input n4;
    output n9164;
    output n9113;
    output n4820;
    input n9537;
    input n9129;
    output i2c_scl_c;
    input n9170;
    output n1371;
    output n9529;
    input n7;
    input n9571;
    output n9146;
    input n9071;
    input n9533;
    input n9698;
    
    wire clk_400khz /* synthesis is_clock=1, SET_AS_NETWORK=\u1/clk_400khz */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(48[10:20])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(20[10:13])
    wire dat_valid /* synthesis is_clock=1, SET_AS_NETWORK=dat_valid */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/prox_detect.v(29[6:15])
    wire [3:0]cnt_start;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[49:58])
    
    wire n9573, i2c_sda_N_477, n9197, clk_400khz_N_459;
    wire [23:0]cnt_delay;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(65[13:22])
    
    wire n5498;
    wire [23:0]n480;
    wire [3:0]n3;
    wire [3:0]n21;
    
    wire i2c_sda_N_464, n4_adj_528, n8556, n6;
    wire [7:0]dat_h;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(64[66:71])
    
    wire clk_c_enable_40;
    wire [7:0]data_r;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(64[51:57])
    wire [7:0]dat_l;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(64[59:64])
    
    wire clk_c_enable_47, clk_c_enable_54, n2, clk_c_enable_69, n9366, 
        i2c_scl_N_413, n9367, n31, clk_c_enable_101, clk_c_enable_104, 
        n9565, n8482, n8483, n8481, n9528, clk_c_enable_88;
    wire [3:0]cnt_main;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[17:25])
    wire [3:0]cnt_main_3__N_304;
    
    wire clk_c_enable_89;
    wire [3:0]cnt_read;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[71:79])
    
    wire n8, n9759, n9548;
    wire [7:0]reg_addr;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(64[31:39])
    wire [7:0]reg_data;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(64[41:49])
    wire [3:0]cnt_mode1;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[27:36])
    wire [7:0]n1690;
    
    wire n8480, n9581, n9387, n8557, n9009, n9521, n9070, n9184, 
        n9185, n9186;
    wire [3:0]cnt_write;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[60:69])
    
    wire ack_flag, n9549, n6_adj_529, clk_c_enable_112, n9380, n9379, 
        n9569, n4702, n9543, n478, n9547, n9550, n9591, clk_400khz_enable_1, 
        n9590, n9594, n9593, n9597, n9062, n9525, clk_c_enable_95, 
        n1467, n9060, n9596, n9081, n9603, n6_adj_530, n5501, 
        n9602;
    wire [3:0]n142;
    
    wire n8479, n9052, n9535, clk_c_enable_73, n9519, n9518, n9758, 
        n9552, i2c_sda_N_492, n2177, n9530, clk_c_enable_21, clk_c_enable_116, 
        n9583, n9579;
    wire [3:0]cnt_stop;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[81:89])
    
    wire n78, n9036, n9553, n1480, n80, n9046, n76, n9554, n9760, 
        n9580;
    wire [9:0]cnt_400khz;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(49[14:24])
    
    wire n9578, n6575;
    wire [3:0]n229;
    
    wire n8478, n6098, n6980, n9556, n8682, n1, n6_adj_531, n7_c, 
        n1709, n39, n4_adj_532, n9162;
    wire [3:0]cnt_c;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[12:15])
    
    wire n45, n5513, n9507, n9546, n9198, n8665, n33, clk_400khz_enable_2, 
        clk_c_enable_94, n8477, n9516, n9514, n9517, clk_c_enable_109, 
        n60, n9576, n35, n9499, n9498, n9500, n13, n8526, n22_adj_533, 
        n5255, n9003, n9575, n8271, n9084, n9371, n4_adj_534, 
        n9018, n9373, n9372, n9374;
    wire [7:0]n88;
    
    wire clk_c_enable_49, n9522, n5356, n9388, n9592, n2_adj_535, 
        n102, n8622, n8476, clk_c_enable_107, n7_adj_536, n7_adj_537, 
        n9562, n1_adj_538, n27, n18, n9449, clk_c_enable_118, n7_adj_539, 
        n5491, n5452, n9564, n9368, n9369, n8678, n9048, n9047, 
        clk_c_enable_103, n7_adj_540, n7_adj_541, n9076, n9075, n9360, 
        n9566, n8475, i2c_sda_N_455, clk_400khz_enable_3, n8474, n9595, 
        n27_adj_542, n9447, n4509, clk_400khz_enable_4, n9545, n9069, 
        n7_adj_543, i2c_sda_N_486, n9199, n9370, clk_c_enable_90, 
        n8507, clk_c_enable_91, clk_c_enable_92, n9526, n9448, clk_c_enable_93, 
        clk_c_enable_96, n7_adj_545, n16, n1_adj_546;
    wire [3:0]n285;
    
    wire n8563, n8496, n8495, ack;
    wire [7:0]n1677;
    
    wire n9515, n7_adj_547, n9582, n8494, n8493, n8492, clk_c_enable_108, 
        n8491, n8490, n8489, n8488, n8_adj_549, n8487, n8486, 
        n8485, n8484;
    
    LUT4 i8642_3_lut_4_lut (.A(cnt_start[2]), .B(n9573), .C(state[0]), 
         .D(i2c_sda_N_477), .Z(n9197)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i8642_3_lut_4_lut.init = 16'hf101;
    FD1S3AX clk_400khz_251 (.D(clk_400khz_N_459), .CK(clk_c), .Q(clk_400khz)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(54[12] 59[6])
    defparam clk_400khz_251.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i18 (.D(n480[18]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i17 (.D(n480[17]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i16 (.D(n480[16]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1S3IX cnt_400khz_1343_1344__i0 (.D(n21[0]), .CK(clk_c), .CD(n9574), 
            .Q(n3[0])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(58[18:35])
    defparam cnt_400khz_1343_1344__i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i15 (.D(n480[15]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    FD1S3AY sda_254 (.D(i2c_sda_N_464), .CK(clk_400khz), .Q(i2c_sda_N_454)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam sda_254.GSR = "ENABLED";
    PFUMX state_3__I_0_i6 (.BLUT(n4_adj_528), .ALUT(n8556), .C0(state[1]), 
          .Z(n6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;
    FD1P3AX dat_h_i0_i0 (.D(data_r[0]), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(dat_h[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_h_i0_i0.GSR = "DISABLED";
    FD1P3AX dat_l_i0_i0 (.D(data_r[0]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(dat_l[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_l_i0_i0.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i0 (.D(n2), .SP(clk_c_enable_54), .CK(clk_c), .Q(data_wr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_wr_i0_i0.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i0 (.D(dat_l[0]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i0.GSR = "DISABLED";
    PFUMX i8747 (.BLUT(n9366), .ALUT(i2c_scl_N_413), .C0(state[0]), .Z(n9367));
    LUT4 i1_4_lut_4_lut (.A(cnt_mode2[3]), .B(cnt_mode2[0]), .C(cnt_mode2[1]), 
         .D(cnt_mode2[2]), .Z(n31)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0114;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(state[2]), .B(state[0]), .C(state[1]), 
         .D(n9534), .Z(clk_c_enable_101)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h0081;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut_adj_16 (.A(state[2]), .B(state[0]), 
         .C(state[1]), .D(n9534), .Z(clk_c_enable_104)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut_4_lut_adj_16.init = 16'h0009;
    FD1P3AX state_back_i0_i0 (.D(n9565), .SP(clk_c_enable_87), .CK(clk_c), 
            .Q(\state_back[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    CCU2D add_156_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8482), .COUT(n8483), .S0(n480[17]), .S1(n480[18]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_19.INIT0 = 16'h5aaa;
    defparam add_156_19.INIT1 = 16'h5aaa;
    defparam add_156_19.INJECT1_0 = "NO";
    defparam add_156_19.INJECT1_1 = "NO";
    CCU2D add_156_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8481), .COUT(n8482), .S0(n480[15]), .S1(n480[16]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_17.INIT0 = 16'h5aaa;
    defparam add_156_17.INIT1 = 16'h5aaa;
    defparam add_156_17.INJECT1_0 = "NO";
    defparam add_156_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt[2]), .B(cnt[1]), .C(n9528), .D(cnt[0]), 
         .Z(clk_c_enable_88)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i10_3_lut_4_lut_4_lut (.A(cnt_main[2]), .B(dat_valid_N_458), .C(cnt_main[0]), 
         .D(cnt_main[1]), .Z(cnt_main_3__N_304[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(26[15:24])
    defparam i10_3_lut_4_lut_4_lut.init = 16'h8ff0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_17 (.A(cnt[2]), .B(cnt[1]), .C(n9528), 
         .D(cnt[0]), .Z(clk_c_enable_89)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_17.init = 16'h1000;
    LUT4 i3_4_lut (.A(n9567), .B(n4754), .C(cnt_read[2]), .D(cnt_read[1]), 
         .Z(n8)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(state[1]), .B(cnt_mode2[0]), .C(cnt_mode2[2]), 
         .D(cnt_mode2[3]), .Z(n9759)) /* synthesis lut_function=(!((B (C+(D))+!B ((D)+!C))+!A)) */ ;
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'h0028;
    LUT4 i8563_2_lut_rep_89 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n9548)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8563_2_lut_rep_89.init = 16'h8888;
    FD1P3IX cnt_delay_i0_i14 (.D(n480[14]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i13 (.D(n480[13]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    LUT4 mux_1242_i1_4_lut (.A(reg_addr[0]), .B(reg_data[0]), .C(cnt_mode1[0]), 
         .D(cnt_mode1[1]), .Z(n1690[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam mux_1242_i1_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_18 (.A(cnt_main[1]), .B(cnt_main[2]), 
         .C(dat_valid_N_458), .D(cnt_main[0]), .Z(n91)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_18.init = 16'h0070;
    CCU2D add_156_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8480), .COUT(n8481), .S0(n480[13]), .S1(n480[14]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_15.INIT0 = 16'h5aaa;
    defparam add_156_15.INIT1 = 16'h5aaa;
    defparam add_156_15.INJECT1_0 = "NO";
    defparam add_156_15.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_start[2]), .B(cnt_start[1]), .C(cnt_start[3]), 
         .D(cnt_start[0]), .Z(n9028)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0507;
    LUT4 i1_2_lut_3_lut_4_lut_else_4_lut (.A(cnt_mode2[0]), .B(cnt_mode2[1]), 
         .C(state[1]), .Z(n9581)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_else_4_lut.init = 16'h6060;
    LUT4 cnt_mode1_1__bdd_4_lut (.A(cnt_mode1[1]), .B(reg_addr[4]), .C(reg_data[5]), 
         .D(cnt_mode1[0]), .Z(n9387)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (B+(D))) */ ;
    defparam cnt_mode1_1__bdd_4_lut.init = 16'hf5cc;
    LUT4 i8712_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[2]), .C(dat_valid_N_458), 
         .D(cnt_main[0]), .Z(n8557)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i8712_3_lut_4_lut.init = 16'h0700;
    LUT4 reg_addr_2__bdd_4_lut (.A(reg_addr[2]), .B(n9009), .C(n1690[2]), 
         .D(state[0]), .Z(n9521)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam reg_addr_2__bdd_4_lut.init = 16'h88f0;
    LUT4 i1_2_lut (.A(cnt[0]), .B(n9068), .Z(n9070)) /* synthesis lut_function=(!(A+!(B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1_2_lut.init = 16'h4444;
    PFUMX i8609 (.BLUT(n9184), .ALUT(n9185), .C0(state[1]), .Z(n9186));
    LUT4 i1_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[2]), .C(cnt_main[0]), 
         .D(dat_valid_N_458), .Z(cnt_main_3__N_304[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(C)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8f0f;
    LUT4 i5_4_lut_4_lut (.A(cnt_write[0]), .B(ack_flag), .C(cnt_write[3]), 
         .D(n9549), .Z(n8945)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(158[32:48])
    defparam i5_4_lut_4_lut.init = 16'h0d0f;
    LUT4 i1_4_lut_4_lut_adj_19 (.A(cnt_write[0]), .B(cnt[2]), .C(n9601), 
         .D(n9589), .Z(n6_adj_529)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(158[32:48])
    defparam i1_4_lut_4_lut_adj_19.init = 16'h5140;
    FD1P3AX cnt_i0_i0 (.D(n9070), .SP(clk_c_enable_112), .CK(clk_c), .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_90 (.A(cnt_write[2]), .B(cnt_write[1]), .Z(n9549)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_90.init = 16'h8888;
    PFUMX i8760 (.BLUT(n9380), .ALUT(n9379), .C0(cnt_mode2[0]), .Z(\state_3__N_260[1] ));
    LUT4 i3_3_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(n9569), 
         .D(n9568), .Z(n4702)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfff7;
    LUT4 i4951_3_lut_4_lut_4_lut (.A(n9543), .B(n478), .C(state[3]), .D(n9547), 
         .Z(n5498)) /* synthesis lut_function=(!(A+(B (D)+!B (C+(D))))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i4951_3_lut_4_lut_4_lut.init = 16'h0045;
    LUT4 i8591_2_lut_rep_91 (.A(cnt_start[2]), .B(cnt_start[1]), .Z(n9550)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8591_2_lut_rep_91.init = 16'h8888;
    LUT4 n1681_bdd_4_lut_then_3_lut (.A(cnt_mode2[0]), .B(cnt_mode2[2]), 
         .C(cnt_mode2[1]), .Z(n9591)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam n1681_bdd_4_lut_then_3_lut.init = 16'hcece;
    LUT4 i6304_2_lut_rep_92 (.A(state[2]), .B(state[1]), .Z(n9551)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6304_2_lut_rep_92.init = 16'heeee;
    FD1P3AX dat_valid_273 (.D(dat_valid_N_458), .SP(clk_400khz_enable_1), 
            .CK(clk_400khz), .Q(dat_valid));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_valid_273.GSR = "DISABLED";
    LUT4 n1681_bdd_4_lut_else_3_lut (.A(cnt_mode1[1]), .B(cnt_mode1[0]), 
         .C(reg_data[4]), .Z(n9590)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam n1681_bdd_4_lut_else_3_lut.init = 16'hc4c4;
    LUT4 i3_4_lut_then_4_lut (.A(cnt_mode2[0]), .B(state[2]), .C(cnt_mode2[3]), 
         .D(cnt_mode2[1]), .Z(n9594)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut_then_4_lut.init = 16'hfeff;
    LUT4 i3_4_lut_else_4_lut (.A(cnt_mode2[0]), .B(state[2]), .C(cnt_mode2[3]), 
         .D(cnt_mode2[1]), .Z(n9593)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_4_lut_else_4_lut.init = 16'hffef;
    LUT4 i8572_4_lut_4_lut_then_4_lut (.A(\cnt_read[3] ), .B(cnt_read[1]), 
         .C(\cnt_read[0] ), .D(cnt_read[2]), .Z(n9597)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i8572_4_lut_4_lut_then_4_lut.init = 16'hbfff;
    LUT4 i8690_4_lut (.A(n9062), .B(n9106), .C(n9525), .D(state[3]), 
         .Z(clk_c_enable_95)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i8690_4_lut.init = 16'h0311;
    LUT4 i3_4_lut_adj_20 (.A(state[0]), .B(n1467), .C(state[2]), .D(n9060), 
         .Z(n9062)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_20.init = 16'h0800;
    LUT4 i8572_4_lut_4_lut_else_4_lut (.A(cnt_start[3]), .B(cnt_start[2]), 
         .C(cnt_start[0]), .D(cnt_start[1]), .Z(n9596)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i8572_4_lut_4_lut_else_4_lut.init = 16'hffbf;
    LUT4 i1_2_lut_rep_84_3_lut (.A(state[2]), .B(state[1]), .C(state[0]), 
         .Z(n9543)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_84_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(state[2]), .B(state[1]), .C(n478), 
         .D(state[0]), .Z(n9525)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'hffef;
    LUT4 i4_4_lut_4_lut (.A(cnt_write[1]), .B(n6_adj_529), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(i2c_sda_N_477)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(170[8:12])
    defparam i4_4_lut_4_lut.init = 16'h0004;
    LUT4 i2c_scl_N_413_bdd_3_lut_8772 (.A(\cnt_read[0] ), .B(cnt_read[2]), 
         .C(cnt_read[1]), .Z(n9366)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;
    defparam i2c_scl_N_413_bdd_3_lut_8772.init = 16'h4242;
    LUT4 i1_2_lut_4_lut_then_4_lut (.A(cnt_main[1]), .B(dat_valid_N_458), 
         .C(n9081), .D(cnt_main[0]), .Z(n9603)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B ((D)+!C)+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(26[15:24])
    defparam i1_2_lut_4_lut_then_4_lut.init = 16'h1070;
    FD1P3IX cnt_delay_i0_i12 (.D(n480[12]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i11 (.D(n480[11]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i10 (.D(n480[10]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    LUT4 i4935_4_lut (.A(clk_c_enable_102), .B(cnt_mode1[3]), .C(n6_adj_530), 
         .D(state[1]), .Z(n5501)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i4935_4_lut.init = 16'ha8aa;
    FD1P3IX cnt_delay_i0_i9 (.D(n480[9]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_else_4_lut (.A(dat_valid_N_458), .B(n9081), .C(cnt_main[0]), 
         .Z(n9602)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(26[15:24])
    defparam i1_2_lut_4_lut_else_4_lut.init = 16'h4c4c;
    LUT4 i1428_2_lut (.A(cnt_mode1[1]), .B(cnt_mode1[0]), .Z(n142[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(108[25:41])
    defparam i1428_2_lut.init = 16'h6666;
    CCU2D add_156_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8479), .COUT(n8480), .S0(n480[11]), .S1(n480[12]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_13.INIT0 = 16'h5aaa;
    defparam add_156_13.INIT1 = 16'h5aaa;
    defparam add_156_13.INJECT1_0 = "NO";
    defparam add_156_13.INJECT1_1 = "NO";
    LUT4 i8716_2_lut_2_lut_4_lut (.A(n9052), .B(n9547), .C(n9551), .D(n9535), 
         .Z(clk_c_enable_73)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i8716_2_lut_2_lut_4_lut.init = 16'h0002;
    PFUMX i8835 (.BLUT(n9519), .ALUT(n9518), .C0(state[1]), .Z(n4818));
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(state[1]), .B(cnt_mode2[2]), .C(cnt_mode2[3]), 
         .Z(n9758)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'h0808;
    FD1P3IX cnt_delay_i0_i8 (.D(n480[8]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    LUT4 i3241_2_lut_rep_93 (.A(state[0]), .B(state[1]), .Z(n9552)) /* synthesis lut_function=(!((B)+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(76[4] 216[11])
    defparam i3241_2_lut_rep_93.init = 16'h2222;
    LUT4 i2_3_lut (.A(state[3]), .B(n6), .C(state[2]), .Z(i2c_sda_N_492)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_3_lut.init = 16'hefef;
    FD1P3IX cnt_delay_i0_i7 (.D(n480[7]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i6 (.D(n480[6]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i5 (.D(n480[5]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_71_4_lut (.A(state[0]), .B(state[1]), .C(n2177), 
         .D(state[2]), .Z(n9530)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(76[4] 216[11])
    defparam i2_3_lut_rep_71_4_lut.init = 16'h0200;
    FD1P3AX state_i0_i3 (.D(n9032), .SP(clk_c_enable_21), .CK(clk_c), 
            .Q(state[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam state_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_mode2_i0_i1 (.D(n9583), .SP(clk_c_enable_116), .CK(clk_c), 
            .Q(cnt_mode2[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_mode2_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_then_3_lut (.A(state[1]), .B(cnt_mode2[1]), .C(cnt_mode2[2]), 
         .Z(n9579)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_4_lut_then_3_lut.init = 16'h0202;
    LUT4 i2_4_lut (.A(cnt_stop[0]), .B(n9565), .C(n78), .D(state[2]), 
         .Z(n9036)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_94 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n9553)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_94.init = 16'h8888;
    FD1P3IX cnt_delay_i0_i4 (.D(n480[4]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i3 (.D(n480[3]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i2 (.D(n480[2]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    LUT4 i1121_1_lut (.A(cnt_mode1[0]), .Z(n1480)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1121_1_lut.init = 16'h5555;
    LUT4 i88_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n80)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i88_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_3_lut_4_lut_adj_21 (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .D(n9530), .Z(n9046)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(C (D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_3_lut_4_lut_adj_21.init = 16'h7800;
    LUT4 i1_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(n76)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_95 (.A(cnt_main[2]), .B(dat_valid_N_458), .Z(n9554)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(26[15:24])
    defparam i1_2_lut_rep_95.init = 16'h8888;
    FD1P3AX cnt_mode2_i0_i2 (.D(n9760), .SP(clk_c_enable_116), .CK(clk_c), 
            .Q(cnt_mode2[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_mode2_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_mode2_i0_i3 (.D(n9580), .SP(clk_c_enable_116), .CK(clk_c), 
            .Q(cnt_mode2[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_mode2_i0_i3.GSR = "ENABLED";
    FD1S3IX cnt_400khz_1343_1344__i1 (.D(n21[1]), .CK(clk_c), .CD(n9574), 
            .Q(cnt_400khz[1])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(58[18:35])
    defparam cnt_400khz_1343_1344__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_else_3_lut (.A(state[1]), .B(cnt_mode2[1]), .C(cnt_mode2[2]), 
         .D(cnt_mode2[0]), .Z(n9578)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_else_3_lut.init = 16'h8000;
    FD1P3IX cnt_delay_i0_i1 (.D(n480[1]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_start_i0_i3 (.D(n229[3]), .SP(clk_c_enable_105), .CD(n6575), 
            .CK(clk_c), .Q(cnt_start[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_start_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_start_i0_i2 (.D(n229[2]), .SP(clk_c_enable_105), .CD(n6575), 
            .CK(clk_c), .Q(cnt_start[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_start_i0_i2.GSR = "ENABLED";
    LUT4 i6371_2_lut_rep_96 (.A(cnt_mode1[3]), .B(\cnt_mode1[2] ), .Z(n9555)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6371_2_lut_rep_96.init = 16'heeee;
    CCU2D add_156_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8478), .COUT(n8479), .S0(n480[9]), .S1(n480[10]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_11.INIT0 = 16'h5aaa;
    defparam add_156_11.INIT1 = 16'h5aaa;
    defparam add_156_11.INJECT1_0 = "NO";
    defparam add_156_11.INJECT1_1 = "NO";
    FD1P3IX cnt_start_i0_i1 (.D(n229[1]), .SP(clk_c_enable_105), .CD(n6575), 
            .CK(clk_c), .Q(cnt_start[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_start_i0_i1.GSR = "ENABLED";
    LUT4 i8739_2_lut (.A(\cnt_read[0] ), .B(n6098), .Z(n6980)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8739_2_lut.init = 16'h1111;
    LUT4 i1732_2_lut_rep_97 (.A(\cnt_read[0] ), .B(cnt_read[1]), .Z(n9556)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1732_2_lut_rep_97.init = 16'h8888;
    LUT4 i8733_4_lut (.A(cnt_write[0]), .B(n9552), .C(n2177), .D(state[2]), 
         .Z(n8682)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i8733_4_lut.init = 16'h0400;
    FD1S3IX cnt_400khz_1343_1344__i2 (.D(n21[2]), .CK(clk_c), .CD(n9574), 
            .Q(cnt_400khz[2])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(58[18:35])
    defparam cnt_400khz_1343_1344__i2.GSR = "ENABLED";
    FD1S3IX cnt_400khz_1343_1344__i3 (.D(n21[3]), .CK(clk_c), .CD(n9574), 
            .Q(cnt_400khz[3])) /* synthesis syn_use_carry_chain=1 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(58[18:35])
    defparam cnt_400khz_1343_1344__i3.GSR = "ENABLED";
    LUT4 i1688_1_lut (.A(cnt_start[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(144[8:12])
    defparam i1688_1_lut.init = 16'h5555;
    LUT4 i1582_2_lut_rep_80_3_lut (.A(\cnt_read[0] ), .B(cnt_read[1]), .C(cnt_read[2]), 
         .Z(n9539)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1582_2_lut_rep_80_3_lut.init = 16'h8080;
    LUT4 i1695_2_lut_3_lut (.A(\cnt_read[0] ), .B(cnt_read[1]), .C(cnt_read[2]), 
         .Z(n6_adj_531)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1695_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i6387_3_lut_4_lut (.A(\cnt_read[0] ), .B(cnt_read[1]), .C(n6098), 
         .D(cnt_read[2]), .Z(n7_c)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i6387_3_lut_4_lut.init = 16'h0708;
    LUT4 i1_2_lut_3_lut_4_lut_adj_22 (.A(cnt_mode1[0]), .B(cnt_mode1[1]), 
         .C(\cnt_mode1[2] ), .D(cnt_mode1[3]), .Z(n1709)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_22.init = 16'h000e;
    LUT4 i2_4_lut_adj_23 (.A(n39), .B(n9570), .C(n9534), .D(n4_adj_532), 
         .Z(n6575)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;
    defparam i2_4_lut_adj_23.init = 16'h0302;
    LUT4 i1736_2_lut_3_lut (.A(cnt_mode1[0]), .B(cnt_mode1[1]), .C(\cnt_mode1[2] ), 
         .Z(n6_adj_530)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1736_2_lut_3_lut.init = 16'he0e0;
    LUT4 i8587_3_lut_4_lut (.A(cnt_mode1[0]), .B(cnt_mode1[1]), .C(state[2]), 
         .D(state[0]), .Z(n9162)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8587_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_24 (.A(cnt[1]), .B(cnt[2]), .C(cnt_c[3]), 
         .D(cnt[0]), .Z(n45)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_3_lut_4_lut_adj_24.init = 16'hf8f0;
    FD1P3IX cnt_main_i0_i2 (.D(cnt_main_3__N_304[2]), .SP(clk_c_enable_106), 
            .CD(n5513), .CK(clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    PFUMX i8830 (.BLUT(n9507), .ALUT(n9546), .C0(state[0]), .Z(n9198));
    LUT4 i1_3_lut (.A(state[3]), .B(n8665), .C(n33), .Z(clk_400khz_enable_2)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h4040;
    FD1P3IX cnt_main_i0_i1 (.D(cnt_main_3__N_304[1]), .SP(clk_c_enable_106), 
            .CD(n5513), .CK(clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_25 (.A(cnt[1]), .B(cnt[2]), .C(n9528), 
         .D(cnt[0]), .Z(clk_c_enable_94)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_3_lut_4_lut_adj_25.init = 16'h0080;
    CCU2D add_156_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8477), .COUT(n8478), .S0(n480[7]), .S1(n480[8]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_9.INIT0 = 16'h5aaa;
    defparam add_156_9.INIT1 = 16'h5aaa;
    defparam add_156_9.INJECT1_0 = "NO";
    defparam add_156_9.INJECT1_1 = "NO";
    PFUMX i8833 (.BLUT(n9516), .ALUT(n9514), .C0(state[2]), .Z(n9517));
    LUT4 i1_2_lut_3_lut_4_lut_adj_26 (.A(cnt[1]), .B(cnt[2]), .C(n9528), 
         .D(cnt[0]), .Z(clk_c_enable_109)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_3_lut_4_lut_adj_26.init = 16'h8000;
    LUT4 i1_4_lut_then_4_lut (.A(n9534), .B(state[0]), .C(state[2]), .D(n60), 
         .Z(n9576)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h1000;
    LUT4 i3_4_lut_adj_27 (.A(i2c_scl_N_413), .B(state[2]), .C(state[0]), 
         .D(state[1]), .Z(n8665)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i3_4_lut_adj_27.init = 16'hbfff;
    LUT4 i1_4_lut (.A(state[2]), .B(n35), .C(n9570), .D(n9573), .Z(n33)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(C)) */ ;
    defparam i1_4_lut.init = 16'h8d8f;
    PFUMX i8826 (.BLUT(n9499), .ALUT(n9498), .C0(state[1]), .Z(n9500));
    LUT4 i4815_2_lut_3_lut (.A(cnt_mode2[0]), .B(cnt_mode2[1]), .C(cnt_mode2[2]), 
         .Z(n13)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(124[7] 137[14])
    defparam i4815_2_lut_3_lut.init = 16'h1e1e;
    LUT4 i1_4_lut_adj_28 (.A(n8526), .B(state[1]), .C(state[0]), .D(n22_adj_533), 
         .Z(n35)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_28.init = 16'heeea;
    LUT4 i2_4_lut_adj_29 (.A(cnt_write[3]), .B(cnt_write[0]), .C(state[0]), 
         .D(cnt_write[2]), .Z(n8526)) /* synthesis lut_function=(!(A+!(B (C)+!B !((D)+!C)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i2_4_lut_adj_29.init = 16'h4050;
    LUT4 i1_4_lut_adj_30 (.A(\cnt_read[3] ), .B(\cnt_read[0] ), .C(cnt_read[2]), 
         .D(cnt_read[1]), .Z(n22_adj_533)) /* synthesis lut_function=(!(A+!(B+(C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_adj_30.init = 16'h5445;
    LUT4 i2_3_lut_4_lut (.A(cnt_mode2[0]), .B(cnt_mode2[1]), .C(state[0]), 
         .D(cnt_mode2[2]), .Z(n5255)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i8728_3_lut_4_lut (.A(cnt_mode2[2]), .B(cnt_mode2[1]), .C(cnt_mode2[3]), 
         .D(n9003), .Z(clk_c_enable_47)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i8728_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_4_lut_else_4_lut (.A(n9534), .B(state[0]), .C(n2177), .D(state[2]), 
         .Z(n9575)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(D)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h4011;
    LUT4 i1_2_lut_3_lut_adj_31 (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n8271)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_31.init = 16'h0e0e;
    LUT4 i1_4_lut_adj_32 (.A(state[2]), .B(n9084), .C(n9371), .D(n4_adj_534), 
         .Z(n9018)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1_4_lut_adj_32.init = 16'hfdf5;
    PFUMX i8754 (.BLUT(n9373), .ALUT(n9372), .C0(state[0]), .Z(n9374));
    LUT4 i53_3_lut_3_lut (.A(dat_valid_N_458), .B(cnt_main[2]), .C(cnt_main[1]), 
         .Z(n88[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i53_3_lut_3_lut.init = 16'h3434;
    FD1P3AX dat_h_i0_i1 (.D(data_r[1]), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(dat_h[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_h_i0_i1.GSR = "DISABLED";
    FD1P3AX dat_h_i0_i2 (.D(data_r[2]), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(dat_h[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_h_i0_i2.GSR = "DISABLED";
    FD1P3AX dat_h_i0_i3 (.D(data_r[3]), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(dat_h[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_h_i0_i3.GSR = "DISABLED";
    FD1P3AX dat_h_i0_i4 (.D(data_r[4]), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(dat_h[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_h_i0_i4.GSR = "DISABLED";
    FD1P3AX dat_h_i0_i5 (.D(data_r[5]), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(dat_h[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_h_i0_i5.GSR = "DISABLED";
    FD1P3AX dat_h_i0_i6 (.D(data_r[6]), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(dat_h[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_h_i0_i6.GSR = "DISABLED";
    FD1P3AX dat_h_i0_i7 (.D(data_r[7]), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(dat_h[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_h_i0_i7.GSR = "DISABLED";
    FD1P3AX dat_l_i0_i1 (.D(data_r[1]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(dat_l[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_l_i0_i1.GSR = "DISABLED";
    FD1P3AX dat_l_i0_i2 (.D(data_r[2]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(dat_l[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_l_i0_i2.GSR = "DISABLED";
    FD1P3AX dat_l_i0_i3 (.D(data_r[3]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(dat_l[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_l_i0_i3.GSR = "DISABLED";
    FD1P3AX dat_l_i0_i4 (.D(data_r[4]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(dat_l[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_l_i0_i4.GSR = "DISABLED";
    FD1P3AX dat_l_i0_i5 (.D(data_r[5]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(dat_l[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_l_i0_i5.GSR = "DISABLED";
    FD1P3AX dat_l_i0_i6 (.D(data_r[6]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(dat_l[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_l_i0_i6.GSR = "DISABLED";
    FD1P3AX dat_l_i0_i7 (.D(data_r[7]), .SP(clk_c_enable_47), .CK(clk_c), 
            .Q(dat_l[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam dat_l_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i1 (.D(n9374), .SP(clk_c_enable_49), .CK(clk_c), 
            .Q(data_wr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_wr_i0_i1.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i2 (.D(n9521), .SP(clk_c_enable_49), .CK(clk_c), 
            .Q(data_wr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_wr_i0_i2.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i3 (.D(n9522), .SP(clk_c_enable_54), .CK(clk_c), 
            .Q(data_wr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_wr_i0_i3.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i4 (.D(n5356), .SP(clk_c_enable_54), .CK(clk_c), 
            .Q(data_wr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_wr_i0_i4.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i5 (.D(n9388), .SP(clk_c_enable_54), .CK(clk_c), 
            .Q(data_wr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_wr_i0_i5.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n9592), .SP(clk_c_enable_54), .CK(clk_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i7 (.D(n2_adj_535), .SP(clk_c_enable_54), .CK(clk_c), 
            .Q(data_wr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_wr_i0_i7.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i1 (.D(dat_l[1]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i1.GSR = "DISABLED";
    LUT4 i6053_3_lut_4_lut (.A(cnt_start[1]), .B(cnt_start[0]), .C(cnt_start[2]), 
         .D(cnt_start[3]), .Z(n229[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i6053_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX prox_dat_i0_i2 (.D(dat_l[2]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i2.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i3 (.D(dat_l[3]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i3.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i4 (.D(dat_l[4]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i4.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i5 (.D(dat_l[5]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i5.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i6 (.D(dat_l[6]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i6.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i7 (.D(dat_l[7]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i7.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i8 (.D(dat_h[0]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i8.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i9 (.D(dat_h[1]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i9.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i10 (.D(dat_h[2]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i10.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i11 (.D(dat_h[3]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i11.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i12 (.D(dat_h[4]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i12.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i13 (.D(dat_h[5]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i13.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i14 (.D(dat_h[6]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i14.GSR = "DISABLED";
    FD1P3AX prox_dat_i0_i15 (.D(dat_h[7]), .SP(clk_c_enable_69), .CK(clk_c), 
            .Q(prox_dat[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam prox_dat_i0_i15.GSR = "DISABLED";
    FD1P3AX reg_addr_i0_i1 (.D(n88[1]), .SP(clk_c_enable_73), .CK(clk_c), 
            .Q(reg_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam reg_addr_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_33 (.A(state[1]), .B(state[0]), .Z(n4_adj_534)) /* synthesis lut_function=(!((B)+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1_2_lut_adj_33.init = 16'h2222;
    FD1P3AX reg_addr_i0_i2 (.D(n102), .SP(clk_c_enable_73), .CK(clk_c), 
            .Q(reg_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam reg_addr_i0_i2.GSR = "DISABLED";
    FD1P3AX reg_addr_i0_i3 (.D(n8622), .SP(clk_c_enable_73), .CK(clk_c), 
            .Q(reg_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam reg_addr_i0_i3.GSR = "DISABLED";
    FD1P3AX reg_addr_i0_i4 (.D(n91), .SP(clk_c_enable_73), .CK(clk_c), 
            .Q(reg_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam reg_addr_i0_i4.GSR = "DISABLED";
    LUT4 i8714_2_lut_3_lut_4_lut (.A(n9547), .B(n9561), .C(state[0]), 
         .D(state[1]), .Z(n5513)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i8714_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_34 (.A(cnt_read[2]), .B(cnt_read[1]), .Z(n9084)) /* synthesis lut_function=(!((B)+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1_2_lut_adj_34.init = 16'h2222;
    CCU2D add_156_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8476), .COUT(n8477), .S0(n480[5]), .S1(n480[6]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_7.INIT0 = 16'h5aaa;
    defparam add_156_7.INIT1 = 16'h5aaa;
    defparam add_156_7.INJECT1_0 = "NO";
    defparam add_156_7.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_35 (.A(cnt_start[2]), .B(cnt_start[1]), .C(cnt_start[0]), 
         .Z(n39)) /* synthesis lut_function=(A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[49:58])
    defparam i1_3_lut_adj_35.init = 16'ha8a8;
    FD1P3AX reg_data_i0_i3 (.D(n7_adj_536), .SP(clk_c_enable_107), .CK(clk_c), 
            .Q(reg_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam reg_data_i0_i3.GSR = "DISABLED";
    FD1P3AX reg_data_i0_i4 (.D(n8271), .SP(clk_c_enable_107), .CK(clk_c), 
            .Q(reg_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam reg_data_i0_i4.GSR = "DISABLED";
    FD1P3AX reg_data_i0_i5 (.D(n7_adj_537), .SP(clk_c_enable_107), .CK(clk_c), 
            .Q(reg_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam reg_data_i0_i5.GSR = "DISABLED";
    LUT4 i25_2_lut_3_lut (.A(cnt_start[1]), .B(cnt_start[0]), .C(cnt_start[2]), 
         .Z(n229[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i25_2_lut_3_lut.init = 16'h7878;
    LUT4 i2330_2_lut_rep_102 (.A(state[2]), .B(state[3]), .Z(n9561)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(76[4] 216[11])
    defparam i2330_2_lut_rep_102.init = 16'heeee;
    LUT4 i4_3_lut_rep_69 (.A(state[2]), .B(n8), .C(state[0]), .Z(n9528)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i4_3_lut_rep_69.init = 16'h0808;
    LUT4 i2_3_lut_adj_36 (.A(state[3]), .B(state[0]), .C(rst_n_c), .Z(n9052)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_adj_36.init = 16'h4040;
    LUT4 i8570_2_lut_rep_103 (.A(cnt_stop[1]), .B(cnt_stop[3]), .Z(n9562)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8570_2_lut_rep_103.init = 16'heeee;
    FD1P3AX cnt_main_i0_i3 (.D(n1_adj_538), .SP(clk_c_enable_106), .CK(clk_c), 
            .Q(dat_valid_N_458)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    LUT4 i8659_4_lut_4_lut (.A(n9547), .B(n27), .C(n18), .D(n9449), 
         .Z(clk_c_enable_118)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8659_4_lut_4_lut.init = 16'h0001;
    LUT4 i2_2_lut_rep_87_3_lut (.A(cnt_stop[1]), .B(cnt_stop[3]), .C(cnt_stop[2]), 
         .Z(n9546)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_rep_87_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_adj_37 (.A(cnt_start[3]), .B(state[2]), .Z(n4_adj_532)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_37.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_38 (.A(\cnt_mode1[2] ), .B(n9078), .Z(n1322)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_38.init = 16'h8888;
    PFUMX mux_175_Mux_0_i2 (.BLUT(n1690[0]), .ALUT(n7_adj_539), .C0(state[0]), 
          .Z(n2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;
    LUT4 i4_4_lut (.A(n9162), .B(cnt_mode1[3]), .C(n9544), .D(n4765), 
         .Z(n9078)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i4_4_lut.init = 16'h1000;
    LUT4 reg_addr_3__bdd_4_lut (.A(reg_addr[3]), .B(n9009), .C(n1690[3]), 
         .D(state[0]), .Z(n9522)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam reg_addr_3__bdd_4_lut.init = 16'h88f0;
    LUT4 i4924_2_lut (.A(clk_c_enable_107), .B(cnt_main[1]), .Z(n5491)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i4924_2_lut.init = 16'h8888;
    LUT4 i4908_2_lut (.A(cnt_main[0]), .B(cnt_main[2]), .Z(n5452)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(87[7] 104[14])
    defparam i4908_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_4_lut_adj_39 (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(dat_valid_N_458), .Z(n8239)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[17:25])
    defparam i1_4_lut_4_lut_adj_39.init = 16'h6c00;
    LUT4 i1_2_lut_rep_105 (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n9564)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_105.init = 16'h8888;
    LUT4 i1_2_lut_rep_83_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n9542)) /* synthesis lut_function=(A (B (C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_83_3_lut.init = 16'h8080;
    LUT4 cnt_write_1__bdd_3_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .Z(n9368)) /* synthesis lut_function=(!(A (B+(C))+!A !(B+(C)))) */ ;
    defparam cnt_write_1__bdd_3_lut.init = 16'h5656;
    LUT4 cnt_write_1__bdd_2_lut (.A(cnt_start[1]), .B(cnt_start[2]), .Z(n9369)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam cnt_write_1__bdd_2_lut.init = 16'h1111;
    LUT4 i2_3_lut_adj_40 (.A(state[2]), .B(i2c_sda_out), .C(n4702), .Z(n8678)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_40.init = 16'h0808;
    LUT4 i14_3_lut_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .D(dat_valid_N_458), .Z(cnt_main_3__N_304[2])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (C)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i14_3_lut_3_lut_4_lut.init = 16'hf878;
    FD1P3AX cnt_write_i0_i1 (.D(n9048), .SP(clk_c_enable_104), .CK(clk_c), 
            .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_41 (.A(dat_valid_N_458), .B(n9542), .C(n9548), 
         .D(state[0]), .Z(n1_adj_538)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_4_lut_4_lut_adj_41.init = 16'h4e00;
    FD1P3AX cnt_write_i0_i2 (.D(n9046), .SP(clk_c_enable_104), .CK(clk_c), 
            .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i3 (.D(n9047), .SP(clk_c_enable_104), .CK(clk_c), 
            .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_read_i0_i1 (.D(n7_adj_540), .SP(clk_c_enable_103), .CK(clk_c), 
            .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_106 (.A(state[1]), .B(state[0]), .Z(n9565)) /* synthesis lut_function=(A (B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_106.init = 16'h8888;
    FD1P3AX cnt_read_i0_i2 (.D(n7_c), .SP(clk_c_enable_103), .CK(clk_c), 
            .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_read_i0_i3 (.D(n7_adj_541), .SP(clk_c_enable_103), .CK(clk_c), 
            .Q(\cnt_read[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_read_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_stop_i0_i1 (.D(n9076), .SP(clk_c_enable_101), .CK(clk_c), 
            .Q(cnt_stop[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_stop_i0_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_42 (.A(state[1]), .B(state[0]), .C(cnt_stop[3]), 
         .D(state[2]), .Z(n9075)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_3_lut_4_lut_adj_42.init = 16'h0800;
    FD1P3AX cnt_stop_i0_i2 (.D(n9360), .SP(clk_c_enable_101), .CK(clk_c), 
            .Q(cnt_stop[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_stop_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_stop_i0_i3 (.D(n9761), .SP(clk_c_enable_101), .CK(clk_c), 
            .Q(cnt_stop[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_stop_i0_i3.GSR = "ENABLED";
    LUT4 i8696_2_lut_rep_107 (.A(cnt_mode2[2]), .B(cnt_mode2[1]), .Z(n9566)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i8696_2_lut_rep_107.init = 16'h1111;
    CCU2D add_156_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8475), .COUT(n8476), .S0(n480[3]), .S1(n480[4]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_5.INIT0 = 16'h5aaa;
    defparam add_156_5.INIT1 = 16'h5aaa;
    defparam add_156_5.INJECT1_0 = "NO";
    defparam add_156_5.INJECT1_1 = "NO";
    LUT4 i8731_3_lut_4_lut (.A(cnt_mode2[2]), .B(cnt_mode2[1]), .C(cnt_mode2[3]), 
         .D(n9003), .Z(clk_c_enable_40)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i8731_3_lut_4_lut.init = 16'h0010;
    LUT4 i1729_2_lut_rep_82_3_lut (.A(cnt_mode2[2]), .B(cnt_mode2[1]), .C(cnt_mode2[3]), 
         .Z(n9541)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1729_2_lut_rep_82_3_lut.init = 16'he0e0;
    LUT4 n2177_bdd_4_lut_8825 (.A(n6_adj_531), .B(\cnt_read[3] ), .C(state[0]), 
         .D(n60), .Z(n9498)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam n2177_bdd_4_lut_8825.init = 16'h0e00;
    LUT4 i1749_1_lut (.A(i2c_sda_N_455), .Z(n2267)) /* synthesis lut_function=(!(A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(68[2] 218[5])
    defparam i1749_1_lut.init = 16'h5555;
    FD1P3AX state_back_i0_i1 (.D(state[1]), .SP(clk_c_enable_87), .CK(clk_c), 
            .Q(\state_back[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    LUT4 i8665_4_lut_4_lut (.A(state[2]), .B(n9570), .C(n4702), .D(state[3]), 
         .Z(clk_400khz_enable_3)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(D)))) */ ;
    defparam i8665_4_lut_4_lut.init = 16'h001b;
    LUT4 i1_2_lut_rep_109 (.A(state[0]), .B(state[1]), .Z(n9568)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_109.init = 16'hdddd;
    CCU2D add_156_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8474), .COUT(n8475), .S0(n480[1]), .S1(n480[2]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_3.INIT0 = 16'h5aaa;
    defparam add_156_3.INIT1 = 16'h5aaa;
    defparam add_156_3.INJECT1_0 = "NO";
    defparam add_156_3.INJECT1_1 = "NO";
    LUT4 i38_4_lut (.A(n9141), .B(n9525), .C(state[3]), .D(n9595), .Z(n27_adj_542)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;
    defparam i38_4_lut.init = 16'h3f35;
    LUT4 n2383_bdd_2_lut_8894 (.A(n37), .B(state[3]), .Z(n9447)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n2383_bdd_2_lut_8894.init = 16'heeee;
    LUT4 i8662_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n4509), .D(n9561), 
         .Z(clk_400khz_enable_4)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i8662_4_lut_4_lut.init = 16'h00d1;
    LUT4 i1_2_lut_rep_110 (.A(cnt_write[3]), .B(cnt_write[0]), .Z(n9569)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_110.init = 16'heeee;
    CCU2D add_156_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8474), .S1(n480[0]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_1.INIT0 = 16'hF000;
    defparam add_156_1.INIT1 = 16'h5555;
    defparam add_156_1.INJECT1_0 = "NO";
    defparam add_156_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_86_3_lut (.A(cnt_write[3]), .B(cnt_write[0]), .C(cnt_write[1]), 
         .Z(n9545)) /* synthesis lut_function=(A+(B+(C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_86_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_adj_43 (.A(cnt[0]), .B(n9068), .C(cnt[1]), .Z(n9069)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1_3_lut_adj_43.init = 16'h4848;
    LUT4 cnt_stop_1__bdd_4_lut (.A(cnt_stop[1]), .B(n9075), .C(cnt_stop[2]), 
         .D(cnt_stop[0]), .Z(n9360)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (((D)+!C)+!B))) */ ;
    defparam cnt_stop_1__bdd_4_lut.init = 16'h0840;
    FD1P3AX data_r_i0_i7 (.D(i2c_sda_out), .SP(clk_c_enable_88), .CK(clk_c), 
            .Q(data_r[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_r_i0_i7.GSR = "DISABLED";
    FD1P3AX data_r_i0_i6 (.D(i2c_sda_out), .SP(clk_c_enable_89), .CK(clk_c), 
            .Q(data_r[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_r_i0_i6.GSR = "DISABLED";
    LUT4 i6472_2_lut_rep_111 (.A(state[0]), .B(state[1]), .Z(n9570)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6472_2_lut_rep_111.init = 16'heeee;
    LUT4 i2c_sda_I_0_4_lut (.A(i2c_sda_out), .B(n7_adj_543), .C(i2c_sda_N_486), 
         .D(state[3]), .Z(i2c_sda_N_464)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i2c_sda_I_0_4_lut.init = 16'h0aca;
    LUT4 state_3__I_0_327_i7_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(n9199), .Z(n7_adj_543)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam state_3__I_0_327_i7_3_lut_4_lut.init = 16'hf101;
    L6MUX21 i8751 (.D0(n9370), .D1(n9367), .SD(state[1]), .Z(n9371));
    FD1P3AX data_r_i0_i5 (.D(i2c_sda_out), .SP(clk_c_enable_90), .CK(clk_c), 
            .Q(data_r[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_r_i0_i5.GSR = "DISABLED";
    LUT4 i2_3_lut_adj_44 (.A(state[1]), .B(cnt_mode2[1]), .C(n4509), .Z(n8507)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_44.init = 16'h8080;
    FD1P3AX data_r_i0_i4 (.D(i2c_sda_out), .SP(clk_c_enable_91), .CK(clk_c), 
            .Q(data_r[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_r_i0_i4.GSR = "DISABLED";
    LUT4 i112_3_lut_rep_76_4_lut (.A(n9548), .B(cnt_main[0]), .C(dat_valid_N_458), 
         .D(n9542), .Z(n9535)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i112_3_lut_rep_76_4_lut.init = 16'hefe0;
    FD1P3AX data_r_i0_i3 (.D(i2c_sda_out), .SP(clk_c_enable_92), .CK(clk_c), 
            .Q(data_r[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_r_i0_i3.GSR = "DISABLED";
    LUT4 n2383_bdd_4_lut_8896 (.A(n2383), .B(n9060), .C(state[3]), .D(n9526), 
         .Z(n9448)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam n2383_bdd_4_lut_8896.init = 16'h0800;
    LUT4 i16_3_lut_4_lut (.A(cnt_stop[1]), .B(cnt_stop[0]), .C(cnt_stop[2]), 
         .D(cnt_stop[3]), .Z(n4662)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i16_3_lut_4_lut.init = 16'h001f;
    FD1P3AX data_r_i0_i2 (.D(i2c_sda_out), .SP(clk_c_enable_93), .CK(clk_c), 
            .Q(data_r[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_r_i0_i2.GSR = "DISABLED";
    FD1P3AX data_r_i0_i1 (.D(i2c_sda_out), .SP(clk_c_enable_94), .CK(clk_c), 
            .Q(data_r[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_r_i0_i1.GSR = "DISABLED";
    FD1P3AX state_i0_i2 (.D(n1374), .SP(clk_c_enable_95), .CK(clk_c), 
            .Q(state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(n1375), .SP(clk_c_enable_96), .CK(clk_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_mode1_i0_i1 (.D(n142[1]), .SP(clk_c_enable_102), .CD(n5501), 
            .CK(clk_c), .Q(cnt_mode1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_mode1_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_mode1_i0_i2 (.D(n142[2]), .SP(clk_c_enable_102), .CD(n5501), 
            .CK(clk_c), .Q(\cnt_mode1[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_mode1_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_mode1_i0_i3 (.D(n142[3]), .SP(clk_c_enable_102), .CD(n5501), 
            .CK(clk_c), .Q(cnt_mode1[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_mode1_i0_i3.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_45 (.A(clk_400khz), .B(n9574), .C(n27_adj_542), 
         .D(n4), .Z(clk_c_enable_21)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_45.init = 16'h0040;
    LUT4 i26_2_lut (.A(cnt_start[0]), .B(cnt_start[1]), .Z(n229[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[49:58])
    defparam i26_2_lut.init = 16'h6666;
    FD1P3AY i246_280 (.D(i2c_sda_N_492), .SP(i2c_sda_N_486), .CK(clk_400khz), 
            .Q(i2c_sda_N_455));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i246_280.GSR = "ENABLED";
    LUT4 i8709_4_lut (.A(n9570), .B(state[3]), .C(n9186), .D(state[2]), 
         .Z(i2c_sda_N_486)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;
    defparam i8709_4_lut.init = 16'h0311;
    LUT4 cnt_mode2_0__bdd_4_lut_8789 (.A(cnt_mode2[0]), .B(cnt_mode2[2]), 
         .C(reg_addr[4]), .D(cnt_mode2[1]), .Z(n7_adj_545)) /* synthesis lut_function=(A (B+!(D))+!A (B+(C (D)))) */ ;
    defparam cnt_mode2_0__bdd_4_lut_8789.init = 16'hdcee;
    LUT4 cnt_mode2_1__bdd_4_lut (.A(cnt_mode2[1]), .B(cnt_mode2[3]), .C(state[1]), 
         .D(cnt_mode2[2]), .Z(n9380)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;
    defparam cnt_mode2_1__bdd_4_lut.init = 16'h2040;
    LUT4 i3_4_lut_adj_46 (.A(cnt_mode2[0]), .B(state[0]), .C(cnt_mode2[3]), 
         .D(cnt_mode2[2]), .Z(n4509)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(76[4] 216[11])
    defparam i3_4_lut_adj_46.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_adj_47 (.A(cnt_mode2[1]), .B(cnt_mode2[0]), .C(cnt_mode2[2]), 
         .Z(n9009)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_47.init = 16'h0202;
    LUT4 i6324_3_lut_4_lut (.A(cnt_mode2[1]), .B(cnt_mode2[0]), .C(cnt_mode2[2]), 
         .D(reg_addr[0]), .Z(n7_adj_539)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i6324_3_lut_4_lut.init = 16'hf2f0;
    LUT4 mux_1242_i4_3_lut_4_lut (.A(reg_data[3]), .B(cnt_mode1[1]), .C(cnt_mode1[0]), 
         .D(reg_addr[3]), .Z(n1690[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_1242_i4_3_lut_4_lut.init = 16'h8f80;
    LUT4 i2c_sda_N_474_bdd_3_lut_4_lut (.A(cnt_stop[2]), .B(n9562), .C(cnt_stop[0]), 
         .D(state[2]), .Z(n9518)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;
    defparam i2c_sda_N_474_bdd_3_lut_4_lut.init = 16'h20ff;
    LUT4 mux_1242_i3_3_lut_4_lut (.A(reg_data[3]), .B(cnt_mode1[1]), .C(cnt_mode1[0]), 
         .D(reg_addr[2]), .Z(n1690[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_1242_i3_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_4_lut_adj_48 (.A(state[0]), .B(state[3]), .C(n9164), .D(n8239), 
         .Z(n18)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_48.init = 16'h8a88;
    FD1P3IX cnt_delay_i0_i0 (.D(n480[0]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_49 (.A(state[3]), .B(n478), .C(state[1]), .Z(n27)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam i1_3_lut_adj_49.init = 16'ha2a2;
    LUT4 i8542_2_lut_2_lut (.A(state[0]), .B(n8239), .Z(n9113)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i8542_2_lut_2_lut.init = 16'hdddd;
    LUT4 mux_1242_i5_3_lut_4_lut_4_lut (.A(cnt_mode1[1]), .B(reg_addr[4]), 
         .C(cnt_mode1[0]), .D(reg_data[4]), .Z(n1690[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam mux_1242_i5_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 n2177_bdd_4_lut (.A(n2177), .B(n80), .C(cnt_write[3]), .D(state[0]), 
         .Z(n9499)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam n2177_bdd_4_lut.init = 16'ha800;
    LUT4 i6301_3_lut_4_lut (.A(cnt_read[2]), .B(n9556), .C(\cnt_read[3] ), 
         .D(n6098), .Z(n7_adj_541)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(180[31:46])
    defparam i6301_3_lut_4_lut.init = 16'h0078;
    LUT4 cnt_mode2_2__bdd_4_lut_8872 (.A(cnt_mode2[2]), .B(cnt_mode2[3]), 
         .C(cnt_mode2[0]), .D(cnt_mode2[1]), .Z(n9060)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam cnt_mode2_2__bdd_4_lut_8872.init = 16'h0204;
    FD1P3AX cnt_stop_i0_i0 (.D(n9036), .SP(clk_c_enable_101), .CK(clk_c), 
            .Q(cnt_stop[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_stop_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_114 (.A(cnt_start[3]), .B(cnt_start[1]), .Z(n9573)) /* synthesis lut_function=(A+(B)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_rep_114.init = 16'heeee;
    LUT4 i8736_4_lut (.A(state[2]), .B(n4754), .C(n5255), .D(n16), .Z(clk_c_enable_49)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i8736_4_lut.init = 16'h0400;
    PFUMX i8749 (.BLUT(n9369), .ALUT(n9368), .C0(state[0]), .Z(n9370));
    LUT4 i2_3_lut_rep_115 (.A(cnt_400khz[3]), .B(cnt_400khz[2]), .C(cnt_400khz[1]), 
         .Z(n9574)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_115.init = 16'h8080;
    LUT4 clk_400khz_I_0_2_lut_4_lut (.A(cnt_400khz[3]), .B(cnt_400khz[2]), 
         .C(cnt_400khz[1]), .D(clk_400khz), .Z(clk_400khz_N_459)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam clk_400khz_I_0_2_lut_4_lut.init = 16'h7f80;
    LUT4 i31_4_lut (.A(n1709), .B(cnt_mode2[3]), .C(state[0]), .D(n13), 
         .Z(n16)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i31_4_lut.init = 16'h3a0a;
    FD1P3IX cnt_mode1_i0_i0 (.D(n1480), .SP(clk_c_enable_102), .CD(n5501), 
            .CK(clk_c), .Q(cnt_mode1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_mode1_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_85_4_lut (.A(cnt_400khz[3]), .B(cnt_400khz[2]), .C(cnt_400khz[1]), 
         .D(clk_400khz), .Z(n9544)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_85_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_50 (.A(\cnt_read[3] ), .B(n9539), .C(n6_adj_531), 
         .D(n45), .Z(n60)) /* synthesis lut_function=(A+(B (C+(D))+!B !((D)+!C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[71:79])
    defparam i1_4_lut_adj_50.init = 16'heefa;
    LUT4 i7226_4_lut (.A(n9517), .B(state[2]), .C(state[0]), .D(n1_adj_546), 
         .Z(n4820)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i7226_4_lut.init = 16'hca0a;
    FD1P3AX cnt_read_i0_i0 (.D(n6980), .SP(clk_c_enable_103), .CK(clk_c), 
            .Q(\cnt_read[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_write_i0_i0 (.D(n8682), .SP(clk_c_enable_104), .CK(clk_c), 
            .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    LUT4 i7225_3_lut (.A(cnt_write[3]), .B(n78), .C(state[1]), .Z(n1_adj_546)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i7225_3_lut.init = 16'hcaca;
    LUT4 i16_2_lut_rep_88_4_lut (.A(cnt_400khz[3]), .B(cnt_400khz[2]), .C(cnt_400khz[1]), 
         .D(clk_400khz), .Z(n9547)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i16_2_lut_rep_88_4_lut.init = 16'hff7f;
    LUT4 i1435_2_lut_3_lut (.A(cnt_mode1[1]), .B(cnt_mode1[0]), .C(\cnt_mode1[2] ), 
         .Z(n142[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(108[25:41])
    defparam i1435_2_lut_3_lut.init = 16'h7878;
    LUT4 i1442_3_lut_4_lut (.A(cnt_mode1[1]), .B(cnt_mode1[0]), .C(\cnt_mode1[2] ), 
         .D(cnt_mode1[3]), .Z(n142[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(108[25:41])
    defparam i1442_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_3_lut_4_lut_adj_51 (.A(cnt[2]), .B(cnt[1]), .C(n9528), 
         .D(cnt[0]), .Z(clk_c_enable_92)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_3_lut_4_lut_adj_51.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_52 (.A(cnt[2]), .B(cnt[1]), .C(n9528), 
         .D(cnt[0]), .Z(clk_c_enable_93)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_2_lut_3_lut_4_lut_adj_52.init = 16'h2000;
    LUT4 i1_2_lut_adj_53 (.A(state[1]), .B(state[3]), .Z(n4765)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_53.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_54 (.A(cnt[1]), .B(cnt[2]), .C(n9528), 
         .D(cnt[0]), .Z(clk_c_enable_90)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_54.init = 16'h0020;
    PFUMX i8839 (.BLUT(n9578), .ALUT(n9579), .C0(cnt_mode2[3]), .Z(n9580));
    LUT4 i1_2_lut_4_lut (.A(n9552), .B(state[2]), .C(n2177), .D(n285[1]), 
         .Z(n9048)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0800;
    LUT4 i1_3_lut_adj_55 (.A(cnt_stop[3]), .B(cnt_stop[2]), .C(cnt_stop[1]), 
         .Z(n78)) /* synthesis lut_function=(A+(B (C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i1_3_lut_adj_55.init = 16'heaea;
    LUT4 i1_2_lut_3_lut_4_lut_adj_56 (.A(cnt[1]), .B(cnt[2]), .C(n9528), 
         .D(cnt[0]), .Z(clk_c_enable_91)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_56.init = 16'h2000;
    LUT4 i4793_3_lut (.A(n1690[4]), .B(n7_adj_545), .C(state[0]), .Z(n5356)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(76[4] 216[11])
    defparam i4793_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_57 (.A(n9565), .B(cnt_mode2[0]), .C(n9537), .D(n9561), 
         .Z(n9003)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i3_4_lut_adj_57.init = 16'hfffd;
    LUT4 i8725_3_lut_4_lut (.A(n9566), .B(cnt_mode2[3]), .C(cnt_mode2[0]), 
         .D(state[1]), .Z(n8563)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i8725_3_lut_4_lut.init = 16'h0b00;
    FD1P3IX cnt_start_i0_i0 (.D(n1), .SP(clk_c_enable_105), .CD(n6575), 
            .CK(clk_c), .Q(cnt_start[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_start_i0_i0.GSR = "ENABLED";
    PFUMX i8794 (.BLUT(n9448), .ALUT(n9447), .C0(state[2]), .Z(n9449));
    LUT4 i8589_3_lut_4_lut (.A(cnt_main[2]), .B(n9564), .C(dat_valid_N_458), 
         .D(n9129), .Z(n9164)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i8589_3_lut_4_lut.init = 16'hff80;
    LUT4 cnt_mode2_1__bdd_4_lut_8753 (.A(cnt_mode2[1]), .B(cnt_mode2[0]), 
         .C(reg_addr[1]), .D(cnt_mode2[2]), .Z(n9372)) /* synthesis lut_function=((B (D)+!B (C+(D)))+!A) */ ;
    defparam cnt_mode2_1__bdd_4_lut_8753.init = 16'hff75;
    FD1P3AY scl_253 (.D(n9018), .SP(clk_400khz_enable_2), .CK(clk_400khz), 
            .Q(i2c_scl_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam scl_253.GSR = "ENABLED";
    CCU2D sub_1247_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8496), .S0(n478));
    defparam sub_1247_add_2_cout.INIT0 = 16'h0000;
    defparam sub_1247_add_2_cout.INIT1 = 16'h0000;
    defparam sub_1247_add_2_cout.INJECT1_0 = "NO";
    defparam sub_1247_add_2_cout.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_58 (.A(n9544), .B(n9561), .C(state[1]), .D(state[0]), 
         .Z(clk_c_enable_116)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_4_lut_adj_58.init = 16'h2002;
    CCU2D sub_1247_add_2_18 (.A0(cnt_delay[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8495), .COUT(n8496));
    defparam sub_1247_add_2_18.INIT0 = 16'h5555;
    defparam sub_1247_add_2_18.INIT1 = 16'h5555;
    defparam sub_1247_add_2_18.INJECT1_0 = "NO";
    defparam sub_1247_add_2_18.INJECT1_1 = "NO";
    LUT4 i1863_2_lut_3_lut_4_lut (.A(clk_400khz), .B(n9574), .C(state[3]), 
         .D(n9170), .Z(n1371)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1863_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1872_3_lut_rep_70_4_lut (.A(clk_400khz), .B(n9574), .C(n4820), 
         .D(state[3]), .Z(n9529)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1872_3_lut_rep_70_4_lut.init = 16'h0040;
    LUT4 n9084_bdd_4_lut (.A(n9084), .B(ack), .C(\cnt_read[3] ), .D(\cnt_read[0] ), 
         .Z(n9507)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n9084_bdd_4_lut.init = 16'h0008;
    LUT4 mux_175_Mux_7_i2_4_lut (.A(n1677[7]), .B(n9009), .C(state[0]), 
         .D(cnt_mode1[0]), .Z(n2_adj_535)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(76[4] 216[11])
    defparam mux_175_Mux_7_i2_4_lut.init = 16'hcacf;
    LUT4 i6441_2_lut (.A(reg_data[4]), .B(cnt_mode1[1]), .Z(n1677[7])) /* synthesis lut_function=(A (B)) */ ;
    defparam i6441_2_lut.init = 16'h8888;
    LUT4 cnt_mode2_1__bdd_4_lut_8759 (.A(cnt_mode1[1]), .B(reg_addr[1]), 
         .C(reg_data[3]), .D(cnt_mode1[0]), .Z(n9373)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (B+(D))) */ ;
    defparam cnt_mode2_1__bdd_4_lut_8759.init = 16'hf5cc;
    LUT4 i4259_2_lut_3_lut (.A(clk_400khz), .B(n9574), .C(n4818), .Z(n1467)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i4259_2_lut_3_lut.init = 16'h4040;
    LUT4 i8595_2_lut_rep_67_3_lut (.A(clk_400khz), .B(n9574), .C(n9170), 
         .Z(n9526)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i8595_2_lut_rep_67_3_lut.init = 16'h4040;
    LUT4 led_c_bdd_2_lut_8863 (.A(n9515), .B(state[1]), .Z(n9516)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_bdd_2_lut_8863.init = 16'h8888;
    LUT4 i52_3_lut (.A(dat_valid_N_458), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n102)) /* synthesis lut_function=(!(A (C)+!A (B+!(C)))) */ ;
    defparam i52_3_lut.init = 16'h1a1a;
    LUT4 cnt_mode1_0__bdd_4_lut_8869 (.A(cnt_mode1[0]), .B(cnt_mode1[3]), 
         .C(\cnt_mode1[2] ), .D(cnt_mode1[1]), .Z(n9515)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;
    defparam cnt_mode1_0__bdd_4_lut_8869.init = 16'hfcdc;
    LUT4 i2_4_lut_adj_59 (.A(cnt_main[0]), .B(cnt_main[2]), .C(dat_valid_N_458), 
         .D(cnt_main[1]), .Z(n8622)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((D)+!B))) */ ;
    defparam i2_4_lut_adj_59.init = 16'h004c;
    LUT4 i4_4_lut_adj_60 (.A(n7_adj_547), .B(n9534), .C(state[2]), .D(rst_n_c), 
         .Z(clk_c_enable_54)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut_adj_60.init = 16'h0200;
    LUT4 cnt_mode1_0__bdd_4_lut_8832 (.A(n9550), .B(state[1]), .C(\cnt_read[3] ), 
         .D(cnt_start[3]), .Z(n9514)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B (D))) */ ;
    defparam cnt_mode1_0__bdd_4_lut_8832.init = 16'hf3e2;
    LUT4 i8608_3_lut_4_lut (.A(cnt_read[1]), .B(n9567), .C(state[0]), 
         .D(n9562), .Z(n9185)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i8608_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i2_3_lut_adj_61 (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(cnt_stop[3]), 
         .Z(i2c_scl_N_413)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_61.init = 16'h0404;
    FD1P3IX cnt_main_i0_i0 (.D(cnt_main_3__N_304[0]), .SP(clk_c_enable_106), 
            .CD(n5513), .CK(clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i8702_4_lut (.A(n7), .B(n9571), .C(n9542), .D(state[3]), .Z(clk_c_enable_107)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i8702_4_lut.init = 16'h0001;
    LUT4 i2_4_lut_adj_62 (.A(state[1]), .B(n1709), .C(n31), .D(state[0]), 
         .Z(n7_adj_547)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_62.init = 16'ha088;
    LUT4 i1_3_lut_adj_63 (.A(cnt_main[2]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .Z(n7_adj_536)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[17:25])
    defparam i1_3_lut_adj_63.init = 16'hdcdc;
    LUT4 i2c_sda_N_474_bdd_4_lut (.A(n76), .B(state[2]), .C(cnt_write[3]), 
         .D(ack_flag), .Z(n9519)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2c_sda_N_474_bdd_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_then_4_lut (.A(cnt_mode2[0]), .B(cnt_mode2[1]), 
         .C(state[1]), .D(cnt_mode2[2]), .Z(n9582)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_then_4_lut.init = 16'h0020;
    LUT4 i8683_3_lut_4_lut (.A(n478), .B(n9543), .C(n9106), .D(state[3]), 
         .Z(clk_c_enable_96)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C+(D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(76[4] 216[11])
    defparam i8683_3_lut_4_lut.init = 16'h020f;
    LUT4 i2433_3_lut (.A(cnt_main[0]), .B(cnt_main[2]), .C(cnt_main[1]), 
         .Z(n7_adj_537)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(87[7] 104[14])
    defparam i2433_3_lut.init = 16'h3a3a;
    LUT4 i2_3_lut_4_lut_adj_64 (.A(cnt_read[1]), .B(n9567), .C(state[0]), 
         .D(cnt_read[2]), .Z(n8556)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_64.init = 16'hfffe;
    CCU2D sub_1247_add_2_16 (.A0(cnt_delay[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8494), .COUT(n8495));
    defparam sub_1247_add_2_16.INIT0 = 16'h5555;
    defparam sub_1247_add_2_16.INIT1 = 16'h5555;
    defparam sub_1247_add_2_16.INJECT1_0 = "NO";
    defparam sub_1247_add_2_16.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_65 (.A(state[2]), .B(n45), .C(n9500), .Z(n9068)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i1_3_lut_adj_65.init = 16'h2020;
    LUT4 i6476_3_lut_4_lut (.A(cnt_write[1]), .B(n9569), .C(state[0]), 
         .D(cnt_write[2]), .Z(n4_adj_528)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i6476_3_lut_4_lut.init = 16'hefff;
    CCU2D sub_1247_add_2_14 (.A0(cnt_delay[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8493), .COUT(n8494));
    defparam sub_1247_add_2_14.INIT0 = 16'h5555;
    defparam sub_1247_add_2_14.INIT1 = 16'h5555;
    defparam sub_1247_add_2_14.INJECT1_0 = "NO";
    defparam sub_1247_add_2_14.INJECT1_1 = "NO";
    LUT4 i22_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n285[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(63[60:69])
    defparam i22_2_lut.init = 16'h6666;
    PFUMX i8947 (.BLUT(n9758), .ALUT(n9759), .C0(cnt_mode2[1]), .Z(n9760));
    CCU2D sub_1247_add_2_12 (.A0(cnt_delay[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8492), .COUT(n8493));
    defparam sub_1247_add_2_12.INIT0 = 16'h5555;
    defparam sub_1247_add_2_12.INIT1 = 16'h5555;
    defparam sub_1247_add_2_12.INJECT1_0 = "NO";
    defparam sub_1247_add_2_12.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_66 (.A(cnt_main[0]), .B(cnt_main[1]), .C(n9554), 
         .D(n9081), .Z(clk_c_enable_69)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i3_4_lut_adj_66.init = 16'h2000;
    FD1P3JX reg_data_i0_i0 (.D(n5452), .SP(clk_c_enable_107), .PD(n5491), 
            .CK(clk_c), .Q(reg_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam reg_data_i0_i0.GSR = "DISABLED";
    FD1P3AX reg_addr_i0_i0 (.D(n8557), .SP(clk_c_enable_108), .CK(clk_c), 
            .Q(reg_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam reg_addr_i0_i0.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_67 (.A(n80), .B(cnt_write[3]), .C(n45), .D(n76), 
         .Z(n2177)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(156[16] 159[10])
    defparam i2_4_lut_adj_67.init = 16'hffce;
    LUT4 cnt_mode2_1__bdd_3_lut (.A(cnt_mode2[1]), .B(cnt_mode2[3]), .C(cnt_mode2[2]), 
         .Z(n9379)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;
    defparam cnt_mode2_1__bdd_3_lut.init = 16'h3434;
    CCU2D sub_1247_add_2_10 (.A0(cnt_delay[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8491), .COUT(n8492));
    defparam sub_1247_add_2_10.INIT0 = 16'h5555;
    defparam sub_1247_add_2_10.INIT1 = 16'h5555;
    defparam sub_1247_add_2_10.INJECT1_0 = "NO";
    defparam sub_1247_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_1247_add_2_8 (.A0(cnt_delay[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8490), .COUT(n8491));
    defparam sub_1247_add_2_8.INIT0 = 16'h5aaa;
    defparam sub_1247_add_2_8.INIT1 = 16'h5555;
    defparam sub_1247_add_2_8.INJECT1_0 = "NO";
    defparam sub_1247_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_1247_add_2_6 (.A0(cnt_delay[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8489), .COUT(n8490));
    defparam sub_1247_add_2_6.INIT0 = 16'h5555;
    defparam sub_1247_add_2_6.INIT1 = 16'h5555;
    defparam sub_1247_add_2_6.INJECT1_0 = "NO";
    defparam sub_1247_add_2_6.INJECT1_1 = "NO";
    LUT4 i8607_4_lut (.A(cnt_start[2]), .B(n9545), .C(state[0]), .D(cnt_start[3]), 
         .Z(n9184)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i8607_4_lut.init = 16'hcfca;
    CCU2D sub_1247_add_2_4 (.A0(cnt_delay[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8488), .COUT(n8489));
    defparam sub_1247_add_2_4.INIT0 = 16'h5555;
    defparam sub_1247_add_2_4.INIT1 = 16'h5aaa;
    defparam sub_1247_add_2_4.INJECT1_0 = "NO";
    defparam sub_1247_add_2_4.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_68 (.A(cnt_write[3]), .B(n9530), .C(n9553), .D(cnt_write[2]), 
         .Z(n9047)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_adj_68.init = 16'h4888;
    FD1P3AX data_r_i0_i0 (.D(i2c_sda_out), .SP(clk_c_enable_109), .CK(clk_c), 
            .Q(data_r[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam data_r_i0_i0.GSR = "DISABLED";
    LUT4 i5_4_lut (.A(state[1]), .B(n9548), .C(n9052), .D(n8_adj_549), 
         .Z(clk_400khz_enable_1)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i5_4_lut.init = 16'h4000;
    PFUMX i8855 (.BLUT(n9602), .ALUT(n9603), .C0(cnt_main[2]), .Z(clk_c_enable_108));
    LUT4 i2_4_lut_adj_69 (.A(n9534), .B(state[0]), .C(state[2]), .D(state[1]), 
         .Z(clk_c_enable_103)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i2_4_lut_adj_69.init = 16'h1001;
    CCU2D sub_1247_add_2_2 (.A0(cnt_delay[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n8488));
    defparam sub_1247_add_2_2.INIT0 = 16'h5000;
    defparam sub_1247_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_1247_add_2_2.INJECT1_0 = "NO";
    defparam sub_1247_add_2_2.INJECT1_1 = "NO";
    LUT4 i6376_3_lut (.A(cnt_read[1]), .B(n6098), .C(\cnt_read[0] ), .Z(n7_adj_540)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(76[4] 216[11])
    defparam i6376_3_lut.init = 16'h1212;
    FD1P3AX ack_flag_256 (.D(n8678), .SP(clk_400khz_enable_3), .CK(clk_400khz), 
            .Q(ack_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam ack_flag_256.GSR = "ENABLED";
    PFUMX i8851 (.BLUT(n9596), .ALUT(n9597), .C0(state[1]), .Z(n9146));
    CCU2D cnt_400khz_1343_1344_add_4_5 (.A0(cnt_400khz[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8487), .S0(n21[3]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(58[18:35])
    defparam cnt_400khz_1343_1344_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_400khz_1343_1344_add_4_5.INIT1 = 16'h0000;
    defparam cnt_400khz_1343_1344_add_4_5.INJECT1_0 = "NO";
    defparam cnt_400khz_1343_1344_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_400khz_1343_1344_add_4_3 (.A0(cnt_400khz[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_400khz[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n8486), .COUT(n8487), .S0(n21[1]), 
          .S1(n21[2]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(58[18:35])
    defparam cnt_400khz_1343_1344_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_400khz_1343_1344_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_400khz_1343_1344_add_4_3.INJECT1_0 = "NO";
    defparam cnt_400khz_1343_1344_add_4_3.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_70 (.A(dat_valid_N_458), .B(state[2]), .C(cnt_main[0]), 
         .Z(n8_adj_549)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;
    defparam i2_3_lut_adj_70.init = 16'h1212;
    PFUMX i8622 (.BLUT(n9197), .ALUT(n9198), .C0(state[1]), .Z(n9199));
    PFUMX i8849 (.BLUT(n9593), .ALUT(n9594), .C0(cnt_mode2[2]), .Z(n9595));
    PFUMX i8847 (.BLUT(n9590), .ALUT(n9591), .C0(state[0]), .Z(n9592));
    CCU2D cnt_400khz_1343_1344_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8486), .S1(n21[0]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(58[18:35])
    defparam cnt_400khz_1343_1344_add_4_1.INIT0 = 16'hF000;
    defparam cnt_400khz_1343_1344_add_4_1.INIT1 = 16'h0555;
    defparam cnt_400khz_1343_1344_add_4_1.INJECT1_0 = "NO";
    defparam cnt_400khz_1343_1344_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_71 (.A(state[0]), .B(n60), .C(state[1]), .D(state[2]), 
         .Z(n6098)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i2_4_lut_adj_71.init = 16'hefff;
    PFUMX i8837 (.BLUT(n9575), .ALUT(n9576), .C0(state[1]), .Z(clk_c_enable_112));
    FD1P3AX cnt_i0_i3 (.D(n9761), .SP(clk_c_enable_112), .CK(clk_c), .Q(cnt_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_i0_i2 (.D(n9071), .SP(clk_c_enable_112), .CK(clk_c), .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_72 (.A(state[3]), .B(state[0]), .C(n9551), .D(n9533), 
         .Z(n9081)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam i2_4_lut_adj_72.init = 16'h0400;
    CCU2D add_156_25 (.A0(cnt_delay[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8485), .S0(n480[23]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_25.INIT0 = 16'h5aaa;
    defparam add_156_25.INIT1 = 16'h0000;
    defparam add_156_25.INJECT1_0 = "NO";
    defparam add_156_25.INJECT1_1 = "NO";
    CCU2D add_156_23 (.A0(cnt_delay[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8484), .COUT(n8485), .S0(n480[21]), .S1(n480[22]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_23.INIT0 = 16'h5aaa;
    defparam add_156_23.INIT1 = 16'h5aaa;
    defparam add_156_23.INJECT1_0 = "NO";
    defparam add_156_23.INJECT1_1 = "NO";
    FD1P3AX cnt_i0_i1 (.D(n9069), .SP(clk_c_enable_112), .CK(clk_c), .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i23 (.D(n480[23]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i23.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_73 (.A(n9075), .B(cnt_stop[0]), .C(cnt_stop[2]), 
         .D(cnt_stop[1]), .Z(n9076)) /* synthesis lut_function=(!((B (C+(D))+!B (C+!(D)))+!A)) */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(66[13:18])
    defparam i2_4_lut_adj_73.init = 16'h0208;
    PFUMX i8841 (.BLUT(n9581), .ALUT(n9582), .C0(cnt_mode2[3]), .Z(n9583));
    FD1P3IX cnt_delay_i0_i22 (.D(n480[22]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i22.GSR = "ENABLED";
    FD1P3AX ack_255 (.D(n8507), .SP(clk_400khz_enable_4), .CK(clk_400khz), 
            .Q(ack)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam ack_255.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i21 (.D(n480[21]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i21.GSR = "ENABLED";
    FD1P3AX cnt_mode2_i0_i0 (.D(n8563), .SP(clk_c_enable_116), .CK(clk_c), 
            .Q(cnt_mode2[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_mode2_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i20 (.D(n480[20]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i20.GSR = "ENABLED";
    FD1P3AX state_i0_i0 (.D(n9698), .SP(clk_c_enable_118), .CK(clk_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_delay_i0_i19 (.D(n480[19]), .SP(clk_c_enable_119), .CD(n5498), 
            .CK(clk_c), .Q(cnt_delay[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=18, LSE_RCOL=2, LSE_LLINE=31, LSE_RLINE=42 */ ;   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(75[12] 217[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    CCU2D add_156_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8483), .COUT(n8484), .S0(n480[19]), .S1(n480[20]));   // f:/fpga_project/baseboard/lab8_prox_detect/apds_9901_driver.v(213[29:45])
    defparam add_156_21.INIT0 = 16'h5aaa;
    defparam add_156_21.INIT1 = 16'h5aaa;
    defparam add_156_21.INJECT1_0 = "NO";
    defparam add_156_21.INJECT1_1 = "NO";
    PFUMX i8765 (.BLUT(n9387), .ALUT(n7_adj_545), .C0(state[0]), .Z(n9388));
    
endmodule
