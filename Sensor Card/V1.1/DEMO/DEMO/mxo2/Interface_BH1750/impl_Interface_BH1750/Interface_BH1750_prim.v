// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Jun 11 18:52:49 2017
//
// Verilog Description of module Interface_BH1750
//

module Interface_BH1750 (clk, rst, scl, sda, dvi, seg_led1, seg_led2, 
            row, line, rgb_led1, rgb_led2) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(18[8:24])
    input clk;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(20[11:14])
    input rst;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(21[11:14])
    output scl;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(22[12:15])
    inout sda;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(23[11:14])
    output dvi;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(24[12:15])
    output [8:0]seg_led1;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(27[15:23])
    output [8:0]seg_led2;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(28[15:23])
    output [15:0]row;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    output [7:0]line;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(26[15:19])
    output [2:0]rgb_led1;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(29[15:23])
    output [2:0]rgb_led2;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(30[15:23])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(20[11:14])
    wire clk_100khz /* synthesis is_clock=1, SET_AS_NETWORK=\u1/clk_100khz */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(55[6:16])
    wire clk16Hz /* synthesis is_clock=1, SET_AS_NETWORK=\u5/clk16Hz */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(28[7:14])
    
    wire rst_c, scl_c, row_c_15, row_c_14, row_c_13, row_c_12, row_c_11, 
        row_c_10, row_c_9, row_c_8, row_c_7, row_c_6, row_c_5, row_c_4, 
        row_c_3, row_c_2, row_c_1, row_c_0, n7906, n7905, n7904, 
        line_c, seg_led1_c_6, seg_led1_c_5, seg_led1_c_4, seg_led1_c_3, 
        seg_led1_c_2, seg_led1_c_1, seg_led1_c_0, seg_led2_c_6, seg_led2_c_5, 
        seg_led2_c_4, seg_led2_c_3, seg_led2_c_2, seg_led2_c_1, seg_led2_c_0, 
        rgb_led2_c;
    wire [15:0]BH1750_data_out;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(32[14:29])
    
    wire GND_net;
    wire [3:0]ones;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(35[14:18])
    
    wire r_sda, tens_3__N_418, tens_3__N_420, VCC_net, get_num_flag, 
        clk10KHz, get_num_flag_N_642, n9148, cnt_31__N_710, cnt_31__N_779, 
        clk_c_enable_24, clk_c_enable_22, clk_c_enable_41, n7889, n9160, 
        n9152, clk_c_enable_30, n6159, cnt_11__N_309_out_2;
    
    VHI i12 (.Z(VCC_net));
    OB seg_led1_pad_6 (.I(seg_led1_c_6), .O(seg_led1[6]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(27[15:23])
    OB seg_led1_pad_7 (.I(GND_net), .O(seg_led1[7]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(27[15:23])
    OB seg_led1_pad_8 (.I(GND_net), .O(seg_led1[8]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(27[15:23])
    OB dvi_pad (.I(VCC_net), .O(dvi));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(24[12:15])
    OB scl_pad (.I(scl_c), .O(scl));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(22[12:15])
    BB cnt_11__N_309_pad_2 (.I(r_sda), .T(n7889), .B(sda), .O(cnt_11__N_309_out_2));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(37[9:12])
    LUT4 i12923_2_lut_rep_343 (.A(clk16Hz), .B(cnt_31__N_710), .Z(clk_c_enable_22)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(43[8] 58[6])
    defparam i12923_2_lut_rep_343.init = 16'h4444;
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(21[11:14])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(20[11:14])
    OB rgb_led2_pad_0 (.I(rgb_led2_c), .O(rgb_led2[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(30[15:23])
    OB rgb_led2_pad_1 (.I(rgb_led2_c), .O(rgb_led2[1]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(30[15:23])
    OB rgb_led2_pad_2 (.I(rgb_led2_c), .O(rgb_led2[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(30[15:23])
    OB rgb_led1_pad_0 (.I(rgb_led2_c), .O(rgb_led1[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(29[15:23])
    OB rgb_led1_pad_1 (.I(rgb_led2_c), .O(rgb_led1[1]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(29[15:23])
    OB rgb_led1_pad_2 (.I(rgb_led2_c), .O(rgb_led1[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(29[15:23])
    OB line_pad_0 (.I(n7906), .O(line[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(26[15:19])
    OB line_pad_1 (.I(n7905), .O(line[1]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(26[15:19])
    OB line_pad_2 (.I(n7904), .O(line[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(26[15:19])
    OB line_pad_3 (.I(line_c), .O(line[3]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(26[15:19])
    OB line_pad_4 (.I(line_c), .O(line[4]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(26[15:19])
    OB line_pad_5 (.I(n7904), .O(line[5]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(26[15:19])
    OB line_pad_6 (.I(n7905), .O(line[6]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(26[15:19])
    OB line_pad_7 (.I(n7906), .O(line[7]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(26[15:19])
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_2 (.I(row_c_2), .O(row[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_3 (.I(row_c_3), .O(row[3]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_4 (.I(row_c_4), .O(row[4]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_5 (.I(row_c_5), .O(row[5]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_6 (.I(row_c_6), .O(row[6]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_7 (.I(row_c_7), .O(row[7]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_8 (.I(row_c_8), .O(row[8]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_9 (.I(row_c_9), .O(row[9]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_10 (.I(row_c_10), .O(row[10]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_11 (.I(row_c_11), .O(row[11]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_12 (.I(row_c_12), .O(row[12]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_13 (.I(row_c_13), .O(row[13]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_14 (.I(row_c_14), .O(row[14]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB row_pad_15 (.I(row_c_15), .O(row[15]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(25[16:19])
    OB seg_led2_pad_0 (.I(seg_led2_c_0), .O(seg_led2[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(28[15:23])
    OB seg_led2_pad_1 (.I(seg_led2_c_1), .O(seg_led2[1]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(28[15:23])
    OB seg_led2_pad_2 (.I(seg_led2_c_2), .O(seg_led2[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(28[15:23])
    OB seg_led2_pad_3 (.I(seg_led2_c_3), .O(seg_led2[3]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(28[15:23])
    OB seg_led2_pad_4 (.I(seg_led2_c_4), .O(seg_led2[4]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(28[15:23])
    OB seg_led2_pad_5 (.I(seg_led2_c_5), .O(seg_led2[5]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(28[15:23])
    OB seg_led2_pad_6 (.I(seg_led2_c_6), .O(seg_led2[6]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(28[15:23])
    OB seg_led2_pad_7 (.I(GND_net), .O(seg_led2[7]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(28[15:23])
    OB seg_led2_pad_8 (.I(GND_net), .O(seg_led2[8]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(28[15:23])
    OB seg_led1_pad_0 (.I(seg_led1_c_0), .O(seg_led1[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(27[15:23])
    OB seg_led1_pad_1 (.I(seg_led1_c_1), .O(seg_led1[1]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(27[15:23])
    OB seg_led1_pad_2 (.I(seg_led1_c_2), .O(seg_led1[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(27[15:23])
    OB seg_led1_pad_3 (.I(seg_led1_c_3), .O(seg_led1[3]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(27[15:23])
    OB seg_led1_pad_4 (.I(seg_led1_c_4), .O(seg_led1[4]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(27[15:23])
    LUT4 i12920_3_lut_4_lut (.A(clk16Hz), .B(cnt_31__N_710), .C(get_num_flag_N_642), 
         .D(get_num_flag), .Z(clk_c_enable_24)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(43[8] 58[6])
    defparam i12920_3_lut_4_lut.init = 16'h0040;
    LUT4 i12957_2_lut_rep_344 (.A(clk10KHz), .B(cnt_31__N_779), .Z(clk_c_enable_41)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam i12957_2_lut_rep_344.init = 16'h4444;
    LUT4 i12931_2_lut_3_lut (.A(clk10KHz), .B(cnt_31__N_779), .C(rst_c), 
         .Z(n9148)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam i12931_2_lut_3_lut.init = 16'h0404;
    LUT4 i12954_2_lut_rep_391 (.A(clk_100khz), .B(n9152), .Z(clk_c_enable_30)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam i12954_2_lut_rep_391.init = 16'h4444;
    LUT4 i6771_2_lut_3_lut (.A(clk_100khz), .B(n9152), .C(n6159), .Z(n9160)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam i6771_2_lut_3_lut.init = 16'h4040;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    led_scan u5 (.line_c(line_c), .n7904(n7904), .n7905(n7905), .n7906(n7906), 
            .row_c_14(row_c_14), .row_c_15(row_c_15), .row_c_9(row_c_9), 
            .get_num_flag(get_num_flag), .clk16Hz(clk16Hz), .get_num_flag_N_642(get_num_flag_N_642), 
            .row_c_7(row_c_7), .clk_c(clk_c), .clk_c_enable_41(clk_c_enable_41), 
            .n9148(n9148), .row_c_6(row_c_6), .row_c_8(row_c_8), .row_c_1(row_c_1), 
            .row_c_13(row_c_13), .row_c_12(row_c_12), .row_c_2(row_c_2), 
            .row_c_0(row_c_0), .row_c_11(row_c_11), .row_c_3(row_c_3), 
            .row_c_4(row_c_4), .row_c_10(row_c_10), .row_c_5(row_c_5), 
            .clk_c_enable_24(clk_c_enable_24), .clk_c_enable_22(clk_c_enable_22), 
            .\BH1750_data_out[12] (BH1750_data_out[12]), .tens_3__N_418(tens_3__N_418), 
            .tens_3__N_420(tens_3__N_420), .\BH1750_data_out[13] (BH1750_data_out[13]), 
            .GND_net(GND_net), .cnt_31__N_710(cnt_31__N_710), .clk10KHz(clk10KHz), 
            .cnt_31__N_779(cnt_31__N_779)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(73[11] 82[3])
    OB seg_led1_pad_5 (.I(seg_led1_c_5), .O(seg_led1[5]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(27[15:23])
    BIN_To_BCD u3 (.\BH1750_data_out[11] (BH1750_data_out[11]), .\ones[3] (ones[3]), 
            .\ones[1] (ones[1]), .\BH1750_data_out[12] (BH1750_data_out[12]), 
            .tens_3__N_420(tens_3__N_420), .\BH1750_data_out[13] (BH1750_data_out[13]), 
            .tens_3__N_418(tens_3__N_418), .\ones[2] (ones[2]), .seg_led1_c_4(seg_led1_c_4), 
            .seg_led1_c_3(seg_led1_c_3), .seg_led1_c_5(seg_led1_c_5), .seg_led1_c_6(seg_led1_c_6), 
            .seg_led1_c_2(seg_led1_c_2), .seg_led1_c_1(seg_led1_c_1), .seg_led1_c_0(seg_led1_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(56[13] 61[3])
    seg_led u4 (.\BH1750_data_out[10] (BH1750_data_out[10]), .\ones[2] (ones[2]), 
            .\ones[3] (ones[3]), .\ones[1] (ones[1]), .seg_led2_c_0(seg_led2_c_0), 
            .seg_led2_c_4(seg_led2_c_4), .seg_led2_c_6(seg_led2_c_6), .seg_led2_c_5(seg_led2_c_5), 
            .seg_led2_c_3(seg_led2_c_3), .seg_led2_c_2(seg_led2_c_2), .seg_led2_c_1(seg_led2_c_1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(64[10] 70[3])
    BH1750 u1 (.clk_100khz(clk_100khz), .rst_c(rst_c), .clk_c_enable_30(clk_c_enable_30), 
           .cnt_11__N_309_out_2(cnt_11__N_309_out_2), .tens_3__N_418(tens_3__N_418), 
           .clk_c(clk_c), .n7889(n7889), .n6159(n6159), .GND_net(GND_net), 
           .n9152(n9152), .tens_3__N_420(tens_3__N_420), .\BH1750_data_out[13] (BH1750_data_out[13]), 
           .\BH1750_data_out[12] (BH1750_data_out[12]), .\BH1750_data_out[11] (BH1750_data_out[11]), 
           .\BH1750_data_out[10] (BH1750_data_out[10]), .n9160(n9160), .scl_c(scl_c), 
           .r_sda(r_sda)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(38[9] 46[3])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(rst_c));
    rgb_led u6 (.rgb_led2_c(rgb_led2_c), .\BH1750_data_out[13] (BH1750_data_out[13]), 
            .\BH1750_data_out[12] (BH1750_data_out[12]), .tens_3__N_420(tens_3__N_420), 
            .tens_3__N_418(tens_3__N_418), .GND_net(GND_net), .clk_c(clk_c), 
            .rst_c(rst_c), .\BH1750_data_out[10] (BH1750_data_out[10]), 
            .\BH1750_data_out[11] (BH1750_data_out[11])) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(85[10] 92[3])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module led_scan
//

module led_scan (line_c, n7904, n7905, n7906, row_c_14, row_c_15, 
            row_c_9, get_num_flag, clk16Hz, get_num_flag_N_642, row_c_7, 
            clk_c, clk_c_enable_41, n9148, row_c_6, row_c_8, row_c_1, 
            row_c_13, row_c_12, row_c_2, row_c_0, row_c_11, row_c_3, 
            row_c_4, row_c_10, row_c_5, clk_c_enable_24, clk_c_enable_22, 
            \BH1750_data_out[12] , tens_3__N_418, tens_3__N_420, \BH1750_data_out[13] , 
            GND_net, cnt_31__N_710, clk10KHz, cnt_31__N_779) /* synthesis syn_module_defined=1 */ ;
    output line_c;
    output n7904;
    output n7905;
    output n7906;
    output row_c_14;
    output row_c_15;
    output row_c_9;
    output get_num_flag;
    output clk16Hz;
    output get_num_flag_N_642;
    output row_c_7;
    input clk_c;
    input clk_c_enable_41;
    input n9148;
    output row_c_6;
    output row_c_8;
    output row_c_1;
    output row_c_13;
    output row_c_12;
    output row_c_2;
    output row_c_0;
    output row_c_11;
    output row_c_3;
    output row_c_4;
    output row_c_10;
    output row_c_5;
    input clk_c_enable_24;
    input clk_c_enable_22;
    input \BH1750_data_out[12] ;
    input tens_3__N_418;
    input tens_3__N_420;
    input \BH1750_data_out[13] ;
    input GND_net;
    output cnt_31__N_710;
    output clk10KHz;
    output cnt_31__N_779;
    
    wire line_7__N_474 /* synthesis is_clock=1, SET_AS_NETWORK=\u5/line_7__N_474 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(26[19:23])
    wire clk16Hz /* synthesis is_clock=1, SET_AS_NETWORK=\u5/clk16Hz */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(28[7:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(20[11:14])
    wire [7:0]line_7__N_466;
    
    wire n15228, n15166, n279, n144, n160, n270, n16873, n16874, 
        n16875;
    wire [3:0]temp_cnt;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(41[13:21])
    
    wire n16880, n16879, n16895, n16894, n15241, n8732, n16767, 
        n15493, n8726, n16778, n15473, n16830, n8736, n16779, 
        n15257, n15250, n16768, n16591, n16586, n16592;
    wire [7:0]line_7__N_560;
    
    wire n16561, n16565, n16566, n17050, n16589, n16588, n16590, 
        n17049, n48, n176, n1, n15239, n16564, n16563, n16868, 
        n16804, n16867;
    wire [7:0]line_7__N_528;
    wire [7:0]line_7__N_544;
    wire [3:0]temp_num;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(40[13:21])
    wire [3:0]n27;
    
    wire n17704;
    wire [7:0]line_7__N_568;
    
    wire n16840, n16765, n11557, n15169, n11551;
    wire [7:0]line_7__N_552;
    
    wire n16782, n16780, n16841, n16842, n6, n16810, n16845, n16846, 
        n16587, n16811, n15173, n15174, n294, n8425, n15843, n8544, 
        n16844, n16843, n14232, n8554, n264, n268, n16869, n274, 
        n288, n16860, n16861, n276, n280, n15836, n16803, n14077, 
        n16766, n279_adj_849, n276_adj_850, n280_adj_851, n8556, n267, 
        n11, n16, n15273, n15276, n15267, n15254, n14, n15282, 
        n19, n267_adj_852, n268_adj_853, n15221, n10, n15729, n294_adj_854, 
        n8426, n282, n285, n288_adj_855, n8553, n16881, n261, 
        n264_adj_856, n267_adj_857, n264_adj_858, n273, n276_adj_859, 
        n280_adj_860, n279_adj_861, n17051, n294_adj_862, n8423, n282_adj_863, 
        n285_adj_864, n288_adj_865, n8555, n261_adj_866, n264_adj_867, 
        n267_adj_868, n11547, n273_adj_869, n276_adj_870, n280_adj_871, 
        n279_adj_872, n294_adj_873, n8424, n282_adj_874, n8546, n16896, 
        n262;
    
    FD1S1A line_7__I_0_i5 (.D(line_7__N_466[4]), .CK(line_7__N_474), .Q(line_c)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(121[2] 141[6])
    defparam line_7__I_0_i5.GSR = "DISABLED";
    FD1S1A line_7__I_0_i6 (.D(line_7__N_466[5]), .CK(line_7__N_474), .Q(n7904)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(121[2] 141[6])
    defparam line_7__I_0_i6.GSR = "DISABLED";
    FD1S1A line_7__I_0_i7 (.D(line_7__N_466[6]), .CK(line_7__N_474), .Q(n7905)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(121[2] 141[6])
    defparam line_7__I_0_i7.GSR = "DISABLED";
    FD1S1A line_7__I_0_i8 (.D(line_7__N_466[7]), .CK(line_7__N_474), .Q(n7906)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(121[2] 141[6])
    defparam line_7__I_0_i8.GSR = "DISABLED";
    LUT4 i343_4_lut (.A(row_c_14), .B(row_c_15), .C(n15228), .D(n15166), 
         .Z(n279)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i343_4_lut.init = 16'h4602;
    PFUMX i340 (.BLUT(n144), .ALUT(n160), .C0(row_c_9), .Z(n270));
    FD1S3IX get_num_flag_112 (.D(get_num_flag_N_642), .CK(clk16Hz), .CD(get_num_flag), 
            .Q(get_num_flag));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(43[8] 58[6])
    defparam get_num_flag_112.GSR = "DISABLED";
    FD1P3IX row_i0_i8 (.D(row_c_6), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_7)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i8.GSR = "DISABLED";
    PFUMX i13422 (.BLUT(n16873), .ALUT(n16874), .C0(row_c_8), .Z(n16875));
    LUT4 i1_2_lut_4_lut_4_lut (.A(temp_cnt[0]), .B(temp_cnt[1]), .C(temp_cnt[2]), 
         .D(row_c_8), .Z(n144)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(125[24:41])
    defparam i1_2_lut_4_lut_4_lut.init = 16'he700;
    LUT4 i1_4_lut_4_lut_4_lut (.A(temp_cnt[2]), .B(temp_cnt[1]), .C(row_c_8), 
         .Z(n160)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(133[30:40])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0b0b;
    LUT4 i336_4_lut_then_4_lut (.A(row_c_1), .B(temp_cnt[2]), .C(temp_cnt[1]), 
         .D(temp_cnt[0]), .Z(n16880)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C (D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i336_4_lut_then_4_lut.init = 16'h4551;
    LUT4 i336_4_lut_else_4_lut (.A(row_c_1), .B(temp_cnt[2]), .C(temp_cnt[1]), 
         .Z(n16879)) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i336_4_lut_else_4_lut.init = 16'h8a8a;
    LUT4 row_c_0_bdd_4_lut_then_4_lut (.A(temp_cnt[2]), .B(temp_cnt[0]), 
         .C(row_c_1), .D(temp_cnt[1]), .Z(n16895)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam row_c_0_bdd_4_lut_then_4_lut.init = 16'h0001;
    LUT4 row_c_0_bdd_4_lut_else_4_lut (.A(temp_cnt[2]), .B(temp_cnt[0]), 
         .C(row_c_1), .D(temp_cnt[1]), .Z(n16894)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam row_c_0_bdd_4_lut_else_4_lut.init = 16'h8000;
    LUT4 i1_4_lut (.A(row_c_13), .B(n15241), .C(row_c_14), .D(row_c_1), 
         .Z(n8732)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(137[5:13])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(row_c_12), .B(row_c_2), .Z(n15241)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(137[5:13])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i12813_3_lut_4_lut (.A(n15241), .B(n16767), .C(row_c_1), .D(row_c_14), 
         .Z(n15493)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(137[5:13])
    defparam i12813_3_lut_4_lut.init = 16'hfffe;
    LUT4 i12798_3_lut_4_lut (.A(n8726), .B(n16778), .C(row_c_0), .D(row_c_15), 
         .Z(n15473)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(131[5:13])
    defparam i12798_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_419 (.A(row_c_11), .B(row_c_3), .Z(n16830)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(131[5:13])
    defparam i1_2_lut_rep_419.init = 16'heeee;
    LUT4 i1_2_lut_rep_367_3_lut_4_lut (.A(row_c_11), .B(row_c_3), .C(n8736), 
         .D(n8732), .Z(n16778)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(131[5:13])
    defparam i1_2_lut_rep_367_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(n16779), .B(n8732), .C(row_c_4), .D(row_c_10), 
         .Z(n15257)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(134[5:13])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_368_3_lut (.A(row_c_11), .B(row_c_3), .C(n15250), 
         .Z(n16779)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(131[5:13])
    defparam i1_2_lut_rep_368_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_357_3_lut_4_lut (.A(row_c_11), .B(row_c_3), .C(n8732), 
         .D(n15250), .Z(n16768)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(131[5:13])
    defparam i1_2_lut_rep_357_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_356_3_lut_4_lut (.A(row_c_11), .B(row_c_3), .C(n8736), 
         .D(n15250), .Z(n16767)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(131[5:13])
    defparam i1_2_lut_rep_356_3_lut_4_lut.init = 16'hfffe;
    PFUMX i13323 (.BLUT(n16591), .ALUT(n16586), .C0(row_c_3), .Z(n16592));
    LUT4 temp_cnt_2__bdd_3_lut_13121 (.A(temp_cnt[2]), .B(temp_cnt[0]), 
         .C(temp_cnt[1]), .Z(line_7__N_560[6])) /* synthesis lut_function=((B (C)+!B !(C))+!A) */ ;
    defparam temp_cnt_2__bdd_3_lut_13121.init = 16'hd7d7;
    LUT4 i1_4_lut_adj_136 (.A(row_c_10), .B(row_c_5), .C(row_c_4), .D(row_c_9), 
         .Z(n8736)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(134[5:13])
    defparam i1_4_lut_adj_136.init = 16'hfffe;
    LUT4 n16565_bdd_3_lut_4_lut (.A(n16561), .B(row_c_10), .C(row_c_11), 
         .D(n16565), .Z(n16566)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam n16565_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_4_lut_adj_137 (.A(row_c_7), .B(n8726), .C(row_c_15), .D(row_c_0), 
         .Z(n15250)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(132[5:13])
    defparam i1_4_lut_adj_137.init = 16'hfffe;
    LUT4 row_c_0_bdd_4_lut (.A(row_c_1), .B(temp_cnt[0]), .C(temp_cnt[1]), 
         .D(temp_cnt[2]), .Z(n17050)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam row_c_0_bdd_4_lut.init = 16'ha82a;
    PFUMX i13321 (.BLUT(n16589), .ALUT(n16588), .C0(row_c_0), .Z(n16590));
    LUT4 row_c_0_bdd_3_lut (.A(row_c_1), .B(temp_cnt[1]), .C(temp_cnt[2]), 
         .Z(n17049)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;
    defparam row_c_0_bdd_3_lut.init = 16'h4545;
    LUT4 i1_2_lut_3_lut_4_lut (.A(temp_cnt[0]), .B(temp_cnt[2]), .C(row_c_2), 
         .D(temp_cnt[1]), .Z(n48)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_138 (.A(temp_cnt[0]), .B(temp_cnt[2]), 
         .C(row_c_10), .D(temp_cnt[1]), .Z(n176)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_138.init = 16'h4000;
    FD1P3AX temp_cnt_4436_4525__i1 (.D(n1), .SP(clk_c_enable_24), .CK(clk_c), 
            .Q(temp_cnt[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(125[30:40])
    defparam temp_cnt_4436_4525__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(temp_cnt[0]), .B(temp_cnt[2]), .C(temp_cnt[1]), 
         .Z(n15239)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfbfb;
    PFUMX i13307 (.BLUT(n16564), .ALUT(n16563), .C0(row_c_9), .Z(n16565));
    LUT4 i340_then_4_lut (.A(row_c_9), .B(temp_cnt[2]), .C(row_c_8), .D(temp_cnt[1]), 
         .Z(n16868)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i340_then_4_lut.init = 16'h0800;
    LUT4 i4622_2_lut_rep_393_3_lut (.A(temp_cnt[0]), .B(temp_cnt[1]), .C(temp_cnt[2]), 
         .Z(n16804)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i4622_2_lut_rep_393_3_lut.init = 16'h7878;
    LUT4 i8626_2_lut_2_lut (.A(temp_cnt[2]), .B(temp_cnt[1]), .Z(line_7__N_560[5])) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(126[30:40])
    defparam i8626_2_lut_2_lut.init = 16'hdddd;
    LUT4 i340_else_4_lut (.A(row_c_9), .B(temp_cnt[2]), .C(row_c_8), .D(temp_cnt[1]), 
         .Z(n16867)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i340_else_4_lut.init = 16'h0010;
    LUT4 temp_cnt_2__bdd_3_lut (.A(temp_cnt[2]), .B(temp_cnt[0]), .C(temp_cnt[1]), 
         .Z(line_7__N_528[6])) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;
    defparam temp_cnt_2__bdd_3_lut.init = 16'hebeb;
    LUT4 mux_47_Mux_3_i7_3_lut_4_lut_3_lut (.A(temp_cnt[0]), .B(temp_cnt[1]), 
         .C(temp_cnt[2]), .Z(line_7__N_544[6])) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(127[24:41])
    defparam mux_47_Mux_3_i7_3_lut_4_lut_3_lut.init = 16'h7e7e;
    FD1P3AX temp_num_4437__i0 (.D(n27[0]), .SP(clk_c_enable_22), .CK(clk_c), 
            .Q(temp_num[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam temp_num_4437__i0.GSR = "DISABLED";
    LUT4 i4545_2_lut_rep_457 (.A(temp_cnt[0]), .B(temp_cnt[1]), .C(temp_cnt[2]), 
         .Z(n17704)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(127[24:41])
    defparam i4545_2_lut_rep_457.init = 16'h1e1e;
    LUT4 i2_2_lut_3_lut_4_lut_3_lut (.A(temp_cnt[0]), .B(temp_cnt[1]), .C(temp_cnt[2]), 
         .Z(n15166)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(127[24:41])
    defparam i2_2_lut_3_lut_4_lut_3_lut.init = 16'h0202;
    LUT4 mux_50_Mux_3_i7_3_lut_3_lut_4_lut_2_lut (.A(temp_cnt[1]), .B(temp_cnt[2]), 
         .Z(line_7__N_568[6])) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(127[24:41])
    defparam mux_50_Mux_3_i7_3_lut_3_lut_4_lut_2_lut.init = 16'hbbbb;
    LUT4 i4615_2_lut_rep_429 (.A(temp_cnt[1]), .B(temp_cnt[0]), .Z(n16840)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(133[30:40])
    defparam i4615_2_lut_rep_429.init = 16'h6666;
    LUT4 i1_2_lut_rep_354_3_lut_4_lut (.A(n16830), .B(n15250), .C(n15241), 
         .D(n8736), .Z(n16765)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(132[5:13])
    defparam i1_2_lut_rep_354_3_lut_4_lut.init = 16'hfffe;
    LUT4 i9154_2_lut_3_lut_4_lut_3_lut (.A(temp_cnt[1]), .B(temp_cnt[0]), 
         .C(temp_cnt[2]), .Z(n11557)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(133[30:40])
    defparam i9154_2_lut_3_lut_4_lut_3_lut.init = 16'h6060;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_3_lut (.A(temp_cnt[1]), .B(temp_cnt[0]), 
         .C(temp_cnt[2]), .Z(n15169)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(133[30:40])
    defparam i1_2_lut_3_lut_4_lut_4_lut_3_lut.init = 16'h0808;
    LUT4 i8628_2_lut_3_lut_4_lut_3_lut (.A(temp_cnt[1]), .B(temp_cnt[0]), 
         .C(temp_cnt[2]), .Z(line_7__N_568[5])) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(133[30:40])
    defparam i8628_2_lut_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i9148_2_lut_3_lut_4_lut_3_lut (.A(temp_cnt[1]), .B(temp_cnt[0]), 
         .C(temp_cnt[2]), .Z(n11551)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(133[30:40])
    defparam i9148_2_lut_3_lut_4_lut_3_lut.init = 16'h0606;
    LUT4 mux_48_Mux_3_i7_3_lut_3_lut_4_lut_4_lut_2_lut (.A(temp_cnt[1]), .B(temp_cnt[2]), 
         .Z(line_7__N_552[6])) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(133[30:40])
    defparam mux_48_Mux_3_i7_3_lut_3_lut_4_lut_4_lut_2_lut.init = 16'h7777;
    LUT4 i8627_2_lut_rep_371_3_lut_4_lut_3_lut (.A(temp_cnt[1]), .B(temp_cnt[0]), 
         .C(temp_cnt[2]), .Z(n16782)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(133[30:40])
    defparam i8627_2_lut_rep_371_3_lut_4_lut_3_lut.init = 16'h9f9f;
    LUT4 i8623_2_lut_rep_369_3_lut_4_lut_3_lut (.A(temp_cnt[1]), .B(temp_cnt[0]), 
         .C(temp_cnt[2]), .Z(n16780)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(133[30:40])
    defparam i8623_2_lut_rep_369_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 temp_cnt_1__bdd_3_lut_4_lut (.A(temp_cnt[1]), .B(temp_cnt[0]), 
         .C(temp_cnt[2]), .D(row_c_1), .Z(n16589)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(133[30:40])
    defparam temp_cnt_1__bdd_3_lut_4_lut.init = 16'hf900;
    LUT4 i8572_2_lut_rep_430 (.A(row_c_11), .B(row_c_10), .Z(n16841)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8572_2_lut_rep_430.init = 16'heeee;
    LUT4 i8718_2_lut_rep_431 (.A(row_c_9), .B(row_c_8), .Z(n16842)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8718_2_lut_rep_431.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut (.A(row_c_9), .B(row_c_8), .C(row_c_10), 
         .D(row_c_11), .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_399_3_lut_4_lut (.A(row_c_7), .B(row_c_6), .C(row_c_4), 
         .D(row_c_5), .Z(n16810)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_399_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8576_2_lut_rep_434 (.A(row_c_3), .B(row_c_2), .Z(n16845)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8576_2_lut_rep_434.init = 16'heeee;
    LUT4 i8714_2_lut_rep_435 (.A(row_c_1), .B(row_c_0), .Z(n16846)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8714_2_lut_rep_435.init = 16'heeee;
    LUT4 row_c_2_bdd_3_lut_4_lut (.A(row_c_1), .B(row_c_0), .C(temp_cnt[2]), 
         .D(temp_cnt[1]), .Z(n16587)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam row_c_2_bdd_3_lut_4_lut.init = 16'h1110;
    LUT4 i8797_2_lut_rep_400_3_lut_4_lut (.A(row_c_1), .B(row_c_0), .C(row_c_2), 
         .D(row_c_3), .Z(n16811)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8797_2_lut_rep_400_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_139 (.A(row_c_8), .B(row_c_6), .Z(n8726)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(131[5:13])
    defparam i1_2_lut_adj_139.init = 16'heeee;
    LUT4 i4589_1_lut (.A(temp_cnt[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(131[30:40])
    defparam i4589_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(temp_cnt[0]), .B(temp_cnt[1]), 
         .C(temp_cnt[2]), .D(row_c_2), .Z(n15173)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(127[24:41])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_adj_140 (.A(temp_cnt[0]), .B(temp_cnt[1]), 
         .C(temp_cnt[2]), .D(row_c_10), .Z(n15174)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(127[24:41])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_adj_140.init = 16'h0020;
    LUT4 temp_num_4437_mux_6_i1_3_lut (.A(temp_num[0]), .B(\BH1750_data_out[12] ), 
         .C(get_num_flag), .Z(n27[0])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam temp_num_4437_mux_6_i1_3_lut.init = 16'hc5c5;
    FD1P3IX row_i0_i9 (.D(row_c_7), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_8)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i9.GSR = "DISABLED";
    FD1P3AX temp_num_4437__i3 (.D(n27[3]), .SP(clk_c_enable_22), .CK(clk_c), 
            .Q(temp_num[3]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam temp_num_4437__i3.GSR = "DISABLED";
    FD1P3AX temp_num_4437__i2 (.D(n27[2]), .SP(clk_c_enable_22), .CK(clk_c), 
            .Q(temp_num[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam temp_num_4437__i2.GSR = "DISABLED";
    FD1P3AX temp_num_4437__i1 (.D(n27[1]), .SP(clk_c_enable_22), .CK(clk_c), 
            .Q(temp_num[1]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam temp_num_4437__i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_141 (.A(n294), .B(n8425), .C(n15843), .D(n6), 
         .Z(line_7__N_466[5])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_141.init = 16'hccce;
    LUT4 i1_4_lut_adj_142 (.A(n16592), .B(n8544), .C(n16844), .D(n16843), 
         .Z(n294)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_142.init = 16'hccce;
    LUT4 i1_4_lut_adj_143 (.A(n16566), .B(n14232), .C(n8554), .D(n15843), 
         .Z(n8425)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_143.init = 16'h3032;
    LUT4 i8792_rep_164_4_lut (.A(row_c_15), .B(row_c_13), .C(row_c_14), 
         .D(row_c_12), .Z(n15843)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8792_rep_164_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_144 (.A(n264), .B(n16811), .C(n268), .D(n16844), 
         .Z(n8544)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_144.init = 16'h3032;
    LUT4 i8574_rep_167_2_lut (.A(row_c_7), .B(row_c_6), .Z(n16844)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8574_rep_167_2_lut.init = 16'heeee;
    LUT4 i8712_rep_172_2_lut (.A(row_c_5), .B(row_c_4), .Z(n16843)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8712_rep_172_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_145 (.A(n16869), .B(n274), .C(row_c_11), .D(row_c_10), 
         .Z(n288)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_145.init = 16'hccce;
    LUT4 i2_2_lut_rep_449 (.A(temp_cnt[1]), .B(temp_cnt[2]), .Z(n16860)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i2_2_lut_rep_449.init = 16'h8888;
    LUT4 i11565_2_lut_rep_450 (.A(temp_num[1]), .B(temp_num[0]), .Z(n16861)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam i11565_2_lut_rep_450.init = 16'h8888;
    LUT4 i3_3_lut_4_lut (.A(temp_num[1]), .B(temp_num[0]), .C(temp_num[3]), 
         .D(temp_num[2]), .Z(get_num_flag_N_642)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam i3_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_146 (.A(n276), .B(n6), .C(n280), .D(n15836), .Z(n8554)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_146.init = 16'h3032;
    LUT4 i1_2_lut_rep_392 (.A(n8732), .B(n8736), .Z(n16803)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(131[5:13])
    defparam i1_2_lut_rep_392.init = 16'heeee;
    LUT4 i11572_2_lut_3_lut (.A(temp_num[1]), .B(temp_num[0]), .C(temp_num[2]), 
         .Z(n14077)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam i11572_2_lut_3_lut.init = 16'h8080;
    LUT4 i342_4_lut (.A(row_c_12), .B(n11557), .C(row_c_13), .D(n16860), 
         .Z(n276)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i342_4_lut.init = 16'h101a;
    LUT4 i1_2_lut_rep_355_3_lut_4_lut (.A(n8732), .B(n8736), .C(n8726), 
         .D(n16830), .Z(n16766)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(131[5:13])
    defparam i1_2_lut_rep_355_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(n279_adj_849), .B(row_c_13), .C(row_c_12), .Z(n280)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i2_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_adj_147 (.A(n276_adj_850), .B(n6), .C(n280_adj_851), 
         .D(n15836), .Z(n8556)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_147.init = 16'h3032;
    LUT4 i8570_rep_171_2_lut (.A(row_c_15), .B(row_c_14), .Z(n15836)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8570_rep_171_2_lut.init = 16'heeee;
    LUT4 i338_4_lut (.A(row_c_4), .B(n11557), .C(row_c_5), .D(n16860), 
         .Z(n264)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i338_4_lut.init = 16'h101a;
    LUT4 i2_3_lut_adj_148 (.A(n267), .B(row_c_5), .C(row_c_4), .Z(n268)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i2_3_lut_adj_148.init = 16'h0202;
    LUT4 i339_4_lut (.A(row_c_6), .B(row_c_7), .C(line_7__N_560[5]), .D(line_7__N_568[5]), 
         .Z(n267)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i339_4_lut.init = 16'h6420;
    LUT4 i343_4_lut_adj_149 (.A(row_c_14), .B(row_c_15), .C(line_7__N_560[5]), 
         .D(line_7__N_568[5]), .Z(n279_adj_849)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i343_4_lut_adj_149.init = 16'h6420;
    LUT4 i8614_2_lut (.A(temp_cnt[1]), .B(temp_cnt[2]), .Z(line_7__N_528[5])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(126[24:41])
    defparam i8614_2_lut.init = 16'heeee;
    LUT4 temp_num_4437_mux_6_i4_4_lut (.A(temp_num[3]), .B(tens_3__N_418), 
         .C(get_num_flag), .D(n14077), .Z(n27[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam temp_num_4437_mux_6_i4_4_lut.init = 16'hc5ca;
    LUT4 temp_num_4437_mux_6_i3_4_lut (.A(temp_num[2]), .B(tens_3__N_420), 
         .C(get_num_flag), .D(n16861), .Z(n27[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam temp_num_4437_mux_6_i3_4_lut.init = 16'hc5ca;
    LUT4 temp_num_4437_mux_6_i2_4_lut (.A(temp_num[1]), .B(\BH1750_data_out[13] ), 
         .C(get_num_flag), .D(temp_num[0]), .Z(n27[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(57[17:29])
    defparam temp_num_4437_mux_6_i2_4_lut.init = 16'hc5ca;
    LUT4 n561_bdd_4_lut_13306 (.A(n16804), .B(row_c_10), .C(n16840), .D(row_c_8), 
         .Z(n16563)) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C+(D))))) */ ;
    defparam n561_bdd_4_lut_13306.init = 16'h0023;
    LUT4 i1_2_lut_3_lut_adj_150 (.A(temp_cnt[0]), .B(temp_cnt[2]), .C(temp_cnt[1]), 
         .Z(n15228)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_150.init = 16'hefef;
    LUT4 i340_4_lut_then_3_lut (.A(row_c_9), .B(temp_cnt[2]), .C(temp_cnt[1]), 
         .Z(n16874)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i340_4_lut_then_3_lut.init = 16'h5151;
    LUT4 n561_bdd_4_lut (.A(row_c_10), .B(temp_cnt[2]), .C(temp_cnt[1]), 
         .D(row_c_8), .Z(n16564)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam n561_bdd_4_lut.init = 16'h45a8;
    LUT4 i8_4_lut (.A(n11), .B(n16), .C(n15273), .D(n15276), .Z(line_7__N_474)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(n15267), .B(n15257), .C(row_c_5), .D(row_c_9), 
         .Z(n11)) /* synthesis lut_function=(A+!(B+(C (D)+!C !(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i2_4_lut.init = 16'habba;
    LUT4 i340_4_lut_else_3_lut (.A(row_c_9), .B(temp_cnt[2]), .C(temp_cnt[0]), 
         .D(temp_cnt[1]), .Z(n16873)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i340_4_lut_else_3_lut.init = 16'h8aa2;
    FD1P3AX temp_cnt_4436_4525__i3 (.D(n16804), .SP(clk_c_enable_24), .CK(clk_c), 
            .Q(temp_cnt[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(125[30:40])
    defparam temp_cnt_4436_4525__i3.GSR = "DISABLED";
    LUT4 i7_4_lut (.A(n15254), .B(n14), .C(n15282), .D(n19), .Z(n16)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i7_4_lut.init = 16'hfdfc;
    PFUMX i13418 (.BLUT(n16867), .ALUT(n16868), .C0(temp_cnt[0]), .Z(n16869));
    FD1P3AX temp_cnt_4436_4525__i2 (.D(n16840), .SP(clk_c_enable_24), .CK(clk_c), 
            .Q(temp_cnt[1]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(125[30:40])
    defparam temp_cnt_4436_4525__i2.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_151 (.A(row_c_13), .B(row_c_1), .C(n16765), .D(row_c_14), 
         .Z(n15273)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_151.init = 16'h0104;
    LUT4 i2_3_lut_adj_152 (.A(n267_adj_852), .B(row_c_5), .C(row_c_4), 
         .Z(n268_adj_853)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i2_3_lut_adj_152.init = 16'h0202;
    LUT4 i2_4_lut_adj_153 (.A(n176), .B(n16842), .C(n15174), .D(row_c_11), 
         .Z(n274)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i2_4_lut_adj_153.init = 16'h3022;
    LUT4 i1_4_lut_adj_154 (.A(n16803), .B(row_c_3), .C(n15250), .D(row_c_11), 
         .Z(n15276)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_154.init = 16'h0104;
    LUT4 i1_4_lut_adj_155 (.A(row_c_7), .B(row_c_0), .C(n16766), .D(row_c_15), 
         .Z(n15267)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_155.init = 16'h0104;
    LUT4 i1_4_lut_adj_156 (.A(row_c_13), .B(n16767), .C(row_c_14), .D(row_c_1), 
         .Z(n15254)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(137[5:13])
    defparam i1_4_lut_adj_156.init = 16'hfffe;
    LUT4 row_c_10_bdd_4_lut (.A(n16840), .B(row_c_8), .C(row_c_9), .D(n17704), 
         .Z(n16561)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;
    defparam row_c_10_bdd_4_lut.init = 16'h0302;
    LUT4 i5_4_lut (.A(n15221), .B(n10), .C(row_c_6), .D(row_c_8), .Z(n14)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i5_4_lut.init = 16'hcddc;
    LUT4 i1_4_lut_adj_157 (.A(n15729), .B(row_c_4), .C(n16768), .D(row_c_10), 
         .Z(n15282)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_157.init = 16'h0104;
    LUT4 i342_4_lut_adj_158 (.A(row_c_12), .B(row_c_13), .C(n15239), .D(n15169), 
         .Z(n276_adj_850)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i342_4_lut_adj_158.init = 16'h4602;
    LUT4 i2_3_lut_adj_159 (.A(n279), .B(row_c_13), .C(row_c_12), .Z(n280_adj_851)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i2_3_lut_adj_159.init = 16'h0202;
    LUT4 i3_2_lut_3_lut_4_lut (.A(n16845), .B(n16846), .C(n16843), .D(n16844), 
         .Z(n14232)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i12875_2_lut (.A(row_c_12), .B(row_c_2), .Z(n19)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i12875_2_lut.init = 16'h6666;
    LUT4 temp_cnt_1__bdd_3_lut_13320 (.A(temp_cnt[1]), .B(row_c_1), .C(temp_cnt[2]), 
         .Z(n16588)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;
    defparam temp_cnt_1__bdd_3_lut_13320.init = 16'h3131;
    LUT4 i1_4_lut_adj_160 (.A(row_c_7), .B(n16778), .C(row_c_15), .D(row_c_0), 
         .Z(n15221)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(132[5:13])
    defparam i1_4_lut_adj_160.init = 16'hfffe;
    LUT4 i1_4_lut_adj_161 (.A(n294_adj_854), .B(n8426), .C(n15843), .D(n6), 
         .Z(line_7__N_466[6])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_161.init = 16'hccce;
    LUT4 i1_4_lut_adj_162 (.A(n282), .B(n285), .C(n16810), .D(n16811), 
         .Z(n294_adj_854)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_162.init = 16'h0ace;
    LUT4 i1_4_lut_adj_163 (.A(n288_adj_855), .B(n14232), .C(n8553), .D(n15843), 
         .Z(n8426)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_163.init = 16'h3032;
    LUT4 i1_4_lut_adj_164 (.A(row_c_7), .B(row_c_13), .C(n15473), .D(n15493), 
         .Z(n10)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_164.init = 16'h0ace;
    LUT4 i1_4_lut_adj_165 (.A(n16881), .B(n261), .C(n16845), .D(n16846), 
         .Z(n282)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_165.init = 16'h0ace;
    LUT4 i1_4_lut_adj_166 (.A(n264_adj_856), .B(n267_adj_857), .C(n16844), 
         .D(n16843), .Z(n285)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_166.init = 16'h0ace;
    LUT4 i338_4_lut_adj_167 (.A(row_c_4), .B(row_c_5), .C(n15239), .D(n15169), 
         .Z(n264_adj_858)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i338_4_lut_adj_167.init = 16'h4602;
    LUT4 i337_4_lut (.A(row_c_2), .B(row_c_3), .C(line_7__N_528[6]), .D(line_7__N_528[5]), 
         .Z(n261)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i337_4_lut.init = 16'h6420;
    LUT4 i1_4_lut_adj_168 (.A(n270), .B(n273), .C(n16841), .D(n16842), 
         .Z(n288_adj_855)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_168.init = 16'h0ace;
    LUT4 n303_bdd_4_lut (.A(n17704), .B(row_c_2), .C(n16846), .D(n16840), 
         .Z(n16586)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;
    defparam n303_bdd_4_lut.init = 16'h0302;
    LUT4 i1_4_lut_adj_169 (.A(n276_adj_859), .B(n6), .C(n280_adj_860), 
         .D(n15836), .Z(n8553)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_169.init = 16'h3032;
    LUT4 n16590_bdd_3_lut_13879 (.A(n16590), .B(n16587), .C(row_c_2), 
         .Z(n16591)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16590_bdd_3_lut_13879.init = 16'hcaca;
    LUT4 i342_4_lut_adj_170 (.A(row_c_12), .B(row_c_13), .C(line_7__N_544[6]), 
         .D(line_7__N_552[6]), .Z(n276_adj_859)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i342_4_lut_adj_170.init = 16'h6420;
    FD1P3IX row_i0_i16 (.D(row_c_14), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_15)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i16.GSR = "DISABLED";
    LUT4 i2_3_lut_adj_171 (.A(n279_adj_861), .B(row_c_13), .C(row_c_12), 
         .Z(n280_adj_860)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i2_3_lut_adj_171.init = 16'h0202;
    LUT4 i1_rep_97_2_lut (.A(row_c_5), .B(row_c_9), .Z(n15729)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(134[5:13])
    defparam i1_rep_97_2_lut.init = 16'heeee;
    FD1P3IX row_i0_i12 (.D(row_c_10), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_11)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i12.GSR = "DISABLED";
    FD1P3IX row_i0_i13 (.D(row_c_11), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_12)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i13.GSR = "DISABLED";
    FD1P3IX row_i0_i14 (.D(row_c_12), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_13)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i14.GSR = "DISABLED";
    LUT4 i341_4_lut (.A(row_c_10), .B(row_c_11), .C(line_7__N_528[6]), 
         .D(line_7__N_528[5]), .Z(n273)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i341_4_lut.init = 16'h6420;
    FD1P3IX row_i0_i15 (.D(row_c_13), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_14)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i15.GSR = "DISABLED";
    FD1P3IX row_i0_i11 (.D(row_c_9), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_10)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i11.GSR = "DISABLED";
    LUT4 i338_4_lut_adj_172 (.A(row_c_4), .B(row_c_5), .C(line_7__N_544[6]), 
         .D(line_7__N_552[6]), .Z(n264_adj_856)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i338_4_lut_adj_172.init = 16'h6420;
    FD1P3IX row_i0_i10 (.D(row_c_8), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_9)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i10.GSR = "DISABLED";
    LUT4 i339_4_lut_adj_173 (.A(row_c_6), .B(row_c_7), .C(line_7__N_560[6]), 
         .D(line_7__N_568[6]), .Z(n267_adj_857)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i339_4_lut_adj_173.init = 16'h6420;
    FD1P3JX row_i0_i1 (.D(row_c_15), .SP(clk_c_enable_41), .PD(n9148), 
            .CK(clk_c), .Q(row_c_0)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i1.GSR = "DISABLED";
    FD1P3IX row_i0_i2 (.D(row_c_0), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_1)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i2.GSR = "DISABLED";
    LUT4 i343_4_lut_adj_174 (.A(row_c_14), .B(row_c_15), .C(line_7__N_560[6]), 
         .D(line_7__N_568[6]), .Z(n279_adj_861)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i343_4_lut_adj_174.init = 16'h6420;
    FD1P3IX row_i0_i3 (.D(row_c_1), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_2)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i3.GSR = "DISABLED";
    FD1P3IX row_i0_i4 (.D(row_c_2), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_3)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i4.GSR = "DISABLED";
    FD1P3IX row_i0_i5 (.D(row_c_3), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_4)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i5.GSR = "DISABLED";
    FD1P3IX row_i0_i6 (.D(row_c_4), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_5)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i6.GSR = "DISABLED";
    FD1P3IX row_i0_i7 (.D(row_c_5), .SP(clk_c_enable_41), .CD(n9148), 
            .CK(clk_c), .Q(row_c_6)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=11, LSE_RCOL=3, LSE_LLINE=73, LSE_RLINE=82 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(72[8] 78[6])
    defparam row_i0_i7.GSR = "DISABLED";
    PFUMX i13538 (.BLUT(n17050), .ALUT(n17049), .C0(row_c_0), .Z(n17051));
    LUT4 i1_4_lut_adj_175 (.A(n294_adj_862), .B(n8423), .C(n15843), .D(n6), 
         .Z(line_7__N_466[7])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_175.init = 16'hccce;
    LUT4 i1_4_lut_adj_176 (.A(n282_adj_863), .B(n285_adj_864), .C(n16810), 
         .D(n16811), .Z(n294_adj_862)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_176.init = 16'h0ace;
    LUT4 i1_4_lut_adj_177 (.A(n288_adj_865), .B(n14232), .C(n8555), .D(n15843), 
         .Z(n8423)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_177.init = 16'h3032;
    LUT4 i1_4_lut_adj_178 (.A(n17051), .B(n261_adj_866), .C(n16845), .D(n16846), 
         .Z(n282_adj_863)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_178.init = 16'h0ace;
    LUT4 i1_4_lut_adj_179 (.A(n264_adj_867), .B(n267_adj_868), .C(n16844), 
         .D(n16843), .Z(n285_adj_864)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_179.init = 16'h0ace;
    LUT4 i337_4_lut_adj_180 (.A(row_c_2), .B(n11551), .C(row_c_3), .D(n11547), 
         .Z(n261_adj_866)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i337_4_lut_adj_180.init = 16'h101a;
    LUT4 i1_4_lut_adj_181 (.A(n16875), .B(n273_adj_869), .C(n16841), .D(n16842), 
         .Z(n288_adj_865)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_181.init = 16'h0ace;
    LUT4 i1_4_lut_adj_182 (.A(n276_adj_870), .B(n6), .C(n280_adj_871), 
         .D(n15836), .Z(n8555)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_182.init = 16'h3032;
    LUT4 i342_4_lut_adj_183 (.A(row_c_12), .B(row_c_13), .C(line_7__N_528[5]), 
         .D(n16780), .Z(n276_adj_870)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i342_4_lut_adj_183.init = 16'h6420;
    LUT4 i2_3_lut_adj_184 (.A(n279_adj_872), .B(row_c_13), .C(row_c_12), 
         .Z(n280_adj_871)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i2_3_lut_adj_184.init = 16'h0202;
    LUT4 i341_4_lut_adj_185 (.A(row_c_10), .B(n11551), .C(row_c_11), .D(n11547), 
         .Z(n273_adj_869)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i341_4_lut_adj_185.init = 16'h101a;
    LUT4 i338_4_lut_adj_186 (.A(row_c_4), .B(row_c_5), .C(line_7__N_528[5]), 
         .D(n16780), .Z(n264_adj_867)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i338_4_lut_adj_186.init = 16'h6420;
    LUT4 i339_4_lut_adj_187 (.A(row_c_6), .B(row_c_7), .C(n16860), .D(n16782), 
         .Z(n267_adj_868)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i339_4_lut_adj_187.init = 16'h4602;
    LUT4 i1_4_lut_adj_188 (.A(n294_adj_873), .B(n8424), .C(n15843), .D(n6), 
         .Z(line_7__N_466[4])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_188.init = 16'hccce;
    LUT4 i1_4_lut_adj_189 (.A(n282_adj_874), .B(n8546), .C(n16844), .D(n16843), 
         .Z(n294_adj_873)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_189.init = 16'hccce;
    LUT4 i1_4_lut_adj_190 (.A(n288), .B(n14232), .C(n8556), .D(n15843), 
         .Z(n8424)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_190.init = 16'h3032;
    LUT4 i343_4_lut_adj_191 (.A(row_c_14), .B(row_c_15), .C(n16860), .D(n16782), 
         .Z(n279_adj_872)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i343_4_lut_adj_191.init = 16'h4602;
    PFUMX i13436 (.BLUT(n16894), .ALUT(n16895), .C0(row_c_0), .Z(n16896));
    LUT4 i1_4_lut_adj_192 (.A(n16896), .B(n262), .C(row_c_3), .D(row_c_2), 
         .Z(n282_adj_874)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_192.init = 16'hccce;
    LUT4 i1_4_lut_adj_193 (.A(n264_adj_858), .B(n16811), .C(n268_adj_853), 
         .D(n16844), .Z(n8546)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i1_4_lut_adj_193.init = 16'h3032;
    LUT4 i2_4_lut_adj_194 (.A(n48), .B(n16846), .C(n15173), .D(row_c_3), 
         .Z(n262)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i2_4_lut_adj_194.init = 16'h3022;
    LUT4 i339_4_lut_adj_195 (.A(row_c_6), .B(row_c_7), .C(n15228), .D(n15166), 
         .Z(n267_adj_852)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(123[4] 140[11])
    defparam i339_4_lut_adj_195.init = 16'h4602;
    PFUMX i13426 (.BLUT(n16879), .ALUT(n16880), .C0(row_c_0), .Z(n16881));
    LUT4 i9144_2_lut (.A(temp_cnt[1]), .B(temp_cnt[2]), .Z(n11547)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i9144_2_lut.init = 16'h2222;
    \clk_div(COUNTER_NUM=100000)  clk16Hz_uut (.GND_net(GND_net), .clk16Hz(clk16Hz), 
            .clk_c(clk_c), .cnt_31__N_710(cnt_31__N_710)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(33[2] 38[3])
    \clk_div(COUNTER_NUM=1200)  clk10KHz_uut (.GND_net(GND_net), .clk10KHz(clk10KHz), 
            .clk_c(clk_c), .cnt_31__N_779(cnt_31__N_779)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(65[2] 70[3])
    
endmodule
//
// Verilog Description of module \clk_div(COUNTER_NUM=100000) 
//

module \clk_div(COUNTER_NUM=100000)  (GND_net, clk16Hz, clk_c, cnt_31__N_710) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk16Hz;
    input clk_c;
    output cnt_31__N_710;
    
    wire clk16Hz /* synthesis is_clock=1, SET_AS_NETWORK=\u5/clk16Hz */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/led_scan.v(28[7:14])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(20[11:14])
    
    wire n14095;
    wire [31:0]cnt;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(23[15:18])
    
    wire n14096, n14094, invert_N_711, n14087, n14088, n14093, n14129;
    wire [31:0]n133;
    
    wire n14089, n14090, n14128, n14127, n14126, n14125, n14092, 
        n14124, n14123, n14122, n14121, n14120, n14119, n14118, 
        n14117, n14116, n14115, n14114, n14091, n14101, n14100, 
        n14099, n14098, n14097;
    
    CCU2D add_11529_20 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14095), 
          .COUT(n14096));
    defparam add_11529_20.INIT0 = 16'h5555;
    defparam add_11529_20.INIT1 = 16'h5555;
    defparam add_11529_20.INJECT1_0 = "NO";
    defparam add_11529_20.INJECT1_1 = "NO";
    CCU2D add_11529_18 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14094), 
          .COUT(n14095));
    defparam add_11529_18.INIT0 = 16'h5555;
    defparam add_11529_18.INIT1 = 16'h5555;
    defparam add_11529_18.INJECT1_0 = "NO";
    defparam add_11529_18.INJECT1_1 = "NO";
    FD1S3AX invert_15 (.D(invert_N_711), .CK(clk_c), .Q(clk16Hz)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=33, LSE_RLINE=38 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(33[5] 43[8])
    defparam invert_15.GSR = "ENABLED";
    CCU2D add_11529_4 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14087), 
          .COUT(n14088));
    defparam add_11529_4.INIT0 = 16'h5aaa;
    defparam add_11529_4.INIT1 = 16'h5aaa;
    defparam add_11529_4.INJECT1_0 = "NO";
    defparam add_11529_4.INJECT1_1 = "NO";
    CCU2D add_11529_16 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14093), 
          .COUT(n14094));
    defparam add_11529_16.INIT0 = 16'h5aaa;
    defparam add_11529_16.INIT1 = 16'h5aaa;
    defparam add_11529_16.INJECT1_0 = "NO";
    defparam add_11529_16.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_33 (.A0(cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14129), .S0(n133[31]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_33.INIT1 = 16'h0000;
    defparam cnt_4439_add_4_33.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_33.INJECT1_1 = "NO";
    CCU2D add_11529_8 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14089), 
          .COUT(n14090));
    defparam add_11529_8.INIT0 = 16'h5aaa;
    defparam add_11529_8.INIT1 = 16'h5555;
    defparam add_11529_8.INJECT1_0 = "NO";
    defparam add_11529_8.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_31 (.A0(cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14128), .COUT(n14129), .S0(n133[29]), .S1(n133[30]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_31.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_29 (.A0(cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14127), .COUT(n14128), .S0(n133[27]), .S1(n133[28]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_29.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_27 (.A0(cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14126), .COUT(n14127), .S0(n133[25]), .S1(n133[26]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_27.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_25 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14125), .COUT(n14126), .S0(n133[23]), .S1(n133[24]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_25.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_25.INJECT1_1 = "NO";
    CCU2D add_11529_14 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14092), 
          .COUT(n14093));
    defparam add_11529_14.INIT0 = 16'h5555;
    defparam add_11529_14.INIT1 = 16'h5555;
    defparam add_11529_14.INJECT1_0 = "NO";
    defparam add_11529_14.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_23 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14124), .COUT(n14125), .S0(n133[21]), .S1(n133[22]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_23.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14123), .COUT(n14124), .S0(n133[19]), .S1(n133[20]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_21.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14122), .COUT(n14123), .S0(n133[17]), .S1(n133[18]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_19.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14121), .COUT(n14122), .S0(n133[15]), .S1(n133[16]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_17.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14120), .COUT(n14121), .S0(n133[13]), .S1(n133[14]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_15.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14119), .COUT(n14120), .S0(n133[11]), .S1(n133[12]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_13.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14118), .COUT(n14119), .S0(n133[9]), .S1(n133[10]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_11.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14117), 
          .COUT(n14118), .S0(n133[7]), .S1(n133[8]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_9.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14116), 
          .COUT(n14117), .S0(n133[5]), .S1(n133[6]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_7.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14115), 
          .COUT(n14116), .S0(n133[3]), .S1(n133[4]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_5.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14114), 
          .COUT(n14115), .S0(n133[1]), .S1(n133[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_4439_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_4439_add_4_3.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_3.INJECT1_1 = "NO";
    CCU2D add_11529_12 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14091), 
          .COUT(n14092));
    defparam add_11529_12.INIT0 = 16'h5555;
    defparam add_11529_12.INIT1 = 16'h5555;
    defparam add_11529_12.INJECT1_0 = "NO";
    defparam add_11529_12.INJECT1_1 = "NO";
    CCU2D cnt_4439_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n14114), .S1(n133[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439_add_4_1.INIT0 = 16'hF000;
    defparam cnt_4439_add_4_1.INIT1 = 16'h0555;
    defparam cnt_4439_add_4_1.INJECT1_0 = "NO";
    defparam cnt_4439_add_4_1.INJECT1_1 = "NO";
    CCU2D add_11529_10 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14090), 
          .COUT(n14091));
    defparam add_11529_10.INIT0 = 16'h5aaa;
    defparam add_11529_10.INIT1 = 16'h5aaa;
    defparam add_11529_10.INJECT1_0 = "NO";
    defparam add_11529_10.INJECT1_1 = "NO";
    FD1S3IX cnt_4439__i31 (.D(n133[31]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i31.GSR = "ENABLED";
    FD1S3IX cnt_4439__i30 (.D(n133[30]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i30.GSR = "ENABLED";
    FD1S3IX cnt_4439__i29 (.D(n133[29]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i29.GSR = "ENABLED";
    FD1S3IX cnt_4439__i28 (.D(n133[28]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i28.GSR = "ENABLED";
    FD1S3IX cnt_4439__i27 (.D(n133[27]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i27.GSR = "ENABLED";
    FD1S3IX cnt_4439__i26 (.D(n133[26]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i26.GSR = "ENABLED";
    FD1S3IX cnt_4439__i25 (.D(n133[25]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i25.GSR = "ENABLED";
    FD1S3IX cnt_4439__i24 (.D(n133[24]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i24.GSR = "ENABLED";
    FD1S3IX cnt_4439__i23 (.D(n133[23]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i23.GSR = "ENABLED";
    FD1S3IX cnt_4439__i22 (.D(n133[22]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i22.GSR = "ENABLED";
    FD1S3IX cnt_4439__i21 (.D(n133[21]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i21.GSR = "ENABLED";
    FD1S3IX cnt_4439__i20 (.D(n133[20]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i20.GSR = "ENABLED";
    FD1S3IX cnt_4439__i19 (.D(n133[19]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i19.GSR = "ENABLED";
    FD1S3IX cnt_4439__i18 (.D(n133[18]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i18.GSR = "ENABLED";
    FD1S3IX cnt_4439__i17 (.D(n133[17]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i17.GSR = "ENABLED";
    FD1S3IX cnt_4439__i16 (.D(n133[16]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i16.GSR = "ENABLED";
    FD1S3IX cnt_4439__i15 (.D(n133[15]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i15.GSR = "ENABLED";
    FD1S3IX cnt_4439__i14 (.D(n133[14]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i14.GSR = "ENABLED";
    FD1S3IX cnt_4439__i13 (.D(n133[13]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i13.GSR = "ENABLED";
    FD1S3IX cnt_4439__i12 (.D(n133[12]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i12.GSR = "ENABLED";
    FD1S3IX cnt_4439__i11 (.D(n133[11]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i11.GSR = "ENABLED";
    FD1S3IX cnt_4439__i10 (.D(n133[10]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i10.GSR = "ENABLED";
    FD1S3IX cnt_4439__i9 (.D(n133[9]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i9.GSR = "ENABLED";
    FD1S3IX cnt_4439__i8 (.D(n133[8]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i8.GSR = "ENABLED";
    FD1S3IX cnt_4439__i7 (.D(n133[7]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i7.GSR = "ENABLED";
    FD1S3IX cnt_4439__i6 (.D(n133[6]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i6.GSR = "ENABLED";
    FD1S3IX cnt_4439__i5 (.D(n133[5]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i5.GSR = "ENABLED";
    FD1S3IX cnt_4439__i4 (.D(n133[4]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i4.GSR = "ENABLED";
    FD1S3IX cnt_4439__i3 (.D(n133[3]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i3.GSR = "ENABLED";
    FD1S3IX cnt_4439__i2 (.D(n133[2]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i2.GSR = "ENABLED";
    FD1S3IX cnt_4439__i1 (.D(n133[1]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i1.GSR = "ENABLED";
    FD1S3IX cnt_4439__i0 (.D(n133[0]), .CK(clk_c), .CD(cnt_31__N_710), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4439__i0.GSR = "ENABLED";
    LUT4 invert_I_0_2_lut (.A(clk16Hz), .B(cnt_31__N_710), .Z(invert_N_711)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(40[7] 42[10])
    defparam invert_I_0_2_lut.init = 16'h6666;
    CCU2D add_11529_2 (.A0(cnt[1]), .B0(cnt[0]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n14087));
    defparam add_11529_2.INIT0 = 16'h7000;
    defparam add_11529_2.INIT1 = 16'h5aaa;
    defparam add_11529_2.INJECT1_0 = "NO";
    defparam add_11529_2.INJECT1_1 = "NO";
    CCU2D add_11529_32 (.A0(cnt[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14101), 
          .S1(cnt_31__N_710));
    defparam add_11529_32.INIT0 = 16'h5555;
    defparam add_11529_32.INIT1 = 16'h0000;
    defparam add_11529_32.INJECT1_0 = "NO";
    defparam add_11529_32.INJECT1_1 = "NO";
    CCU2D add_11529_30 (.A0(cnt[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14100), 
          .COUT(n14101));
    defparam add_11529_30.INIT0 = 16'h5555;
    defparam add_11529_30.INIT1 = 16'h5555;
    defparam add_11529_30.INJECT1_0 = "NO";
    defparam add_11529_30.INJECT1_1 = "NO";
    CCU2D add_11529_28 (.A0(cnt[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14099), 
          .COUT(n14100));
    defparam add_11529_28.INIT0 = 16'h5555;
    defparam add_11529_28.INIT1 = 16'h5555;
    defparam add_11529_28.INJECT1_0 = "NO";
    defparam add_11529_28.INJECT1_1 = "NO";
    CCU2D add_11529_26 (.A0(cnt[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14098), 
          .COUT(n14099));
    defparam add_11529_26.INIT0 = 16'h5555;
    defparam add_11529_26.INIT1 = 16'h5555;
    defparam add_11529_26.INJECT1_0 = "NO";
    defparam add_11529_26.INJECT1_1 = "NO";
    CCU2D add_11529_6 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14088), 
          .COUT(n14089));
    defparam add_11529_6.INIT0 = 16'h5555;
    defparam add_11529_6.INIT1 = 16'h5555;
    defparam add_11529_6.INJECT1_0 = "NO";
    defparam add_11529_6.INJECT1_1 = "NO";
    CCU2D add_11529_24 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14097), 
          .COUT(n14098));
    defparam add_11529_24.INIT0 = 16'h5555;
    defparam add_11529_24.INIT1 = 16'h5555;
    defparam add_11529_24.INJECT1_0 = "NO";
    defparam add_11529_24.INJECT1_1 = "NO";
    CCU2D add_11529_22 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14096), 
          .COUT(n14097));
    defparam add_11529_22.INIT0 = 16'h5555;
    defparam add_11529_22.INIT1 = 16'h5555;
    defparam add_11529_22.INJECT1_0 = "NO";
    defparam add_11529_22.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \clk_div(COUNTER_NUM=1200) 
//

module \clk_div(COUNTER_NUM=1200)  (GND_net, clk10KHz, clk_c, cnt_31__N_779) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk10KHz;
    input clk_c;
    output cnt_31__N_779;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(20[11:14])
    
    wire n14131;
    wire [31:0]cnt;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(23[15:18])
    wire [31:0]n133;
    
    wire n14132, n14130, invert_N_780, n14160, n14159, n14158, n14157, 
        n14156, n14155, n14154, n14153, n14152, n14151, n14150, 
        n14149, n14148, n14147, n14146, n14145, n14144, n14143, 
        n14142, n14141, n14140, n14139, n14138, n14137, n14136, 
        n14135, n14134, n14133;
    
    CCU2D cnt_4440_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14131), 
          .COUT(n14132), .S0(n133[3]), .S1(n133[4]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_5.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14130), 
          .COUT(n14131), .S0(n133[1]), .S1(n133[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_3.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n14130), .S1(n133[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_1.INIT0 = 16'hF000;
    defparam cnt_4440_add_4_1.INIT1 = 16'h0555;
    defparam cnt_4440_add_4_1.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_1.INJECT1_1 = "NO";
    FD1S3AX invert_15 (.D(invert_N_780), .CK(clk_c), .Q(clk10KHz)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=65, LSE_RLINE=70 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(33[5] 43[8])
    defparam invert_15.GSR = "ENABLED";
    FD1S3IX cnt_4440__i9 (.D(n133[9]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i9.GSR = "ENABLED";
    FD1S3IX cnt_4440__i8 (.D(n133[8]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i8.GSR = "ENABLED";
    FD1S3IX cnt_4440__i7 (.D(n133[7]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i7.GSR = "ENABLED";
    FD1S3IX cnt_4440__i6 (.D(n133[6]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i6.GSR = "ENABLED";
    FD1S3IX cnt_4440__i5 (.D(n133[5]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i5.GSR = "ENABLED";
    FD1S3IX cnt_4440__i4 (.D(n133[4]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i4.GSR = "ENABLED";
    FD1S3IX cnt_4440__i3 (.D(n133[3]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i3.GSR = "ENABLED";
    FD1S3IX cnt_4440__i2 (.D(n133[2]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i2.GSR = "ENABLED";
    FD1S3IX cnt_4440__i1 (.D(n133[1]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i1.GSR = "ENABLED";
    CCU2D add_11528_32 (.A0(cnt[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14160), 
          .S1(cnt_31__N_779));
    defparam add_11528_32.INIT0 = 16'h5555;
    defparam add_11528_32.INIT1 = 16'h0000;
    defparam add_11528_32.INJECT1_0 = "NO";
    defparam add_11528_32.INJECT1_1 = "NO";
    CCU2D add_11528_30 (.A0(cnt[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14159), 
          .COUT(n14160));
    defparam add_11528_30.INIT0 = 16'h5555;
    defparam add_11528_30.INIT1 = 16'h5555;
    defparam add_11528_30.INJECT1_0 = "NO";
    defparam add_11528_30.INJECT1_1 = "NO";
    CCU2D add_11528_28 (.A0(cnt[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14158), 
          .COUT(n14159));
    defparam add_11528_28.INIT0 = 16'h5555;
    defparam add_11528_28.INIT1 = 16'h5555;
    defparam add_11528_28.INJECT1_0 = "NO";
    defparam add_11528_28.INJECT1_1 = "NO";
    CCU2D add_11528_26 (.A0(cnt[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14157), 
          .COUT(n14158));
    defparam add_11528_26.INIT0 = 16'h5555;
    defparam add_11528_26.INIT1 = 16'h5555;
    defparam add_11528_26.INJECT1_0 = "NO";
    defparam add_11528_26.INJECT1_1 = "NO";
    CCU2D add_11528_24 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14156), 
          .COUT(n14157));
    defparam add_11528_24.INIT0 = 16'h5555;
    defparam add_11528_24.INIT1 = 16'h5555;
    defparam add_11528_24.INJECT1_0 = "NO";
    defparam add_11528_24.INJECT1_1 = "NO";
    CCU2D add_11528_22 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14155), 
          .COUT(n14156));
    defparam add_11528_22.INIT0 = 16'h5555;
    defparam add_11528_22.INIT1 = 16'h5555;
    defparam add_11528_22.INJECT1_0 = "NO";
    defparam add_11528_22.INJECT1_1 = "NO";
    CCU2D add_11528_20 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14154), 
          .COUT(n14155));
    defparam add_11528_20.INIT0 = 16'h5555;
    defparam add_11528_20.INIT1 = 16'h5555;
    defparam add_11528_20.INJECT1_0 = "NO";
    defparam add_11528_20.INJECT1_1 = "NO";
    CCU2D add_11528_18 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14153), 
          .COUT(n14154));
    defparam add_11528_18.INIT0 = 16'h5555;
    defparam add_11528_18.INIT1 = 16'h5555;
    defparam add_11528_18.INJECT1_0 = "NO";
    defparam add_11528_18.INJECT1_1 = "NO";
    CCU2D add_11528_16 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14152), 
          .COUT(n14153));
    defparam add_11528_16.INIT0 = 16'h5555;
    defparam add_11528_16.INIT1 = 16'h5555;
    defparam add_11528_16.INJECT1_0 = "NO";
    defparam add_11528_16.INJECT1_1 = "NO";
    CCU2D add_11528_14 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14151), 
          .COUT(n14152));
    defparam add_11528_14.INIT0 = 16'h5555;
    defparam add_11528_14.INIT1 = 16'h5555;
    defparam add_11528_14.INJECT1_0 = "NO";
    defparam add_11528_14.INJECT1_1 = "NO";
    CCU2D add_11528_12 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14150), 
          .COUT(n14151));
    defparam add_11528_12.INIT0 = 16'h5555;
    defparam add_11528_12.INIT1 = 16'h5555;
    defparam add_11528_12.INJECT1_0 = "NO";
    defparam add_11528_12.INJECT1_1 = "NO";
    LUT4 invert_I_0_2_lut (.A(clk10KHz), .B(cnt_31__N_779), .Z(invert_N_780)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(40[7] 42[10])
    defparam invert_I_0_2_lut.init = 16'h6666;
    CCU2D add_11528_10 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14149), 
          .COUT(n14150));
    defparam add_11528_10.INIT0 = 16'h5555;
    defparam add_11528_10.INIT1 = 16'h5aaa;
    defparam add_11528_10.INJECT1_0 = "NO";
    defparam add_11528_10.INJECT1_1 = "NO";
    CCU2D add_11528_8 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14148), 
          .COUT(n14149));
    defparam add_11528_8.INIT0 = 16'h5aaa;
    defparam add_11528_8.INIT1 = 16'h5555;
    defparam add_11528_8.INJECT1_0 = "NO";
    defparam add_11528_8.INJECT1_1 = "NO";
    CCU2D add_11528_6 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14147), 
          .COUT(n14148));
    defparam add_11528_6.INIT0 = 16'h5aaa;
    defparam add_11528_6.INIT1 = 16'h5555;
    defparam add_11528_6.INJECT1_0 = "NO";
    defparam add_11528_6.INJECT1_1 = "NO";
    CCU2D add_11528_4 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14146), 
          .COUT(n14147));
    defparam add_11528_4.INIT0 = 16'h5aaa;
    defparam add_11528_4.INIT1 = 16'h5555;
    defparam add_11528_4.INJECT1_0 = "NO";
    defparam add_11528_4.INJECT1_1 = "NO";
    CCU2D add_11528_2 (.A0(cnt[1]), .B0(cnt[0]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n14146));
    defparam add_11528_2.INIT0 = 16'h7000;
    defparam add_11528_2.INIT1 = 16'h5aaa;
    defparam add_11528_2.INJECT1_0 = "NO";
    defparam add_11528_2.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_33 (.A0(cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14145), .S0(n133[31]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_33.INIT1 = 16'h0000;
    defparam cnt_4440_add_4_33.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_31 (.A0(cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14144), .COUT(n14145), .S0(n133[29]), .S1(n133[30]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_31.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_29 (.A0(cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14143), .COUT(n14144), .S0(n133[27]), .S1(n133[28]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_29.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_27 (.A0(cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14142), .COUT(n14143), .S0(n133[25]), .S1(n133[26]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_27.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_25 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14141), .COUT(n14142), .S0(n133[23]), .S1(n133[24]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_25.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_25.INJECT1_1 = "NO";
    FD1S3IX cnt_4440__i0 (.D(n133[0]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i0.GSR = "ENABLED";
    FD1S3IX cnt_4440__i31 (.D(n133[31]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i31.GSR = "ENABLED";
    CCU2D cnt_4440_add_4_23 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14140), .COUT(n14141), .S0(n133[21]), .S1(n133[22]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_23.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14139), .COUT(n14140), .S0(n133[19]), .S1(n133[20]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_21.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14138), .COUT(n14139), .S0(n133[17]), .S1(n133[18]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_19.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14137), .COUT(n14138), .S0(n133[15]), .S1(n133[16]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_17.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14136), .COUT(n14137), .S0(n133[13]), .S1(n133[14]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_15.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14135), .COUT(n14136), .S0(n133[11]), .S1(n133[12]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_13.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14134), .COUT(n14135), .S0(n133[9]), .S1(n133[10]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_11.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14133), 
          .COUT(n14134), .S0(n133[7]), .S1(n133[8]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_9.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_4440_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14132), 
          .COUT(n14133), .S0(n133[5]), .S1(n133[6]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_4440_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_4440_add_4_7.INJECT1_0 = "NO";
    defparam cnt_4440_add_4_7.INJECT1_1 = "NO";
    FD1S3IX cnt_4440__i30 (.D(n133[30]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i30.GSR = "ENABLED";
    FD1S3IX cnt_4440__i29 (.D(n133[29]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i29.GSR = "ENABLED";
    FD1S3IX cnt_4440__i28 (.D(n133[28]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i28.GSR = "ENABLED";
    FD1S3IX cnt_4440__i27 (.D(n133[27]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i27.GSR = "ENABLED";
    FD1S3IX cnt_4440__i26 (.D(n133[26]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i26.GSR = "ENABLED";
    FD1S3IX cnt_4440__i25 (.D(n133[25]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i25.GSR = "ENABLED";
    FD1S3IX cnt_4440__i24 (.D(n133[24]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i24.GSR = "ENABLED";
    FD1S3IX cnt_4440__i23 (.D(n133[23]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i23.GSR = "ENABLED";
    FD1S3IX cnt_4440__i22 (.D(n133[22]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i22.GSR = "ENABLED";
    FD1S3IX cnt_4440__i21 (.D(n133[21]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i21.GSR = "ENABLED";
    FD1S3IX cnt_4440__i20 (.D(n133[20]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i20.GSR = "ENABLED";
    FD1S3IX cnt_4440__i19 (.D(n133[19]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i19.GSR = "ENABLED";
    FD1S3IX cnt_4440__i18 (.D(n133[18]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i18.GSR = "ENABLED";
    FD1S3IX cnt_4440__i17 (.D(n133[17]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i17.GSR = "ENABLED";
    FD1S3IX cnt_4440__i16 (.D(n133[16]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i16.GSR = "ENABLED";
    FD1S3IX cnt_4440__i15 (.D(n133[15]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i15.GSR = "ENABLED";
    FD1S3IX cnt_4440__i14 (.D(n133[14]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i14.GSR = "ENABLED";
    FD1S3IX cnt_4440__i13 (.D(n133[13]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i13.GSR = "ENABLED";
    FD1S3IX cnt_4440__i12 (.D(n133[12]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i12.GSR = "ENABLED";
    FD1S3IX cnt_4440__i11 (.D(n133[11]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i11.GSR = "ENABLED";
    FD1S3IX cnt_4440__i10 (.D(n133[10]), .CK(clk_c), .CD(cnt_31__N_779), 
            .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/clk_div.v(41[15:25])
    defparam cnt_4440__i10.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module BIN_To_BCD
//

module BIN_To_BCD (\BH1750_data_out[11] , \ones[3] , \ones[1] , \BH1750_data_out[12] , 
            tens_3__N_420, \BH1750_data_out[13] , tens_3__N_418, \ones[2] , 
            seg_led1_c_4, seg_led1_c_3, seg_led1_c_5, seg_led1_c_6, 
            seg_led1_c_2, seg_led1_c_1, seg_led1_c_0) /* synthesis syn_module_defined=1 */ ;
    input \BH1750_data_out[11] ;
    output \ones[3] ;
    output \ones[1] ;
    input \BH1750_data_out[12] ;
    input tens_3__N_420;
    input \BH1750_data_out[13] ;
    input tens_3__N_418;
    output \ones[2] ;
    output seg_led1_c_4;
    output seg_led1_c_3;
    output seg_led1_c_5;
    output seg_led1_c_6;
    output seg_led1_c_2;
    output seg_led1_c_1;
    output seg_led1_c_0;
    
    
    wire n16761;
    wire [3:0]n161;
    
    wire n16756, n16848;
    wire [3:0]tens;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(34[14:18])
    
    LUT4 i4714_2_lut_3_lut_3_lut_4_lut (.A(n16761), .B(\BH1750_data_out[11] ), 
         .C(n161[1]), .D(n161[2]), .Z(\ones[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bin_to_bcd.v(36[27:42])
    defparam i4714_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4699_2_lut_4_lut_4_lut (.A(n16761), .B(\BH1750_data_out[11] ), 
         .C(n161[1]), .D(n161[2]), .Z(\ones[1] )) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bin_to_bcd.v(36[27:42])
    defparam i4699_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i4721_3_lut_rep_345_4_lut_3_lut_4_lut (.A(n16761), .B(\BH1750_data_out[11] ), 
         .C(n161[1]), .D(n161[2]), .Z(n16756)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bin_to_bcd.v(36[27:42])
    defparam i4721_3_lut_rep_345_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 BH1750_data_out_12__bdd_4_lut (.A(\BH1750_data_out[12] ), .B(tens_3__N_420), 
         .C(\BH1750_data_out[13] ), .D(tens_3__N_418), .Z(n16761)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam BH1750_data_out_12__bdd_4_lut.init = 16'h2962;
    LUT4 i4656_2_lut_rep_437 (.A(tens_3__N_420), .B(\BH1750_data_out[13] ), 
         .Z(n16848)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bin_to_bcd.v(36[27:42])
    defparam i4656_2_lut_rep_437.init = 16'heeee;
    LUT4 BH1750_data_out_12__bdd_4_lut_13936 (.A(\BH1750_data_out[12] ), .B(tens_3__N_420), 
         .C(\BH1750_data_out[13] ), .D(tens_3__N_418), .Z(tens[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam BH1750_data_out_12__bdd_4_lut_13936.init = 16'h83c8;
    LUT4 BH1750_data_out_12__bdd_4_lut_13935 (.A(\BH1750_data_out[12] ), .B(tens_3__N_420), 
         .C(\BH1750_data_out[13] ), .D(tens_3__N_418), .Z(n161[2])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam BH1750_data_out_12__bdd_4_lut_13935.init = 16'h4204;
    LUT4 BH1750_data_out_12__bdd_4_lut_13934 (.A(\BH1750_data_out[12] ), .B(tens_3__N_420), 
         .C(\BH1750_data_out[13] ), .D(tens_3__N_418), .Z(n161[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam BH1750_data_out_12__bdd_4_lut_13934.init = 16'h0db0;
    LUT4 i4707_3_lut_4_lut (.A(n16761), .B(\BH1750_data_out[11] ), .C(n161[1]), 
         .D(n161[2]), .Z(\ones[2] )) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bin_to_bcd.v(36[27:42])
    defparam i4707_3_lut_4_lut.init = 16'h998a;
    LUT4 i9100_3_lut_4_lut (.A(n16848), .B(tens_3__N_418), .C(tens[1]), 
         .D(n16756), .Z(seg_led1_c_4)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (D))) */ ;
    defparam i9100_3_lut_4_lut.init = 16'h00f7;
    LUT4 mux_41_Mux_3_i7_4_lut_3_lut_4_lut (.A(n16848), .B(tens_3__N_418), 
         .C(tens[1]), .D(n16756), .Z(seg_led1_c_3)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A !(C+!(D)))) */ ;
    defparam mux_41_Mux_3_i7_4_lut_3_lut_4_lut.init = 16'h78f7;
    LUT4 tens_0__bdd_3_lut_4_lut (.A(n16848), .B(tens_3__N_418), .C(tens[1]), 
         .D(n16756), .Z(seg_led1_c_5)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A (C+(D)))) */ ;
    defparam tens_0__bdd_3_lut_4_lut.init = 16'h088f;
    LUT4 mux_41_Mux_6_i7_3_lut_3_lut_4_lut (.A(n16848), .B(tens_3__N_418), 
         .C(tens[1]), .D(n16756), .Z(seg_led1_c_6)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C))+!A !(C))) */ ;
    defparam mux_41_Mux_6_i7_3_lut_3_lut_4_lut.init = 16'h78f8;
    LUT4 i2_3_lut_4_lut (.A(n16848), .B(tens_3__N_418), .C(tens[1]), .D(n16756), 
         .Z(seg_led1_c_2)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;
    defparam i2_3_lut_4_lut.init = 16'hff8f;
    LUT4 i12917_2_lut_3_lut_3_lut_4_lut (.A(n16848), .B(tens_3__N_418), 
         .C(n16756), .D(tens[1]), .Z(seg_led1_c_1)) /* synthesis lut_function=(((C (D)+!C !(D))+!B)+!A) */ ;
    defparam i12917_2_lut_3_lut_3_lut_4_lut.init = 16'hf77f;
    LUT4 i8860_2_lut_3_lut_4_lut (.A(n16848), .B(tens_3__N_418), .C(tens[1]), 
         .D(n16756), .Z(seg_led1_c_0)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam i8860_2_lut_3_lut_4_lut.init = 16'hf8f7;
    
endmodule
//
// Verilog Description of module seg_led
//

module seg_led (\BH1750_data_out[10] , \ones[2] , \ones[3] , \ones[1] , 
            seg_led2_c_0, seg_led2_c_4, seg_led2_c_6, seg_led2_c_5, 
            seg_led2_c_3, seg_led2_c_2, seg_led2_c_1) /* synthesis syn_module_defined=1 */ ;
    input \BH1750_data_out[10] ;
    input \ones[2] ;
    input \ones[3] ;
    input \ones[1] ;
    output seg_led2_c_0;
    output seg_led2_c_4;
    output seg_led2_c_6;
    output seg_led2_c_5;
    output seg_led2_c_3;
    output seg_led2_c_2;
    output seg_led2_c_1;
    
    
    LUT4 mux_42_Mux_0_i15_4_lut (.A(\BH1750_data_out[10] ), .B(\ones[2] ), 
         .C(\ones[3] ), .D(\ones[1] ), .Z(seg_led2_c_0)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (B (C+!(D))+!B (C (D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/seg_led.v(40[25:34])
    defparam mux_42_Mux_0_i15_4_lut.init = 16'h0f39;
    LUT4 i12949_4_lut (.A(\BH1750_data_out[10] ), .B(\ones[2] ), .C(\ones[3] ), 
         .D(\ones[1] ), .Z(seg_led2_c_4)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i12949_4_lut.init = 16'h0511;
    LUT4 ones_1__bdd_4_lut_13363 (.A(\ones[1] ), .B(\ones[3] ), .C(\ones[2] ), 
         .D(\BH1750_data_out[10] ), .Z(seg_led2_c_6)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (C)+!B !(C)))) */ ;
    defparam ones_1__bdd_4_lut_13363.init = 16'h1636;
    LUT4 ones_2__bdd_4_lut_13362 (.A(\ones[2] ), .B(\ones[3] ), .C(\ones[1] ), 
         .D(\BH1750_data_out[10] ), .Z(seg_led2_c_5)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (C)+!B (C+(D))))) */ ;
    defparam ones_2__bdd_4_lut_13362.init = 16'h0627;
    LUT4 ones_3__bdd_4_lut (.A(\ones[3] ), .B(\ones[2] ), .C(\ones[1] ), 
         .D(\BH1750_data_out[10] ), .Z(seg_led2_c_3)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;
    defparam ones_3__bdd_4_lut.init = 16'h1653;
    LUT4 ones_2__bdd_4_lut (.A(\ones[2] ), .B(\BH1750_data_out[10] ), .C(\ones[3] ), 
         .D(\ones[1] ), .Z(seg_led2_c_2)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B (D)))) */ ;
    defparam ones_2__bdd_4_lut.init = 16'h0e5f;
    LUT4 ones_1__bdd_4_lut (.A(\ones[1] ), .B(\ones[3] ), .C(\ones[2] ), 
         .D(\BH1750_data_out[10] ), .Z(seg_led2_c_1)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C)+!B (C (D))))) */ ;
    defparam ones_1__bdd_4_lut.init = 16'h2717;
    
endmodule
//
// Verilog Description of module BH1750
//

module BH1750 (clk_100khz, rst_c, clk_c_enable_30, cnt_11__N_309_out_2, 
            tens_3__N_418, clk_c, n7889, n6159, GND_net, n9152, 
            tens_3__N_420, \BH1750_data_out[13] , \BH1750_data_out[12] , 
            \BH1750_data_out[11] , \BH1750_data_out[10] , n9160, scl_c, 
            r_sda) /* synthesis syn_module_defined=1 */ ;
    output clk_100khz;
    input rst_c;
    input clk_c_enable_30;
    input cnt_11__N_309_out_2;
    output tens_3__N_418;
    input clk_c;
    output n7889;
    output n6159;
    input GND_net;
    output n9152;
    output tens_3__N_420;
    output \BH1750_data_out[13] ;
    output \BH1750_data_out[12] ;
    output \BH1750_data_out[11] ;
    output \BH1750_data_out[10] ;
    input n9160;
    output scl_c;
    output r_sda;
    
    wire clk_100khz /* synthesis is_clock=1, SET_AS_NETWORK=\u1/clk_100khz */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(55[6:16])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(20[11:14])
    wire [11:0]cnt;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(73[13:16])
    
    wire n16852, n16849, n17, ctl_sda, clk_100khz_enable_1, n8504, 
        n16876, n16877, n16878, n14257, n8558, n199, n16862, n16786, 
        n280, n117, n223, n15118, clk_c_enable_18, n247, n245, 
        n190, n16789, n16791, n44, n11440, n15305, n203, n208, 
        n380, n16866, n14201, n143, n146, n14316, n15155, n50, 
        n16856, n16800, n14604, n16817, n16812, n16825, n16823, 
        n4, n16824, n16814, n15189, n16795, n4_adj_796, n8, n16753, 
        n15163, n212, n206, n390, n4_adj_797, n14194, n14208, 
        n59, n16794, n15126;
    wire [7:0]n6390;
    
    wire n127, n5, n16826, n11243, n4_adj_798, n227, n16857, n15701, 
        n16847, n17_adj_799, n17_adj_800, n53, n260, n16850, n16790, 
        n11818, n17703, n11854, n12006, n15434, n16883, n16851, 
        n16787, n16882, n17_adj_801, n16749, n16022, n16820, n16886, 
        n16885, n17_adj_802, n16822, n16827, n4_adj_803, n16888, 
        n22, n16776, n11474, n15146, n16801, n12062, n12072, n16892, 
        n16775, n12018, n8760, n16891, n15703, n16898, n15117, 
        n16819, n37, n16821, n16093, n16092, n16094, n16897, n14290, 
        n15139, n4_adj_804, n16799, n15175, n17_adj_805, n6, n16815, 
        n4_adj_806, n66, n58, n69, n15669, n11571, n151, n16831, 
        n16035, n112, n8121, n6_adj_807, n16796, n14267, n12036, 
        n15103, n10, n15340, n8_adj_808, n15331;
    wire [11:0]n67;
    
    wire n16788, n16808, n14235, n290, n11982, n16863, n101, n15149, 
        n125, n16813, n16771, n11012, n15696, n64, n15298, n16793, 
        n17_adj_809, n16763, n15368, n8753, n8754, n16777, n15333, 
        n16890, n132, n15164, n16818, n11984, n16807, n16770, 
        n16772, n51, n56, n52, n16760, n16853, n10_adj_810, n31, 
        n36, n24, n11208, n16797, n15711, n30, n26, n16837, 
        n15160, n8261, n16838, n271, n15712, n15511, n16870, n16893, 
        n14248, n11074, n15496, n16871, n16872, n15295, n11444, 
        n50_adj_811, n48, n17_adj_812, n26_adj_813, n11569, n15539, 
        n11148, n48_adj_814, n6_adj_815, n11410, n46, n11630, n11064, 
        n6_adj_816, n38, n15201, n15210, n119, n121, n15216;
    wire [11:0]n1;
    
    wire n23, n16806, n11266, n14364, n15247, n16020, n126, n14110;
    wire [7:0]cnt_100khz;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(44[13:23])
    
    wire n15479, n14109, n16769, n11300, n15450, n8757, clk_c_enable_14, 
        n8751, n16548, n8748, n14108;
    wire [5:0]n29;
    
    wire n16854, n16864, n14199, n14456, n15176, n20, n14107, 
        n16033, n14106;
    wire [8:0]n6399;
    
    wire n14105, n11776, n16785, n14202, n16034, n7942, n4_adj_823, 
        n16764, n16858, n14226, n16021, n23_adj_824, n11988, n14243, 
        n10_adj_825, n16783, n13, n15159, n14104, n14103, n8_adj_826, 
        clk_100khz_enable_2, n55_adj_827, n15100, n9, n14, n15107, 
        n242, n15114, n11, n236, n14276, n16547, n14102, n11382, 
        n15408, n27, n33_adj_828, n287, n16899, n16884, n15544, 
        n47, n14234, n14223, n278, n14_adj_829, n17_adj_830, n91, 
        n96, n92, n15293, n8_adj_831, n4_adj_832, n15326, n4_adj_833, 
        n15561, n15523, n15559, n15531, n15521, n15529, n128, 
        n77_adj_834, n131, n15525, n116, n132_adj_835, n15456, n15343, 
        n11268, n121_adj_836, n84, n4_adj_837, clk_100khz_enable_3, 
        n15628, n4_adj_838, n15133, n15323, n12, n10_adj_839, n15314, 
        n15317, n25, clk_100khz_N_397, n14167, n11396, n4_adj_840, 
        n5_adj_841, n19, n24_adj_842, n20_adj_843, n15307, n14271, 
        n22_adj_844, n16, n11386, n36_adj_845, n23_adj_846, n17_adj_847, 
        n94, n50_adj_848, n15135;
    
    LUT4 cnt_11__I_0_332_i17_2_lut_3_lut_4_lut (.A(cnt[3]), .B(n16852), 
         .C(n16849), .D(cnt[1]), .Z(n17)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(132[7:9])
    defparam cnt_11__I_0_332_i17_2_lut_3_lut_4_lut.init = 16'hfdff;
    FD1P3AY ctl_sda_293 (.D(n8504), .SP(clk_100khz_enable_1), .CK(clk_100khz), 
            .Q(ctl_sda)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam ctl_sda_293.GSR = "ENABLED";
    PFUMX i13424 (.BLUT(n16876), .ALUT(n16877), .C0(cnt[6]), .Z(n16878));
    PFUMX i359 (.BLUT(n14257), .ALUT(n8558), .C0(cnt[0]), .Z(n199));
    LUT4 cnt_11__I_0_382_i17_2_lut_rep_375_3_lut_4_lut (.A(cnt[1]), .B(n16862), 
         .C(n16852), .D(cnt[3]), .Z(n16786)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(297[8:11])
    defparam cnt_11__I_0_382_i17_2_lut_rep_375_3_lut_4_lut.init = 16'hfffe;
    PFUMX i363 (.BLUT(n280), .ALUT(n117), .C0(cnt[4]), .Z(n223));
    LUT4 i3_4_lut (.A(rst_c), .B(clk_c_enable_30), .C(cnt[11]), .D(n15118), 
         .Z(clk_c_enable_18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    PFUMX i357 (.BLUT(n247), .ALUT(n245), .C0(cnt[5]), .Z(n190));
    LUT4 i1_4_lut (.A(n16789), .B(n16791), .C(n44), .D(n11440), .Z(n15305)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'heaaa;
    PFUMX i354 (.BLUT(n203), .ALUT(n208), .C0(cnt[11]), .Z(n380));
    LUT4 i1_4_lut_adj_15 (.A(cnt[0]), .B(n16866), .C(n14201), .D(n143), 
         .Z(n8504)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_adj_15.init = 16'h3230;
    LUT4 i2_3_lut (.A(cnt[11]), .B(cnt[7]), .C(n146), .Z(n14201)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i2_3_lut.init = 16'h1010;
    PFUMX i85 (.BLUT(n14316), .ALUT(n15155), .C0(cnt[4]), .Z(n50));
    LUT4 cnt_11__I_0_374_i17_2_lut_rep_389_3_lut_4_lut (.A(cnt[1]), .B(n16862), 
         .C(n16856), .D(cnt[3]), .Z(n16800)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(297[8:11])
    defparam cnt_11__I_0_374_i17_2_lut_rep_389_3_lut_4_lut.init = 16'hfeff;
    LUT4 i3_4_lut_adj_16 (.A(cnt[10]), .B(cnt[8]), .C(n14604), .D(cnt[9]), 
         .Z(n15118)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut_adj_16.init = 16'h0010;
    LUT4 i1_4_lut_adj_17 (.A(n16817), .B(n16812), .C(n16825), .D(n16823), 
         .Z(n4)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_17.init = 16'hfac8;
    LUT4 i1_4_lut_adj_18 (.A(n16824), .B(n16814), .C(n15189), .D(n16795), 
         .Z(n4_adj_796)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_18.init = 16'hfac8;
    LUT4 i1_4_lut_adj_19 (.A(cnt[5]), .B(n8), .C(n16753), .D(n15163), 
         .Z(n14604)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(73[13:16])
    defparam i1_4_lut_adj_19.init = 16'heca0;
    PFUMX i364 (.BLUT(n212), .ALUT(n206), .C0(cnt[6]), .Z(n390));
    LUT4 i1_2_lut (.A(cnt[2]), .B(cnt[1]), .Z(n4_adj_797)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut.init = 16'h8888;
    PFUMX i89 (.BLUT(n14194), .ALUT(n14208), .C0(cnt[6]), .Z(n59));
    LUT4 cnt_11__I_0_326_i17_2_lut_rep_383_3_lut_4_lut (.A(cnt[3]), .B(n16852), 
         .C(n16862), .D(cnt[1]), .Z(n16794)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(132[7:9])
    defparam cnt_11__I_0_326_i17_2_lut_rep_383_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .D(n16789), .Z(n15126)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h0084;
    LUT4 i8818_2_lut (.A(cnt[1]), .B(cnt[2]), .Z(n6390[3])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i8818_2_lut.init = 16'h2222;
    PFUMX i21 (.BLUT(n127), .ALUT(n5), .C0(cnt[5]), .Z(n8));
    LUT4 i9322_2_lut_3_lut_4_lut_4_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), 
         .D(n16826), .Z(n11243)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+((D)+!C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(142[7:9])
    defparam i9322_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hffe7;
    LUT4 i1_4_lut_4_lut (.A(cnt[2]), .B(cnt[1]), .C(cnt[5]), .D(cnt[0]), 
         .Z(n4_adj_798)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C (D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_4_lut.init = 16'h1004;
    LUT4 i1_4_lut_4_lut_adj_20 (.A(cnt[6]), .B(cnt[3]), .C(cnt[1]), .D(cnt[0]), 
         .Z(n227)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_4_lut_adj_20.init = 16'h8002;
    LUT4 cnt_11__I_0_412_i17_rep_69_2_lut_3_lut_4_lut (.A(cnt[4]), .B(n16857), 
         .C(n16849), .D(cnt[1]), .Z(n15701)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(145[7:9])
    defparam cnt_11__I_0_412_i17_rep_69_2_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 cnt_11__I_0_345_i17_2_lut_3_lut_4_lut (.A(cnt[4]), .B(n16857), 
         .C(n16847), .D(cnt[1]), .Z(n17_adj_799)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(145[7:9])
    defparam cnt_11__I_0_345_i17_2_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 cnt_11__I_0_344_i17_2_lut_3_lut_4_lut (.A(cnt[4]), .B(n16857), 
         .C(n16862), .D(cnt[1]), .Z(n17_adj_800)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(145[7:9])
    defparam cnt_11__I_0_344_i17_2_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 i86_4_lut_4_lut (.A(cnt[7]), .B(cnt[1]), .C(cnt[2]), .D(cnt[6]), 
         .Z(n53)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;
    defparam i86_4_lut_4_lut.init = 16'h0180;
    LUT4 i1_4_lut_4_lut_adj_21 (.A(cnt[0]), .B(cnt[2]), .C(cnt[3]), .D(cnt[1]), 
         .Z(n260)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !(C+(D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_4_lut_adj_21.init = 16'h4005;
    LUT4 cnt_11__I_0_413_i17_2_lut_rep_379_3_lut_4_lut (.A(cnt[4]), .B(n16857), 
         .C(n16850), .D(cnt[1]), .Z(n16790)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(145[7:9])
    defparam cnt_11__I_0_413_i17_2_lut_rep_379_3_lut_4_lut.init = 16'hbfff;
    LUT4 i9444_2_lut_4_lut (.A(n17_adj_800), .B(n11818), .C(n17703), .D(n11854), 
         .Z(n12006)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9444_2_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut (.A(n17_adj_800), .B(n11818), .C(n17703), .D(n16790), 
         .Z(n15434)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_then_4_lut (.A(cnt[2]), .B(cnt[4]), .C(cnt[11]), .D(cnt[5]), 
         .Z(n16883)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_then_4_lut.init = 16'h2000;
    LUT4 cnt_11__I_0_336_i17_2_lut_rep_376_3_lut_4_lut (.A(cnt[4]), .B(n16851), 
         .C(n16862), .D(cnt[1]), .Z(n16787)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(294[8:11])
    defparam cnt_11__I_0_336_i17_2_lut_rep_376_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_4_lut_else_4_lut (.A(cnt[2]), .B(cnt[4]), .C(cnt[11]), .D(cnt[5]), 
         .Z(n16882)) /* synthesis lut_function=(!((B (D)+!B !(C (D)))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_else_4_lut.init = 16'h2088;
    LUT4 cnt_11__I_0_337_i17_2_lut_3_lut_4_lut (.A(cnt[4]), .B(n16851), 
         .C(n16847), .D(cnt[1]), .Z(n17_adj_801)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(294[8:11])
    defparam cnt_11__I_0_337_i17_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i192_4_lut (.A(cnt[1]), .B(n16749), .C(cnt[6]), .D(n16022), 
         .Z(n146)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i192_4_lut.init = 16'hc5c0;
    LUT4 i2_4_lut_then_3_lut (.A(n16820), .B(cnt[2]), .C(cnt[0]), .Z(n16886)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;
    defparam i2_4_lut_then_3_lut.init = 16'hebeb;
    LUT4 i2_4_lut_else_3_lut (.A(cnt[2]), .B(cnt[0]), .C(n16823), .D(n16814), 
         .Z(n16885)) /* synthesis lut_function=(A+(B (D)+!B (C))) */ ;
    defparam i2_4_lut_else_3_lut.init = 16'hfeba;
    LUT4 cnt_11__I_0_431_i17_2_lut_3_lut_4_lut (.A(cnt[3]), .B(n16856), 
         .C(n16847), .D(cnt[1]), .Z(n17_adj_802)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(84[5:6])
    defparam cnt_11__I_0_431_i17_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i20_4_lut_4_lut (.A(cnt[3]), .B(n16856), .C(n16817), .D(n16822), 
         .Z(n44)) /* synthesis lut_function=(A (B+(D))+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(84[5:6])
    defparam i20_4_lut_4_lut.init = 16'hfecc;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt[3]), .B(n16856), .C(cnt_11__N_309_out_2), 
         .D(n16827), .Z(n4_adj_803)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(84[5:6])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i9_4_lut_else_1_lut (.A(n17703), .B(cnt[1]), .C(cnt[0]), .D(cnt[2]), 
         .Z(n16888)) /* synthesis lut_function=(!((B (C)+!B (C (D)))+!A)) */ ;
    defparam i9_4_lut_else_1_lut.init = 16'h0a2a;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n22), .B(n16776), .C(n11854), .D(n11474), 
         .Z(n15146)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'hea00;
    LUT4 cnt_11__I_0_304_i17_2_lut_rep_390_3_lut_4_lut (.A(cnt[3]), .B(n16856), 
         .C(n16862), .D(cnt[1]), .Z(n16801)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(84[5:6])
    defparam cnt_11__I_0_304_i17_2_lut_rep_390_3_lut_4_lut.init = 16'hfeff;
    LUT4 i9616_2_lut (.A(n12062), .B(n12072), .Z(clk_100khz_enable_1)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9616_2_lut.init = 16'h8888;
    LUT4 n6395_bdd_4_lut_then_4_lut (.A(cnt[1]), .B(cnt[11]), .C(cnt[0]), 
         .D(cnt[2]), .Z(n16892)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+((D)+!C)))) */ ;
    defparam n6395_bdd_4_lut_then_4_lut.init = 16'h0018;
    LUT4 i1_4_lut_adj_22 (.A(cnt_11__N_309_out_2), .B(tens_3__N_418), .C(n16775), 
         .D(n12018), .Z(n8760)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_22.init = 16'h0ace;
    LUT4 n6395_bdd_4_lut_else_4_lut (.A(cnt[1]), .B(cnt[11]), .C(cnt[0]), 
         .D(cnt[2]), .Z(n16891)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam n6395_bdd_4_lut_else_4_lut.init = 16'h1000;
    LUT4 cnt_11__I_0_370_i17_rep_71_2_lut_3_lut_4_lut (.A(cnt[3]), .B(n16856), 
         .C(n16849), .D(cnt[1]), .Z(n15703)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(84[5:6])
    defparam cnt_11__I_0_370_i17_rep_71_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 cnt_5__bdd_4_lut_then_3_lut (.A(cnt[5]), .B(cnt[2]), .C(cnt[6]), 
         .Z(n16898)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam cnt_5__bdd_4_lut_then_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_adj_23 (.A(n16812), .B(n15117), .C(n16826), .D(n16819), 
         .Z(n37)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_23.init = 16'hc0c8;
    LUT4 i9044_4_lut (.A(n16821), .B(n16827), .C(n16814), .D(n16820), 
         .Z(n11440)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i9044_4_lut.init = 16'hfac8;
    PFUMX i13024 (.BLUT(n16093), .ALUT(n16092), .C0(cnt[1]), .Z(n16094));
    LUT4 cnt_5__bdd_4_lut_else_3_lut (.A(cnt[7]), .B(cnt[3]), .Z(n16897)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam cnt_5__bdd_4_lut_else_3_lut.init = 16'h2222;
    LUT4 n14290_bdd_4_lut (.A(n14290), .B(n15139), .C(cnt[6]), .D(n4_adj_804), 
         .Z(n16753)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n14290_bdd_4_lut.init = 16'hca00;
    LUT4 cnt_11__I_0_371_i17_2_lut_rep_388_3_lut_4_lut (.A(cnt[1]), .B(n16850), 
         .C(n16856), .D(cnt[3]), .Z(n16799)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(142[7:9])
    defparam cnt_11__I_0_371_i17_2_lut_rep_388_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_adj_24 (.A(cnt[5]), .B(cnt[11]), .Z(n15175)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_adj_24.init = 16'h8888;
    LUT4 i3_4_lut_adj_25 (.A(n17_adj_805), .B(n6), .C(n16815), .D(n16820), 
         .Z(n15117)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut_adj_25.init = 16'h8880;
    LUT4 i2_4_lut (.A(n16817), .B(n11243), .C(n16820), .D(n4_adj_806), 
         .Z(n6)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'hc800;
    LUT4 i33_4_lut (.A(n16815), .B(n66), .C(n58), .D(n16826), .Z(n69)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i33_4_lut.init = 16'hc080;
    LUT4 cnt_11__I_0_443_i17_rep_37_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n16850), 
         .C(n16856), .D(cnt[3]), .Z(n15669)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(142[7:9])
    defparam cnt_11__I_0_443_i17_rep_37_2_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_4_lut_adj_26 (.A(n16825), .B(n16823), .C(n11571), .D(n15189), 
         .Z(n4_adj_806)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'hfac8;
    LUT4 i1_2_lut_adj_27 (.A(cnt[7]), .B(cnt[11]), .Z(n151)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_adj_27.init = 16'h2222;
    LUT4 i1_2_lut_rep_420 (.A(cnt[1]), .B(cnt[2]), .Z(n16831)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_420.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(n16035), .D(n112), 
         .Z(n127)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i5803_3_lut_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .Z(n8121)) /* synthesis lut_function=(!(A (C)+!A !(B+(C)))) */ ;
    defparam i5803_3_lut_3_lut.init = 16'h5e5e;
    LUT4 i1_2_lut_3_lut (.A(cnt[3]), .B(cnt[11]), .C(cnt[4]), .Z(n6_adj_807)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_3_lut_4_lut_adj_28 (.A(n16796), .B(n16825), .C(n16812), .D(n16827), 
         .Z(n14267)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(333[5:9])
    defparam i1_3_lut_4_lut_adj_28.init = 16'hfeee;
    LUT4 i1_4_lut_adj_29 (.A(n12036), .B(n15103), .C(n10), .D(n15340), 
         .Z(n12072)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_29.init = 16'h8000;
    LUT4 i4_4_lut (.A(n16799), .B(n8_adj_808), .C(n15331), .D(n16789), 
         .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i4_4_lut.init = 16'hc080;
    FD1P3AX cnt_4435__i0 (.D(n67[0]), .SP(clk_c_enable_30), .CK(clk_c), 
            .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i0.GSR = "ENABLED";
    LUT4 i358_4_lut (.A(cnt[1]), .B(cnt[7]), .C(cnt[4]), .D(cnt[11]), 
         .Z(n247)) /* synthesis lut_function=(A (C)+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i358_4_lut.init = 16'hb5b0;
    LUT4 i1_3_lut_4_lut_adj_30 (.A(cnt[6]), .B(n16788), .C(n16808), .D(n16812), 
         .Z(n14235)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(151[7:9])
    defparam i1_3_lut_4_lut_adj_30.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_31 (.A(cnt[3]), .B(cnt[11]), .C(cnt[5]), .D(cnt[7]), 
         .Z(n290)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_3_lut_4_lut_adj_31.init = 16'hf200;
    LUT4 i9562_4_lut (.A(n22), .B(n16801), .C(n12006), .D(n16776), .Z(n11982)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i9562_4_lut.init = 16'heaaa;
    LUT4 i1_4_lut_adj_32 (.A(cnt[1]), .B(cnt[6]), .C(cnt[7]), .D(cnt[11]), 
         .Z(n245)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_adj_32.init = 16'ha0a8;
    LUT4 i1_2_lut_3_lut_adj_33 (.A(cnt[3]), .B(cnt[11]), .C(cnt[6]), .Z(n8558)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_3_lut_adj_33.init = 16'h2020;
    LUT4 i1_4_lut_adj_34 (.A(cnt[6]), .B(n4_adj_797), .C(n16863), .D(cnt[4]), 
         .Z(n203)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_adj_34.init = 16'h0a88;
    LUT4 i367_4_lut (.A(cnt[2]), .B(cnt[3]), .C(n101), .D(n15149), .Z(n208)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i367_4_lut.init = 16'h6420;
    LUT4 i1_2_lut_adj_35 (.A(cnt[1]), .B(cnt[5]), .Z(n101)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_adj_35.init = 16'h2222;
    LUT4 i1_2_lut_adj_36 (.A(cnt[5]), .B(cnt[4]), .Z(n15149)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_adj_36.init = 16'h8888;
    LUT4 i186_4_lut_4_lut (.A(cnt[0]), .B(cnt[4]), .C(cnt[1]), .D(cnt[2]), 
         .Z(n125)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i186_4_lut_4_lut.init = 16'h4002;
    LUT4 i1_4_lut_adj_37 (.A(n16813), .B(n16826), .C(n16771), .D(n16789), 
         .Z(n15340)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(88[5:6])
    defparam i1_4_lut_adj_37.init = 16'hfeee;
    LUT4 i1_2_lut_adj_38 (.A(cnt[3]), .B(cnt[2]), .Z(n4_adj_804)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_38.init = 16'h8888;
    LUT4 i8640_2_lut (.A(cnt[3]), .B(cnt[2]), .Z(n11012)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8640_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_441 (.A(cnt[5]), .B(cnt[4]), .Z(n16852)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(132[7:9])
    defparam i1_2_lut_rep_441.init = 16'hbbbb;
    LUT4 i35_4_lut (.A(n69), .B(n15696), .C(n64), .D(n16824), .Z(n15298)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i35_4_lut.init = 16'ha080;
    LUT4 i12747_3_lut_4_lut (.A(n16794), .B(n16793), .C(n17_adj_809), 
         .D(n16763), .Z(n15368)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12747_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_39 (.A(n16801), .B(n22), .C(n8753), .D(cnt_11__N_309_out_2), 
         .Z(n8754)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(381[8:12])
    defparam i1_3_lut_4_lut_adj_39.init = 16'hf1f0;
    LUT4 i2_3_lut_4_lut (.A(n16801), .B(n22), .C(n16775), .D(n16777), 
         .Z(n11474)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(381[8:12])
    defparam i2_3_lut_4_lut.init = 16'he000;
    LUT4 i2_4_lut_adj_40 (.A(n16771), .B(n16796), .C(n15333), .D(n16890), 
         .Z(n8_adj_808)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_40.init = 16'hfac8;
    PFUMX i191 (.BLUT(n132), .ALUT(n15164), .C0(cnt[4]), .Z(n143));
    LUT4 i9530_2_lut_4_lut (.A(n16817), .B(n16796), .C(n16818), .D(n11982), 
         .Z(n11984)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(373[8:12])
    defparam i9530_2_lut_4_lut.init = 16'hef00;
    LUT4 i1_2_lut_rep_359_4_lut (.A(n16807), .B(cnt[11]), .C(cnt[6]), 
         .D(n16825), .Z(n16770)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_2_lut_rep_359_4_lut.init = 16'hffbf;
    LUT4 i1_4_lut_adj_41 (.A(n16772), .B(n51), .C(n56), .D(n52), .Z(n15331)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_41.init = 16'heaaa;
    LUT4 i9186_2_lut_rep_349_3_lut_4_lut (.A(n16800), .B(n16799), .C(n11474), 
         .D(n22), .Z(n16760)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i9186_2_lut_rep_349_3_lut_4_lut.init = 16'hf080;
    LUT4 i1_4_lut_adj_42 (.A(n16827), .B(n16853), .C(n16824), .D(n10_adj_810), 
         .Z(n11818)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i1_4_lut_adj_42.init = 16'hfa32;
    LUT4 i18_4_lut (.A(n31), .B(n36), .C(n16820), .D(n16849), .Z(n15333)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i18_4_lut.init = 16'h8880;
    LUT4 i5650_1_lut (.A(ctl_sda), .Z(n7889)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(37[9:12])
    defparam i5650_1_lut.init = 16'h5555;
    LUT4 i12_4_lut (.A(n16824), .B(n24), .C(n11208), .D(n16817), .Z(n31)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'hc080;
    LUT4 i17_4_lut (.A(n16797), .B(n15711), .C(n30), .D(n16822), .Z(n36)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;
    defparam i17_4_lut.init = 16'h5040;
    LUT4 i50_4_lut_4_lut (.A(cnt[1]), .B(cnt[5]), .C(cnt[0]), .D(cnt[4]), 
         .Z(n26)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i50_4_lut_4_lut.init = 16'h04a4;
    LUT4 i1_2_lut_rep_426 (.A(cnt[1]), .B(cnt[6]), .Z(n16837)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_rep_426.init = 16'h2222;
    LUT4 i1_2_lut_adj_43 (.A(cnt[2]), .B(cnt[0]), .Z(n15160)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_adj_43.init = 16'h2222;
    LUT4 i2_2_lut_3_lut (.A(cnt[1]), .B(cnt[6]), .C(cnt[5]), .Z(n8261)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i2_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_427 (.A(cnt[0]), .B(cnt[5]), .Z(n16838)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_rep_427.init = 16'h4444;
    LUT4 i351_4_lut_4_lut (.A(cnt[0]), .B(cnt[5]), .C(cnt[7]), .D(cnt[1]), 
         .Z(n271)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i351_4_lut_4_lut.init = 16'h44a0;
    LUT4 i5_4_lut (.A(n16812), .B(n16825), .C(n15712), .D(n16824), .Z(n24)) /* synthesis lut_function=(A (C)+!A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'he0a0;
    LUT4 i9_4_lut_then_1_lut_4_lut (.A(cnt[4]), .B(n16851), .C(n16850), 
         .D(cnt[1]), .Z(n17703)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(294[8:11])
    defparam i9_4_lut_then_1_lut_4_lut.init = 16'hefff;
    LUT4 i1_3_lut (.A(cnt[7]), .B(cnt[11]), .C(n16094), .Z(n212)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_3_lut.init = 16'h5454;
    LUT4 i8756_4_lut (.A(n16813), .B(n16812), .C(n16818), .D(n16814), 
         .Z(n11208)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam i8756_4_lut.init = 16'haf8c;
    LUT4 i1_4_lut_adj_44 (.A(cnt[11]), .B(cnt[5]), .C(n260), .D(n15511), 
         .Z(n206)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_adj_44.init = 16'ha2aa;
    LUT4 i362_else_4_lut (.A(cnt[3]), .B(cnt[4]), .C(cnt[0]), .D(cnt[7]), 
         .Z(n16870)) /* synthesis lut_function=(!(A (B+!(C))+!A (C+!(D)))) */ ;
    defparam i362_else_4_lut.init = 16'h2520;
    LUT4 i12822_4_lut (.A(cnt[4]), .B(cnt[2]), .C(n16863), .D(cnt[0]), 
         .Z(n15511)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i12822_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_rep_403_3_lut (.A(cnt[5]), .B(cnt[4]), .C(cnt[3]), .Z(n16814)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(132[7:9])
    defparam i1_2_lut_rep_403_3_lut.init = 16'hfbfb;
    LUT4 i2_3_lut_adj_45 (.A(cnt[11]), .B(cnt[2]), .C(n50), .Z(n14194)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_adj_45.init = 16'h4040;
    LUT4 i2_3_lut_adj_46 (.A(cnt[4]), .B(cnt[3]), .C(n16893), .Z(n14208)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_46.init = 16'h8080;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .D(n16823), .Z(n14248)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((C+(D))+!B)) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hff7b;
    LUT4 i8702_3_lut_4_lut (.A(n16821), .B(n16818), .C(n16826), .D(n16815), 
         .Z(n11074)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(361[8:12])
    defparam i8702_3_lut_4_lut.init = 16'hbbb0;
    LUT4 i12815_3_lut_4_lut (.A(n16819), .B(n16827), .C(n16822), .D(n16823), 
         .Z(n15496)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam i12815_3_lut_4_lut.init = 16'hff40;
    PFUMX i13420 (.BLUT(n16870), .ALUT(n16871), .C0(cnt[1]), .Z(n16872));
    LUT4 i36_3_lut_4_lut (.A(n16813), .B(n16817), .C(n16822), .D(n16815), 
         .Z(n15295)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i36_3_lut_4_lut.init = 16'h8000;
    LUT4 i9048_3_lut_4_lut (.A(n16813), .B(n16818), .C(n16825), .D(n16817), 
         .Z(n11444)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(290[8:11])
    defparam i9048_3_lut_4_lut.init = 16'hbbb0;
    LUT4 i21_3_lut_4_lut (.A(n16827), .B(n16818), .C(n16820), .D(n16817), 
         .Z(n50_adj_811)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(293[8:11])
    defparam i21_3_lut_4_lut.init = 16'hbbb0;
    LUT4 i11_4_lut (.A(n48), .B(n16820), .C(n17_adj_812), .D(n16822), 
         .Z(n30)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i11_4_lut.init = 16'ha080;
    LUT4 i6_3_lut_4_lut (.A(n16827), .B(n16818), .C(n16824), .D(n16822), 
         .Z(n26_adj_813)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(293[8:11])
    defparam i6_3_lut_4_lut.init = 16'hbbb0;
    LUT4 i9064_3_lut_4_lut (.A(n16813), .B(n16814), .C(n16808), .D(n16815), 
         .Z(n11569)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(112[7:9])
    defparam i9064_3_lut_4_lut.init = 16'heee0;
    LUT4 i12811_2_lut_4_lut_4_lut (.A(n16813), .B(n16814), .C(n16827), 
         .D(n16790), .Z(n15539)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(112[7:9])
    defparam i12811_2_lut_4_lut_4_lut.init = 16'hec00;
    LUT4 cnt_11__I_0_424_i17_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n16862), 
         .C(n16857), .D(cnt[4]), .Z(n11148)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(152[7:9])
    defparam cnt_11__I_0_424_i17_2_lut_3_lut_4_lut.init = 16'hdfff;
    LUT4 i68_2_lut_3_lut_4_lut (.A(n16821), .B(n16814), .C(n16818), .D(n16827), 
         .Z(n48)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(217[8:10])
    defparam i68_2_lut_3_lut_4_lut.init = 16'hee0e;
    LUT4 i1_2_lut_rep_436 (.A(cnt[2]), .B(cnt[0]), .Z(n16847)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(152[7:9])
    defparam i1_2_lut_rep_436.init = 16'hbbbb;
    LUT4 i22_4_lut (.A(n16817), .B(n16823), .C(n16826), .D(n16815), 
         .Z(n51)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i22_4_lut.init = 16'hfac8;
    LUT4 i27_4_lut (.A(n16862), .B(n50_adj_811), .C(n48_adj_814), .D(n16820), 
         .Z(n56)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i27_4_lut.init = 16'hc080;
    LUT4 i1_2_lut_rep_402_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), .Z(n16813)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(152[7:9])
    defparam i1_2_lut_rep_402_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_404_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), .Z(n16815)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(152[7:9])
    defparam i1_2_lut_rep_404_3_lut.init = 16'hfbfb;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n16822), .B(n16825), .C(n16820), .D(n16819), 
         .Z(n6_adj_815)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(139[7:9])
    defparam i2_2_lut_3_lut_4_lut.init = 16'he0ee;
    LUT4 i9017_3_lut_4_lut (.A(n16822), .B(n16825), .C(n16814), .D(n16817), 
         .Z(n11410)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(139[7:9])
    defparam i9017_3_lut_4_lut.init = 16'heee0;
    LUT4 i23_4_lut (.A(n16818), .B(n46), .C(n11630), .D(n16847), .Z(n52)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam i23_4_lut.init = 16'hc040;
    LUT4 i8692_3_lut_4_lut (.A(n16819), .B(n16808), .C(n16823), .D(n16813), 
         .Z(n11064)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(359[8:12])
    defparam i8692_3_lut_4_lut.init = 16'hddd0;
    LUT4 i169_3_lut (.A(cnt[4]), .B(cnt[3]), .C(cnt[0]), .Z(n112)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam i169_3_lut.init = 16'h2c2c;
    LUT4 i9_4_lut (.A(n16822), .B(n16825), .C(n16814), .D(n6_adj_816), 
         .Z(n38)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'hfac8;
    LUT4 i1_2_lut_3_lut_4_lut_adj_47 (.A(cnt[11]), .B(n16807), .C(n16825), 
         .D(cnt[6]), .Z(n15201)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_2_lut_3_lut_4_lut_adj_47.init = 16'hfeff;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut_adj_48 (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .D(n16789), .Z(n15210)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(297[8:11])
    defparam i1_3_lut_4_lut_4_lut_4_lut_adj_48.init = 16'hfff6;
    LUT4 i1_4_lut_adj_49 (.A(n119), .B(cnt[4]), .C(n121), .D(cnt[1]), 
         .Z(n5)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(73[13:16])
    defparam i1_4_lut_adj_49.init = 16'h3022;
    LUT4 i1_2_lut_3_lut_4_lut_adj_50 (.A(cnt[11]), .B(n16807), .C(n16826), 
         .D(cnt[6]), .Z(n15216)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_2_lut_3_lut_4_lut_adj_50.init = 16'hfffe;
    LUT4 cnt_4435_mux_6_i1_3_lut (.A(n1[0]), .B(cnt[0]), .C(n6159), .Z(n67[0])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_mux_6_i1_3_lut.init = 16'h3a3a;
    LUT4 cnt_11__I_0_304_i23_2_lut_3_lut_4_lut (.A(cnt[11]), .B(n16807), 
         .C(n16801), .D(cnt[6]), .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_11__I_0_304_i23_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i8873_2_lut_4_lut (.A(n16806), .B(cnt[7]), .C(cnt[11]), .D(n16793), 
         .Z(n11266)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i8873_2_lut_4_lut.init = 16'hfffb;
    LUT4 i1_4_lut_adj_51 (.A(n14364), .B(n16866), .C(cnt[7]), .D(n59), 
         .Z(n6159)) /* synthesis lut_function=(!(A (B)+!A (B+(C+!(D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_adj_51.init = 16'h2322;
    LUT4 i1_2_lut_rep_438 (.A(cnt[0]), .B(cnt[2]), .Z(n16849)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(147[7:9])
    defparam i1_2_lut_rep_438.init = 16'hbbbb;
    LUT4 i1_2_lut_4_lut_adj_52 (.A(n16806), .B(cnt[7]), .C(cnt[11]), .D(n16826), 
         .Z(n15247)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_2_lut_4_lut_adj_52.init = 16'hfffb;
    LUT4 i4_4_lut_adj_53 (.A(n53), .B(cnt[5]), .C(cnt[0]), .D(n6_adj_807), 
         .Z(n14364)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut_adj_53.init = 16'h0200;
    LUT4 n8068_bdd_4_lut_13283 (.A(cnt[0]), .B(cnt[4]), .C(cnt[3]), .D(cnt[2]), 
         .Z(n16020)) /* synthesis lut_function=(!((B (C+(D))+!B !(C (D)))+!A)) */ ;
    defparam n8068_bdd_4_lut_13283.init = 16'h2008;
    LUT4 i1_2_lut_rep_401_3_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n16812)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(147[7:9])
    defparam i1_2_lut_rep_401_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_412_3_lut (.A(cnt[5]), .B(cnt[4]), .C(cnt[3]), .Z(n16823)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(132[7:9])
    defparam i1_2_lut_rep_412_3_lut.init = 16'hbfbf;
    LUT4 i59_4_lut_4_lut (.A(n16819), .B(n16824), .C(n16793), .D(n11571), 
         .Z(n126)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(267[8:11])
    defparam i59_4_lut_4_lut.init = 16'hd0c0;
    CCU2D cnt_4435_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14110), .S0(n1[11]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_4435_add_4_13.INIT1 = 16'h0000;
    defparam cnt_4435_add_4_13.INJECT1_0 = "NO";
    defparam cnt_4435_add_4_13.INJECT1_1 = "NO";
    LUT4 i12937_4_lut (.A(cnt_100khz[2]), .B(cnt_100khz[1]), .C(n15479), 
         .D(cnt_100khz[3]), .Z(n9152)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(60[12:26])
    defparam i12937_4_lut.init = 16'h4000;
    LUT4 i12802_3_lut (.A(cnt_100khz[4]), .B(cnt_100khz[0]), .C(cnt_100khz[5]), 
         .Z(n15479)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i12802_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_406_3_lut (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n16817)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(147[7:9])
    defparam i1_2_lut_rep_406_3_lut.init = 16'hfbfb;
    CCU2D cnt_4435_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14109), .COUT(n14110), .S0(n1[9]), .S1(n1[10]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_4435_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_4435_add_4_11.INJECT1_0 = "NO";
    defparam cnt_4435_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_439 (.A(cnt[2]), .B(cnt[0]), .Z(n16850)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_439.init = 16'h8888;
    LUT4 i9376_2_lut_rep_408_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), 
         .Z(n16819)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9376_2_lut_rep_408_3_lut.init = 16'h8080;
    LUT4 i9129_3_lut_rep_358_4_lut (.A(n16819), .B(n16824), .C(n16814), 
         .D(n16827), .Z(n16769)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(267[8:11])
    defparam i9129_3_lut_rep_358_4_lut.init = 16'hddd0;
    LUT4 i8981_2_lut_3_lut_3_lut_4_lut_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), 
         .Z(n11571)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam i8981_2_lut_3_lut_3_lut_4_lut_3_lut.init = 16'hb7b7;
    LUT4 i8907_3_lut_4_lut (.A(n16813), .B(n16820), .C(n16825), .D(n16821), 
         .Z(n11300)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(313[8:11])
    defparam i8907_3_lut_4_lut.init = 16'heee0;
    FD1P3AX data_i0_i15 (.D(n8760), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(tens_3__N_418)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam data_i0_i15.GSR = "DISABLED";
    LUT4 i12779_3_lut_4_lut (.A(n16821), .B(n16823), .C(n16808), .D(n16815), 
         .Z(n15450)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(125[7:9])
    defparam i12779_3_lut_4_lut.init = 16'heee0;
    LUT4 i8774_2_lut_rep_384_3_lut_3_lut_4_lut_3_lut (.A(cnt[2]), .B(cnt[0]), 
         .C(cnt[1]), .Z(n16795)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;
    defparam i8774_2_lut_rep_384_3_lut_3_lut_4_lut_3_lut.init = 16'h7d7d;
    FD1P3AX cnt_4435__i11 (.D(n67[11]), .SP(clk_c_enable_30), .CK(clk_c), 
            .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i11.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_416_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), .Z(n16827)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_416_3_lut.init = 16'hf7f7;
    FD1P3AX data_i0_i14 (.D(n8757), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(tens_3__N_420)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam data_i0_i14.GSR = "DISABLED";
    LUT4 i9220_2_lut_3_lut_4_lut_2_lut_3_lut (.A(cnt[2]), .B(cnt[0]), .C(n16823), 
         .Z(n11630)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i9220_2_lut_3_lut_4_lut_2_lut_3_lut.init = 16'hf7f7;
    FD1P3AX cnt_4435__i7 (.D(n67[7]), .SP(clk_c_enable_30), .CK(clk_c), 
            .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i7.GSR = "ENABLED";
    FD1P3AX cnt_4435__i6 (.D(n67[6]), .SP(clk_c_enable_30), .CK(clk_c), 
            .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i6.GSR = "ENABLED";
    FD1P3AX data_i0_i13 (.D(n8754), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(\BH1750_data_out[13] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam data_i0_i13.GSR = "DISABLED";
    FD1P3AX cnt_4435__i5 (.D(n67[5]), .SP(clk_c_enable_30), .CK(clk_c), 
            .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i5.GSR = "ENABLED";
    FD1P3AX cnt_4435__i4 (.D(n67[4]), .SP(clk_c_enable_30), .CK(clk_c), 
            .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i4.GSR = "ENABLED";
    FD1P3AX cnt_4435__i3 (.D(n67[3]), .SP(clk_c_enable_30), .CK(clk_c), 
            .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i3.GSR = "ENABLED";
    FD1P3AX cnt_4435__i2 (.D(n67[2]), .SP(clk_c_enable_14), .CK(clk_c), 
            .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i2.GSR = "ENABLED";
    FD1P3AX data_i0_i12 (.D(n8751), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(\BH1750_data_out[12] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam data_i0_i12.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_54 (.A(cnt[7]), .B(cnt[6]), .Z(n15163)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_2_lut_adj_54.init = 16'h2222;
    FD1P3AX cnt_4435__i1 (.D(n16548), .SP(clk_c_enable_30), .CK(clk_c), 
            .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_414_3_lut (.A(cnt[3]), .B(cnt[5]), .C(cnt[4]), .Z(n16825)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(294[8:11])
    defparam i1_2_lut_rep_414_3_lut.init = 16'hfbfb;
    FD1P3AX data_i0_i11 (.D(n8748), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(\BH1750_data_out[11] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam data_i0_i11.GSR = "DISABLED";
    CCU2D cnt_4435_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14108), 
          .COUT(n14109), .S0(n1[7]), .S1(n1[8]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_4435_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_4435_add_4_9.INJECT1_0 = "NO";
    defparam cnt_4435_add_4_9.INJECT1_1 = "NO";
    FD1S3IX cnt_100khz_4433_4434__i6 (.D(n29[5]), .CK(clk_c), .CD(n9152), 
            .Q(cnt_100khz[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(52[17:32])
    defparam cnt_100khz_4433_4434__i6.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_55 (.A(cnt[11]), .B(n16854), .C(n16864), .D(n15163), 
         .Z(n15164)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i3_4_lut_adj_55.init = 16'h0800;
    LUT4 i3_4_lut_adj_56 (.A(n4_adj_804), .B(cnt[6]), .C(cnt[5]), .D(cnt[11]), 
         .Z(n14199)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i3_4_lut_adj_56.init = 16'h2002;
    FD1S3IX cnt_100khz_4433_4434__i5 (.D(n29[4]), .CK(clk_c), .CD(n9152), 
            .Q(cnt_100khz[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(52[17:32])
    defparam cnt_100khz_4433_4434__i5.GSR = "ENABLED";
    FD1P3AX data_i0_i10 (.D(n14456), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(\BH1750_data_out[10] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam data_i0_i10.GSR = "DISABLED";
    LUT4 i12907_2_lut_rep_442 (.A(cnt[2]), .B(cnt[0]), .Z(n16853)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i12907_2_lut_rep_442.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_adj_57 (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), .Z(n15189)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_57.init = 16'hf9f9;
    FD1S3IX cnt_100khz_4433_4434__i4 (.D(n29[3]), .CK(clk_c), .CD(n9152), 
            .Q(cnt_100khz[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(52[17:32])
    defparam cnt_100khz_4433_4434__i4.GSR = "ENABLED";
    FD1S3IX cnt_100khz_4433_4434__i3 (.D(n29[2]), .CK(clk_c), .CD(n9152), 
            .Q(cnt_100khz[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(52[17:32])
    defparam cnt_100khz_4433_4434__i3.GSR = "ENABLED";
    FD1S3IX cnt_100khz_4433_4434__i2 (.D(n29[1]), .CK(clk_c), .CD(n9152), 
            .Q(cnt_100khz[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(52[17:32])
    defparam cnt_100khz_4433_4434__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_58 (.A(cnt[1]), .B(n15176), .C(n14199), .D(cnt[7]), 
         .Z(n132)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_adj_58.init = 16'ha088;
    LUT4 i1_2_lut_rep_397_3_lut (.A(cnt[3]), .B(cnt[5]), .C(cnt[4]), .Z(n16808)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(294[8:11])
    defparam i1_2_lut_rep_397_3_lut.init = 16'hbfbf;
    LUT4 cnt_11__I_0_477_i23_2_lut_rep_366_4_lut (.A(n16807), .B(cnt[11]), 
         .C(cnt[6]), .D(n16797), .Z(n16777)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_11__I_0_477_i23_2_lut_rep_366_4_lut.init = 16'hbfff;
    LUT4 i210_2_lut_rep_443 (.A(cnt[1]), .B(cnt[2]), .Z(n16854)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i210_2_lut_rep_443.init = 16'h6666;
    LUT4 i9_3_lut_4_lut_4_lut (.A(n16819), .B(n16818), .C(n17_adj_809), 
         .D(n16808), .Z(n20)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C))) */ ;
    defparam i9_3_lut_4_lut_4_lut.init = 16'h7050;
    LUT4 i1_2_lut_rep_440 (.A(cnt[3]), .B(cnt[5]), .Z(n16851)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(294[8:11])
    defparam i1_2_lut_rep_440.init = 16'hbbbb;
    CCU2D cnt_4435_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14107), 
          .COUT(n14108), .S0(n1[5]), .S1(n1[6]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_4435_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_4435_add_4_7.INJECT1_0 = "NO";
    defparam cnt_4435_add_4_7.INJECT1_1 = "NO";
    LUT4 cnt_3__bdd_3_lut_13266 (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n16033)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam cnt_3__bdd_3_lut_13266.init = 16'h2828;
    LUT4 i2_3_lut_4_lut_2_lut (.A(cnt[0]), .B(cnt[1]), .Z(n6_adj_816)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2_3_lut_4_lut_2_lut.init = 16'hdddd;
    CCU2D cnt_4435_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14106), 
          .COUT(n14107), .S0(n1[3]), .S1(n1[4]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_4435_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_4435_add_4_5.INJECT1_0 = "NO";
    defparam cnt_4435_add_4_5.INJECT1_1 = "NO";
    LUT4 i9560_2_lut_3_lut_4_lut (.A(n16819), .B(n16818), .C(n11982), 
         .D(n16796), .Z(n12018)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;
    defparam i9560_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 mux_4336_i6_3_lut_4_lut_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .Z(n6399[5])) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam mux_4336_i6_3_lut_4_lut_3_lut.init = 16'h1616;
    LUT4 i17_4_lut_4_lut (.A(n16819), .B(n16825), .C(n16823), .D(n16813), 
         .Z(n46)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(147[7:9])
    defparam i17_4_lut_4_lut.init = 16'hddc0;
    LUT4 i2_3_lut_4_lut_adj_59 (.A(cnt[6]), .B(cnt[2]), .C(cnt[3]), .D(n15175), 
         .Z(n15176)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i2_3_lut_4_lut_adj_59.init = 16'h0200;
    LUT4 i2_3_lut_rep_352_4_lut (.A(n16819), .B(n16825), .C(n11818), .D(n17_adj_800), 
         .Z(n16763)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(147[7:9])
    defparam i2_3_lut_rep_352_4_lut.init = 16'hd000;
    CCU2D cnt_4435_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14105), 
          .COUT(n14106), .S0(n1[1]), .S1(n1[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_4435_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_4435_add_4_3.INJECT1_0 = "NO";
    defparam cnt_4435_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_445 (.A(cnt[5]), .B(cnt[4]), .Z(n16856)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_rep_445.init = 16'heeee;
    LUT4 i9019_2_lut_3_lut_3_lut_4_lut_3_lut (.A(cnt[5]), .B(cnt[4]), .C(cnt[3]), 
         .Z(n11776)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i9019_2_lut_3_lut_3_lut_4_lut_3_lut.init = 16'hebeb;
    LUT4 i3_4_lut_adj_60 (.A(n16821), .B(n6_adj_815), .C(n16785), .D(n16824), 
         .Z(n14202)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_60.init = 16'hc080;
    LUT4 cnt_4435_mux_6_i12_4_lut (.A(n1[11]), .B(cnt[1]), .C(n6159), 
         .D(n16862), .Z(n67[11])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_mux_6_i12_4_lut.init = 16'h0aca;
    LUT4 cnt_11__I_0_302_i16_2_lut_rep_415_3_lut (.A(cnt[5]), .B(cnt[4]), 
         .C(cnt[3]), .Z(n16826)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam cnt_11__I_0_302_i16_2_lut_rep_415_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_61 (.A(cnt_11__N_309_out_2), .B(tens_3__N_420), .C(n16777), 
         .D(n11984), .Z(n8757)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_61.init = 16'h0ace;
    LUT4 i1_4_lut_then_4_lut_adj_62 (.A(n16813), .B(cnt[11]), .C(n16807), 
         .D(n16808), .Z(n16877)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_then_4_lut_adj_62.init = 16'hfffb;
    LUT4 cnt_3__bdd_4_lut_13265 (.A(cnt[4]), .B(cnt[1]), .C(cnt[0]), .D(cnt[2]), 
         .Z(n16034)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C (D))))) */ ;
    defparam cnt_3__bdd_4_lut_13265.init = 16'h1004;
    LUT4 cnt_11__I_0_377_i16_2_lut_rep_409_3_lut (.A(cnt[5]), .B(cnt[4]), 
         .C(cnt[3]), .Z(n16820)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam cnt_11__I_0_377_i16_2_lut_rep_409_3_lut.init = 16'hefef;
    LUT4 cnt_4435_mux_6_i8_4_lut (.A(n1[7]), .B(cnt[1]), .C(n6159), .D(n15160), 
         .Z(n67[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_mux_6_i8_4_lut.init = 16'hca0a;
    LUT4 cnt_4435_mux_6_i7_3_lut (.A(n1[6]), .B(n7942), .C(n6159), .Z(n67[6])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_mux_6_i7_3_lut.init = 16'h3a3a;
    LUT4 i1_2_lut_rep_446 (.A(cnt[3]), .B(cnt[5]), .Z(n16857)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_rep_446.init = 16'h8888;
    LUT4 mux_4336_i7_3_lut (.A(cnt[2]), .B(cnt[1]), .C(cnt[0]), .Z(n7942)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_4336_i7_3_lut.init = 16'hcaca;
    LUT4 i9378_2_lut_rep_407_3_lut (.A(cnt[3]), .B(cnt[5]), .C(cnt[4]), 
         .Z(n16818)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i9378_2_lut_rep_407_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_63 (.A(\BH1750_data_out[13] ), .B(n22), .C(n4_adj_823), 
         .D(n12006), .Z(n8753)) /* synthesis lut_function=(!((B (C)+!B (C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_63.init = 16'h0a2a;
    LUT4 i1_4_lut_adj_64 (.A(n16764), .B(n16795), .C(n16796), .D(n16818), 
         .Z(n4_adj_823)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_64.init = 16'ha8aa;
    LUT4 i1_2_lut_rep_413_3_lut (.A(cnt[3]), .B(cnt[5]), .C(cnt[4]), .Z(n16824)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_rep_413_3_lut.init = 16'hf7f7;
    LUT4 i8748_rep_79_2_lut_3_lut_4_lut_4_lut_3_lut (.A(cnt[3]), .B(cnt[5]), 
         .C(cnt[4]), .Z(n15711)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i8748_rep_79_2_lut_3_lut_4_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i9248_2_lut_rep_353_3_lut_4_lut (.A(n16827), .B(n16826), .C(n22), 
         .D(n16800), .Z(n16764)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(195[8:10])
    defparam i9248_2_lut_rep_353_3_lut_4_lut.init = 16'hfef0;
    LUT4 i12763_2_lut_rep_447 (.A(cnt[0]), .B(cnt[1]), .Z(n16858)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12763_2_lut_rep_447.init = 16'heeee;
    LUT4 cnt_11__I_0_325_i17_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n16850), 
         .C(n16852), .D(cnt[3]), .Z(n17_adj_805)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam cnt_11__I_0_325_i17_2_lut_3_lut_4_lut.init = 16'hfff7;
    LUT4 i2_2_lut_3_lut_4_lut_adj_65 (.A(cnt[0]), .B(cnt[1]), .C(cnt[5]), 
         .D(cnt[3]), .Z(n14316)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_65.init = 16'h1000;
    LUT4 i2_3_lut_4_lut_adj_66 (.A(cnt[0]), .B(cnt[5]), .C(cnt[1]), .D(cnt[3]), 
         .Z(n15155)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i2_3_lut_4_lut_adj_66.init = 16'h0020;
    PFUMX i12994 (.BLUT(n16034), .ALUT(n16033), .C0(cnt[3]), .Z(n16035));
    LUT4 cnt_4435_mux_6_i6_3_lut (.A(n1[5]), .B(n6399[5]), .C(n6159), 
         .Z(n67[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_mux_6_i6_3_lut.init = 16'hcaca;
    LUT4 cnt_4435_mux_6_i5_4_lut (.A(n1[4]), .B(n6390[3]), .C(n6159), 
         .D(cnt[0]), .Z(n67[4])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_mux_6_i5_4_lut.init = 16'hfaca;
    LUT4 i8780_2_lut_rep_365_3_lut_4_lut (.A(n16821), .B(n16820), .C(n16826), 
         .D(n16827), .Z(n16776)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(199[8:10])
    defparam i8780_2_lut_rep_365_3_lut_4_lut.init = 16'heee0;
    LUT4 i1_3_lut_4_lut_adj_67 (.A(cnt[4]), .B(cnt[7]), .C(cnt[1]), .D(cnt[0]), 
         .Z(n15139)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_67.init = 16'h2002;
    LUT4 cnt_4435_mux_6_i4_4_lut (.A(n1[3]), .B(cnt_11__N_309_out_2), .C(n6159), 
         .D(n8121), .Z(n67[3])) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_mux_6_i4_4_lut.init = 16'hfa3a;
    LUT4 i1_2_lut_3_lut_adj_68 (.A(cnt[0]), .B(cnt[2]), .C(cnt[3]), .Z(n119)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_68.init = 16'h0606;
    LUT4 i2_3_lut_4_lut_adj_69 (.A(cnt[1]), .B(cnt[0]), .C(cnt[7]), .D(cnt[4]), 
         .Z(n14290)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_69.init = 16'h0040;
    LUT4 i1_4_lut_adj_70 (.A(cnt[0]), .B(clk_c_enable_30), .C(n6159), 
         .D(cnt[1]), .Z(clk_c_enable_14)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i1_4_lut_adj_70.init = 16'hcc4c;
    LUT4 cnt_4435_mux_6_i3_3_lut (.A(n1[2]), .B(n6399[2]), .C(n6159), 
         .Z(n67[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_mux_6_i3_3_lut.init = 16'hcaca;
    LUT4 mux_4336_i3_4_lut (.A(cnt[1]), .B(cnt_11__N_309_out_2), .C(cnt[0]), 
         .D(cnt[2]), .Z(n6399[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+!(D))+!B !(C+!(D)))) */ ;
    defparam mux_4336_i3_4_lut.init = 16'hcbc4;
    LUT4 i1_4_lut_else_4_lut_adj_71 (.A(n16812), .B(cnt[11]), .C(n16807), 
         .D(n16826), .Z(n16876)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_else_4_lut_adj_71.init = 16'hfffe;
    LUT4 i1_4_lut_adj_72 (.A(n22), .B(\BH1750_data_out[12] ), .C(n4_adj_803), 
         .D(n14226), .Z(n8751)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_72.init = 16'h50dc;
    LUT4 i8632_2_lut_rep_451 (.A(cnt[2]), .B(cnt[0]), .Z(n16862)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8632_2_lut_rep_451.init = 16'heeee;
    LUT4 i1_2_lut_rep_410_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), .Z(n16821)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_410_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_adj_73 (.A(n11474), .B(n22), .C(n16800), .D(n12006), 
         .Z(n14226)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_73.init = 16'ha888;
    LUT4 n8068_bdd_3_lut_13090_4_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[3]), 
         .D(cnt[4]), .Z(n16021)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam n8068_bdd_3_lut_13090_4_lut.init = 16'h1001;
    PFUMX i12988 (.BLUT(n16021), .ALUT(n16020), .C0(cnt[5]), .Z(n16022));
    LUT4 i9411_2_lut_rep_386_3_lut_4_lut (.A(cnt[1]), .B(n16850), .C(n16857), 
         .D(cnt[4]), .Z(n16797)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9411_2_lut_rep_386_3_lut_4_lut.init = 16'h8000;
    LUT4 i171_3_lut_4_lut_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[3]), .Z(n121)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam i171_3_lut_4_lut_3_lut.init = 16'h1818;
    LUT4 i1_4_lut_adj_74 (.A(cnt_11__N_309_out_2), .B(\BH1750_data_out[11] ), 
         .C(n23_adj_824), .D(n11988), .Z(n8748)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_74.init = 16'h0ace;
    LUT4 i2_4_lut_4_lut (.A(cnt[2]), .B(cnt[0]), .C(n14243), .D(n223), 
         .Z(n10_adj_825)) /* synthesis lut_function=(A (C)+!A !(B+!(D))) */ ;
    defparam i2_4_lut_4_lut.init = 16'hb1a0;
    LUT4 i9534_4_lut (.A(n11474), .B(n22), .C(n16799), .D(n12006), .Z(n11988)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i9534_4_lut.init = 16'ha888;
    LUT4 cnt_11__I_0_381_i17_2_lut_rep_372_3_lut_4_lut (.A(cnt[3]), .B(n16856), 
         .C(n16850), .D(cnt[1]), .Z(n16783)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(209[8:10])
    defparam cnt_11__I_0_381_i17_2_lut_rep_372_3_lut_4_lut.init = 16'hdfff;
    LUT4 i1_4_lut_adj_75 (.A(\BH1750_data_out[10] ), .B(n22), .C(n16760), 
         .D(n13), .Z(n14456)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;
    defparam i1_4_lut_adj_75.init = 16'h3b0a;
    LUT4 cnt_11__I_0_380_i17_2_lut_3_lut_4_lut (.A(cnt[3]), .B(n16856), 
         .C(n16849), .D(cnt[1]), .Z(n17_adj_809)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(209[8:10])
    defparam cnt_11__I_0_380_i17_2_lut_3_lut_4_lut.init = 16'hfdff;
    LUT4 i1_4_lut_adj_76 (.A(cnt_11__N_309_out_2), .B(\BH1750_data_out[10] ), 
         .C(n16791), .D(n15368), .Z(n13)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;
    defparam i1_4_lut_adj_76.init = 16'h0ace;
    LUT4 i1_2_lut_rep_411_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), .Z(n16822)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_411_3_lut.init = 16'hefef;
    LUT4 i16_rep_64_2_lut_3_lut_3_lut_4_lut_3_lut (.A(cnt[2]), .B(cnt[0]), 
         .C(cnt[1]), .Z(n15696)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam i16_rep_64_2_lut_3_lut_3_lut_4_lut_3_lut.init = 16'hdede;
    LUT4 i8646_2_lut_rep_452 (.A(cnt[3]), .B(cnt[1]), .Z(n16863)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8646_2_lut_rep_452.init = 16'heeee;
    LUT4 i8704_2_lut_rep_453 (.A(cnt[5]), .B(cnt[3]), .Z(n16864)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8704_2_lut_rep_453.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_77 (.A(cnt[5]), .B(cnt[3]), .C(n151), .D(cnt[6]), 
         .Z(n280)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_77.init = 16'hf1f0;
    LUT4 i362_then_4_lut (.A(cnt[6]), .B(cnt[4]), .C(cnt[0]), .D(cnt[7]), 
         .Z(n16871)) /* synthesis lut_function=(A (C)+!A !(B+((D)+!C))) */ ;
    defparam i362_then_4_lut.init = 16'ha0b0;
    LUT4 i1_2_lut_3_lut_adj_78 (.A(cnt[3]), .B(cnt[1]), .C(cnt[6]), .Z(n117)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_2_lut_3_lut_adj_78.init = 16'h0808;
    LUT4 i2_3_lut_rep_455 (.A(cnt[9]), .B(cnt[10]), .C(cnt[8]), .Z(n16866)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i2_3_lut_rep_455.init = 16'hfefe;
    LUT4 cnt_3__bdd_4_lut_13788 (.A(cnt[3]), .B(n125), .C(n15159), .D(cnt[5]), 
         .Z(n16749)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam cnt_3__bdd_4_lut_13788.init = 16'hf088;
    LUT4 i1_2_lut_rep_395_4_lut (.A(cnt[9]), .B(cnt[10]), .C(cnt[8]), 
         .D(cnt[6]), .Z(n16806)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_2_lut_rep_395_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_396_4_lut (.A(cnt[9]), .B(cnt[10]), .C(cnt[8]), 
         .D(cnt[7]), .Z(n16807)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_2_lut_rep_396_4_lut.init = 16'hfffe;
    CCU2D cnt_4435_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n14105), .S1(n1[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435_add_4_1.INIT0 = 16'hF000;
    defparam cnt_4435_add_4_1.INIT1 = 16'h0555;
    defparam cnt_4435_add_4_1.INJECT1_0 = "NO";
    defparam cnt_4435_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_100khz_4433_4434_add_4_7 (.A0(cnt_100khz[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14104), .S0(n29[5]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(52[17:32])
    defparam cnt_100khz_4433_4434_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_100khz_4433_4434_add_4_7.INIT1 = 16'h0000;
    defparam cnt_100khz_4433_4434_add_4_7.INJECT1_0 = "NO";
    defparam cnt_100khz_4433_4434_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_100khz_4433_4434_add_4_5 (.A0(cnt_100khz[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_100khz[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n14103), .COUT(n14104), .S0(n29[3]), 
          .S1(n29[4]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(52[17:32])
    defparam cnt_100khz_4433_4434_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_100khz_4433_4434_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_100khz_4433_4434_add_4_5.INJECT1_0 = "NO";
    defparam cnt_100khz_4433_4434_add_4_5.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_79 (.A(n22), .B(n8_adj_826), .C(n15146), .D(n15434), 
         .Z(clk_100khz_enable_2)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_79.init = 16'hc080;
    LUT4 i3_3_lut (.A(n15103), .B(n55_adj_827), .C(n15100), .Z(n8_adj_826)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i3_3_lut.init = 16'h2020;
    LUT4 i1_3_lut_4_lut_adj_80 (.A(cnt[3]), .B(cnt[4]), .C(n6390[3]), 
         .D(cnt[0]), .Z(n15159)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_3_lut_4_lut_adj_80.init = 16'h0090;
    LUT4 i2_3_lut_rep_378_4_lut (.A(cnt[6]), .B(n16866), .C(cnt[11]), 
         .D(cnt[7]), .Z(n16789)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i2_3_lut_rep_378_4_lut.init = 16'hfeff;
    LUT4 i1_3_lut_4_lut_adj_81 (.A(cnt[6]), .B(n16866), .C(cnt[11]), .D(cnt[7]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_3_lut_4_lut_adj_81.init = 16'hefff;
    LUT4 i1_2_lut_rep_360_3_lut_4_lut (.A(n16866), .B(cnt[7]), .C(cnt[6]), 
         .D(cnt[11]), .Z(n16771)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_2_lut_rep_360_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_377_3_lut (.A(n16866), .B(cnt[7]), .C(cnt[11]), 
         .Z(n16788)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_2_lut_rep_377_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_82 (.A(n16866), .B(n9), .C(n14), .D(n10_adj_825), 
         .Z(n15107)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_4_lut_adj_82.init = 16'hfffe;
    LUT4 i1_4_lut_adj_83 (.A(n242), .B(cnt[7]), .C(cnt[6]), .D(n15114), 
         .Z(n9)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_4_lut_adj_83.init = 16'heeea;
    LUT4 i6_4_lut (.A(n11), .B(cnt[4]), .C(n236), .D(n14276), .Z(n14)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i6_4_lut.init = 16'hfefa;
    LUT4 i1_4_lut_adj_84 (.A(cnt[4]), .B(n227), .C(n199), .D(cnt[5]), 
         .Z(n242)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_adj_84.init = 16'h5044;
    LUT4 i17_3_lut_4_lut (.A(cnt[3]), .B(n16852), .C(cnt[1]), .D(n16825), 
         .Z(n10_adj_810)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(132[7:9])
    defparam i17_3_lut_4_lut.init = 16'hdfd0;
    LUT4 n64_bdd_3_lut (.A(n1[1]), .B(n16547), .C(n6159), .Z(n16548)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n64_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_85 (.A(cnt[3]), .B(cnt[5]), .C(n4_adj_798), .D(cnt[11]), 
         .Z(n15114)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_adj_85.init = 16'ha0ec;
    CCU2D cnt_100khz_4433_4434_add_4_3 (.A0(cnt_100khz[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_100khz[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n14102), .COUT(n14103), .S0(n29[1]), 
          .S1(n29[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(52[17:32])
    defparam cnt_100khz_4433_4434_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_100khz_4433_4434_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_100khz_4433_4434_add_4_3.INJECT1_0 = "NO";
    defparam cnt_100khz_4433_4434_add_4_3.INJECT1_1 = "NO";
    LUT4 n64_bdd_3_lut_13300 (.A(cnt_11__N_309_out_2), .B(cnt[0]), .C(cnt[1]), 
         .Z(n16547)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam n64_bdd_3_lut_13300.init = 16'h9696;
    LUT4 i18_4_lut_adj_86 (.A(n11382), .B(n16822), .C(n17_adj_799), .D(n16808), 
         .Z(n15408)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i18_4_lut_adj_86.init = 16'ha080;
    LUT4 i3_4_lut_adj_87 (.A(cnt[3]), .B(n390), .C(n27), .D(n33_adj_828), 
         .Z(n11)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i3_4_lut_adj_87.init = 16'heeec;
    LUT4 i1_4_lut_adj_88 (.A(cnt[0]), .B(n190), .C(n380), .D(n11012), 
         .Z(n236)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_adj_88.init = 16'ha0a8;
    CCU2D cnt_100khz_4433_4434_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_100khz[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n14102), .S1(n29[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(52[17:32])
    defparam cnt_100khz_4433_4434_add_4_1.INIT0 = 16'hF000;
    defparam cnt_100khz_4433_4434_add_4_1.INIT1 = 16'h0555;
    defparam cnt_100khz_4433_4434_add_4_1.INJECT1_0 = "NO";
    defparam cnt_100khz_4433_4434_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_89 (.A(cnt[1]), .B(n287), .C(n16899), .D(n290), 
         .Z(n14276)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i2_4_lut_adj_89.init = 16'hffdc;
    LUT4 i1_2_lut_rep_361_3_lut_4_lut (.A(n16866), .B(cnt[7]), .C(cnt[6]), 
         .D(cnt[11]), .Z(n16772)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i1_2_lut_rep_361_3_lut_4_lut.init = 16'hfffe;
    LUT4 i28_4_lut (.A(n37), .B(n16827), .C(n11410), .D(n16820), .Z(n64)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i28_4_lut.init = 16'ha080;
    LUT4 i2_3_lut_rep_385_4_lut (.A(n16866), .B(cnt[7]), .C(cnt[6]), .D(cnt[11]), 
         .Z(n16796)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam i2_3_lut_rep_385_4_lut.init = 16'hefff;
    LUT4 i3_4_lut_adj_90 (.A(cnt[6]), .B(cnt[2]), .C(cnt[7]), .D(n26), 
         .Z(n27)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i3_4_lut_adj_90.init = 16'h0100;
    LUT4 i2_4_lut_adj_91 (.A(cnt[11]), .B(n16858), .C(n16884), .D(n15149), 
         .Z(n33_adj_828)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i2_4_lut_adj_91.init = 16'h3130;
    LUT4 i19_3_lut_4_lut (.A(cnt[4]), .B(n16851), .C(n38), .D(n16827), 
         .Z(n48_adj_814)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(294[8:11])
    defparam i19_3_lut_4_lut.init = 16'hf0d0;
    LUT4 i12845_3_lut_4_lut (.A(cnt[4]), .B(n16851), .C(n6_adj_816), .D(n16819), 
         .Z(n15544)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(294[8:11])
    defparam i12845_3_lut_4_lut.init = 16'hddfd;
    LUT4 i30_4_lut (.A(n16819), .B(n47), .C(n16820), .D(n16822), .Z(n66)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i30_4_lut.init = 16'hc4c0;
    LUT4 i22_4_lut_adj_92 (.A(n16821), .B(n16822), .C(n16826), .D(n16814), 
         .Z(n58)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i22_4_lut_adj_92.init = 16'hfac8;
    LUT4 i11_4_lut_adj_93 (.A(n16821), .B(n14234), .C(n15496), .D(n16814), 
         .Z(n47)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i11_4_lut_adj_93.init = 16'hc080;
    LUT4 i2_4_lut_adj_94 (.A(cnt[5]), .B(n14223), .C(n16872), .D(n278), 
         .Z(n14243)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i2_4_lut_adj_94.init = 16'hffdc;
    LUT4 i2_4_lut_adj_95 (.A(cnt[0]), .B(cnt[3]), .C(n8261), .D(n151), 
         .Z(n14223)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i2_4_lut_adj_95.init = 16'h1110;
    LUT4 i1_4_lut_adj_96 (.A(cnt[4]), .B(n151), .C(cnt[3]), .D(n271), 
         .Z(n278)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i1_4_lut_adj_96.init = 16'ha888;
    LUT4 i2_4_lut_adj_97 (.A(cnt[3]), .B(n16838), .C(n16837), .D(cnt[11]), 
         .Z(n287)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(82[4] 447[11])
    defparam i2_4_lut_adj_97.init = 16'hc4c0;
    LUT4 i2_4_lut_adj_98 (.A(n16819), .B(n16825), .C(n16821), .D(n16812), 
         .Z(n14234)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_98.init = 16'hdccc;
    LUT4 i1_4_lut_adj_99 (.A(n16819), .B(n14235), .C(n16772), .D(n16826), 
         .Z(n14_adj_829)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_99.init = 16'hccc4;
    LUT4 i3_4_lut_adj_100 (.A(n16817), .B(n16821), .C(n16822), .D(n16812), 
         .Z(n17_adj_830)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_100.init = 16'h8000;
    LUT4 cnt_11__I_0_441_i17_2_lut_rep_380_3_lut_4_lut (.A(cnt[3]), .B(n16856), 
         .C(n16847), .D(cnt[1]), .Z(n16791)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(209[8:10])
    defparam cnt_11__I_0_441_i17_2_lut_rep_380_3_lut_4_lut.init = 16'hfdff;
    LUT4 i1_4_lut_adj_101 (.A(n16772), .B(n91), .C(n96), .D(n92), .Z(n15293)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_101.init = 16'heaaa;
    LUT4 i4_4_lut_adj_102 (.A(n14267), .B(n8_adj_831), .C(n15216), .D(n4_adj_832), 
         .Z(n15103)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i4_4_lut_adj_102.init = 16'h8880;
    LUT4 i3_4_lut_adj_103 (.A(n15326), .B(n11266), .C(n15201), .D(n4_adj_833), 
         .Z(n8_adj_831)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut_adj_103.init = 16'h8880;
    LUT4 i1_2_lut_adj_104 (.A(cnt[1]), .B(cnt[2]), .Z(n4_adj_832)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_104.init = 16'hdddd;
    LUT4 i1_4_lut_adj_105 (.A(n16772), .B(n16817), .C(n16790), .D(n16808), 
         .Z(n15326)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_105.init = 16'hfaea;
    LUT4 cnt_11__I_0_486_i23_2_lut_3_lut_4_lut (.A(cnt[3]), .B(n16856), 
         .C(n22), .D(n16821), .Z(n23_adj_824)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(209[8:10])
    defparam cnt_11__I_0_486_i23_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_3_lut_adj_106 (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .Z(n4_adj_833)) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i1_3_lut_adj_106.init = 16'hbaba;
    LUT4 i8989_4_lut (.A(n16812), .B(n16822), .C(n16825), .D(n16823), 
         .Z(n11382)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i8989_4_lut.init = 16'hfac8;
    LUT4 i4_4_lut_adj_107 (.A(n15561), .B(n16820), .C(n15523), .D(n15126), 
         .Z(n55_adj_827)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C)))) */ ;
    defparam i4_4_lut_adj_107.init = 16'h7f5f;
    LUT4 i12859_4_lut (.A(n16772), .B(n15559), .C(n15450), .D(n15531), 
         .Z(n15561)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i12859_4_lut.init = 16'hc888;
    LUT4 i12830_4_lut (.A(n15521), .B(n16814), .C(n16812), .D(n22), 
         .Z(n15523)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i12830_4_lut.init = 16'haaa8;
    LUT4 i12857_4_lut (.A(n16771), .B(n17), .C(n15529), .D(n11064), 
         .Z(n15559)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i12857_4_lut.init = 16'heaaa;
    LUT4 i64_4_lut (.A(n11569), .B(n128), .C(n16783), .D(n77_adj_834), 
         .Z(n131)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i64_4_lut.init = 16'h8000;
    LUT4 i12837_4_lut (.A(n17_adj_800), .B(n15525), .C(n16821), .D(n16826), 
         .Z(n15531)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i12837_4_lut.init = 16'h8880;
    LUT4 i65_4_lut (.A(n16776), .B(n14248), .C(n126), .D(n116), .Z(n132_adj_835)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i65_4_lut.init = 16'h8000;
    LUT4 i12835_4_lut (.A(n15456), .B(n16812), .C(n16787), .D(n16826), 
         .Z(n15529)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i12835_4_lut.init = 16'ha080;
    LUT4 i12828_4_lut (.A(n16796), .B(n16821), .C(n17_adj_801), .D(n16818), 
         .Z(n15521)) /* synthesis lut_function=(A+(B (C)+!B !((D)+!C))) */ ;
    defparam i12828_4_lut.init = 16'heafa;
    LUT4 i12785_4_lut (.A(n16822), .B(n16820), .C(n16818), .D(n16815), 
         .Z(n15456)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam i12785_4_lut.init = 16'haf8c;
    FD1P3IX cnt_4435__i8 (.D(n1[8]), .SP(clk_c_enable_30), .CD(n9160), 
            .CK(clk_c), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i8.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_108 (.A(n15343), .B(n16815), .C(n11268), .D(n15201), 
         .Z(n15100)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_108.init = 16'ha080;
    FD1P3IX cnt_4435__i9 (.D(n1[9]), .SP(clk_c_enable_30), .CD(n9160), 
            .CK(clk_c), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i9.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_109 (.A(n16772), .B(n16813), .C(n16808), .D(n16821), 
         .Z(n15343)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(273[8:11])
    defparam i1_4_lut_adj_109.init = 16'hfefa;
    FD1P3IX cnt_4435__i10 (.D(n1[10]), .SP(clk_c_enable_30), .CD(n9160), 
            .CK(clk_c), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(81[9:17])
    defparam cnt_4435__i10.GSR = "ENABLED";
    LUT4 i61_4_lut (.A(n121_adj_836), .B(n84), .C(n16812), .D(n16818), 
         .Z(n128)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i61_4_lut.init = 16'h8088;
    LUT4 i10_4_lut (.A(n16827), .B(n16818), .C(n16820), .D(n16815), 
         .Z(n77_adj_834)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i10_4_lut.init = 16'hfa32;
    LUT4 i2_4_lut_adj_110 (.A(n12072), .B(n4_adj_837), .C(n22), .D(n15539), 
         .Z(clk_100khz_enable_3)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B))) */ ;
    defparam i2_4_lut_adj_110.init = 16'h444c;
    LUT4 i1_2_lut_adj_111 (.A(n55_adj_827), .B(n12062), .Z(n4_adj_837)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_111.init = 16'h4444;
    FD1S3IX cnt_100khz_4433_4434__i1 (.D(n29[0]), .CK(clk_c), .CD(n9152), 
            .Q(cnt_100khz[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(52[17:32])
    defparam cnt_100khz_4433_4434__i1.GSR = "ENABLED";
    LUT4 i12952_4_lut (.A(n16827), .B(n15628), .C(n4_adj_838), .D(n16770), 
         .Z(n15133)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C (D)))) */ ;
    defparam i12952_4_lut.init = 16'hcfdf;
    LUT4 i12951_3_lut (.A(n22), .B(n12036), .C(n16769), .Z(n15628)) /* synthesis lut_function=(!(A (B)+!A (B (C)))) */ ;
    defparam i12951_3_lut.init = 16'h3737;
    LUT4 i1_4_lut_adj_112 (.A(n16817), .B(n23), .C(n16771), .D(n16825), 
         .Z(n4_adj_838)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_112.init = 16'hccc8;
    LUT4 i1_4_lut_adj_113 (.A(n15100), .B(n15323), .C(n12), .D(n16878), 
         .Z(n12036)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_113.init = 16'h8000;
    LUT4 i5_4_lut_adj_114 (.A(n16819), .B(n10_adj_839), .C(n15314), .D(n15247), 
         .Z(n12)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam i5_4_lut_adj_114.init = 16'hc040;
    LUT4 i3_4_lut_adj_115 (.A(n15317), .B(n16772), .C(n16786), .D(n20), 
         .Z(n10_adj_839)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i3_4_lut_adj_115.init = 16'ha888;
    LUT4 i1_4_lut_adj_116 (.A(n16796), .B(n16815), .C(n15544), .D(n16824), 
         .Z(n15314)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_116.init = 16'hfaea;
    LUT4 i1_4_lut_adj_117 (.A(n16771), .B(n25), .C(n16794), .D(n17_adj_802), 
         .Z(n15317)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_117.init = 16'heaaa;
    LUT4 i11_4_lut_adj_118 (.A(n16822), .B(n16824), .C(n16808), .D(n16821), 
         .Z(n25)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i11_4_lut_adj_118.init = 16'hfac0;
    LUT4 i1_2_lut_adj_119 (.A(clk_100khz), .B(n9152), .Z(clk_100khz_N_397)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_119.init = 16'h6666;
    LUT4 i49_4_lut (.A(n17703), .B(n16821), .C(n16826), .D(n16818), 
         .Z(n116)) /* synthesis lut_function=(A (B+!((D)+!C))) */ ;
    defparam i49_4_lut.init = 16'h88a8;
    LUT4 i54_4_lut (.A(n16791), .B(n14167), .C(n11396), .D(n4_adj_840), 
         .Z(n121_adj_836)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i54_4_lut.init = 16'h8000;
    LUT4 i12832_3_lut_4_lut (.A(cnt[3]), .B(n16852), .C(n16824), .D(n16827), 
         .Z(n15525)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(132[7:9])
    defparam i12832_3_lut_4_lut.init = 16'hffe0;
    LUT4 i17_4_lut_adj_120 (.A(n15703), .B(n16808), .C(cnt[1]), .D(n16853), 
         .Z(n84)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;
    defparam i17_4_lut_adj_120.init = 16'h8aaa;
    LUT4 i8875_3_lut_4_lut (.A(cnt[3]), .B(n16852), .C(n16789), .D(n16822), 
         .Z(n11268)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(132[7:9])
    defparam i8875_3_lut_4_lut.init = 16'hfffe;
    LUT4 cnt_11__I_0_321_i17_2_lut_rep_374_3_lut_4_lut (.A(cnt[3]), .B(n16852), 
         .C(n16847), .D(cnt[1]), .Z(n16785)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(132[7:9])
    defparam cnt_11__I_0_321_i17_2_lut_rep_374_3_lut_4_lut.init = 16'hfeff;
    LUT4 i3_4_lut_adj_121 (.A(n5_adj_841), .B(n17_adj_801), .C(n16827), 
         .D(n16814), .Z(n14167)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut_adj_121.init = 16'h8880;
    LUT4 cnt_2__bdd_3_lut_13463 (.A(cnt[4]), .B(cnt[0]), .C(cnt[5]), .Z(n16093)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam cnt_2__bdd_3_lut_13463.init = 16'h0404;
    LUT4 i1_4_lut_adj_122 (.A(n19), .B(n15146), .C(n24_adj_842), .D(n20_adj_843), 
         .Z(n12062)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_122.init = 16'h8000;
    LUT4 i9003_4_lut (.A(n16817), .B(n16815), .C(n16818), .D(n16824), 
         .Z(n11396)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam i9003_4_lut.init = 16'haf8c;
    FD1P3AY r_scl_295 (.D(n15107), .SP(clk_100khz_enable_2), .CK(clk_100khz), 
            .Q(scl_c)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam r_scl_295.GSR = "ENABLED";
    LUT4 i6_4_lut_adj_123 (.A(n16796), .B(n22), .C(n15307), .D(n11818), 
         .Z(n19)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i6_4_lut_adj_123.init = 16'hfac8;
    LUT4 i11_4_lut_adj_124 (.A(n14271), .B(n22_adj_844), .C(n16), .D(n11386), 
         .Z(n24_adj_842)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i11_4_lut_adj_124.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_125 (.A(cnt[1]), .B(n16847), .C(n16818), .D(n16796), 
         .Z(n11386)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(297[8:11])
    defparam i1_3_lut_4_lut_adj_125.init = 16'hffef;
    LUT4 cnt_11__I_0_319_i17_2_lut_rep_382_3_lut_4_lut (.A(cnt[1]), .B(n16847), 
         .C(n16852), .D(cnt[3]), .Z(n16793)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(297[8:11])
    defparam cnt_11__I_0_319_i17_2_lut_rep_382_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_126 (.A(cnt[1]), .B(n16847), .C(n16856), .D(n16789), 
         .Z(n15323)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(297[8:11])
    defparam i1_3_lut_4_lut_adj_126.init = 16'hfffe;
    LUT4 cnt_2__bdd_4_lut_13244 (.A(cnt[2]), .B(cnt[4]), .C(cnt[0]), .D(cnt[5]), 
         .Z(n16092)) /* synthesis lut_function=(!((B (C)+!B (C+!(D)))+!A)) */ ;
    defparam cnt_2__bdd_4_lut_13244.init = 16'h0a08;
    FD1P3AY r_sda_294 (.D(n15133), .SP(clk_100khz_enable_3), .CK(clk_100khz), 
            .Q(r_sda)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(80[12] 448[6])
    defparam r_sda_294.GSR = "ENABLED";
    LUT4 i7_4_lut (.A(n16796), .B(n14_adj_829), .C(n17_adj_830), .D(n16808), 
         .Z(n20_adj_843)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i7_4_lut.init = 16'hccc8;
    LUT4 i19_4_lut (.A(n16812), .B(n36_adj_845), .C(n26_adj_813), .D(n16818), 
         .Z(n15307)) /* synthesis lut_function=(A (B (C))+!A !(((D)+!C)+!B)) */ ;
    defparam i19_4_lut.init = 16'h80c0;
    LUT4 i16_4_lut (.A(n16824), .B(n23_adj_846), .C(n16817), .D(n11148), 
         .Z(n36_adj_845)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i16_4_lut.init = 16'hc800;
    LUT4 i3_4_lut_adj_127 (.A(n16821), .B(n11444), .C(n16824), .D(n16812), 
         .Z(n23_adj_846)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i3_4_lut_adj_127.init = 16'hc8c0;
    LUT4 i1_4_lut_adj_128 (.A(n16823), .B(n17_adj_805), .C(n16827), .D(n16822), 
         .Z(n4_adj_840)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_128.init = 16'hc888;
    LUT4 i1_4_lut_adj_129 (.A(n16819), .B(n16771), .C(n16822), .D(n16826), 
         .Z(n14271)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_129.init = 16'hffdc;
    LUT4 i1_4_lut_adj_130 (.A(n16827), .B(n16823), .C(n16808), .D(n16815), 
         .Z(n5_adj_841)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_130.init = 16'hfac8;
    LUT4 i9_4_lut_adj_131 (.A(n17_adj_847), .B(n15210), .C(n15305), .D(n16856), 
         .Z(n22_adj_844)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i9_4_lut_adj_131.init = 16'ha080;
    LUT4 i42_4_lut (.A(n15408), .B(n16812), .C(n11074), .D(n16818), 
         .Z(n91)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;
    defparam i42_4_lut.init = 16'h80a0;
    LUT4 cnt_11__I_0_418_i17_rep_80_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n16849), 
         .C(n16851), .D(cnt[4]), .Z(n15712)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(142[7:9])
    defparam cnt_11__I_0_418_i17_rep_80_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i47_4_lut (.A(n11300), .B(n94), .C(n16827), .D(n16826), .Z(n96)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i47_4_lut.init = 16'h8880;
    LUT4 cnt_11__I_0_474_i23_3_lut_rep_364_4_lut (.A(cnt[1]), .B(n16849), 
         .C(n16818), .D(n16796), .Z(n16775)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(142[7:9])
    defparam cnt_11__I_0_474_i23_3_lut_rep_364_4_lut.init = 16'hffef;
    LUT4 i43_4_lut (.A(n16812), .B(n50_adj_848), .C(n11148), .D(n16814), 
         .Z(n92)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i43_4_lut.init = 16'hc080;
    LUT4 i1_4_lut_adj_132 (.A(n15135), .B(n16817), .C(n15669), .D(n16823), 
         .Z(n50_adj_848)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_132.init = 16'ha080;
    LUT4 cnt_11__I_0_386_i17_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n16849), 
         .C(n16852), .D(cnt[3]), .Z(n17_adj_812)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(142[7:9])
    defparam cnt_11__I_0_386_i17_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_133 (.A(n16771), .B(n15293), .C(n131), .D(n132_adj_835), 
         .Z(n16)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_133.init = 16'hc888;
    PFUMX i13438 (.BLUT(n16897), .ALUT(n16898), .C0(cnt[0]), .Z(n16899));
    LUT4 i45_4_lut (.A(n14202), .B(n15701), .C(n16817), .D(n16818), 
         .Z(n94)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i45_4_lut.init = 16'h8088;
    PFUMX i13434 (.BLUT(n16891), .ALUT(n16892), .C0(cnt[5]), .Z(n16893));
    LUT4 i12961_4_lut (.A(cnt[3]), .B(cnt[6]), .C(n16831), .D(cnt[7]), 
         .Z(n14257)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i12961_4_lut.init = 16'h0111;
    PFUMX i13432 (.BLUT(n16888), .ALUT(n17703), .C0(n16824), .Z(n16890));
    PFUMX i13430 (.BLUT(n16885), .ALUT(n16886), .C0(cnt[1]), .Z(n11854));
    LUT4 i4_4_lut_adj_134 (.A(n22), .B(n15298), .C(n15295), .D(n16824), 
         .Z(n17_adj_847)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i4_4_lut_adj_134.init = 16'heeea;
    PFUMX i13428 (.BLUT(n16882), .ALUT(n16883), .C0(cnt[7]), .Z(n16884));
    FD1S3AX clk_100khz_291 (.D(clk_100khz_N_397), .CK(clk_c), .Q(clk_100khz)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=9, LSE_RCOL=3, LSE_LLINE=38, LSE_RLINE=46 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/bh1750.v(60[9] 63[28])
    defparam clk_100khz_291.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_135 (.A(n16815), .B(n4), .C(n4_adj_796), .D(n11776), 
         .Z(n15135)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_135.init = 16'hc080;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module rgb_led
//

module rgb_led (rgb_led2_c, \BH1750_data_out[13] , \BH1750_data_out[12] , 
            tens_3__N_420, tens_3__N_418, GND_net, clk_c, rst_c, \BH1750_data_out[10] , 
            \BH1750_data_out[11] ) /* synthesis syn_module_defined=1 */ ;
    output rgb_led2_c;
    input \BH1750_data_out[13] ;
    input \BH1750_data_out[12] ;
    input tens_3__N_420;
    input tens_3__N_418;
    input GND_net;
    input clk_c;
    input rst_c;
    input \BH1750_data_out[10] ;
    input \BH1750_data_out[11] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/interface_bh1750.v(20[11:14])
    wire [5:0]count;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(24[13:18])
    
    wire n15391, n8, n10, n15571, n15513, n16832, n6, n16833, 
        n16834, n4, n14113;
    wire [5:0]n29;
    
    wire n218, n14112, n14111, n5;
    
    LUT4 i12757_2_lut (.A(count[2]), .B(count[3]), .Z(n15391)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12757_2_lut.init = 16'h8888;
    PFUMX count_5__I_0_i12 (.BLUT(n8), .ALUT(n10), .C0(n15571), .Z(rgb_led2_c)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=10, LSE_RCOL=3, LSE_LLINE=85, LSE_RLINE=92 */ ;
    LUT4 i12824_3_lut (.A(count[1]), .B(count[4]), .C(count[5]), .Z(n15513)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i12824_3_lut.init = 16'h8080;
    LUT4 count_5__I_0_i7_2_lut_rep_421 (.A(count[3]), .B(\BH1750_data_out[13] ), 
         .Z(n16832)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(35[7:21])
    defparam count_5__I_0_i7_2_lut_rep_421.init = 16'h6666;
    LUT4 count_5__I_0_i6_3_lut_3_lut (.A(count[3]), .B(\BH1750_data_out[13] ), 
         .C(\BH1750_data_out[12] ), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(35[7:21])
    defparam count_5__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 count_5__I_0_i9_2_lut_rep_422 (.A(count[4]), .B(tens_3__N_420), 
         .Z(n16833)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(35[7:21])
    defparam count_5__I_0_i9_2_lut_rep_422.init = 16'h6666;
    LUT4 count_5__I_0_i8_3_lut_3_lut (.A(count[4]), .B(tens_3__N_420), .C(n6), 
         .Z(n8)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(35[7:21])
    defparam count_5__I_0_i8_3_lut_3_lut.init = 16'h2b2b;
    LUT4 count_5__I_0_i11_2_lut_rep_423 (.A(count[5]), .B(tens_3__N_418), 
         .Z(n16834)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(35[7:21])
    defparam count_5__I_0_i11_2_lut_rep_423.init = 16'h6666;
    LUT4 count_5__I_0_i10_3_lut_3_lut (.A(count[5]), .B(tens_3__N_418), 
         .C(n4), .Z(n10)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(35[7:21])
    defparam count_5__I_0_i10_3_lut_3_lut.init = 16'h2b2b;
    CCU2D count_4438_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14113), .S0(n29[5]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(32[12:19])
    defparam count_4438_add_4_7.INIT0 = 16'hfaaa;
    defparam count_4438_add_4_7.INIT1 = 16'h0000;
    defparam count_4438_add_4_7.INJECT1_0 = "NO";
    defparam count_4438_add_4_7.INJECT1_1 = "NO";
    FD1S3IX count_4438__i0 (.D(n29[0]), .CK(clk_c), .CD(n218), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(32[12:19])
    defparam count_4438__i0.GSR = "DISABLED";
    CCU2D count_4438_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14112), .COUT(n14113), .S0(n29[3]), .S1(n29[4]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(32[12:19])
    defparam count_4438_add_4_5.INIT0 = 16'hfaaa;
    defparam count_4438_add_4_5.INIT1 = 16'hfaaa;
    defparam count_4438_add_4_5.INJECT1_0 = "NO";
    defparam count_4438_add_4_5.INJECT1_1 = "NO";
    CCU2D count_4438_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14111), .COUT(n14112), .S0(n29[1]), .S1(n29[2]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(32[12:19])
    defparam count_4438_add_4_3.INIT0 = 16'hfaaa;
    defparam count_4438_add_4_3.INIT1 = 16'hfaaa;
    defparam count_4438_add_4_3.INJECT1_0 = "NO";
    defparam count_4438_add_4_3.INJECT1_1 = "NO";
    CCU2D count_4438_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n14111), .S1(n29[0]));   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(32[12:19])
    defparam count_4438_add_4_1.INIT0 = 16'hF000;
    defparam count_4438_add_4_1.INIT1 = 16'h0555;
    defparam count_4438_add_4_1.INJECT1_0 = "NO";
    defparam count_4438_add_4_1.INJECT1_1 = "NO";
    LUT4 i12928_4_lut (.A(count[0]), .B(rst_c), .C(n15391), .D(n15513), 
         .Z(n218)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;
    defparam i12928_4_lut.init = 16'h7333;
    FD1S3IX count_4438__i5 (.D(n29[5]), .CK(clk_c), .CD(n218), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(32[12:19])
    defparam count_4438__i5.GSR = "DISABLED";
    FD1S3IX count_4438__i4 (.D(n29[4]), .CK(clk_c), .CD(n218), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(32[12:19])
    defparam count_4438__i4.GSR = "DISABLED";
    FD1S3IX count_4438__i3 (.D(n29[3]), .CK(clk_c), .CD(n218), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(32[12:19])
    defparam count_4438__i3.GSR = "DISABLED";
    FD1S3IX count_4438__i2 (.D(n29[2]), .CK(clk_c), .CD(n218), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(32[12:19])
    defparam count_4438__i2.GSR = "DISABLED";
    FD1S3IX count_4438__i1 (.D(n29[1]), .CK(clk_c), .CD(n218), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(32[12:19])
    defparam count_4438__i1.GSR = "DISABLED";
    LUT4 count_5__I_0_i4_4_lut (.A(\BH1750_data_out[10] ), .B(\BH1750_data_out[11] ), 
         .C(count[1]), .D(count[0]), .Z(n4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(35[7:21])
    defparam count_5__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 i12958_4_lut (.A(n16834), .B(n16833), .C(n16832), .D(n5), .Z(n15571)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(35[7:21])
    defparam i12958_4_lut.init = 16'haaab;
    LUT4 count_5__I_0_i5_2_lut (.A(count[2]), .B(\BH1750_data_out[12] ), 
         .Z(n5)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/demo/sensor_board_demo/interface_bh1750/rgb_led.v(35[7:21])
    defparam count_5__I_0_i5_2_lut.init = 16'h6666;
    
endmodule
