// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Fri Jun 09 15:45:08 2017
//
// Verilog Description of module pianoshield_top
//

module pianoshield_top (clk_in, rst_n_in, scl_out, sda_out, beepout, 
            led_out, segment_led_1, segment_led_2) /* synthesis syn_module_defined=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(18[8:23])
    input clk_in;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(19[11:17])
    input rst_n_in;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(20[11:19])
    output scl_out;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(21[12:19])
    inout sda_out;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(22[11:18])
    output beepout;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(23[13:20])
    output [7:0]led_out;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(24[16:23])
    output [8:0]segment_led_1;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(25[18:31])
    output [8:0]segment_led_2;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(26[18:31])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(19[11:17])
    wire clk_200khz /* synthesis is_clock=1, SET_AS_NETWORK=\cap1188_i2c_u/clk_200khz */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(65[10:20])
    
    wire GND_net, VCC_net, rst_n_in_c, scl_out_c, beepout_c, led_out_c_7, 
        led_out_c_6, led_out_c_5, led_out_c_4, led_out_c_3, led_out_c_2, 
        led_out_c_1, led_out_c_0, segment_led_1_c_6, segment_led_1_c_5, 
        segment_led_1_c_4, segment_led_1_c_3, segment_led_1_c_2, segment_led_1_c_1, 
        segment_led_1_c_0, segment_led_2_c_6, segment_led_2_c_5, segment_led_2_c_4, 
        segment_led_2_c_3, segment_led_2_c_2, segment_led_2_c_1, segment_led_2_c_0;
    wire [7:0]sensor_data1;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(30[13:25])
    wire [7:0]sensor_data2;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(30[26:38])
    wire [7:0]tone;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(31[12:16])
    
    wire down_button, up_button, mode_button, piano_out;
    wire [7:0]freq_index_out;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(92[14:28])
    wire [2:0]button_pulse;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(93[14:26])
    wire [2:0]button_status_r;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(95[13:28])
    wire [2:0]button_status;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(95[29:42])
    
    wire mode_flag, down_button_N_27;
    wire [7:0]tone_7__N_1;
    
    wire n15996, mode_flag_N_37;
    wire [1:0]cnt_main;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(82[14:22])
    wire [4:0]cnt_work;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(86[14:22])
    wire [1:0]cnt_start;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(88[14:23])
    wire [1:0]cnt_ack_t;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(95[14:23])
    wire [1:0]cnt_stop;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(96[14:22])
    wire [3:0]state;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    wire [3:0]state_back;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(98[15:25])
    
    wire cnt_200khz_5__N_145;
    wire [3:0]state_3__N_180;
    
    wire clk_in_c_enable_54, n16311;
    wire [3:0]state_3__N_176;
    
    wire n16310, n15995, n42;
    wire [3:0]state_3__N_172;
    
    wire n16221, n6580, n6579, n6575, sda_out_N_274, n6564, n6563, 
        n6549, n6548, n15340, n12044, n16301, pwm_en;
    wire [7:0]counter;   // c:/users/test/desktop/pianoshield/source/music_box.v(33[14:21])
    
    wire n16300, pwm_en_N_444, n8070, n16296, n14532, n7580, n15407, 
        pwm, n16019, n14379, n8, n10, n12012, clk_in_c_enable_56, 
        n15379, n9386, n16287, n16286, n16284, clk_in_c_enable_32, 
        n6, n16134, n16132, n4, n16131, n16280, n16328, n16327, 
        n16663, n16272, n16326, n5, n12022, n94, n17, n16, n9, 
        n16268, n16662, n16_adj_641, n15411, sda_out_out, n16_adj_642, 
        n20, n11026, n17_adj_643, n4211, n4212, n4213, n4214, 
        n16262, n15324, n20_adj_644, n17_adj_645, n16214, n16259, 
        n16258, n17_adj_646, clk_in_c_enable_72, n7685, n14, clk_in_c_enable_55, 
        n50, n55, n16130, n27, n25, clk_in_c_enable_61, clk_in_c_enable_46, 
        n15275, n16247, n14650, n16245, n16244, n16243, n16044, 
        n15577, n15410, n30, n15571, clk_in_c_enable_48, n15569, 
        n16021, n16020, n16234, n16233, n9488, n14441, n16322, 
        n16321, n16228, n8_adj_647, n16227, n9481, n15479, n16313, 
        n15997, n5497, n5498, n5499, n5500;
    
    VHI i2 (.Z(VCC_net));
    ROM256X1A mux_158_Mux_0 (.AD0(counter[0]), .AD1(counter[1]), .AD2(counter[2]), 
            .AD3(counter[3]), .AD4(counter[4]), .AD5(counter[5]), .AD6(counter[6]), 
            .AD7(counter[7]), .DO0(n5500)) /* synthesis initstate=0x000000000000000000000000000000FF380F8B0840DFFCF07F23C7377F1CC87F */ ;
    defparam mux_158_Mux_0.initval = 256'h000000000000000000000000000000FF380F8B0840DFFCF07F23C7377F1CC87F;
    FD1S3AY button_status_i0 (.D(down_button), .CK(clk_in_c), .Q(button_status[0]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(102[11:80])
    defparam button_status_i0.GSR = "ENABLED";
    FD1S3AX mode_flag_54 (.D(mode_flag_N_37), .CK(clk_in_c), .Q(mode_flag)) /* synthesis lse_init_val=0 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(123[12] 126[6])
    defparam mode_flag_54.GSR = "ENABLED";
    FD1S3AX tone_i0 (.D(tone_7__N_1[0]), .CK(clk_in_c), .Q(tone[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam tone_i0.GSR = "ENABLED";
    FD1S3AY button_status_r_i0 (.D(button_status[0]), .CK(clk_in_c), .Q(button_status_r[0]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(102[11:80])
    defparam button_status_r_i0.GSR = "ENABLED";
    ROM256X1A mux_157_Mux_0 (.AD0(counter[0]), .AD1(counter[1]), .AD2(counter[2]), 
            .AD3(counter[3]), .AD4(counter[4]), .AD5(counter[5]), .AD6(counter[6]), 
            .AD7(counter[7]), .DO0(n4214)) /* synthesis initstate=0x000000000000000000000000000000FF380F8B0840DFFCF07F23C7377F1CC87F */ ;
    defparam mux_157_Mux_0.initval = 256'h000000000000000000000000000000FF380F8B0840DFFCF07F23C7377F1CC87F;
    ROM256X1A mux_157_Mux_3 (.AD0(counter[0]), .AD1(counter[1]), .AD2(counter[2]), 
            .AD3(counter[3]), .AD4(counter[4]), .AD5(counter[5]), .AD6(counter[6]), 
            .AD7(counter[7]), .DO0(n4211)) /* synthesis initstate=0x0000000000000000000000000000000082F03FFF008002CF008CF00F7FFF2F00 */ ;
    defparam mux_157_Mux_3.initval = 256'h0000000000000000000000000000000082F03FFF008002CF008CF00F7FFF2F00;
    ROM256X1A mux_158_Mux_3 (.AD0(counter[0]), .AD1(counter[1]), .AD2(counter[2]), 
            .AD3(counter[3]), .AD4(counter[4]), .AD5(counter[5]), .AD6(counter[6]), 
            .AD7(counter[7]), .DO0(n5497)) /* synthesis initstate=0x0000000000000000000000000000000082F03FFF008002CF008CF00F7FFF2F00 */ ;
    defparam mux_158_Mux_3.initval = 256'h0000000000000000000000000000000082F03FFF008002CF008CF00F7FFF2F00;
    OB led_out_pad_6 (.I(led_out_c_6), .O(led_out[6]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(24[16:23])
    ROM256X1A mux_157_Mux_2 (.AD0(counter[0]), .AD1(counter[1]), .AD2(counter[2]), 
            .AD3(counter[3]), .AD4(counter[4]), .AD5(counter[5]), .AD6(counter[6]), 
            .AD7(counter[7]), .DO0(n4212)) /* synthesis initstate=0x000000000000000000000000000000FF6D00C070FF72FD387F700FF000BFD0F0 */ ;
    defparam mux_157_Mux_2.initval = 256'h000000000000000000000000000000FF6D00C070FF72FD387F700FF000BFD0F0;
    ROM256X1A mux_157_Mux_1 (.AD0(counter[0]), .AD1(counter[1]), .AD2(counter[2]), 
            .AD3(counter[3]), .AD4(counter[4]), .AD5(counter[5]), .AD6(counter[6]), 
            .AD7(counter[7]), .DO0(n4213)) /* synthesis initstate=0x00000000000000000000000000000000550F4480BF6D0137005308F8004C108F */ ;
    defparam mux_157_Mux_1.initval = 256'h00000000000000000000000000000000550F4480BF6D0137005308F8004C108F;
    ROM256X1A mux_158_Mux_2 (.AD0(counter[0]), .AD1(counter[1]), .AD2(counter[2]), 
            .AD3(counter[3]), .AD4(counter[4]), .AD5(counter[5]), .AD6(counter[6]), 
            .AD7(counter[7]), .DO0(n5498)) /* synthesis initstate=0x000000000000000000000000000000FF6D00C070FF72FD387F700FF000BFD0F0 */ ;
    defparam mux_158_Mux_2.initval = 256'h000000000000000000000000000000FF6D00C070FF72FD387F700FF000BFD0F0;
    ROM256X1A mux_158_Mux_1 (.AD0(counter[0]), .AD1(counter[1]), .AD2(counter[2]), 
            .AD3(counter[3]), .AD4(counter[4]), .AD5(counter[5]), .AD6(counter[6]), 
            .AD7(counter[7]), .DO0(n5499)) /* synthesis initstate=0x00000000000000000000000000000000550F4480BF6D0137005308F8004C108F */ ;
    defparam mux_158_Mux_1.initval = 256'h00000000000000000000000000000000550F4480BF6D0137005308F8004C108F;
    OB led_out_pad_7 (.I(led_out_c_7), .O(led_out[7]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(24[16:23])
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(20[11:19])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(19[11:17])
    OB segment_led_2_pad_0 (.I(segment_led_2_c_0), .O(segment_led_2[0]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(26[18:31])
    OB segment_led_2_pad_1 (.I(segment_led_2_c_1), .O(segment_led_2[1]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(26[18:31])
    OB segment_led_2_pad_2 (.I(segment_led_2_c_2), .O(segment_led_2[2]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(26[18:31])
    OB segment_led_2_pad_3 (.I(segment_led_2_c_3), .O(segment_led_2[3]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(26[18:31])
    OB segment_led_2_pad_4 (.I(segment_led_2_c_4), .O(segment_led_2[4]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(26[18:31])
    OB segment_led_2_pad_5 (.I(segment_led_2_c_5), .O(segment_led_2[5]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(26[18:31])
    OB segment_led_2_pad_6 (.I(segment_led_2_c_6), .O(segment_led_2[6]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(26[18:31])
    OB segment_led_2_pad_7 (.I(GND_net), .O(segment_led_2[7]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(26[18:31])
    OB segment_led_2_pad_8 (.I(GND_net), .O(segment_led_2[8]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(26[18:31])
    OB segment_led_1_pad_0 (.I(segment_led_1_c_0), .O(segment_led_1[0]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(25[18:31])
    OB segment_led_1_pad_1 (.I(segment_led_1_c_1), .O(segment_led_1[1]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(25[18:31])
    OB segment_led_1_pad_2 (.I(segment_led_1_c_2), .O(segment_led_1[2]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(25[18:31])
    OB segment_led_1_pad_3 (.I(segment_led_1_c_3), .O(segment_led_1[3]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(25[18:31])
    OB segment_led_1_pad_4 (.I(segment_led_1_c_4), .O(segment_led_1[4]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(25[18:31])
    OB segment_led_1_pad_5 (.I(segment_led_1_c_5), .O(segment_led_1[5]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(25[18:31])
    OB segment_led_1_pad_6 (.I(segment_led_1_c_6), .O(segment_led_1[6]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(25[18:31])
    OB segment_led_1_pad_7 (.I(GND_net), .O(segment_led_1[7]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(25[18:31])
    OB segment_led_1_pad_8 (.I(GND_net), .O(segment_led_1[8]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(25[18:31])
    OB led_out_pad_0 (.I(led_out_c_0), .O(led_out[0]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(24[16:23])
    OB led_out_pad_1 (.I(led_out_c_1), .O(led_out[1]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(24[16:23])
    OB led_out_pad_2 (.I(led_out_c_2), .O(led_out[2]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(24[16:23])
    OB led_out_pad_3 (.I(led_out_c_3), .O(led_out[3]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(24[16:23])
    OB led_out_pad_4 (.I(led_out_c_4), .O(led_out[4]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(24[16:23])
    OB led_out_pad_5 (.I(led_out_c_5), .O(led_out[5]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(24[16:23])
    PFUMX i10016 (.BLUT(n16020), .ALUT(n16019), .C0(state[3]), .Z(n16021));
    L6MUX21 mux_1111_i2 (.D0(state_3__N_172[1]), .D1(n6563), .SD(n15577), 
            .Z(n6579));
    OB beepout_pad (.I(beepout_c), .O(beepout));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(23[13:20])
    OB scl_out_pad (.I(scl_out_c), .O(scl_out));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(21[12:19])
    FD1P3AX up_button_49 (.D(down_button_N_27), .SP(clk_in_c_enable_46), 
            .CK(clk_in_c), .Q(up_button));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam up_button_49.GSR = "ENABLED";
    PFUMX mux_1111_i1 (.BLUT(n6549), .ALUT(n6564), .C0(n15569), .Z(n6580));
    PFUMX mux_1099_i2 (.BLUT(n11026), .ALUT(n6548), .C0(n16214), .Z(n6563));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 m1_lut (.Z(n16663)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i9918_2_lut_rep_140 (.A(state[1]), .B(n6575), .Z(n16214)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9918_2_lut_rep_140.init = 16'hdddd;
    LUT4 i9857_2_lut_3_lut (.A(state[1]), .B(n6575), .C(clk_in_c_enable_61), 
         .Z(n12044)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9857_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i115_2_lut_rep_185 (.A(clk_200khz), .B(cnt_200khz_5__N_145), .Z(n16259)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i115_2_lut_rep_185.init = 16'hbbbb;
    LUT4 i2308_2_lut_rep_169_3_lut (.A(clk_200khz), .B(cnt_200khz_5__N_145), 
         .C(state[2]), .Z(n16243)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i2308_2_lut_rep_169_3_lut.init = 16'hfbfb;
    LUT4 i9816_2_lut_2_lut_3_lut_4_lut (.A(clk_200khz), .B(cnt_200khz_5__N_145), 
         .C(n16313), .D(state[2]), .Z(clk_in_c_enable_56)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9816_2_lut_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i2332_2_lut_rep_170_3_lut (.A(clk_200khz), .B(cnt_200khz_5__N_145), 
         .C(state[3]), .Z(n16244)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i2332_2_lut_rep_170_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_153_3_lut_4_lut (.A(clk_200khz), .B(cnt_200khz_5__N_145), 
         .C(state[2]), .D(state[3]), .Z(n16227)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_rep_153_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1939_3_lut_4_lut (.A(clk_200khz), .B(cnt_200khz_5__N_145), .C(rst_n_in_c), 
         .D(state[3]), .Z(n7685)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1939_3_lut_4_lut.init = 16'hffbf;
    PFUMX i53 (.BLUT(n27), .ALUT(n25), .C0(state[0]), .Z(n50));
    LUT4 i1_2_lut_rep_154_3_lut_4_lut (.A(clk_200khz), .B(cnt_200khz_5__N_145), 
         .C(state[1]), .D(state[3]), .Z(n16228)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_rep_154_3_lut_4_lut.init = 16'hfffb;
    LUT4 i2_3_lut_rep_159_4_lut (.A(clk_200khz), .B(cnt_200khz_5__N_145), 
         .C(state[1]), .D(rst_n_in_c), .Z(n16233)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i2_3_lut_rep_159_4_lut.init = 16'h4000;
    LUT4 i9860_2_lut_2_lut_3_lut_4_lut (.A(clk_200khz), .B(cnt_200khz_5__N_145), 
         .C(n16313), .D(state[3]), .Z(clk_in_c_enable_48)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9860_2_lut_2_lut_3_lut_4_lut.init = 16'h0004;
    FD1P3AX down_button_48 (.D(down_button_N_27), .SP(clk_in_c_enable_54), 
            .CK(clk_in_c), .Q(down_button));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam down_button_48.GSR = "ENABLED";
    FD1P3IX mode_button_50 (.D(n16663), .SP(clk_in_c_enable_55), .CD(n12012), 
            .CK(clk_in_c), .Q(mode_button));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam mode_button_50.GSR = "ENABLED";
    LUT4 cnt_work_0__bdd_4_lut_10206 (.A(cnt_work[0]), .B(cnt_work[4]), 
         .C(cnt_work[3]), .D(cnt_work[2]), .Z(n16131)) /* synthesis lut_function=(!((B (C+(D))+!B (C+!(D)))+!A)) */ ;
    defparam cnt_work_0__bdd_4_lut_10206.init = 16'h0208;
    LUT4 tone_7__I_0_62_i1_3_lut (.A(tone[0]), .B(freq_index_out[0]), .C(mode_flag), 
         .Z(led_out_c_0)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(131[18:51])
    defparam tone_7__I_0_62_i1_3_lut.init = 16'hcaca;
    LUT4 tone_7__I_0_62_i2_3_lut (.A(tone[1]), .B(freq_index_out[1]), .C(mode_flag), 
         .Z(led_out_c_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(131[18:51])
    defparam tone_7__I_0_62_i2_3_lut.init = 16'hcaca;
    FD1S3AY button_status_r_i2 (.D(button_status[2]), .CK(clk_in_c), .Q(button_status_r[2]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(102[11:80])
    defparam button_status_r_i2.GSR = "ENABLED";
    LUT4 tone_7__I_0_62_i3_3_lut (.A(tone[2]), .B(freq_index_out[2]), .C(mode_flag), 
         .Z(led_out_c_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(131[18:51])
    defparam tone_7__I_0_62_i3_3_lut.init = 16'hcaca;
    FD1S3AY button_status_r_i1 (.D(button_status[1]), .CK(clk_in_c), .Q(button_status_r[1]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(102[11:80])
    defparam button_status_r_i1.GSR = "ENABLED";
    LUT4 tone_7__I_0_62_i4_3_lut (.A(tone[3]), .B(freq_index_out[3]), .C(mode_flag), 
         .Z(led_out_c_3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(131[18:51])
    defparam tone_7__I_0_62_i4_3_lut.init = 16'hcaca;
    FD1S3AX tone_i7 (.D(tone_7__N_1[7]), .CK(clk_in_c), .Q(tone[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam tone_i7.GSR = "ENABLED";
    FD1S3AX tone_i6 (.D(tone_7__N_1[6]), .CK(clk_in_c), .Q(tone[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam tone_i6.GSR = "ENABLED";
    FD1S3AX tone_i5 (.D(tone_7__N_1[5]), .CK(clk_in_c), .Q(tone[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam tone_i5.GSR = "ENABLED";
    LUT4 i6430_2_lut (.A(tone[4]), .B(mode_flag), .Z(led_out_c_4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(131[18:51])
    defparam i6430_2_lut.init = 16'h2222;
    FD1S3AX tone_i4 (.D(tone_7__N_1[4]), .CK(clk_in_c), .Q(tone[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam tone_i4.GSR = "ENABLED";
    FD1S3AX tone_i3 (.D(tone_7__N_1[3]), .CK(clk_in_c), .Q(tone[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam tone_i3.GSR = "ENABLED";
    FD1S3AX tone_i2 (.D(tone_7__N_1[2]), .CK(clk_in_c), .Q(tone[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam tone_i2.GSR = "ENABLED";
    FD1S3AX tone_i1 (.D(tone_7__N_1[1]), .CK(clk_in_c), .Q(tone[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(58[11] 74[5])
    defparam tone_i1.GSR = "ENABLED";
    LUT4 i6429_2_lut (.A(tone[5]), .B(mode_flag), .Z(led_out_c_5)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(131[18:51])
    defparam i6429_2_lut.init = 16'h2222;
    FD1S3AY button_status_i2 (.D(mode_button), .CK(clk_in_c), .Q(button_status[2]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(102[11:80])
    defparam button_status_i2.GSR = "ENABLED";
    LUT4 cnt_work_0__bdd_3_lut_10205 (.A(cnt_work[4]), .B(cnt_work[3]), 
         .C(cnt_work[2]), .Z(n16130)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;
    defparam cnt_work_0__bdd_3_lut_10205.init = 16'h2424;
    FD1S3AY button_status_i1 (.D(up_button), .CK(clk_in_c), .Q(button_status[1]));   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(102[11:80])
    defparam button_status_i1.GSR = "ENABLED";
    LUT4 i9938_4_lut (.A(n6575), .B(state[1]), .C(state[0]), .D(n15571), 
         .Z(n15577)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9938_4_lut.init = 16'hfbbb;
    BB sda_out_pad (.I(sda_out_N_274), .T(n7580), .B(sda_out), .O(sda_out_out));   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(100[2] 303[5])
    LUT4 piano_out_I_0_4_lut (.A(piano_out), .B(pwm), .C(mode_flag), .D(pwm_en), 
         .Z(beepout_c)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(129[18:52])
    defparam piano_out_I_0_4_lut.init = 16'hca0a;
    LUT4 n16133_bdd_3_lut_4_lut (.A(n16286), .B(n16284), .C(state[0]), 
         .D(n16132), .Z(n16134)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n16133_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 tone_7__I_1_i1_4_lut (.A(down_button_N_27), .B(sensor_data1[0]), 
         .C(n16247), .D(n15324), .Z(tone_7__N_1[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam tone_7__I_1_i1_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut (.A(sensor_data2[0]), .B(sensor_data2[1]), .C(n12022), 
         .D(n16234), .Z(n15324)) /* synthesis lut_function=(A (C)+!A (B+(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hf4f5;
    LUT4 mux_1092_i1_4_lut (.A(state_3__N_172[0]), .B(state_3__N_180[0]), 
         .C(state[1]), .D(state[0]), .Z(n6549)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C)+!B (C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam mux_1092_i1_4_lut.init = 16'hacaf;
    LUT4 mux_1099_i1_4_lut (.A(state_3__N_176[0]), .B(state_back[0]), .C(n6575), 
         .D(n8_adj_647), .Z(n6564)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam mux_1099_i1_4_lut.init = 16'h0aca;
    LUT4 button_status_2__I_0_i1_2_lut (.A(button_status[0]), .B(button_status_r[0]), 
         .Z(button_pulse[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(105[23:58])
    defparam button_status_2__I_0_i1_2_lut.init = 16'h2222;
    LUT4 i9985_3_lut (.A(n6575), .B(state[1]), .C(state[0]), .Z(n15569)) /* synthesis lut_function=(A+!((C)+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9985_3_lut.init = 16'haeae;
    LUT4 i1_4_lut_adj_88 (.A(n16258), .B(n16328), .C(n9386), .D(state[0]), 
         .Z(n8_adj_647)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_4_lut_adj_88.init = 16'ha088;
    LUT4 i6420_2_lut_rep_213 (.A(sensor_data2[4]), .B(sensor_data2[3]), 
         .Z(n16287)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6420_2_lut_rep_213.init = 16'heeee;
    LUT4 i1_2_lut_rep_160_3_lut_4_lut (.A(sensor_data2[4]), .B(sensor_data2[3]), 
         .C(n16322), .D(sensor_data2[2]), .Z(n16234)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_160_3_lut_4_lut.init = 16'h0010;
    LUT4 i9780_4_lut (.A(cnt_main[1]), .B(n5), .C(n6575), .D(state[0]), 
         .Z(n6548)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9780_4_lut.init = 16'h3530;
    LUT4 i1_2_lut (.A(state_back[1]), .B(n8_adj_647), .Z(n5)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i3_3_lut_4_lut (.A(sensor_data2[4]), .B(sensor_data2[3]), .C(sensor_data2[2]), 
         .D(n16296), .Z(n14441)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(sensor_data2[4]), .B(sensor_data2[3]), .C(n16296), 
         .D(n16322), .Z(n9)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 i6384_2_lut_rep_222 (.A(sensor_data2[1]), .B(sensor_data2[0]), 
         .Z(n16296)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6384_2_lut_rep_222.init = 16'heeee;
    LUT4 i8781_4_lut (.A(n16310), .B(n42), .C(state[1]), .D(n16272), 
         .Z(n14650)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i8781_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(sensor_data2[2]), .B(n16322), .C(sensor_data2[3]), 
         .D(n16296), .Z(n15411)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(62[4] 67[11])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 cnt_work_4__bdd_2_lut (.A(cnt_work[4]), .B(cnt_work[3]), .Z(n15996)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam cnt_work_4__bdd_2_lut.init = 16'h1111;
    LUT4 i6428_2_lut (.A(tone[6]), .B(mode_flag), .Z(led_out_c_6)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(131[18:51])
    defparam i6428_2_lut.init = 16'h2222;
    LUT4 i21_4_lut (.A(counter[1]), .B(counter[5]), .C(counter[2]), .D(counter[0]), 
         .Z(n10)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C)))) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam i21_4_lut.init = 16'h1810;
    LUT4 i9974_4_lut (.A(n16259), .B(state[3]), .C(n50), .D(n9481), 
         .Z(clk_in_c_enable_61)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9974_4_lut.init = 16'h0105;
    LUT4 i1_4_lut_adj_89 (.A(cnt_ack_t[1]), .B(state[2]), .C(state[3]), 
         .D(n55), .Z(n27)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_4_lut_adj_89.init = 16'h50dc;
    LUT4 i55_4_lut (.A(cnt_start[1]), .B(n16268), .C(state[1]), .D(n16311), 
         .Z(n55)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i55_4_lut.init = 16'h3a0a;
    LUT4 i1_4_lut_adj_90 (.A(state[2]), .B(n30), .C(n42), .D(state[1]), 
         .Z(n25)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_4_lut_adj_90.init = 16'h0a88;
    LUT4 i1_2_lut_3_lut_4_lut_adj_91 (.A(sensor_data2[2]), .B(n16322), .C(sensor_data2[0]), 
         .D(n16287), .Z(n15407)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(62[4] 67[11])
    defparam i1_2_lut_3_lut_4_lut_adj_91.init = 16'h0004;
    LUT4 i1_2_lut_rep_227 (.A(counter[3]), .B(counter[4]), .Z(n16301)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam i1_2_lut_rep_227.init = 16'h8888;
    LUT4 i6266_3_lut_4_lut (.A(counter[3]), .B(counter[4]), .C(counter[2]), 
         .D(counter[1]), .Z(n94)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam i6266_3_lut_4_lut.init = 16'h0080;
    LUT4 i29_4_lut (.A(down_button_N_27), .B(sensor_data1[7]), .C(n16247), 
         .D(n17_adj_646), .Z(tone_7__N_1[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i29_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_92 (.A(n16221), .B(sensor_data2[7]), .C(tone[7]), 
         .D(n14), .Z(n17_adj_646)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i1_4_lut_adj_92.init = 16'h7350;
    LUT4 i1_3_lut (.A(n14441), .B(sensor_data2[5]), .C(sensor_data2[6]), 
         .Z(n14)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i1_3_lut.init = 16'hebeb;
    LUT4 i34_4_lut (.A(down_button_N_27), .B(sensor_data1[6]), .C(n16247), 
         .D(n20_adj_644), .Z(tone_7__N_1[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i34_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_93 (.A(n16221), .B(sensor_data2[6]), .C(tone[6]), 
         .D(n17_adj_645), .Z(n20_adj_644)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i1_4_lut_adj_93.init = 16'h7350;
    LUT4 i1_3_lut_adj_94 (.A(n14441), .B(sensor_data2[5]), .C(sensor_data2[7]), 
         .Z(n17_adj_645)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i1_3_lut_adj_94.init = 16'hebeb;
    LUT4 i34_4_lut_adj_95 (.A(down_button_N_27), .B(sensor_data1[5]), .C(n16247), 
         .D(n20), .Z(tone_7__N_1[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i34_4_lut_adj_95.init = 16'hcac0;
    LUT4 i1_4_lut_adj_96 (.A(n16221), .B(sensor_data2[5]), .C(tone[5]), 
         .D(n17_adj_643), .Z(n20)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i1_4_lut_adj_96.init = 16'h7350;
    LUT4 i1_3_lut_adj_97 (.A(n14441), .B(sensor_data2[6]), .C(sensor_data2[7]), 
         .Z(n17_adj_643)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i1_3_lut_adj_97.init = 16'hebeb;
    LUT4 cnt_work_4__bdd_4_lut_10074 (.A(cnt_work[4]), .B(cnt_work[2]), 
         .C(cnt_work[3]), .D(cnt_work[1]), .Z(n15995)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B+!(C)))) */ ;
    defparam cnt_work_4__bdd_4_lut_10074.init = 16'h4745;
    GSR GSR_INST (.GSR(rst_n_in_c));
    LUT4 i27_4_lut (.A(down_button_N_27), .B(sensor_data1[4]), .C(n16247), 
         .D(n16_adj_642), .Z(tone_7__N_1[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i27_4_lut.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_98 (.A(n16221), .B(sensor_data2[4]), .C(tone[4]), 
         .D(n15411), .Z(n16_adj_642)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B (C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i1_4_lut_adj_98.init = 16'haf8c;
    PFUMX i10099 (.BLUT(n16326), .ALUT(n16327), .C0(state[3]), .Z(n16328));
    LUT4 i27_4_lut_adj_99 (.A(down_button_N_27), .B(sensor_data1[3]), .C(n16247), 
         .D(n16_adj_641), .Z(tone_7__N_1[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i27_4_lut_adj_99.init = 16'hc0ca;
    PFUMX i3635 (.BLUT(n14532), .ALUT(n14379), .C0(state[3]), .Z(n9386));
    LUT4 state_0__bdd_4_lut_10015 (.A(state[0]), .B(cnt_stop[1]), .C(n16300), 
         .D(cnt_ack_t[1]), .Z(n16019)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C+!(D)))) */ ;
    defparam state_0__bdd_4_lut_10015.init = 16'h0d08;
    PFUMX i10004 (.BLUT(n15996), .ALUT(n15995), .C0(cnt_work[0]), .Z(n15997));
    LUT4 i1_4_lut_adj_100 (.A(n16221), .B(sensor_data2[3]), .C(tone[3]), 
         .D(n15410), .Z(n16_adj_641)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B (C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i1_4_lut_adj_100.init = 16'haf8c;
    LUT4 i27_4_lut_adj_101 (.A(down_button_N_27), .B(sensor_data1[2]), .C(n16247), 
         .D(n16), .Z(tone_7__N_1[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i27_4_lut_adj_101.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_102 (.A(n16221), .B(sensor_data2[2]), .C(tone[2]), 
         .D(n9), .Z(n16)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B (C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i1_4_lut_adj_102.init = 16'haf8c;
    LUT4 i28_4_lut (.A(down_button_N_27), .B(sensor_data1[1]), .C(n16247), 
         .D(n17), .Z(tone_7__N_1[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i28_4_lut.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_103 (.A(n16221), .B(sensor_data2[1]), .C(tone[1]), 
         .D(n15407), .Z(n17)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B (C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(61[12] 73[6])
    defparam i1_4_lut_adj_103.init = 16'haf8c;
    LUT4 i2324_2_lut (.A(counter[5]), .B(counter[6]), .Z(n8070)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam i2324_2_lut.init = 16'hbbbb;
    PFUMX i10062 (.BLUT(n16131), .ALUT(n16130), .C0(cnt_work[1]), .Z(n16132));
    LUT4 state_0__bdd_4_lut_10080 (.A(state[0]), .B(n14650), .C(n6), .D(state[2]), 
         .Z(n16020)) /* synthesis lut_function=(A (B (D))+!A (C (D))) */ ;
    defparam state_0__bdd_4_lut_10080.init = 16'hd800;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_2_lut_3_lut_4_lut_adj_104 (.A(sensor_data2[2]), .B(n16322), 
         .C(sensor_data2[4]), .D(n16296), .Z(n15410)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(62[4] 67[11])
    defparam i1_2_lut_3_lut_4_lut_adj_104.init = 16'h0004;
    LUT4 i1_4_lut_adj_105 (.A(cnt_work[4]), .B(n15275), .C(n8), .D(n15379), 
         .Z(clk_in_c_enable_32)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i1_4_lut_adj_105.init = 16'h8ccc;
    LUT4 n14360_bdd_4_lut_then_4_lut (.A(cnt_ack_t[0]), .B(cnt_ack_t[1]), 
         .C(state[1]), .D(state[2]), .Z(n16327)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n14360_bdd_4_lut_then_4_lut.init = 16'h0008;
    LUT4 n14360_bdd_4_lut_else_4_lut (.A(cnt_start[1]), .B(state[1]), .C(cnt_start[0]), 
         .D(state[2]), .Z(n16326)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam n14360_bdd_4_lut_else_4_lut.init = 16'h2000;
    music_box musicbox_u (.counter({counter}), .clk_in_c(clk_in_c), .rst_n_in_c(rst_n_in_c), 
            .\freq_index_out[0] (freq_index_out[0]), .pwm_en(pwm_en), .pwm_en_N_444(pwm_en_N_444), 
            .GND_net(GND_net), .VCC_net(VCC_net), .\freq_index_out[3] (freq_index_out[3]), 
            .\freq_index_out[2] (freq_index_out[2]), .\freq_index_out[1] (freq_index_out[1]), 
            .n16662(n16662), .n16321(n16321), .\button_status[1] (button_status[1]), 
            .\button_pulse[0] (button_pulse[0]), .\button_status_r[1] (button_status_r[1]), 
            .n5499(n5499), .n4213(n4213), .n5497(n5497), .n4211(n4211), 
            .n16301(n16301), .n10(n10), .n5498(n5498), .n4212(n4212), 
            .n94(n94), .n16044(n16044), .n8070(n8070), .n5500(n5500), 
            .n4214(n4214), .pwm(pwm)) /* synthesis syn_module_defined=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(108[12] 114[3])
    LUT4 button_status_2__I_0_i3_2_lut_rep_247 (.A(button_status[2]), .B(button_status_r[2]), 
         .Z(n16321)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(105[23:58])
    defparam button_status_2__I_0_i3_2_lut_rep_247.init = 16'h2222;
    LUT4 mode_flag_I_0_2_lut_3_lut (.A(button_status[2]), .B(button_status_r[2]), 
         .C(mode_flag), .Z(mode_flag_N_37)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(105[23:58])
    defparam mode_flag_I_0_2_lut_3_lut.init = 16'hd2d2;
    display display_u (.sensor_data2({sensor_data2}), .segment_led_1_c_0(segment_led_1_c_0), 
            .rst_n_in_c(rst_n_in_c), .segment_led_2_c_2(segment_led_2_c_2), 
            .n16262(n16262), .sensor_data1({sensor_data1}), .segment_led_1_c_2(segment_led_1_c_2), 
            .n9488(n9488), .n16245(n16245), .down_button_N_27(down_button_N_27), 
            .n16280(n16280), .n12012(n12012), .segment_led_1_c_1(segment_led_1_c_1), 
            .segment_led_1_c_3(segment_led_1_c_3), .n16247(n16247), .segment_led_1_c_4(segment_led_1_c_4), 
            .segment_led_1_c_5(segment_led_1_c_5), .segment_led_2_c_1(segment_led_2_c_1), 
            .segment_led_2_c_6(segment_led_2_c_6), .segment_led_2_c_4(segment_led_2_c_4), 
            .n16221(n16221), .\tone[0] (tone[0]), .n12022(n12022), .segment_led_1_c_6(segment_led_1_c_6), 
            .segment_led_2_c_3(segment_led_2_c_3), .segment_led_2_c_5(segment_led_2_c_5), 
            .n4(n4), .n15340(n15340), .n15997(n15997), .\state[0] (state[0]), 
            .n15275(n15275), .clk_in_c_enable_55(clk_in_c_enable_55), .segment_led_2_c_0(segment_led_2_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(133[10] 139[2])
    LUT4 pwm_en_I_0_2_lut_3_lut (.A(button_status[2]), .B(button_status_r[2]), 
         .C(pwm_en), .Z(pwm_en_N_444)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(105[23:58])
    defparam pwm_en_I_0_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i96_4_lut_3_lut_rep_248 (.A(sensor_data2[6]), .B(sensor_data2[5]), 
         .C(sensor_data2[7]), .Z(n16322)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i96_4_lut_3_lut_rep_248.init = 16'h1616;
    LUT4 m0_lut (.Z(n16662)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    LUT4 i1_4_lut_adj_106 (.A(n15379), .B(n15275), .C(cnt_work[4]), .D(n15479), 
         .Z(clk_in_c_enable_72)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i1_4_lut_adj_106.init = 16'hccc4;
    LUT4 i9686_3_lut (.A(cnt_work[2]), .B(cnt_work[0]), .C(cnt_work[1]), 
         .Z(n15479)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i9686_3_lut.init = 16'hc4c4;
    LUT4 i1_2_lut_adj_107 (.A(state[0]), .B(cnt_work[3]), .Z(n15379)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_107.init = 16'h2222;
    LUT4 i9854_3_lut_3_lut_4_lut (.A(n16262), .B(n16280), .C(n9488), .D(down_button_N_27), 
         .Z(clk_in_c_enable_46)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(59[6:18])
    defparam i9854_3_lut_3_lut_4_lut.init = 16'h0111;
    VLO i1 (.Z(GND_net));
    LUT4 i6427_2_lut (.A(tone[7]), .B(mode_flag), .Z(led_out_c_7)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(131[18:51])
    defparam i6427_2_lut.init = 16'h2222;
    LUT4 i9983_3_lut_3_lut_4_lut (.A(n16262), .B(n16280), .C(n16245), 
         .D(down_button_N_27), .Z(clk_in_c_enable_54)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(59[6:18])
    defparam i9983_3_lut_3_lut_4_lut.init = 16'h0111;
    LUT4 counter_2__bdd_4_lut (.A(counter[2]), .B(counter[4]), .C(counter[1]), 
         .D(counter[3]), .Z(n16044)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+!(D))))) */ ;
    defparam counter_2__bdd_4_lut.init = 16'h0120;
    beeper beeper_u (.clk_in_c(clk_in_c), .piano_out(piano_out), .tone({tone}), 
           .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(83[11] 90[2])
    cap1188_i2c cap1188_i2c_u (.clk_200khz(clk_200khz), .clk_in_c(clk_in_c), 
            .sda_out_N_274(sda_out_N_274), .sda_out_out(sda_out_out), .sensor_data2({sensor_data2}), 
            .clk_in_c_enable_32(clk_in_c_enable_32), .sensor_data1({sensor_data1}), 
            .scl_out_c(scl_out_c), .cnt_200khz_5__N_145(cnt_200khz_5__N_145), 
            .GND_net(GND_net), .cnt_work({cnt_work}), .\state_back[0] (state_back[0]), 
            .state({state}), .clk_in_c_enable_61(clk_in_c_enable_61), .n6579(n6579), 
            .\cnt_main[1] (cnt_main[1]), .\state_back[1] (state_back[1]), 
            .n16662(n16662), .cnt_start({cnt_start}), .clk_in_c_enable_48(clk_in_c_enable_48), 
            .cnt_stop({cnt_stop[1], Open_0}), .n12044(n12044), .n16134(n16134), 
            .n16244(n16244), .cnt_ack_t({cnt_ack_t}), .n16258(n16258), 
            .n16021(n16021), .n6575(n6575), .n16227(n16227), .n15571(n15571), 
            .clk_in_c_enable_56(clk_in_c_enable_56), .n16300(n16300), .n16311(n16311), 
            .\state_3__N_180[0] (state_3__N_180[0]), .n16233(n16233), .n16284(n16284), 
            .n16286(n16286), .n4(n4), .n8(n8), .n16243(n16243), .n16313(n16313), 
            .\state_3__N_172[1] (state_3__N_172[1]), .n16259(n16259), .n16268(n16268), 
            .n6(n6), .n42(n42), .n9481(n9481), .n14379(n14379), .n16310(n16310), 
            .n30(n30), .\state_3__N_176[0] (state_3__N_176[0]), .n16272(n16272), 
            .n6580(n6580), .n16228(n16228), .\state_3__N_172[0] (state_3__N_172[0]), 
            .n7685(n7685), .rst_n_in_c(rst_n_in_c), .n15340(n15340), .n7580(n7580), 
            .n11026(n11026), .clk_in_c_enable_72(clk_in_c_enable_72), .n14532(n14532)) /* synthesis syn_module_defined=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(34[14] 42[2])
    
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
// Verilog Description of module music_box
//

module music_box (counter, clk_in_c, rst_n_in_c, \freq_index_out[0] , 
            pwm_en, pwm_en_N_444, GND_net, VCC_net, \freq_index_out[3] , 
            \freq_index_out[2] , \freq_index_out[1] , n16662, n16321, 
            \button_status[1] , \button_pulse[0] , \button_status_r[1] , 
            n5499, n4213, n5497, n4211, n16301, n10, n5498, n4212, 
            n94, n16044, n8070, n5500, n4214, pwm) /* synthesis syn_module_defined=1 */ ;
    output [7:0]counter;
    input clk_in_c;
    input rst_n_in_c;
    output \freq_index_out[0] ;
    output pwm_en;
    input pwm_en_N_444;
    input GND_net;
    input VCC_net;
    output \freq_index_out[3] ;
    output \freq_index_out[2] ;
    output \freq_index_out[1] ;
    input n16662;
    input n16321;
    input \button_status[1] ;
    input \button_pulse[0] ;
    input \button_status_r[1] ;
    input n5499;
    input n4213;
    input n5497;
    input n4211;
    input n16301;
    input n10;
    input n5498;
    input n4212;
    input n94;
    input n16044;
    input n8070;
    input n5500;
    input n4214;
    output pwm;
    
    wire clk_4Hz /* synthesis SET_AS_NETWORK=\musicbox_u/clk_4Hz, is_clock=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(29[10:17])
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(19[11:17])
    wire [4:0]n2923;
    
    wire n5852;
    wire [7:0]n37;
    wire [7:0]pucounter_max;   // c:/users/test/desktop/pianoshield/source/music_box.v(33[22:35])
    wire [7:0]pucounter_max_7__N_391;
    wire [4:0]freq_index_out_4__N_399;
    wire [31:0]speaker_N_412;
    wire [3:0]n5655;
    
    wire n14256;
    wire [1:0]state_1__N_389;
    
    wire n9211;
    wire [3:0]n6909;
    
    wire n15529, n15333, n15503, n14259, n14258, n14257;
    
    ROM256X1A mux_156_Mux_0 (.AD0(counter[0]), .AD1(counter[1]), .AD2(counter[2]), 
            .AD3(counter[3]), .AD4(counter[4]), .AD5(counter[5]), .AD6(counter[6]), 
            .AD7(counter[7]), .DO0(n2923[0])) /* synthesis initstate=0x000000000000000000000000000000000730CC303C0B0B0F0730CC30F830CC30 */ ;
    defparam mux_156_Mux_0.initval = 256'h000000000000000000000000000000000730CC303C0B0B0F0730CC30F830CC30;
    FD1S3IX counter_1367__i0 (.D(n37[0]), .CK(clk_4Hz), .CD(n5852), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367__i0.GSR = "ENABLED";
    FD1P3AX pucounter_max__i1 (.D(pucounter_max_7__N_391[3]), .SP(rst_n_in_c), 
            .CK(clk_in_c), .Q(pucounter_max[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=108, LSE_RLINE=114 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(118[12] 141[6])
    defparam pucounter_max__i1.GSR = "DISABLED";
    FD1P3AX freq_index__i1 (.D(freq_index_out_4__N_399[0]), .SP(rst_n_in_c), 
            .CK(clk_in_c), .Q(\freq_index_out[0] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=108, LSE_RLINE=114 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(118[12] 141[6])
    defparam freq_index__i1.GSR = "DISABLED";
    FD1S3AX pwm_en_49 (.D(pwm_en_N_444), .CK(clk_in_c), .Q(pwm_en)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=108, LSE_RLINE=114 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(162[12] 166[6])
    defparam pwm_en_49.GSR = "ENABLED";
    PDPW8KC mux_339 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(freq_index_out_4__N_399[0]), 
            .ADR5(freq_index_out_4__N_399[1]), .ADR6(freq_index_out_4__N_399[2]), 
            .ADR7(freq_index_out_4__N_399[3]), .ADR8(GND_net), .ADR9(GND_net), 
            .ADR10(GND_net), .ADR11(GND_net), .ADR12(GND_net), .CER(rst_n_in_c), 
            .OCER(VCC_net), .CLKR(clk_in_c), .CSR0(GND_net), .CSR1(GND_net), 
            .CSR2(GND_net), .RST(GND_net), .DO0(speaker_N_412[9]), .DO1(speaker_N_412[10]), 
            .DO2(speaker_N_412[11]), .DO3(speaker_N_412[12]), .DO4(speaker_N_412[13]), 
            .DO5(speaker_N_412[14]), .DO6(speaker_N_412[15]), .DO7(speaker_N_412[31]), 
            .DO9(speaker_N_412[0]), .DO10(speaker_N_412[1]), .DO11(speaker_N_412[2]), 
            .DO12(speaker_N_412[3]), .DO13(speaker_N_412[4]), .DO14(speaker_N_412[5]), 
            .DO15(speaker_N_412[6]), .DO16(speaker_N_412[7]), .DO17(speaker_N_412[8]));
    defparam mux_339.DATA_WIDTH_W = 18;
    defparam mux_339.DATA_WIDTH_R = 18;
    defparam mux_339.REGMODE = "NOREG";
    defparam mux_339.CSDECODE_W = "0b000";
    defparam mux_339.CSDECODE_R = "0b000";
    defparam mux_339.GSR = "DISABLED";
    defparam mux_339.RESETMODE = "ASYNC";
    defparam mux_339.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_339.INIT_DATA = "STATIC";
    defparam mux_339.INITVAL_00 = "0x02CC502F720354403BCA043280472104FDB059A105EE306A89077940865008E0B09F700B2EA00000";
    defparam mux_339.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000017D501AA201DE50218E0238A027E4";
    defparam mux_339.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_339.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3AX freq_index__i4 (.D(freq_index_out_4__N_399[3]), .SP(rst_n_in_c), 
            .CK(clk_in_c), .Q(\freq_index_out[3] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=108, LSE_RLINE=114 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(118[12] 141[6])
    defparam freq_index__i4.GSR = "DISABLED";
    FD1P3AX freq_index__i3 (.D(freq_index_out_4__N_399[2]), .SP(rst_n_in_c), 
            .CK(clk_in_c), .Q(\freq_index_out[2] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=108, LSE_RLINE=114 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(118[12] 141[6])
    defparam freq_index__i3.GSR = "DISABLED";
    ROM256X1A mux_156_Mux_1 (.AD0(counter[0]), .AD1(counter[1]), .AD2(counter[2]), 
            .AD3(counter[3]), .AD4(counter[4]), .AD5(counter[5]), .AD6(counter[6]), 
            .AD7(counter[7]), .DO0(n2923[1])) /* synthesis initstate=0x0000000000000000000000000000000000C03C3FC03C3C3000C03C3F07C03C3F */ ;
    defparam mux_156_Mux_1.initval = 256'h0000000000000000000000000000000000C03C3FC03C3C3000C03C3F07C03C3F;
    FD1P3AX freq_index__i2 (.D(freq_index_out_4__N_399[1]), .SP(rst_n_in_c), 
            .CK(clk_in_c), .Q(\freq_index_out[1] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=12, LSE_RCOL=3, LSE_LLINE=108, LSE_RLINE=114 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(118[12] 141[6])
    defparam freq_index__i2.GSR = "DISABLED";
    FD1S3AY state_FSM_i1 (.D(n16662), .CK(clk_in_c), .Q(n5655[0]));   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam state_FSM_i1.GSR = "ENABLED";
    CCU2D counter_1367_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n14256), .S1(n37[0]));   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367_add_4_1.INIT0 = 16'hF000;
    defparam counter_1367_add_4_1.INIT1 = 16'h0555;
    defparam counter_1367_add_4_1.INJECT1_0 = "NO";
    defparam counter_1367_add_4_1.INJECT1_1 = "NO";
    FD1S3IX counter_1367__i7 (.D(n37[7]), .CK(clk_4Hz), .CD(n5852), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367__i7.GSR = "ENABLED";
    FD1S3IX counter_1367__i6 (.D(n37[6]), .CK(clk_4Hz), .CD(n5852), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367__i6.GSR = "ENABLED";
    FD1S3IX counter_1367__i5 (.D(n37[5]), .CK(clk_4Hz), .CD(n5852), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367__i5.GSR = "ENABLED";
    FD1S3IX counter_1367__i4 (.D(n37[4]), .CK(clk_4Hz), .CD(n5852), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367__i4.GSR = "ENABLED";
    FD1S3IX counter_1367__i3 (.D(n37[3]), .CK(clk_4Hz), .CD(n5852), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367__i3.GSR = "ENABLED";
    FD1S3IX counter_1367__i2 (.D(n37[2]), .CK(clk_4Hz), .CD(n5852), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367__i2.GSR = "ENABLED";
    FD1S3IX counter_1367__i1 (.D(n37[1]), .CK(clk_4Hz), .CD(n5852), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367__i1.GSR = "ENABLED";
    FD1P3AX state_FSM_i3 (.D(n5655[1]), .SP(state_1__N_389[0]), .CK(clk_in_c), 
            .Q(n5655[2]));   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n9211), .CK(clk_in_c), .Q(n5655[1]));   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam state_FSM_i2.GSR = "ENABLED";
    PFUMX mux_1268_i4 (.BLUT(n6909[3]), .ALUT(n15529), .C0(n5655[2]), 
          .Z(freq_index_out_4__N_399[3]));
    LUT4 i2_4_lut (.A(n5655[0]), .B(n5655[1]), .C(n5655[2]), .D(state_1__N_389[0]), 
         .Z(n9211)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam i2_4_lut.init = 16'hfaee;
    LUT4 i9915_4_lut (.A(state_1__N_389[0]), .B(n15333), .C(pwm_en), .D(counter[7]), 
         .Z(n5852)) /* synthesis lut_function=(A+!(B (C)+!B !((D)+!C))) */ ;
    defparam i9915_4_lut.init = 16'hbfaf;
    LUT4 i2_4_lut_adj_87 (.A(pucounter_max[3]), .B(counter[6]), .C(n15503), 
         .D(counter[4]), .Z(n15333)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_4_lut_adj_87.init = 16'h0002;
    LUT4 i9632_2_lut (.A(counter[3]), .B(counter[5]), .Z(n15503)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9632_2_lut.init = 16'heeee;
    LUT4 i9831_4_lut (.A(n16321), .B(\button_status[1] ), .C(\button_pulse[0] ), 
         .D(\button_status_r[1] ), .Z(state_1__N_389[0])) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B (C)))) */ ;
    defparam i9831_4_lut.init = 16'h5014;
    PFUMX mux_1268_i3 (.BLUT(n6909[2]), .ALUT(n2923[2]), .C0(n5655[2]), 
          .Z(freq_index_out_4__N_399[2]));
    LUT4 mux_1268_i2_3_lut (.A(n6909[1]), .B(n2923[1]), .C(n5655[2]), 
         .Z(freq_index_out_4__N_399[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam mux_1268_i2_3_lut.init = 16'hcaca;
    LUT4 mux_1267_i2_3_lut (.A(n5499), .B(n4213), .C(n5655[1]), .Z(n6909[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam mux_1267_i2_3_lut.init = 16'hcaca;
    LUT4 mux_1267_i4_3_lut (.A(n5497), .B(n4211), .C(n5655[1]), .Z(n6909[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam mux_1267_i4_3_lut.init = 16'hcaca;
    LUT4 i9977_4_lut (.A(counter[6]), .B(counter[7]), .C(n16301), .D(n10), 
         .Z(n15529)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B))) */ ;
    defparam i9977_4_lut.init = 16'h1333;
    CCU2D counter_1367_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14259), .S0(n37[7]));   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1367_add_4_9.INIT1 = 16'h0000;
    defparam counter_1367_add_4_9.INJECT1_0 = "NO";
    defparam counter_1367_add_4_9.INJECT1_1 = "NO";
    LUT4 mux_1267_i3_3_lut (.A(n5498), .B(n4212), .C(n5655[1]), .Z(n6909[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam mux_1267_i3_3_lut.init = 16'hcaca;
    LUT4 i6431_4_lut (.A(n94), .B(counter[7]), .C(n16044), .D(n8070), 
         .Z(n2923[2])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam i6431_4_lut.init = 16'h3022;
    CCU2D counter_1367_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14258), .COUT(n14259), .S0(n37[5]), .S1(n37[6]));   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1367_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1367_add_4_7.INJECT1_0 = "NO";
    defparam counter_1367_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_1367_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14257), .COUT(n14258), .S0(n37[3]), .S1(n37[4]));   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1367_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1367_add_4_5.INJECT1_0 = "NO";
    defparam counter_1367_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_1367_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14256), .COUT(n14257), .S0(n37[1]), .S1(n37[2]));   // c:/users/test/desktop/pianoshield/source/music_box.v(152[17:31])
    defparam counter_1367_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1367_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1367_add_4_3.INJECT1_0 = "NO";
    defparam counter_1367_add_4_3.INJECT1_1 = "NO";
    LUT4 mux_1268_i1_3_lut (.A(n6909[0]), .B(n2923[0]), .C(n5655[2]), 
         .Z(freq_index_out_4__N_399[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam mux_1268_i1_3_lut.init = 16'hcaca;
    LUT4 mux_1267_i1_3_lut (.A(n5500), .B(n4214), .C(n5655[1]), .Z(n6909[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam mux_1267_i1_3_lut.init = 16'hcaca;
    LUT4 mux_1215_i1_3_lut (.A(state_1__N_389[0]), .B(n5655[2]), .C(n5655[1]), 
         .Z(pucounter_max_7__N_391[3])) /* synthesis lut_function=(A (B+!(C))+!A !(B)) */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(119[4] 140[11])
    defparam mux_1215_i1_3_lut.init = 16'h9b9b;
    pwm speaker_I_0 (.clk_in_c(clk_in_c), .\speaker_N_412[31] (speaker_N_412[31]), 
        .GND_net(GND_net), .pwm(pwm), .\speaker_N_412[15] (speaker_N_412[15]), 
        .\speaker_N_412[13] (speaker_N_412[13]), .\speaker_N_412[14] (speaker_N_412[14]), 
        .\speaker_N_412[11] (speaker_N_412[11]), .\speaker_N_412[12] (speaker_N_412[12]), 
        .\speaker_N_412[9] (speaker_N_412[9]), .\speaker_N_412[10] (speaker_N_412[10]), 
        .\speaker_N_412[7] (speaker_N_412[7]), .\speaker_N_412[8] (speaker_N_412[8]), 
        .\speaker_N_412[5] (speaker_N_412[5]), .\speaker_N_412[6] (speaker_N_412[6]), 
        .\speaker_N_412[3] (speaker_N_412[3]), .\speaker_N_412[4] (speaker_N_412[4]), 
        .\speaker_N_412[1] (speaker_N_412[1]), .\speaker_N_412[2] (speaker_N_412[2]), 
        .\speaker_N_412[0] (speaker_N_412[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(169[6] 175[3])
    clk_quarter clk_inst (.clk_in_c(clk_in_c), .clk_4Hz(clk_4Hz), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(108[14] 112[3])
    
endmodule
//
// Verilog Description of module pwm
//

module pwm (clk_in_c, \speaker_N_412[31] , GND_net, pwm, \speaker_N_412[15] , 
            \speaker_N_412[13] , \speaker_N_412[14] , \speaker_N_412[11] , 
            \speaker_N_412[12] , \speaker_N_412[9] , \speaker_N_412[10] , 
            \speaker_N_412[7] , \speaker_N_412[8] , \speaker_N_412[5] , 
            \speaker_N_412[6] , \speaker_N_412[3] , \speaker_N_412[4] , 
            \speaker_N_412[1] , \speaker_N_412[2] , \speaker_N_412[0] ) /* synthesis syn_module_defined=1 */ ;
    input clk_in_c;
    input \speaker_N_412[31] ;
    input GND_net;
    output pwm;
    input \speaker_N_412[15] ;
    input \speaker_N_412[13] ;
    input \speaker_N_412[14] ;
    input \speaker_N_412[11] ;
    input \speaker_N_412[12] ;
    input \speaker_N_412[9] ;
    input \speaker_N_412[10] ;
    input \speaker_N_412[7] ;
    input \speaker_N_412[8] ;
    input \speaker_N_412[5] ;
    input \speaker_N_412[6] ;
    input \speaker_N_412[3] ;
    input \speaker_N_412[4] ;
    input \speaker_N_412[1] ;
    input \speaker_N_412[2] ;
    input \speaker_N_412[0] ;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(19[11:17])
    wire [31:0]counter;   // c:/users/test/desktop/pianoshield/source/pwm.v(25[12:19])
    
    wire n6768;
    wire [31:0]n133;
    
    wire n14340, n14341, pwm_N_579, n14339, n14338, n14337, n14291, 
        n14290, n14289, n14336, n14288, n14335, n14287, n14334, 
        n14333, n14332, n14286, n14331, n14330, n14329, n14328, 
        n14327, n14285, n14326, n14325, n14324, n14323, n14284, 
        n14322, n14283, n14321, n14282, n14320, n14319, n14281, 
        n14318, n14317, n14316, n14315, n14314, n14280, n14313, 
        n14312, n14311, n14279, n14278, n14277, n14276, n14342;
    
    FD1S3IX counter_1369__i8 (.D(n133[8]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i8.GSR = "ENABLED";
    FD1S3IX counter_1369__i0 (.D(n133[0]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i0.GSR = "ENABLED";
    FD1S3IX counter_1369__i7 (.D(n133[7]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i7.GSR = "ENABLED";
    CCU2D sub_1189_add_2_29 (.A0(counter[27]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[28]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14340), .COUT(n14341));
    defparam sub_1189_add_2_29.INIT0 = 16'h5999;
    defparam sub_1189_add_2_29.INIT1 = 16'h5999;
    defparam sub_1189_add_2_29.INJECT1_0 = "NO";
    defparam sub_1189_add_2_29.INJECT1_1 = "NO";
    FD1S3AX pwm_17 (.D(pwm_N_579), .CK(clk_in_c), .Q(pwm)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=169, LSE_RLINE=175 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(50[8] 57[6])
    defparam pwm_17.GSR = "ENABLED";
    FD1S3IX counter_1369__i31 (.D(n133[31]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i31.GSR = "ENABLED";
    CCU2D sub_1189_add_2_27 (.A0(counter[25]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[26]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14339), .COUT(n14340));
    defparam sub_1189_add_2_27.INIT0 = 16'h5999;
    defparam sub_1189_add_2_27.INIT1 = 16'h5999;
    defparam sub_1189_add_2_27.INJECT1_0 = "NO";
    defparam sub_1189_add_2_27.INJECT1_1 = "NO";
    FD1S3IX counter_1369__i30 (.D(n133[30]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i30.GSR = "ENABLED";
    FD1S3IX counter_1369__i29 (.D(n133[29]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i29.GSR = "ENABLED";
    FD1S3IX counter_1369__i28 (.D(n133[28]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i28.GSR = "ENABLED";
    FD1S3IX counter_1369__i27 (.D(n133[27]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i27.GSR = "ENABLED";
    FD1S3IX counter_1369__i26 (.D(n133[26]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i26.GSR = "ENABLED";
    FD1S3IX counter_1369__i25 (.D(n133[25]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i25.GSR = "ENABLED";
    FD1S3IX counter_1369__i24 (.D(n133[24]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i24.GSR = "ENABLED";
    FD1S3IX counter_1369__i23 (.D(n133[23]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i23.GSR = "ENABLED";
    FD1S3IX counter_1369__i22 (.D(n133[22]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i22.GSR = "ENABLED";
    FD1S3IX counter_1369__i21 (.D(n133[21]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i21.GSR = "ENABLED";
    FD1S3IX counter_1369__i20 (.D(n133[20]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i20.GSR = "ENABLED";
    FD1S3IX counter_1369__i19 (.D(n133[19]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i19.GSR = "ENABLED";
    FD1S3IX counter_1369__i18 (.D(n133[18]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i18.GSR = "ENABLED";
    FD1S3IX counter_1369__i17 (.D(n133[17]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i17.GSR = "ENABLED";
    FD1S3IX counter_1369__i16 (.D(n133[16]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i16.GSR = "ENABLED";
    FD1S3IX counter_1369__i15 (.D(n133[15]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i15.GSR = "ENABLED";
    FD1S3IX counter_1369__i14 (.D(n133[14]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i14.GSR = "ENABLED";
    FD1S3IX counter_1369__i13 (.D(n133[13]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i13.GSR = "ENABLED";
    FD1S3IX counter_1369__i12 (.D(n133[12]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i12.GSR = "ENABLED";
    FD1S3IX counter_1369__i11 (.D(n133[11]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i11.GSR = "ENABLED";
    FD1S3IX counter_1369__i10 (.D(n133[10]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i10.GSR = "ENABLED";
    FD1S3IX counter_1369__i9 (.D(n133[9]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i9.GSR = "ENABLED";
    FD1S3IX counter_1369__i6 (.D(n133[6]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i6.GSR = "ENABLED";
    FD1S3IX counter_1369__i5 (.D(n133[5]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i5.GSR = "ENABLED";
    FD1S3IX counter_1369__i4 (.D(n133[4]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i4.GSR = "ENABLED";
    FD1S3IX counter_1369__i3 (.D(n133[3]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i3.GSR = "ENABLED";
    FD1S3IX counter_1369__i2 (.D(n133[2]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i2.GSR = "ENABLED";
    FD1S3IX counter_1369__i1 (.D(n133[1]), .CK(clk_in_c), .CD(n6768), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369__i1.GSR = "ENABLED";
    CCU2D sub_1189_add_2_25 (.A0(counter[23]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[24]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14338), .COUT(n14339));
    defparam sub_1189_add_2_25.INIT0 = 16'h5999;
    defparam sub_1189_add_2_25.INIT1 = 16'h5999;
    defparam sub_1189_add_2_25.INJECT1_0 = "NO";
    defparam sub_1189_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_23 (.A0(counter[21]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[22]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14337), .COUT(n14338));
    defparam sub_1189_add_2_23.INIT0 = 16'h5999;
    defparam sub_1189_add_2_23.INIT1 = 16'h5999;
    defparam sub_1189_add_2_23.INJECT1_0 = "NO";
    defparam sub_1189_add_2_23.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14291), .S0(n133[31]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_33.INIT1 = 16'h0000;
    defparam counter_1369_add_4_33.INJECT1_0 = "NO";
    defparam counter_1369_add_4_33.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14290), .COUT(n14291), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_31.INJECT1_0 = "NO";
    defparam counter_1369_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14289), .COUT(n14290), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_29.INJECT1_0 = "NO";
    defparam counter_1369_add_4_29.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_21 (.A0(counter[19]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[20]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14336), .COUT(n14337));
    defparam sub_1189_add_2_21.INIT0 = 16'h5999;
    defparam sub_1189_add_2_21.INIT1 = 16'h5999;
    defparam sub_1189_add_2_21.INJECT1_0 = "NO";
    defparam sub_1189_add_2_21.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14288), .COUT(n14289), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_27.INJECT1_0 = "NO";
    defparam counter_1369_add_4_27.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_19 (.A0(counter[17]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[18]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14335), .COUT(n14336));
    defparam sub_1189_add_2_19.INIT0 = 16'h5999;
    defparam sub_1189_add_2_19.INIT1 = 16'h5999;
    defparam sub_1189_add_2_19.INJECT1_0 = "NO";
    defparam sub_1189_add_2_19.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14287), .COUT(n14288), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_25.INJECT1_0 = "NO";
    defparam counter_1369_add_4_25.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_17 (.A0(counter[15]), .B0(\speaker_N_412[15] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[16]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14334), .COUT(n14335));
    defparam sub_1189_add_2_17.INIT0 = 16'h5999;
    defparam sub_1189_add_2_17.INIT1 = 16'h5999;
    defparam sub_1189_add_2_17.INJECT1_0 = "NO";
    defparam sub_1189_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_15 (.A0(counter[13]), .B0(\speaker_N_412[13] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[14]), .B1(\speaker_N_412[14] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14333), .COUT(n14334));
    defparam sub_1189_add_2_15.INIT0 = 16'h5999;
    defparam sub_1189_add_2_15.INIT1 = 16'h5999;
    defparam sub_1189_add_2_15.INJECT1_0 = "NO";
    defparam sub_1189_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_13 (.A0(counter[11]), .B0(\speaker_N_412[11] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[12]), .B1(\speaker_N_412[12] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14332), .COUT(n14333));
    defparam sub_1189_add_2_13.INIT0 = 16'h5999;
    defparam sub_1189_add_2_13.INIT1 = 16'h5999;
    defparam sub_1189_add_2_13.INJECT1_0 = "NO";
    defparam sub_1189_add_2_13.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14286), .COUT(n14287), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_23.INJECT1_0 = "NO";
    defparam counter_1369_add_4_23.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_11 (.A0(counter[9]), .B0(\speaker_N_412[9] ), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(\speaker_N_412[10] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n14331), .COUT(n14332));
    defparam sub_1189_add_2_11.INIT0 = 16'h5999;
    defparam sub_1189_add_2_11.INIT1 = 16'h5999;
    defparam sub_1189_add_2_11.INJECT1_0 = "NO";
    defparam sub_1189_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_9 (.A0(counter[7]), .B0(\speaker_N_412[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(\speaker_N_412[8] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n14330), .COUT(n14331));
    defparam sub_1189_add_2_9.INIT0 = 16'h5999;
    defparam sub_1189_add_2_9.INIT1 = 16'h5999;
    defparam sub_1189_add_2_9.INJECT1_0 = "NO";
    defparam sub_1189_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_7 (.A0(counter[5]), .B0(\speaker_N_412[5] ), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(\speaker_N_412[6] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n14329), .COUT(n14330));
    defparam sub_1189_add_2_7.INIT0 = 16'h5999;
    defparam sub_1189_add_2_7.INIT1 = 16'h5999;
    defparam sub_1189_add_2_7.INJECT1_0 = "NO";
    defparam sub_1189_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_5 (.A0(counter[3]), .B0(\speaker_N_412[3] ), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(\speaker_N_412[4] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n14328), .COUT(n14329));
    defparam sub_1189_add_2_5.INIT0 = 16'h5999;
    defparam sub_1189_add_2_5.INIT1 = 16'h5999;
    defparam sub_1189_add_2_5.INJECT1_0 = "NO";
    defparam sub_1189_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_3 (.A0(counter[1]), .B0(\speaker_N_412[1] ), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(\speaker_N_412[2] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n14327), .COUT(n14328));
    defparam sub_1189_add_2_3.INIT0 = 16'h5999;
    defparam sub_1189_add_2_3.INIT1 = 16'h5999;
    defparam sub_1189_add_2_3.INJECT1_0 = "NO";
    defparam sub_1189_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(\speaker_N_412[0] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n14327));
    defparam sub_1189_add_2_1.INIT0 = 16'h0000;
    defparam sub_1189_add_2_1.INIT1 = 16'h5999;
    defparam sub_1189_add_2_1.INJECT1_0 = "NO";
    defparam sub_1189_add_2_1.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14285), .COUT(n14286), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_21.INJECT1_0 = "NO";
    defparam counter_1369_add_4_21.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14326), .S1(pwm_N_579));
    defparam sub_1191_add_2_33.INIT0 = 16'h5555;
    defparam sub_1191_add_2_33.INIT1 = 16'h0000;
    defparam sub_1191_add_2_33.INJECT1_0 = "NO";
    defparam sub_1191_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_31 (.A0(counter[29]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[30]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14325), .COUT(n14326));
    defparam sub_1191_add_2_31.INIT0 = 16'h5999;
    defparam sub_1191_add_2_31.INIT1 = 16'h5999;
    defparam sub_1191_add_2_31.INJECT1_0 = "NO";
    defparam sub_1191_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_29 (.A0(counter[27]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[28]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14324), .COUT(n14325));
    defparam sub_1191_add_2_29.INIT0 = 16'h5999;
    defparam sub_1191_add_2_29.INIT1 = 16'h5999;
    defparam sub_1191_add_2_29.INJECT1_0 = "NO";
    defparam sub_1191_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_27 (.A0(counter[25]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[26]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14323), .COUT(n14324));
    defparam sub_1191_add_2_27.INIT0 = 16'h5999;
    defparam sub_1191_add_2_27.INIT1 = 16'h5999;
    defparam sub_1191_add_2_27.INJECT1_0 = "NO";
    defparam sub_1191_add_2_27.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14284), .COUT(n14285), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_19.INJECT1_0 = "NO";
    defparam counter_1369_add_4_19.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_25 (.A0(counter[23]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[24]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14322), .COUT(n14323));
    defparam sub_1191_add_2_25.INIT0 = 16'h5999;
    defparam sub_1191_add_2_25.INIT1 = 16'h5999;
    defparam sub_1191_add_2_25.INJECT1_0 = "NO";
    defparam sub_1191_add_2_25.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14283), .COUT(n14284), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_17.INJECT1_0 = "NO";
    defparam counter_1369_add_4_17.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_23 (.A0(counter[21]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[22]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14321), .COUT(n14322));
    defparam sub_1191_add_2_23.INIT0 = 16'h5999;
    defparam sub_1191_add_2_23.INIT1 = 16'h5999;
    defparam sub_1191_add_2_23.INJECT1_0 = "NO";
    defparam sub_1191_add_2_23.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14282), .COUT(n14283), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_15.INJECT1_0 = "NO";
    defparam counter_1369_add_4_15.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_21 (.A0(counter[19]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[20]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14320), .COUT(n14321));
    defparam sub_1191_add_2_21.INIT0 = 16'h5999;
    defparam sub_1191_add_2_21.INIT1 = 16'h5999;
    defparam sub_1191_add_2_21.INJECT1_0 = "NO";
    defparam sub_1191_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_19 (.A0(counter[17]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[18]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14319), .COUT(n14320));
    defparam sub_1191_add_2_19.INIT0 = 16'h5999;
    defparam sub_1191_add_2_19.INIT1 = 16'h5999;
    defparam sub_1191_add_2_19.INJECT1_0 = "NO";
    defparam sub_1191_add_2_19.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14281), .COUT(n14282), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_13.INJECT1_0 = "NO";
    defparam counter_1369_add_4_13.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_17 (.A0(counter[15]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[16]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14318), .COUT(n14319));
    defparam sub_1191_add_2_17.INIT0 = 16'h5999;
    defparam sub_1191_add_2_17.INIT1 = 16'h5999;
    defparam sub_1191_add_2_17.INJECT1_0 = "NO";
    defparam sub_1191_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_15 (.A0(counter[13]), .B0(\speaker_N_412[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[14]), .B1(\speaker_N_412[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14317), .COUT(n14318));
    defparam sub_1191_add_2_15.INIT0 = 16'h5999;
    defparam sub_1191_add_2_15.INIT1 = 16'h5999;
    defparam sub_1191_add_2_15.INJECT1_0 = "NO";
    defparam sub_1191_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_13 (.A0(counter[11]), .B0(\speaker_N_412[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[12]), .B1(\speaker_N_412[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14316), .COUT(n14317));
    defparam sub_1191_add_2_13.INIT0 = 16'h5999;
    defparam sub_1191_add_2_13.INIT1 = 16'h5999;
    defparam sub_1191_add_2_13.INJECT1_0 = "NO";
    defparam sub_1191_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_11 (.A0(counter[9]), .B0(\speaker_N_412[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[10]), .B1(\speaker_N_412[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14315), .COUT(n14316));
    defparam sub_1191_add_2_11.INIT0 = 16'h5999;
    defparam sub_1191_add_2_11.INIT1 = 16'h5999;
    defparam sub_1191_add_2_11.INJECT1_0 = "NO";
    defparam sub_1191_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_9 (.A0(counter[7]), .B0(\speaker_N_412[8] ), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(\speaker_N_412[9] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n14314), .COUT(n14315));
    defparam sub_1191_add_2_9.INIT0 = 16'h5999;
    defparam sub_1191_add_2_9.INIT1 = 16'h5999;
    defparam sub_1191_add_2_9.INJECT1_0 = "NO";
    defparam sub_1191_add_2_9.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14280), .COUT(n14281), .S0(n133[9]), .S1(n133[10]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_11.INJECT1_0 = "NO";
    defparam counter_1369_add_4_11.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_7 (.A0(counter[5]), .B0(\speaker_N_412[6] ), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(\speaker_N_412[7] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n14313), .COUT(n14314));
    defparam sub_1191_add_2_7.INIT0 = 16'h5999;
    defparam sub_1191_add_2_7.INIT1 = 16'h5999;
    defparam sub_1191_add_2_7.INJECT1_0 = "NO";
    defparam sub_1191_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_5 (.A0(counter[3]), .B0(\speaker_N_412[4] ), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(\speaker_N_412[5] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n14312), .COUT(n14313));
    defparam sub_1191_add_2_5.INIT0 = 16'h5999;
    defparam sub_1191_add_2_5.INIT1 = 16'h5999;
    defparam sub_1191_add_2_5.INJECT1_0 = "NO";
    defparam sub_1191_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_3 (.A0(counter[1]), .B0(\speaker_N_412[2] ), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(\speaker_N_412[3] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n14311), .COUT(n14312));
    defparam sub_1191_add_2_3.INIT0 = 16'h5999;
    defparam sub_1191_add_2_3.INIT1 = 16'h5999;
    defparam sub_1191_add_2_3.INJECT1_0 = "NO";
    defparam sub_1191_add_2_3.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14279), .COUT(n14280), .S0(n133[7]), .S1(n133[8]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_9.INJECT1_0 = "NO";
    defparam counter_1369_add_4_9.INJECT1_1 = "NO";
    CCU2D sub_1191_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(\speaker_N_412[1] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n14311));
    defparam sub_1191_add_2_1.INIT0 = 16'h0000;
    defparam sub_1191_add_2_1.INIT1 = 16'h5999;
    defparam sub_1191_add_2_1.INJECT1_0 = "NO";
    defparam sub_1191_add_2_1.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14278), .COUT(n14279), .S0(n133[5]), .S1(n133[6]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_7.INJECT1_0 = "NO";
    defparam counter_1369_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14277), .COUT(n14278), .S0(n133[3]), .S1(n133[4]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_5.INJECT1_0 = "NO";
    defparam counter_1369_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14276), .COUT(n14277), .S0(n133[1]), .S1(n133[2]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1369_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1369_add_4_3.INJECT1_0 = "NO";
    defparam counter_1369_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_1369_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n14276), .S1(n133[0]));   // c:/users/test/desktop/pianoshield/source/pwm.v(38[16:30])
    defparam counter_1369_add_4_1.INIT0 = 16'hF000;
    defparam counter_1369_add_4_1.INIT1 = 16'h0555;
    defparam counter_1369_add_4_1.INJECT1_0 = "NO";
    defparam counter_1369_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_33 (.A0(counter[31]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14342), .S1(n6768));
    defparam sub_1189_add_2_33.INIT0 = 16'h5999;
    defparam sub_1189_add_2_33.INIT1 = 16'h0000;
    defparam sub_1189_add_2_33.INJECT1_0 = "NO";
    defparam sub_1189_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_1189_add_2_31 (.A0(counter[29]), .B0(\speaker_N_412[31] ), 
          .C0(GND_net), .D0(GND_net), .A1(counter[30]), .B1(\speaker_N_412[31] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n14341), .COUT(n14342));
    defparam sub_1189_add_2_31.INIT0 = 16'h5999;
    defparam sub_1189_add_2_31.INIT1 = 16'h5999;
    defparam sub_1189_add_2_31.INJECT1_0 = "NO";
    defparam sub_1189_add_2_31.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module clk_quarter
//

module clk_quarter (clk_in_c, clk_4Hz, GND_net) /* synthesis syn_module_defined=1 */ ;
    input clk_in_c;
    output clk_4Hz;
    input GND_net;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(19[11:17])
    wire clk_4Hz /* synthesis SET_AS_NETWORK=\musicbox_u/clk_4Hz, is_clock=1 */ ;   // c:/users/test/desktop/pianoshield/source/music_box.v(29[10:17])
    wire [31:0]n233;
    
    wire counter_31__N_511;
    wire [31:0]n133;
    wire [31:0]counter;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(24[12:19])
    
    wire n14264, n14265, n14263, n14262, n14261, n14260, n14275, 
        n14274, n14273, n14272, n14354, n14271, n14353, n14352, 
        n14351, n14270, n14350, n14269, n14268, n14349, n14267, 
        n14348, n14347, n14346, n14345, n14344, n14266, n14343;
    
    FD1S3IX counter_1368__i0 (.D(n133[0]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(n233[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i0.GSR = "ENABLED";
    FD1S3AX clk_out_12 (.D(counter_31__N_511), .CK(clk_in_c), .Q(clk_4Hz)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=3, LSE_LLINE=108, LSE_RLINE=112 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(31[8] 40[6])
    defparam clk_out_12.GSR = "ENABLED";
    FD1S3IX counter_1368__i31 (.D(n133[31]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i31.GSR = "ENABLED";
    FD1S3IX counter_1368__i30 (.D(n133[30]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i30.GSR = "ENABLED";
    FD1S3IX counter_1368__i29 (.D(n133[29]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i29.GSR = "ENABLED";
    FD1S3IX counter_1368__i28 (.D(n133[28]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i28.GSR = "ENABLED";
    FD1S3IX counter_1368__i27 (.D(n133[27]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i27.GSR = "ENABLED";
    FD1S3IX counter_1368__i26 (.D(n133[26]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i26.GSR = "ENABLED";
    FD1S3IX counter_1368__i25 (.D(n133[25]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i25.GSR = "ENABLED";
    FD1S3IX counter_1368__i24 (.D(n133[24]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i24.GSR = "ENABLED";
    FD1S3IX counter_1368__i23 (.D(n133[23]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i23.GSR = "ENABLED";
    FD1S3IX counter_1368__i22 (.D(n133[22]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i22.GSR = "ENABLED";
    FD1S3IX counter_1368__i21 (.D(n133[21]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i21.GSR = "ENABLED";
    FD1S3IX counter_1368__i20 (.D(n133[20]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i20.GSR = "ENABLED";
    FD1S3IX counter_1368__i19 (.D(n133[19]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i19.GSR = "ENABLED";
    FD1S3IX counter_1368__i18 (.D(n133[18]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i18.GSR = "ENABLED";
    FD1S3IX counter_1368__i17 (.D(n133[17]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i17.GSR = "ENABLED";
    FD1S3IX counter_1368__i16 (.D(n133[16]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i16.GSR = "ENABLED";
    FD1S3IX counter_1368__i15 (.D(n133[15]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i15.GSR = "ENABLED";
    FD1S3IX counter_1368__i14 (.D(n133[14]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i14.GSR = "ENABLED";
    FD1S3IX counter_1368__i13 (.D(n133[13]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i13.GSR = "ENABLED";
    FD1S3IX counter_1368__i12 (.D(n133[12]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i12.GSR = "ENABLED";
    FD1S3IX counter_1368__i11 (.D(n133[11]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i11.GSR = "ENABLED";
    FD1S3IX counter_1368__i10 (.D(n133[10]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i10.GSR = "ENABLED";
    FD1S3IX counter_1368__i9 (.D(n133[9]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i9.GSR = "ENABLED";
    FD1S3IX counter_1368__i8 (.D(n133[8]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i8.GSR = "ENABLED";
    FD1S3IX counter_1368__i7 (.D(n133[7]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i7.GSR = "ENABLED";
    FD1S3IX counter_1368__i6 (.D(n133[6]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i6.GSR = "ENABLED";
    FD1S3IX counter_1368__i5 (.D(n133[5]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(n233[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i5.GSR = "ENABLED";
    FD1S3IX counter_1368__i4 (.D(n133[4]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(n233[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i4.GSR = "ENABLED";
    FD1S3IX counter_1368__i3 (.D(n133[3]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(n233[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i3.GSR = "ENABLED";
    FD1S3IX counter_1368__i2 (.D(n133[2]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(n233[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i2.GSR = "ENABLED";
    FD1S3IX counter_1368__i1 (.D(n133[1]), .CK(clk_in_c), .CD(counter_31__N_511), 
            .Q(n233[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368__i1.GSR = "ENABLED";
    CCU2D counter_1368_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14264), .COUT(n14265), .S0(n133[9]), .S1(n133[10]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_11.INJECT1_0 = "NO";
    defparam counter_1368_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14263), .COUT(n14264), .S0(n133[7]), .S1(n133[8]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_9.INJECT1_0 = "NO";
    defparam counter_1368_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_7 (.A0(n233[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14262), .COUT(n14263), .S0(n133[5]), .S1(n133[6]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_7.INJECT1_0 = "NO";
    defparam counter_1368_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_5 (.A0(n233[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14261), .COUT(n14262), .S0(n133[3]), .S1(n133[4]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_5.INJECT1_0 = "NO";
    defparam counter_1368_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_3 (.A0(n233[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14260), .COUT(n14261), .S0(n133[1]), .S1(n133[2]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_3.INJECT1_0 = "NO";
    defparam counter_1368_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14275), .S0(n133[31]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_33.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_33.INIT1 = 16'h0000;
    defparam counter_1368_add_4_33.INJECT1_0 = "NO";
    defparam counter_1368_add_4_33.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n233[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n14260), .S1(n133[0]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_1.INIT0 = 16'hF000;
    defparam counter_1368_add_4_1.INIT1 = 16'h0555;
    defparam counter_1368_add_4_1.INJECT1_0 = "NO";
    defparam counter_1368_add_4_1.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14274), .COUT(n14275), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_31.INJECT1_0 = "NO";
    defparam counter_1368_add_4_31.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14273), .COUT(n14274), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_29.INJECT1_0 = "NO";
    defparam counter_1368_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14272), .COUT(n14273), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_27.INJECT1_0 = "NO";
    defparam counter_1368_add_4_27.INJECT1_1 = "NO";
    CCU2D add_8484_26 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n14354), 
          .S1(counter_31__N_511));
    defparam add_8484_26.INIT0 = 16'h5555;
    defparam add_8484_26.INIT1 = 16'h0000;
    defparam add_8484_26.INJECT1_0 = "NO";
    defparam add_8484_26.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14271), .COUT(n14272), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_25.INJECT1_0 = "NO";
    defparam counter_1368_add_4_25.INJECT1_1 = "NO";
    CCU2D add_8484_24 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14353), .COUT(n14354));
    defparam add_8484_24.INIT0 = 16'h5555;
    defparam add_8484_24.INIT1 = 16'h5555;
    defparam add_8484_24.INJECT1_0 = "NO";
    defparam add_8484_24.INJECT1_1 = "NO";
    CCU2D add_8484_22 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14352), .COUT(n14353));
    defparam add_8484_22.INIT0 = 16'h5555;
    defparam add_8484_22.INIT1 = 16'h5555;
    defparam add_8484_22.INJECT1_0 = "NO";
    defparam add_8484_22.INJECT1_1 = "NO";
    CCU2D add_8484_20 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14351), .COUT(n14352));
    defparam add_8484_20.INIT0 = 16'h5555;
    defparam add_8484_20.INIT1 = 16'h5555;
    defparam add_8484_20.INJECT1_0 = "NO";
    defparam add_8484_20.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14270), .COUT(n14271), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_23.INJECT1_0 = "NO";
    defparam counter_1368_add_4_23.INJECT1_1 = "NO";
    CCU2D add_8484_18 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14350), .COUT(n14351));
    defparam add_8484_18.INIT0 = 16'h5555;
    defparam add_8484_18.INIT1 = 16'h5555;
    defparam add_8484_18.INJECT1_0 = "NO";
    defparam add_8484_18.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14269), .COUT(n14270), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_21.INJECT1_0 = "NO";
    defparam counter_1368_add_4_21.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14268), .COUT(n14269), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_19.INJECT1_0 = "NO";
    defparam counter_1368_add_4_19.INJECT1_1 = "NO";
    CCU2D add_8484_16 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14349), .COUT(n14350));
    defparam add_8484_16.INIT0 = 16'h5aaa;
    defparam add_8484_16.INIT1 = 16'h5555;
    defparam add_8484_16.INJECT1_0 = "NO";
    defparam add_8484_16.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14267), .COUT(n14268), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_17.INJECT1_0 = "NO";
    defparam counter_1368_add_4_17.INJECT1_1 = "NO";
    CCU2D add_8484_14 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14348), .COUT(n14349));
    defparam add_8484_14.INIT0 = 16'h5aaa;
    defparam add_8484_14.INIT1 = 16'h5555;
    defparam add_8484_14.INJECT1_0 = "NO";
    defparam add_8484_14.INJECT1_1 = "NO";
    CCU2D add_8484_12 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14347), .COUT(n14348));
    defparam add_8484_12.INIT0 = 16'h5555;
    defparam add_8484_12.INIT1 = 16'h5aaa;
    defparam add_8484_12.INJECT1_0 = "NO";
    defparam add_8484_12.INJECT1_1 = "NO";
    CCU2D add_8484_10 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14346), .COUT(n14347));
    defparam add_8484_10.INIT0 = 16'h5aaa;
    defparam add_8484_10.INIT1 = 16'h5aaa;
    defparam add_8484_10.INJECT1_0 = "NO";
    defparam add_8484_10.INJECT1_1 = "NO";
    CCU2D add_8484_8 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14345), .COUT(n14346));
    defparam add_8484_8.INIT0 = 16'h5555;
    defparam add_8484_8.INIT1 = 16'h5aaa;
    defparam add_8484_8.INJECT1_0 = "NO";
    defparam add_8484_8.INJECT1_1 = "NO";
    CCU2D add_8484_6 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14344), .COUT(n14345));
    defparam add_8484_6.INIT0 = 16'h5555;
    defparam add_8484_6.INIT1 = 16'h5555;
    defparam add_8484_6.INJECT1_0 = "NO";
    defparam add_8484_6.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14266), .COUT(n14267), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_15.INJECT1_0 = "NO";
    defparam counter_1368_add_4_15.INJECT1_1 = "NO";
    CCU2D add_8484_4 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14343), .COUT(n14344));
    defparam add_8484_4.INIT0 = 16'h5aaa;
    defparam add_8484_4.INIT1 = 16'h5aaa;
    defparam add_8484_4.INJECT1_0 = "NO";
    defparam add_8484_4.INJECT1_1 = "NO";
    CCU2D add_8484_2 (.A0(counter[7]), .B0(counter[6]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n14343));
    defparam add_8484_2.INIT0 = 16'h7000;
    defparam add_8484_2.INIT1 = 16'h5555;
    defparam add_8484_2.INJECT1_0 = "NO";
    defparam add_8484_2.INJECT1_1 = "NO";
    CCU2D counter_1368_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14265), .COUT(n14266), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/test/desktop/pianoshield/source/clk_quarter.v(37[16:30])
    defparam counter_1368_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_1368_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_1368_add_4_13.INJECT1_0 = "NO";
    defparam counter_1368_add_4_13.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module display
//

module display (sensor_data2, segment_led_1_c_0, rst_n_in_c, segment_led_2_c_2, 
            n16262, sensor_data1, segment_led_1_c_2, n9488, n16245, 
            down_button_N_27, n16280, n12012, segment_led_1_c_1, segment_led_1_c_3, 
            n16247, segment_led_1_c_4, segment_led_1_c_5, segment_led_2_c_1, 
            segment_led_2_c_6, segment_led_2_c_4, n16221, \tone[0] , 
            n12022, segment_led_1_c_6, segment_led_2_c_3, segment_led_2_c_5, 
            n4, n15340, n15997, \state[0] , n15275, clk_in_c_enable_55, 
            segment_led_2_c_0) /* synthesis syn_module_defined=1 */ ;
    input [7:0]sensor_data2;
    output segment_led_1_c_0;
    input rst_n_in_c;
    output segment_led_2_c_2;
    output n16262;
    input [7:0]sensor_data1;
    output segment_led_1_c_2;
    output n9488;
    output n16245;
    output down_button_N_27;
    output n16280;
    output n12012;
    output segment_led_1_c_1;
    output segment_led_1_c_3;
    output n16247;
    output segment_led_1_c_4;
    output segment_led_1_c_5;
    output segment_led_2_c_1;
    output segment_led_2_c_6;
    output segment_led_2_c_4;
    output n16221;
    input \tone[0] ;
    output n12022;
    output segment_led_1_c_6;
    output segment_led_2_c_3;
    output segment_led_2_c_5;
    input n4;
    input n15340;
    input n15997;
    input \state[0] ;
    output n15275;
    output clk_in_c_enable_55;
    output segment_led_2_c_0;
    
    
    wire n15, n16332, n16333;
    wire [3:0]seg_data1;   // c:/users/test/desktop/pianoshield/source/display.v(42[11:20])
    
    wire n16320, n16260, n7671, n14391, n8842, n16250;
    wire [3:0]seg_data2_3__N_587;
    
    wire n7758, n16209, n16210, n16224, n4_c, n16216, n15942, 
        n16232, n16223, n7, n12339;
    wire [3:0]seg_data1_3__N_581;
    
    wire n4_adj_636, n16319, n9503, n15527, n6, n4_adj_637, n15495, 
        n16248, n16208, n9472, n16222, n16231, n16279, n16315, 
        n16246, n16316, n16278, n16317, n9473, n16006, n16005, 
        n16215, n16190, n16183, n16318, n16249, n7_adj_638, n16230, 
        n12147, n16198, n16323, n16261, n16199, n16181, n16229, 
        n15624, n16194, n7_adj_639, n30, n33, n8, n35, n38;
    
    LUT4 i2_3_lut_4_lut (.A(sensor_data2[4]), .B(sensor_data2[5]), .C(sensor_data2[7]), 
         .D(sensor_data2[6]), .Z(n15)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(63[4:9])
    defparam i2_3_lut_4_lut.init = 16'h0100;
    PFUMX i10103 (.BLUT(n16332), .ALUT(n16333), .C0(seg_data1[3]), .Z(segment_led_1_c_0));
    LUT4 i1_2_lut_rep_186_3_lut_4_lut (.A(sensor_data2[4]), .B(sensor_data2[5]), 
         .C(n16320), .D(sensor_data2[3]), .Z(n16260)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(63[4:9])
    defparam i1_2_lut_rep_186_3_lut_4_lut.init = 16'hfffe;
    PFUMX i3096 (.BLUT(n7671), .ALUT(n14391), .C0(seg_data1[3]), .Z(n8842));
    LUT4 i2012_3_lut (.A(n16250), .B(rst_n_in_c), .C(seg_data2_3__N_587[1]), 
         .Z(n7758)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(77[24:38])
    defparam i2012_3_lut.init = 16'h4848;
    LUT4 mux_341_Mux_2_i15_4_lut (.A(n16209), .B(n16210), .C(n16224), 
         .D(n4_c), .Z(segment_led_2_c_2)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(77[24:38])
    defparam mux_341_Mux_2_i15_4_lut.init = 16'h3f3a;
    LUT4 seg_data2_3__bdd_4_lut (.A(n16224), .B(n16216), .C(n16250), .D(seg_data2_3__N_587[1]), 
         .Z(n15942)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B+(C (D)+!C !(D))))) */ ;
    defparam seg_data2_3__bdd_4_lut.init = 16'h54cd;
    LUT4 mux_341_Mux_3_i7_4_lut (.A(n16232), .B(n7758), .C(n16209), .D(n16223), 
         .Z(n7)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(77[24:38])
    defparam mux_341_Mux_3_i7_4_lut.init = 16'hcfc5;
    LUT4 i1_2_lut_3_lut_3_lut (.A(n12339), .B(rst_n_in_c), .C(seg_data1_3__N_581[0]), 
         .Z(n4_adj_636)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hfbfb;
    LUT4 i3_4_lut (.A(n16262), .B(sensor_data1[7]), .C(sensor_data1[6]), 
         .D(n16319), .Z(n9503)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(58[4:9])
    defparam i3_4_lut.init = 16'hffef;
    LUT4 i3_4_lut_adj_74 (.A(rst_n_in_c), .B(sensor_data1[7]), .C(sensor_data1[6]), 
         .D(n15527), .Z(seg_data1[3])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_74.init = 16'h0008;
    LUT4 i3_4_lut_adj_75 (.A(n9503), .B(n6), .C(sensor_data1[1]), .D(n4_adj_637), 
         .Z(n12339)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;
    defparam i3_4_lut_adj_75.init = 16'h8808;
    LUT4 i2_4_lut (.A(sensor_data1[1]), .B(n15495), .C(n16248), .D(sensor_data1[0]), 
         .Z(seg_data1_3__N_581[0])) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h3733;
    LUT4 mux_340_Mux_2_i15_4_lut (.A(n16208), .B(n16333), .C(seg_data1[3]), 
         .D(n4_adj_636), .Z(segment_led_1_c_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(76[24:38])
    defparam mux_340_Mux_2_i15_4_lut.init = 16'hcfca;
    LUT4 i6371_2_lut_rep_134_4_lut (.A(n9472), .B(n16222), .C(n16231), 
         .D(rst_n_in_c), .Z(n16208)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i6371_2_lut_rep_134_4_lut.init = 16'h7f00;
    LUT4 i2_3_lut_rep_172_4_lut (.A(n16279), .B(n16315), .C(sensor_data2[7]), 
         .D(sensor_data2[6]), .Z(n16246)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(70[4:9])
    defparam i2_3_lut_rep_172_4_lut.init = 16'hffef;
    LUT4 i2_3_lut_4_lut_adj_76 (.A(n16279), .B(n16315), .C(sensor_data2[7]), 
         .D(sensor_data2[6]), .Z(n9488)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(70[4:9])
    defparam i2_3_lut_4_lut_adj_76.init = 16'hfeff;
    LUT4 i2_3_lut_rep_171_4_lut (.A(n16279), .B(n16316), .C(sensor_data2[5]), 
         .D(sensor_data2[4]), .Z(n16245)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(68[4:9])
    defparam i2_3_lut_rep_171_4_lut.init = 16'hffef;
    LUT4 i9834_2_lut_2_lut_3_lut_4_lut (.A(sensor_data1[3]), .B(n16278), 
         .C(down_button_N_27), .D(n16280), .Z(n12012)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(56[4:9])
    defparam i9834_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n16280), .B(sensor_data1[3]), .C(sensor_data1[0]), 
         .D(sensor_data1[2]), .Z(n4_adj_637)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(54[4:9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_77 (.A(n16280), .B(sensor_data1[3]), .C(n16317), 
         .D(sensor_data1[2]), .Z(n9473)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(54[4:9])
    defparam i2_3_lut_4_lut_adj_77.init = 16'hfeff;
    PFUMX i10007 (.BLUT(n16006), .ALUT(n16005), .C0(seg_data1[3]), .Z(segment_led_1_c_1));
    LUT4 n7946_bdd_2_lut_10006_3_lut (.A(n12339), .B(n16215), .C(rst_n_in_c), 
         .Z(n16005)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;
    defparam n7946_bdd_2_lut_10006_3_lut.init = 16'h8f8f;
    LUT4 i2_3_lut_4_lut_adj_78 (.A(sensor_data1[2]), .B(n16317), .C(sensor_data1[3]), 
         .D(n16280), .Z(n9472)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(54[4:9])
    defparam i2_3_lut_4_lut_adj_78.init = 16'hffef;
    LUT4 mux_340_Mux_3_i15_3_lut_4_lut (.A(n12339), .B(n16215), .C(seg_data1[3]), 
         .D(n16190), .Z(segment_led_1_c_3)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam mux_340_Mux_3_i15_3_lut_4_lut.init = 16'h8f80;
    LUT4 sensor_data1_7__I_0_i7_2_lut_rep_173_3_lut_4_lut (.A(sensor_data1[2]), 
         .B(n16317), .C(n16280), .D(sensor_data1[3]), .Z(n16247)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(54[4:9])
    defparam sensor_data1_7__I_0_i7_2_lut_rep_173_3_lut_4_lut.init = 16'hfffe;
    LUT4 i6272_2_lut_3_lut (.A(seg_data1_3__N_581[0]), .B(rst_n_in_c), .C(n8842), 
         .Z(segment_led_1_c_4)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam i6272_2_lut_3_lut.init = 16'h7070;
    LUT4 mux_340_Mux_5_i15_3_lut_4_lut (.A(n12339), .B(n16215), .C(seg_data1[3]), 
         .D(n16183), .Z(segment_led_1_c_5)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;
    defparam mux_340_Mux_5_i15_3_lut_4_lut.init = 16'h808f;
    LUT4 i9656_2_lut_3_lut_4_lut (.A(sensor_data1[2]), .B(n16317), .C(n16319), 
         .D(sensor_data1[3]), .Z(n15527)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(54[4:9])
    defparam i9656_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_175_3_lut_4_lut (.A(sensor_data1[2]), .B(n16317), 
         .C(n16318), .D(sensor_data1[3]), .Z(n16249)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(54[4:9])
    defparam i1_2_lut_rep_175_3_lut_4_lut.init = 16'hfffe;
    LUT4 sensor_data2_7__I_0_59_i7_2_lut_3_lut_4_lut (.A(sensor_data2[3]), 
         .B(n16320), .C(n16316), .D(n16315), .Z(down_button_N_27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(63[4:9])
    defparam sensor_data2_7__I_0_59_i7_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 n173_bdd_2_lut_10001 (.A(n15942), .B(rst_n_in_c), .Z(segment_led_2_c_1)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam n173_bdd_2_lut_10001.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_174_3_lut_4_lut (.A(n16319), .B(n16318), .C(sensor_data1[2]), 
         .D(sensor_data1[3]), .Z(n16248)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(53[4:9])
    defparam i1_2_lut_rep_174_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_341_Mux_6_i15_3_lut_4_lut (.A(seg_data2_3__N_587[1]), .B(n16216), 
         .C(n16224), .D(n7_adj_638), .Z(segment_led_2_c_6)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_341_Mux_6_i15_3_lut_4_lut.init = 16'h4f40;
    LUT4 i2_3_lut (.A(n16230), .B(n9472), .C(n12339), .Z(n14391)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 seg_data2_2__bdd_4_lut_10094 (.A(n12147), .B(seg_data2_3__N_587[1]), 
         .C(rst_n_in_c), .D(n16250), .Z(n16198)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;
    defparam seg_data2_2__bdd_4_lut_10094.init = 16'h0222;
    LUT4 i1925_2_lut_3_lut_3_lut (.A(n16215), .B(rst_n_in_c), .C(n12339), 
         .Z(n7671)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam i1925_2_lut_3_lut_3_lut.init = 16'hbfbf;
    LUT4 mux_340_Mux_0_i15_4_lut_then_1_lut_4_lut (.A(n9472), .B(n16222), 
         .C(n16231), .D(n12339), .Z(n16333)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam mux_340_Mux_0_i15_4_lut_then_1_lut_4_lut.init = 16'h8000;
    LUT4 i6408_4_lut_else_2_lut (.A(n16316), .B(sensor_data2[5]), .C(sensor_data2[3]), 
         .D(n16320), .Z(n16323)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i6408_4_lut_else_2_lut.init = 16'hffef;
    LUT4 sensor_data_2_7__I_0_40_i13_2_lut_rep_242 (.A(sensor_data2[6]), .B(sensor_data2[7]), 
         .Z(n16316)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(63[4:9])
    defparam sensor_data_2_7__I_0_40_i13_2_lut_rep_242.init = 16'heeee;
    LUT4 n7946_bdd_2_lut_4_lut (.A(seg_data1_3__N_581[0]), .B(rst_n_in_c), 
         .C(n12339), .D(n16215), .Z(n16006)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((C+(D))+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(76[24:38])
    defparam n7946_bdd_2_lut_4_lut.init = 16'hff7b;
    LUT4 i1_2_lut_rep_187_3_lut_4_lut (.A(sensor_data2[6]), .B(sensor_data2[7]), 
         .C(n16320), .D(sensor_data2[3]), .Z(n16261)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(63[4:9])
    defparam i1_2_lut_rep_187_3_lut_4_lut.init = 16'hfffe;
    PFUMX i10095 (.BLUT(n16199), .ALUT(n16198), .C0(n16224), .Z(segment_led_2_c_4));
    LUT4 n12339_bdd_4_lut_4_lut (.A(n16215), .B(rst_n_in_c), .C(seg_data1_3__N_581[0]), 
         .D(n12339), .Z(n16190)) /* synthesis lut_function=(!(A (B (C (D)))+!A !((C (D)+!C !(D))+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam n12339_bdd_4_lut_4_lut.init = 16'h7bbf;
    LUT4 i6368_2_lut_rep_135_3_lut_4_lut (.A(n9488), .B(n16245), .C(rst_n_in_c), 
         .D(n12147), .Z(n16209)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i6368_2_lut_rep_135_3_lut_4_lut.init = 16'h70f0;
    LUT4 rst_n_in_c_bdd_4_lut_10088_4_lut (.A(n16215), .B(rst_n_in_c), .C(n12339), 
         .D(seg_data1_3__N_581[0]), .Z(n16181)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C+!(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam rst_n_in_c_bdd_4_lut_10088_4_lut.init = 16'h484c;
    LUT4 i6588_2_lut_rep_142_3_lut (.A(n9488), .B(n16245), .C(n12147), 
         .Z(n16216)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i6588_2_lut_rep_142_3_lut.init = 16'h8080;
    LUT4 rst_n_in_c_bdd_4_lut_10089_4_lut (.A(n16215), .B(rst_n_in_c), .C(n12339), 
         .D(seg_data1_3__N_581[0]), .Z(n16183)) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam rst_n_in_c_bdd_4_lut_10089_4_lut.init = 16'h8c08;
    LUT4 i6556_2_lut_rep_136_3_lut_4_lut (.A(n9488), .B(n16245), .C(seg_data2_3__N_587[1]), 
         .D(n12147), .Z(n16210)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i6556_2_lut_rep_136_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i6394_2_lut_rep_147_3_lut (.A(n9488), .B(n16245), .C(n16246), 
         .Z(n16221)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i6394_2_lut_rep_147_3_lut.init = 16'h8080;
    LUT4 i6283_2_lut_3_lut_4_lut (.A(n9488), .B(n16245), .C(\tone[0] ), 
         .D(n16246), .Z(n12022)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i6283_2_lut_3_lut_4_lut.init = 16'h70f0;
    PFUMX i10086 (.BLUT(n16181), .ALUT(n16333), .C0(seg_data1[3]), .Z(segment_led_1_c_6));
    LUT4 i6469_2_lut_rep_148_4_lut (.A(n16249), .B(sensor_data1[4]), .C(sensor_data1[5]), 
         .D(n9503), .Z(n16222)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(55[4:9])
    defparam i6469_2_lut_rep_148_4_lut.init = 16'hfb00;
    LUT4 i2_2_lut_4_lut (.A(n16249), .B(sensor_data1[4]), .C(sensor_data1[5]), 
         .D(n9473), .Z(n6)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(55[4:9])
    defparam i2_2_lut_4_lut.init = 16'hef00;
    LUT4 i9797_2_lut_3_lut_4_lut_4_lut (.A(n16250), .B(rst_n_in_c), .C(n12147), 
         .D(n16229), .Z(n15624)) /* synthesis lut_function=(A (B (C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam i9797_2_lut_3_lut_4_lut_4_lut.init = 16'h8444;
    LUT4 mux_341_Mux_6_i7_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n16250), .B(rst_n_in_c), 
         .C(n16216), .D(seg_data2_3__N_587[1]), .Z(n7_adj_638)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B ((D)+!C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam mux_341_Mux_6_i7_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hc40c;
    LUT4 i1_2_lut_3_lut_3_lut_adj_79 (.A(n16250), .B(rst_n_in_c), .C(seg_data2_3__N_587[1]), 
         .Z(n4_c)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam i1_2_lut_3_lut_3_lut_adj_79.init = 16'hbfbf;
    LUT4 rst_n_in_c_bdd_4_lut_4_lut (.A(n16216), .B(rst_n_in_c), .C(n16250), 
         .D(seg_data2_3__N_587[1]), .Z(n16194)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam rst_n_in_c_bdd_4_lut_4_lut.init = 16'h377f;
    LUT4 i2_3_lut_rep_141_4_lut (.A(n16230), .B(n9503), .C(n16231), .D(n9472), 
         .Z(n16215)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_141_4_lut.init = 16'h8000;
    LUT4 seg_data2_2__bdd_4_lut_4_lut (.A(n16216), .B(rst_n_in_c), .C(n16250), 
         .D(seg_data2_3__N_587[1]), .Z(n16199)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam seg_data2_2__bdd_4_lut_4_lut.init = 16'h3f3b;
    LUT4 i2_3_lut_4_lut_adj_80 (.A(sensor_data2[6]), .B(sensor_data2[7]), 
         .C(sensor_data2[5]), .D(sensor_data2[4]), .Z(n7_adj_639)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(63[4:9])
    defparam i2_3_lut_4_lut_adj_80.init = 16'h0010;
    LUT4 i9624_2_lut_3_lut (.A(n16230), .B(n9503), .C(n9473), .Z(n15495)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9624_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_341_Mux_3_i15_3_lut_4_lut (.A(seg_data2_3__N_587[1]), .B(n16216), 
         .C(n16224), .D(n7), .Z(segment_led_2_c_3)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam mux_341_Mux_3_i15_3_lut_4_lut.init = 16'h4f40;
    LUT4 mux_340_Mux_0_i15_4_lut_else_1_lut (.A(n16215), .B(n12339), .C(rst_n_in_c), 
         .D(seg_data1_3__N_581[0]), .Z(n16332)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(((D)+!C)+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(76[24:38])
    defparam mux_340_Mux_0_i15_4_lut_else_1_lut.init = 16'h7fbf;
    LUT4 i6369_2_lut_rep_149 (.A(seg_data2_3__N_587[1]), .B(rst_n_in_c), 
         .Z(n16223)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam i6369_2_lut_rep_149.init = 16'h8888;
    LUT4 sensor_data_2_7__I_0_40_i12_2_lut_rep_241 (.A(sensor_data2[4]), .B(sensor_data2[5]), 
         .Z(n16315)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(63[4:9])
    defparam sensor_data_2_7__I_0_40_i12_2_lut_rep_241.init = 16'heeee;
    LUT4 sensor_data_1_7__I_0_37_i9_2_lut_rep_243 (.A(sensor_data1[0]), .B(sensor_data1[1]), 
         .Z(n16317)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(56[4:9])
    defparam sensor_data_1_7__I_0_37_i9_2_lut_rep_243.init = 16'heeee;
    LUT4 i1_2_lut_rep_188_3_lut_4_lut (.A(sensor_data1[0]), .B(sensor_data1[1]), 
         .C(sensor_data1[3]), .D(sensor_data1[2]), .Z(n16262)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(56[4:9])
    defparam i1_2_lut_rep_188_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_204_3_lut (.A(sensor_data1[0]), .B(sensor_data1[1]), 
         .C(sensor_data1[2]), .Z(n16278)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(56[4:9])
    defparam i1_2_lut_rep_204_3_lut.init = 16'hfefe;
    LUT4 sensor_data_1_7__I_0_37_i13_2_lut_rep_244 (.A(sensor_data1[6]), .B(sensor_data1[7]), 
         .Z(n16318)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(56[4:9])
    defparam sensor_data_1_7__I_0_37_i13_2_lut_rep_244.init = 16'heeee;
    LUT4 sensor_data_1_7__I_0_38_i12_2_lut_rep_245 (.A(sensor_data1[4]), .B(sensor_data1[5]), 
         .Z(n16319)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(57[4:9])
    defparam sensor_data_1_7__I_0_38_i12_2_lut_rep_245.init = 16'heeee;
    LUT4 sensor_data_1_7__I_0_34_i14_2_lut_rep_206_3_lut_4_lut (.A(sensor_data1[4]), 
         .B(sensor_data1[5]), .C(sensor_data1[7]), .D(sensor_data1[6]), 
         .Z(n16280)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(57[4:9])
    defparam sensor_data_1_7__I_0_34_i14_2_lut_rep_206_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_341_Mux_5_i15_3_lut_4_lut_4_lut (.A(n16246), .B(rst_n_in_c), 
         .C(n16194), .D(n16210), .Z(segment_led_2_c_5)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B !(C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(48[11] 73[5])
    defparam mux_341_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'hb0f4;
    LUT4 i1_3_lut_rep_246 (.A(sensor_data2[2]), .B(sensor_data2[0]), .C(sensor_data2[1]), 
         .Z(n16320)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(63[4:9])
    defparam i1_3_lut_rep_246.init = 16'hfefe;
    LUT4 i1_2_lut_rep_205_4_lut (.A(sensor_data2[2]), .B(sensor_data2[0]), 
         .C(sensor_data2[1]), .D(sensor_data2[3]), .Z(n16279)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(63[4:9])
    defparam i1_2_lut_rep_205_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n4), .B(n15340), .C(n15997), .D(\state[0] ), .Z(n15275)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hc088;
    LUT4 i6289_2_lut_rep_155_4_lut (.A(n16261), .B(sensor_data2[4]), .C(sensor_data2[5]), 
         .D(n9488), .Z(n16229)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(68[4:9])
    defparam i6289_2_lut_rep_155_4_lut.init = 16'hef00;
    LUT4 i6366_2_lut_rep_150_4_lut (.A(n16260), .B(sensor_data2[6]), .C(sensor_data2[7]), 
         .D(rst_n_in_c), .Z(n16224)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(70[4:9])
    defparam i6366_2_lut_rep_150_4_lut.init = 16'h1000;
    LUT4 i9891_2_lut_2_lut_4_lut (.A(n16260), .B(sensor_data2[6]), .C(sensor_data2[7]), 
         .D(n16247), .Z(clk_in_c_enable_55)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(70[4:9])
    defparam i9891_2_lut_2_lut_4_lut.init = 16'h0010;
    LUT4 mux_341_Mux_0_i15_4_lut (.A(n15624), .B(n16210), .C(n16224), 
         .D(n16223), .Z(segment_led_2_c_0)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(77[24:38])
    defparam mux_341_Mux_0_i15_4_lut.init = 16'h3f35;
    LUT4 i2_3_lut_rep_156_4_lut (.A(n16262), .B(n16318), .C(sensor_data1[5]), 
         .D(sensor_data1[4]), .Z(n16230)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(55[4:9])
    defparam i2_3_lut_rep_156_4_lut.init = 16'hfeff;
    LUT4 i2_4_lut_adj_81 (.A(n30), .B(sensor_data2[0]), .C(n33), .D(sensor_data2[3]), 
         .Z(seg_data2_3__N_587[1])) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_81.init = 16'h0032;
    LUT4 i2_3_lut_rep_157_4_lut (.A(n16262), .B(n16318), .C(sensor_data1[5]), 
         .D(sensor_data1[4]), .Z(n16231)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/test/desktop/pianoshield/source/display.v(55[4:9])
    defparam i2_3_lut_rep_157_4_lut.init = 16'hffef;
    LUT4 i2_4_lut_adj_82 (.A(n7_adj_639), .B(sensor_data2[2]), .C(n15), 
         .D(sensor_data2[1]), .Z(n30)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_82.init = 16'h0032;
    LUT4 i2_4_lut_adj_83 (.A(sensor_data2[1]), .B(n16315), .C(sensor_data2[2]), 
         .D(n16316), .Z(n33)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_83.init = 16'h0012;
    LUT4 i4_3_lut_rep_176 (.A(sensor_data2[5]), .B(n8), .C(sensor_data2[3]), 
         .Z(n16250)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i4_3_lut_rep_176.init = 16'h0404;
    LUT4 i6280_2_lut_rep_158_4_lut (.A(sensor_data2[5]), .B(n8), .C(sensor_data2[3]), 
         .D(rst_n_in_c), .Z(n16232)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i6280_2_lut_rep_158_4_lut.init = 16'h0400;
    LUT4 i3_4_lut_adj_84 (.A(n35), .B(sensor_data2[1]), .C(n38), .D(sensor_data2[7]), 
         .Z(n8)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;
    defparam i3_4_lut_adj_84.init = 16'h0032;
    LUT4 i2_4_lut_adj_85 (.A(sensor_data2[4]), .B(sensor_data2[2]), .C(sensor_data2[6]), 
         .D(sensor_data2[0]), .Z(n35)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_85.init = 16'h0012;
    LUT4 i2_4_lut_adj_86 (.A(sensor_data2[0]), .B(sensor_data2[6]), .C(sensor_data2[2]), 
         .D(sensor_data2[4]), .Z(n38)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_86.init = 16'h0012;
    LUT4 n16261_bdd_4_lut (.A(n16261), .B(sensor_data2[5]), .C(n16323), 
         .D(sensor_data2[4]), .Z(n12147)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam n16261_bdd_4_lut.init = 16'heef0;
    
endmodule
//
// Verilog Description of module beeper
//

module beeper (clk_in_c, piano_out, tone, GND_net) /* synthesis syn_module_defined=1 */ ;
    input clk_in_c;
    output piano_out;
    input [7:0]tone;
    input GND_net;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(19[11:17])
    
    wire n16271, n16305, n4, n4_adj_633, n16236;
    wire [15:0]time_end;   // c:/users/test/desktop/pianoshield/source/beeper.v(27[12:20])
    wire [15:0]time_end_15__N_294;
    
    wire piano_out_N_360;
    wire [15:0]time_cnt;   // c:/users/test/desktop/pianoshield/source/beeper.v(65[12:20])
    
    wire n5847;
    wire [15:0]n69;
    
    wire time_end_15__N_341, n16218, n16204, n16255, n16213, n16265, 
        n16253, n16309, n16237, n16252, n16226, n16242, n15354, 
        n16292, n16239, n16238, n16212, n16273, n16303, n9524, 
        n9560, n16241, n16225, n16306, n12047, n16083, n14393, 
        n15404, n143, n104, n15279, n95, n16290, n16291, n16254, 
        n16307, n12139, n15403, n77_adj_634, n15280, n6681, n9490, 
        n16235, n15779, n9556, n16205, n15426, n16267, n15547, 
        n16289, n15549, n15310, n16269, n16240, n15296, n15281, 
        n38, n15981, n16211, n12153, n25, n30, n26;
    wire [15:0]n6664;
    
    wire n27, n23, n14413, n14490, n16270, n14310, n14309, n16256, 
        n14308, n14307, n14306, n14305, n16257, n16049, n52, n14304, 
        n14303, n14302, n14301, n14300, n14299, n15722, n14298, 
        n25_adj_635, n14297, n14296, n15525, n14295;
    
    LUT4 i6488_3_lut_rep_162_4_lut (.A(n16271), .B(n16305), .C(n4), .D(n4_adj_633), 
         .Z(n16236)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i6488_3_lut_rep_162_4_lut.init = 16'hfeee;
    FD1S3AY time_end_i0 (.D(time_end_15__N_294[0]), .CK(clk_in_c), .Q(time_end[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i0.GSR = "ENABLED";
    FD1S3AY piano_out_39 (.D(piano_out_N_360), .CK(clk_in_c), .Q(piano_out)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(83[11] 87[5])
    defparam piano_out_39.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i0 (.D(n69[0]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i0.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i11 (.D(n69[11]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i11.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i10 (.D(n69[10]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i10.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i9 (.D(n69[9]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i9.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i8 (.D(n69[8]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i8.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i7 (.D(n69[7]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i7.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i6 (.D(n69[6]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i6.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i5 (.D(n69[5]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i5.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i4 (.D(n69[4]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i4.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i3 (.D(n69[3]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i3.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i2 (.D(n69[2]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i2.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i1 (.D(n69[1]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i1.GSR = "ENABLED";
    FD1S3AY time_end_i15 (.D(time_end_15__N_341), .CK(clk_in_c), .Q(time_end[15])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i15.GSR = "ENABLED";
    FD1S3AY time_end_i14 (.D(time_end_15__N_294[14]), .CK(clk_in_c), .Q(time_end[14])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i14.GSR = "ENABLED";
    FD1S3AY time_end_i13 (.D(time_end_15__N_294[13]), .CK(clk_in_c), .Q(time_end[13])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i13.GSR = "ENABLED";
    FD1S3AY time_end_i12 (.D(time_end_15__N_294[12]), .CK(clk_in_c), .Q(time_end[12])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i12.GSR = "ENABLED";
    FD1S3AY time_end_i11 (.D(time_end_15__N_294[11]), .CK(clk_in_c), .Q(time_end[11])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i11.GSR = "ENABLED";
    FD1S3AY time_end_i10 (.D(time_end_15__N_294[10]), .CK(clk_in_c), .Q(time_end[10])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i10.GSR = "ENABLED";
    FD1S3AY time_end_i9 (.D(time_end_15__N_294[9]), .CK(clk_in_c), .Q(time_end[9])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i9.GSR = "ENABLED";
    FD1S3AY time_end_i8 (.D(time_end_15__N_294[8]), .CK(clk_in_c), .Q(time_end[8])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i8.GSR = "ENABLED";
    FD1S3AY time_end_i7 (.D(time_end_15__N_294[7]), .CK(clk_in_c), .Q(time_end[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i7.GSR = "ENABLED";
    FD1S3AY time_end_i6 (.D(time_end_15__N_294[6]), .CK(clk_in_c), .Q(time_end[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i6.GSR = "ENABLED";
    FD1S3JX time_end_i5 (.D(n16218), .CK(clk_in_c), .PD(time_end_15__N_341), 
            .Q(time_end[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i5.GSR = "ENABLED";
    FD1S3AY time_end_i4 (.D(time_end_15__N_294[4]), .CK(clk_in_c), .Q(time_end[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i4.GSR = "ENABLED";
    FD1S3AY time_end_i3 (.D(time_end_15__N_294[3]), .CK(clk_in_c), .Q(time_end[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i3.GSR = "ENABLED";
    FD1S3AY time_end_i2 (.D(time_end_15__N_294[2]), .CK(clk_in_c), .Q(time_end[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i2.GSR = "ENABLED";
    FD1S3AY time_end_i1 (.D(n16204), .CK(clk_in_c), .Q(time_end[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=83, LSE_RLINE=90 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(38[11] 62[5])
    defparam time_end_i1.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i15 (.D(n69[15]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i15.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i14 (.D(n69[14]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i14.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i13 (.D(n69[13]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i13.GSR = "ENABLED";
    FD1S3IX time_cnt_1366__i12 (.D(n69[12]), .CK(clk_in_c), .CD(n5847), 
            .Q(time_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366__i12.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_139_2_lut_4_lut_4_lut (.A(n16255), .B(tone[0]), .C(tone[1]), 
         .D(time_end_15__N_341), .Z(n16213)) /* synthesis lut_function=(!(A (D)+!A (B ((D)+!C)+!B (C+(D))))) */ ;
    defparam i1_2_lut_rep_139_2_lut_4_lut_4_lut.init = 16'h00eb;
    LUT4 i2_3_lut_rep_179 (.A(n16265), .B(tone[0]), .C(tone[1]), .Z(n16253)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_179.init = 16'h8080;
    LUT4 i1_2_lut_rep_163_4_lut (.A(n16265), .B(tone[0]), .C(tone[1]), 
         .D(n16309), .Z(n16237)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_163_4_lut.init = 16'hff7f;
    LUT4 i1_2_lut_rep_152_4_lut_4_lut (.A(n16252), .B(tone[6]), .C(tone[7]), 
         .D(n16237), .Z(n16226)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam i1_2_lut_rep_152_4_lut_4_lut.init = 16'heb00;
    LUT4 i1_2_lut_4_lut_4_lut (.A(n16252), .B(tone[6]), .C(tone[7]), .D(n16242), 
         .Z(n15354)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'heb00;
    LUT4 i1_2_lut_rep_165_4_lut (.A(n16265), .B(tone[0]), .C(tone[1]), 
         .D(n16292), .Z(n16239)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_165_4_lut.init = 16'hff7f;
    LUT4 i9875_3_lut_3_lut_4_lut_4_lut (.A(n16218), .B(n16226), .C(n16238), 
         .D(n16212), .Z(time_end_15__N_294[13])) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i9875_3_lut_3_lut_4_lut_4_lut.init = 16'hbfff;
    LUT4 i6587_3_lut_rep_167_4_lut (.A(n16273), .B(n16303), .C(n9524), 
         .D(n9560), .Z(n16241)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i6587_3_lut_rep_167_4_lut.init = 16'hfeee;
    LUT4 i9927_3_lut_3_lut_4_lut_4_lut (.A(n16218), .B(n16225), .C(n15354), 
         .D(n16212), .Z(time_end_15__N_294[11])) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i9927_3_lut_3_lut_4_lut_4_lut.init = 16'hbfff;
    LUT4 i6554_3_lut_4_lut (.A(n16271), .B(n16306), .C(tone[4]), .D(tone[5]), 
         .Z(n12047)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(46[4:9])
    defparam i6554_3_lut_4_lut.init = 16'hfeef;
    LUT4 tone_2__bdd_4_lut_10120 (.A(tone[2]), .B(tone[4]), .C(tone[3]), 
         .D(tone[5]), .Z(n16083)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam tone_2__bdd_4_lut_10120.init = 16'h0116;
    PFUMX i141 (.BLUT(n14393), .ALUT(n15404), .C0(tone[7]), .Z(n143));
    PFUMX i140 (.BLUT(n104), .ALUT(n15279), .C0(tone[1]), .Z(n95));
    LUT4 i1_2_lut_rep_180_4_lut (.A(tone[5]), .B(tone[4]), .C(n16290), 
         .D(n16291), .Z(n16254)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_180_4_lut.init = 16'h8000;
    LUT4 i6493_2_lut_3_lut_4_lut (.A(n16309), .B(n16292), .C(n16307), 
         .D(n16273), .Z(n12139)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i6493_2_lut_3_lut_4_lut.init = 16'hfff8;
    LUT4 i1_2_lut_4_lut (.A(n16291), .B(tone[7]), .C(n15403), .D(tone[4]), 
         .Z(n15279)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i1_2_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_4_lut_adj_63 (.A(n16291), .B(tone[7]), .C(n15403), .D(n77_adj_634), 
         .Z(n15280)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i1_2_lut_4_lut_adj_63.init = 16'h8000;
    LUT4 i2_3_lut_4_lut (.A(n16303), .B(n16305), .C(tone[6]), .D(n77_adj_634), 
         .Z(n14393)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 i430_3_lut_4_lut (.A(n16307), .B(n16303), .C(n16273), .D(n6681), 
         .Z(n5847)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i430_3_lut_4_lut.init = 16'hff01;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n16307), .B(n16303), .C(n4_adj_633), 
         .D(n16305), .Z(n9490)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_161_3_lut_4_lut (.A(n16306), .B(n16305), .C(n16292), 
         .D(n16307), .Z(n16235)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(46[4:9])
    defparam i1_2_lut_rep_161_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_168_3_lut_4_lut (.A(n16306), .B(n16305), .C(n16309), 
         .D(n16307), .Z(n16242)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(46[4:9])
    defparam i1_2_lut_rep_168_3_lut_4_lut.init = 16'hfffe;
    LUT4 i9953_3_lut_4_lut_4_lut (.A(time_end_15__N_341), .B(n16241), .C(n15779), 
         .D(n16238), .Z(time_end_15__N_294[12])) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i9953_3_lut_4_lut_4_lut.init = 16'hfbff;
    LUT4 i6286_2_lut_rep_138_2_lut (.A(time_end_15__N_341), .B(n9556), .Z(n16212)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i6286_2_lut_rep_138_2_lut.init = 16'h4444;
    LUT4 i9931_3_lut_4_lut (.A(n16242), .B(n16205), .C(n16241), .D(n12047), 
         .Z(time_end_15__N_294[4])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i9931_3_lut_4_lut.init = 16'h7fff;
    LUT4 i1_2_lut_rep_131_3_lut_3_lut (.A(time_end_15__N_341), .B(n15426), 
         .C(n9556), .Z(n16205)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i1_2_lut_rep_131_3_lut_3_lut.init = 16'h4040;
    LUT4 i9675_3_lut_4_lut_4_lut (.A(time_end_15__N_341), .B(n16253), .C(n16267), 
         .D(n9556), .Z(n15547)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i9675_3_lut_4_lut_4_lut.init = 16'h5100;
    LUT4 i9671_3_lut_rep_215 (.A(tone[4]), .B(tone[6]), .C(tone[3]), .Z(n16289)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i9671_3_lut_rep_215.init = 16'hfefe;
    LUT4 i9677_2_lut_4_lut (.A(tone[4]), .B(tone[6]), .C(tone[3]), .D(tone[7]), 
         .Z(n15549)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9677_2_lut_4_lut.init = 16'hfffe;
    LUT4 i6375_2_lut_rep_216 (.A(tone[6]), .B(tone[7]), .Z(n16290)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6375_2_lut_rep_216.init = 16'h8888;
    LUT4 i2_3_lut_rep_191_4_lut (.A(tone[6]), .B(tone[7]), .C(tone[4]), 
         .D(tone[5]), .Z(n16265)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_191_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut (.A(tone[6]), .B(tone[7]), .C(tone[5]), .D(tone[4]), 
         .Z(n15310)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_3_lut_4_lut.init = 16'hff7f;
    LUT4 i1_2_lut_rep_217 (.A(tone[3]), .B(tone[2]), .Z(n16291)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_217.init = 16'h8888;
    LUT4 i1_2_lut_rep_164_3_lut_4_lut (.A(tone[3]), .B(tone[2]), .C(n9524), 
         .D(n16265), .Z(n16238)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_164_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i2_3_lut_rep_195_4_lut (.A(tone[3]), .B(tone[2]), .C(n15403), 
         .D(tone[7]), .Z(n16269)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_195_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_166_3_lut_4_lut (.A(tone[3]), .B(tone[2]), .C(n9560), 
         .D(n16265), .Z(n16240)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_166_3_lut_4_lut.init = 16'hf7ff;
    PFUMX i44 (.BLUT(n15296), .ALUT(n15281), .C0(tone[0]), .Z(n38));
    LUT4 tone_2__bdd_4_lut_10043 (.A(tone[2]), .B(tone[0]), .C(tone[1]), 
         .D(tone[5]), .Z(n15981)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C (D)+!C !(D))))) */ ;
    defparam tone_2__bdd_4_lut_10043.init = 16'h0112;
    LUT4 i1_2_lut_rep_218 (.A(tone[3]), .B(tone[2]), .Z(n16292)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(57[4:9])
    defparam i1_2_lut_rep_218.init = 16'hbbbb;
    LUT4 i9967_3_lut_4_lut (.A(n16211), .B(n15354), .C(n16240), .D(n12153), 
         .Z(time_end_15__N_294[3])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i9967_3_lut_4_lut.init = 16'h7fff;
    LUT4 i9894_3_lut_3_lut_4_lut_4_lut (.A(time_end_15__N_341), .B(n12047), 
         .C(n12139), .D(n16241), .Z(time_end_15__N_294[14])) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i9894_3_lut_3_lut_4_lut_4_lut.init = 16'hbfff;
    LUT4 i9950_3_lut_4_lut (.A(n9556), .B(n16213), .C(n16235), .D(n9490), 
         .Z(time_end_15__N_294[7])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i9950_3_lut_4_lut.init = 16'h7fff;
    LUT4 i9851_3_lut (.A(tone[0]), .B(n143), .C(n95), .Z(time_end_15__N_341)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i9851_3_lut.init = 16'h2323;
    LUT4 i1_4_lut (.A(piano_out), .B(n25), .C(n30), .D(n26), .Z(piano_out_N_360)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa9;
    LUT4 i9_4_lut (.A(n6664[15]), .B(n6664[14]), .C(n6664[9]), .D(n6664[11]), 
         .Z(n25)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i14_4_lut (.A(n27), .B(n23), .C(n6664[6]), .D(n6664[0]), .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n6664[7]), .B(n6664[12]), .C(n6664[2]), .D(n6664[10]), 
         .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(n6664[5]), .B(n6664[13]), .C(n6664[3]), .D(n6664[8]), 
         .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(n6664[4]), .B(n6664[1]), .Z(n23)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i9964_4_lut_4_lut (.A(n16204), .B(n15354), .C(n16239), .D(n12047), 
         .Z(time_end_15__N_294[8])) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i9964_4_lut_4_lut.init = 16'hbfff;
    LUT4 i2_4_lut (.A(n15403), .B(tone[0]), .C(n14413), .D(n14490), 
         .Z(n15404)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i2_4_lut_adj_64 (.A(tone[2]), .B(tone[1]), .C(tone[3]), .D(tone[4]), 
         .Z(n14413)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i2_4_lut_adj_64.init = 16'h0880;
    LUT4 i2_4_lut_adj_65 (.A(tone[3]), .B(tone[1]), .C(tone[4]), .D(tone[2]), 
         .Z(n14490)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C (D)))+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i2_4_lut_adj_65.init = 16'h2080;
    LUT4 i1_2_lut (.A(tone[5]), .B(tone[6]), .Z(n15403)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i153_2_lut (.A(tone[0]), .B(tone[1]), .Z(n77_adj_634)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i153_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_66 (.A(n16270), .B(tone[7]), .C(tone[6]), .D(n16083), 
         .Z(n104)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C)+!B !(C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(39[3] 61[10])
    defparam i1_4_lut_adj_66.init = 16'h1714;
    CCU2D add_1179_17 (.A0(time_cnt[15]), .B0(time_end[15]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14310), .S0(n6664[15]), .S1(n6681));   // c:/users/test/desktop/pianoshield/source/beeper.v(72[14:32])
    defparam add_1179_17.INIT0 = 16'h5999;
    defparam add_1179_17.INIT1 = 16'h0000;
    defparam add_1179_17.INJECT1_0 = "NO";
    defparam add_1179_17.INJECT1_1 = "NO";
    CCU2D add_1179_15 (.A0(time_cnt[13]), .B0(time_end[13]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(time_end[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n14309), .COUT(n14310), .S0(n6664[13]), 
          .S1(n6664[14]));   // c:/users/test/desktop/pianoshield/source/beeper.v(72[14:32])
    defparam add_1179_15.INIT0 = 16'h5999;
    defparam add_1179_15.INIT1 = 16'h5999;
    defparam add_1179_15.INJECT1_0 = "NO";
    defparam add_1179_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_229 (.A(tone[2]), .B(tone[3]), .Z(n16303)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i1_2_lut_rep_229.init = 16'heeee;
    LUT4 i1_2_lut_rep_181_3_lut_4_lut (.A(tone[2]), .B(tone[3]), .C(n16305), 
         .D(n16306), .Z(n16255)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i1_2_lut_rep_181_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_178_3_lut_4_lut (.A(tone[2]), .B(tone[3]), .C(n16305), 
         .D(n16307), .Z(n16252)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i1_2_lut_rep_178_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_182_3_lut_4_lut (.A(tone[2]), .B(tone[3]), .C(n16306), 
         .D(n16307), .Z(n16256)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i1_2_lut_rep_182_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_1179_13 (.A0(time_cnt[11]), .B0(time_end[11]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(time_end[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n14308), .COUT(n14309), .S0(n6664[11]), 
          .S1(n6664[12]));   // c:/users/test/desktop/pianoshield/source/beeper.v(72[14:32])
    defparam add_1179_13.INIT0 = 16'h5999;
    defparam add_1179_13.INIT1 = 16'h5999;
    defparam add_1179_13.INJECT1_0 = "NO";
    defparam add_1179_13.INJECT1_1 = "NO";
    CCU2D add_1179_11 (.A0(time_cnt[9]), .B0(time_end[9]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(time_end[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n14307), .COUT(n14308), .S0(n6664[9]), 
          .S1(n6664[10]));   // c:/users/test/desktop/pianoshield/source/beeper.v(72[14:32])
    defparam add_1179_11.INIT0 = 16'h5999;
    defparam add_1179_11.INIT1 = 16'h5999;
    defparam add_1179_11.INJECT1_0 = "NO";
    defparam add_1179_11.INJECT1_1 = "NO";
    CCU2D add_1179_9 (.A0(time_cnt[7]), .B0(time_end[7]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(time_end[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n14306), .COUT(n14307), .S0(n6664[7]), 
          .S1(n6664[8]));   // c:/users/test/desktop/pianoshield/source/beeper.v(72[14:32])
    defparam add_1179_9.INIT0 = 16'h5999;
    defparam add_1179_9.INIT1 = 16'h5999;
    defparam add_1179_9.INJECT1_0 = "NO";
    defparam add_1179_9.INJECT1_1 = "NO";
    CCU2D add_1179_7 (.A0(time_cnt[5]), .B0(time_end[5]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(time_end[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n14305), .COUT(n14306), .S0(n6664[5]), 
          .S1(n6664[6]));   // c:/users/test/desktop/pianoshield/source/beeper.v(72[14:32])
    defparam add_1179_7.INIT0 = 16'h5999;
    defparam add_1179_7.INIT1 = 16'h5999;
    defparam add_1179_7.INJECT1_0 = "NO";
    defparam add_1179_7.INJECT1_1 = "NO";
    LUT4 i6504_2_lut_rep_231 (.A(tone[5]), .B(tone[4]), .Z(n16305)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6504_2_lut_rep_231.init = 16'heeee;
    LUT4 i1_2_lut_rep_183_3_lut_4_lut (.A(tone[5]), .B(tone[4]), .C(n16307), 
         .D(n16306), .Z(n16257)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_183_3_lut_4_lut.init = 16'hfffe;
    LUT4 i6627_2_lut_rep_196_3_lut_4_lut (.A(tone[5]), .B(tone[4]), .C(tone[3]), 
         .D(tone[2]), .Z(n16270)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6627_2_lut_rep_196_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_232 (.A(tone[7]), .B(tone[6]), .Z(n16306)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(46[4:9])
    defparam i1_2_lut_rep_232.init = 16'heeee;
    LUT4 i1_2_lut_rep_199_3_lut_4_lut (.A(tone[7]), .B(tone[6]), .C(tone[4]), 
         .D(tone[5]), .Z(n16273)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(46[4:9])
    defparam i1_2_lut_rep_199_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_233 (.A(tone[1]), .B(tone[0]), .Z(n16307)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i1_2_lut_rep_233.init = 16'heeee;
    LUT4 i1_2_lut_rep_197_3_lut_4_lut (.A(tone[1]), .B(tone[0]), .C(tone[3]), 
         .D(tone[2]), .Z(n16271)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i1_2_lut_rep_197_3_lut_4_lut.init = 16'hfffe;
    LUT4 i6414_3_lut_4_lut (.A(n16292), .B(n16257), .C(n9560), .D(n16255), 
         .Z(n12153)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(57[4:9])
    defparam i6414_3_lut_4_lut.init = 16'heee0;
    LUT4 i3_4_lut (.A(tone[1]), .B(tone[0]), .C(tone[5]), .D(n16049), 
         .Z(n52)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i3_4_lut.init = 16'h0100;
    CCU2D add_1179_5 (.A0(time_cnt[3]), .B0(time_end[3]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(time_end[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n14304), .COUT(n14305), .S0(n6664[3]), 
          .S1(n6664[4]));   // c:/users/test/desktop/pianoshield/source/beeper.v(72[14:32])
    defparam add_1179_5.INIT0 = 16'h5999;
    defparam add_1179_5.INIT1 = 16'h5999;
    defparam add_1179_5.INJECT1_0 = "NO";
    defparam add_1179_5.INJECT1_1 = "NO";
    CCU2D add_1179_3 (.A0(time_cnt[1]), .B0(time_end[1]), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(time_end[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n14303), .COUT(n14304), .S0(n6664[1]), 
          .S1(n6664[2]));   // c:/users/test/desktop/pianoshield/source/beeper.v(72[14:32])
    defparam add_1179_3.INIT0 = 16'h5999;
    defparam add_1179_3.INIT1 = 16'h5999;
    defparam add_1179_3.INJECT1_0 = "NO";
    defparam add_1179_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_235 (.A(tone[2]), .B(tone[3]), .Z(n16309)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(55[4:9])
    defparam i1_2_lut_rep_235.init = 16'hbbbb;
    LUT4 i9666_2_lut_rep_193_3_lut_2_lut (.A(tone[2]), .B(tone[3]), .Z(n16267)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(55[4:9])
    defparam i9666_2_lut_rep_193_3_lut_2_lut.init = 16'h9999;
    CCU2D add_1179_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(time_cnt[0]), .B1(time_end[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n14303), .S1(n6664[0]));   // c:/users/test/desktop/pianoshield/source/beeper.v(72[14:32])
    defparam add_1179_1.INIT0 = 16'h0000;
    defparam add_1179_1.INIT1 = 16'h5999;
    defparam add_1179_1.INJECT1_0 = "NO";
    defparam add_1179_1.INJECT1_1 = "NO";
    CCU2D time_cnt_1366_add_4_17 (.A0(time_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14302), .S0(n69[15]));   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366_add_4_17.INIT0 = 16'hfaaa;
    defparam time_cnt_1366_add_4_17.INIT1 = 16'h0000;
    defparam time_cnt_1366_add_4_17.INJECT1_0 = "NO";
    defparam time_cnt_1366_add_4_17.INJECT1_1 = "NO";
    CCU2D time_cnt_1366_add_4_15 (.A0(time_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14301), .COUT(n14302), .S0(n69[13]), .S1(n69[14]));   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366_add_4_15.INIT0 = 16'hfaaa;
    defparam time_cnt_1366_add_4_15.INIT1 = 16'hfaaa;
    defparam time_cnt_1366_add_4_15.INJECT1_0 = "NO";
    defparam time_cnt_1366_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_67 (.A(tone[0]), .B(tone[1]), .Z(n9560)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(52[4:9])
    defparam i1_2_lut_adj_67.init = 16'hbbbb;
    CCU2D time_cnt_1366_add_4_13 (.A0(time_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14300), .COUT(n14301), .S0(n69[11]), .S1(n69[12]));   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366_add_4_13.INIT0 = 16'hfaaa;
    defparam time_cnt_1366_add_4_13.INIT1 = 16'hfaaa;
    defparam time_cnt_1366_add_4_13.INJECT1_0 = "NO";
    defparam time_cnt_1366_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_68 (.A(tone[1]), .B(tone[0]), .Z(n9524)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(54[4:9])
    defparam i1_2_lut_adj_68.init = 16'hbbbb;
    LUT4 i9959_3_lut_4_lut (.A(n16211), .B(n15426), .C(n12139), .D(n9490), 
         .Z(time_end_15__N_294[9])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i9959_3_lut_4_lut.init = 16'h7fff;
    LUT4 i1_3_lut_rep_151_4_lut (.A(n16292), .B(n16257), .C(n16255), .D(n9524), 
         .Z(n16225)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(57[4:9])
    defparam i1_3_lut_rep_151_4_lut.init = 16'heee0;
    CCU2D time_cnt_1366_add_4_11 (.A0(time_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14299), .COUT(n14300), .S0(n69[9]), .S1(n69[10]));   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366_add_4_11.INIT0 = 16'hfaaa;
    defparam time_cnt_1366_add_4_11.INIT1 = 16'hfaaa;
    defparam time_cnt_1366_add_4_11.INJECT1_0 = "NO";
    defparam time_cnt_1366_add_4_11.INJECT1_1 = "NO";
    LUT4 i9897_3_lut_4_lut (.A(n16212), .B(n15426), .C(n12153), .D(n15722), 
         .Z(time_end_15__N_294[10])) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i9897_3_lut_4_lut.init = 16'hff7f;
    CCU2D time_cnt_1366_add_4_9 (.A0(time_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14298), .COUT(n14299), .S0(n69[7]), .S1(n69[8]));   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366_add_4_9.INIT0 = 16'hfaaa;
    defparam time_cnt_1366_add_4_9.INIT1 = 16'hfaaa;
    defparam time_cnt_1366_add_4_9.INJECT1_0 = "NO";
    defparam time_cnt_1366_add_4_9.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_69 (.A(tone[2]), .B(tone[5]), .C(n25_adj_635), .D(n16289), 
         .Z(n15296)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut_adj_69.init = 16'h0010;
    LUT4 i51_2_lut (.A(tone[1]), .B(tone[7]), .Z(n25_adj_635)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i51_2_lut.init = 16'h6666;
    LUT4 i1_3_lut (.A(n16269), .B(tone[4]), .C(tone[1]), .Z(n15281)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    LUT4 i2_3_lut_rep_137_3_lut_4_lut (.A(n16309), .B(n16253), .C(n12047), 
         .D(time_end_15__N_341), .Z(n16211)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(55[4:9])
    defparam i2_3_lut_rep_137_3_lut_4_lut.init = 16'h00b0;
    LUT4 i9952_2_lut_3_lut_4_lut (.A(n16309), .B(n16253), .C(n16240), 
         .D(n16236), .Z(n15779)) /* synthesis lut_function=(!(A (C (D))+!A !(B+!(C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(55[4:9])
    defparam i9952_2_lut_3_lut_4_lut.init = 16'h4fff;
    CCU2D time_cnt_1366_add_4_7 (.A0(time_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14297), .COUT(n14298), .S0(n69[5]), .S1(n69[6]));   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366_add_4_7.INIT0 = 16'hfaaa;
    defparam time_cnt_1366_add_4_7.INIT1 = 16'hfaaa;
    defparam time_cnt_1366_add_4_7.INJECT1_0 = "NO";
    defparam time_cnt_1366_add_4_7.INJECT1_1 = "NO";
    LUT4 n52_bdd_4_lut (.A(n52), .B(n15280), .C(tone[4]), .D(n15547), 
         .Z(time_end_15__N_294[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam n52_bdd_4_lut.init = 16'hcaff;
    LUT4 i9869_2_lut_rep_130_3_lut_3_lut_3_lut_4_lut (.A(n9524), .B(n16254), 
         .C(n16225), .D(time_end_15__N_341), .Z(n16204)) /* synthesis lut_function=(A ((D)+!C)+!A (B+((D)+!C))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(54[4:9])
    defparam i9869_2_lut_rep_130_3_lut_3_lut_3_lut_4_lut.init = 16'hff4f;
    CCU2D time_cnt_1366_add_4_5 (.A0(time_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14296), .COUT(n14297), .S0(n69[3]), .S1(n69[4]));   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366_add_4_5.INIT0 = 16'hfaaa;
    defparam time_cnt_1366_add_4_5.INIT1 = 16'hfaaa;
    defparam time_cnt_1366_add_4_5.INJECT1_0 = "NO";
    defparam time_cnt_1366_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_70 (.A(tone[6]), .B(tone[7]), .Z(n4_adj_633)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(51[4:9])
    defparam i1_2_lut_adj_70.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_71 (.A(tone[6]), .B(tone[7]), .Z(n4)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(49[4:9])
    defparam i1_2_lut_adj_71.init = 16'hdddd;
    LUT4 i4_4_lut (.A(tone[3]), .B(n15310), .C(tone[1]), .D(n15525), 
         .Z(n9556)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i4_4_lut.init = 16'hdfff;
    LUT4 i9654_2_lut (.A(tone[0]), .B(tone[2]), .Z(n15525)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9654_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_72 (.A(n16292), .B(n16253), .C(n4), .D(n16252), 
         .Z(n15426)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(57[4:9])
    defparam i1_3_lut_4_lut_adj_72.init = 16'hbbb0;
    CCU2D time_cnt_1366_add_4_3 (.A0(time_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14295), .COUT(n14296), .S0(n69[1]), .S1(n69[2]));   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366_add_4_3.INIT0 = 16'hfaaa;
    defparam time_cnt_1366_add_4_3.INIT1 = 16'hfaaa;
    defparam time_cnt_1366_add_4_3.INJECT1_0 = "NO";
    defparam time_cnt_1366_add_4_3.INJECT1_1 = "NO";
    CCU2D time_cnt_1366_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(time_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n14295), .S1(n69[0]));   // c:/users/test/desktop/pianoshield/source/beeper.v(75[15:30])
    defparam time_cnt_1366_add_4_1.INIT0 = 16'hF000;
    defparam time_cnt_1366_add_4_1.INIT1 = 16'h0555;
    defparam time_cnt_1366_add_4_1.INJECT1_0 = "NO";
    defparam time_cnt_1366_add_4_1.INJECT1_1 = "NO";
    LUT4 i9947_2_lut_rep_144_2_lut_3_lut_4_lut (.A(n9560), .B(n16254), .C(n16253), 
         .D(n16292), .Z(n16218)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(52[4:9])
    defparam i9947_2_lut_rep_144_2_lut_3_lut_4_lut.init = 16'h44f4;
    LUT4 i9895_4_lut (.A(n16238), .B(n16256), .C(tone[4]), .D(tone[5]), 
         .Z(n15722)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam i9895_4_lut.init = 16'h5575;
    LUT4 i2_3_lut_3_lut_4_lut (.A(n16309), .B(n16257), .C(n38), .D(time_end_15__N_341), 
         .Z(time_end_15__N_294[0])) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/beeper.v(55[4:9])
    defparam i2_3_lut_3_lut_4_lut.init = 16'hfff1;
    LUT4 tone_3__bdd_4_lut_10148 (.A(tone[3]), .B(tone[7]), .C(tone[6]), 
         .D(tone[2]), .Z(n16049)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam tone_3__bdd_4_lut_10148.init = 16'h0116;
    LUT4 i2_4_lut_adj_73 (.A(n15547), .B(n15981), .C(n16242), .D(n15549), 
         .Z(time_end_15__N_294[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C)))) */ ;
    defparam i2_4_lut_adj_73.init = 16'h5fdf;
    
endmodule
//
// Verilog Description of module cap1188_i2c
//

module cap1188_i2c (clk_200khz, clk_in_c, sda_out_N_274, sda_out_out, 
            sensor_data2, clk_in_c_enable_32, sensor_data1, scl_out_c, 
            cnt_200khz_5__N_145, GND_net, cnt_work, \state_back[0] , 
            state, clk_in_c_enable_61, n6579, \cnt_main[1] , \state_back[1] , 
            n16662, cnt_start, clk_in_c_enable_48, cnt_stop, n12044, 
            n16134, n16244, cnt_ack_t, n16258, n16021, n6575, n16227, 
            n15571, clk_in_c_enable_56, n16300, n16311, \state_3__N_180[0] , 
            n16233, n16284, n16286, n4, n8, n16243, n16313, \state_3__N_172[1] , 
            n16259, n16268, n6, n42, n9481, n14379, n16310, n30, 
            \state_3__N_176[0] , n16272, n6580, n16228, \state_3__N_172[0] , 
            n7685, rst_n_in_c, n15340, n7580, n11026, clk_in_c_enable_72, 
            n14532) /* synthesis syn_module_defined=1 */ ;
    output clk_200khz;
    input clk_in_c;
    output sda_out_N_274;
    input sda_out_out;
    output [7:0]sensor_data2;
    input clk_in_c_enable_32;
    output [7:0]sensor_data1;
    output scl_out_c;
    output cnt_200khz_5__N_145;
    input GND_net;
    output [4:0]cnt_work;
    output \state_back[0] ;
    output [3:0]state;
    input clk_in_c_enable_61;
    input n6579;
    output \cnt_main[1] ;
    output \state_back[1] ;
    input n16662;
    output [1:0]cnt_start;
    input clk_in_c_enable_48;
    output [1:0]cnt_stop;
    input n12044;
    input n16134;
    input n16244;
    output [1:0]cnt_ack_t;
    output n16258;
    input n16021;
    output n6575;
    input n16227;
    output n15571;
    input clk_in_c_enable_56;
    output n16300;
    output n16311;
    output \state_3__N_180[0] ;
    input n16233;
    output n16284;
    output n16286;
    output n4;
    output n8;
    input n16243;
    output n16313;
    output \state_3__N_172[1] ;
    input n16259;
    output n16268;
    output n6;
    output n42;
    output n9481;
    output n14379;
    output n16310;
    output n30;
    output \state_3__N_176[0] ;
    output n16272;
    input n6580;
    input n16228;
    output \state_3__N_172[0] ;
    input n7685;
    input rst_n_in_c;
    output n15340;
    output n7580;
    output n11026;
    input clk_in_c_enable_72;
    output n14532;
    
    wire clk_200khz /* synthesis is_clock=1, SET_AS_NETWORK=\cap1188_i2c_u/clk_200khz */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(65[10:20])
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/test/desktop/pianoshield/source/pianoshield_top.v(19[11:17])
    
    wire clk_200khz_N_276;
    wire [1:0]cnt_ack_r;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(94[14:23])
    
    wire clk_in_c_enable_1, n15319;
    wire [1:0]cnt_main;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(82[14:22])
    
    wire clk_in_c_enable_15, n9996;
    wire [1:0]n10;
    wire [2:0]read_num;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(92[14:22])
    
    wire clk_in_c_enable_11, n9998, n6_c, n6_adj_611;
    wire [2:0]write_num;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(90[14:23])
    
    wire clk_in_c_enable_12, n16129, sda_out_N_277;
    wire [7:0]work_dat;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(93[14:22])
    
    wire clk_in_c_enable_6, clk_in_c_enable_41;
    wire [7:0]data_wr;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(83[14:21])
    
    wire n2, clk_in_c_enable_30, clk_200khz_enable_1, scl_out_N_267;
    wire [5:0]cnt_200khz;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(66[14:24])
    wire [5:0]n29;
    
    wire n14292, n14293;
    wire [3:0]work_num;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(87[14:22])
    
    wire n6_adj_612, n9477, clk_in_c_enable_44, n16294, n6_adj_613, 
        n16100, n10905, n14416, n2_adj_614;
    wire [1:0]cnt_write;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(89[14:23])
    
    wire clk_in_c_enable_14, n14632, clk_in_c_enable_60, n15174, n3, 
        n3_adj_616, n15178;
    wire [2:0]init_num;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(85[14:22])
    
    wire clk_in_c_enable_59, n9994;
    wire [2:0]init_num_2__N_214;
    
    wire clk_in_c_enable_21, n14425;
    wire [1:0]cnt_read;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(91[14:22])
    
    wire clk_in_c_enable_74, n15976, clk_in_c_enable_73, n15283, n16660, 
        clk_in_c_enable_33, n15032;
    wire [4:0]cnt_init;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(84[14:22])
    
    wire n11597;
    wire [4:0]n71;
    
    wire n16029, n16028, clk_in_c_enable_52, n16340, n16337, n15585, 
        n9602, clk_in_c_enable_49;
    wire [1:0]cnt_stop_1__N_129;
    wire [3:0]n6545;
    
    wire n15266;
    wire [1:0]cnt_stop_c;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(96[14:22])
    
    wire clk_in_c_enable_53, n14483, n136, n16308, n15, n16338, 
        n16282, n15950, n15968, n7731, n14, sda_out_N_278, n16082, 
        n16274, n12266;
    wire [3:0]state_3__N_172;
    
    wire n7, n15366, clk_in_c_enable_65, n15400, clk_in_c_enable_66, 
        n15363, clk_in_c_enable_68, clk_in_c_enable_64, clk_in_c_enable_69, 
        clk_in_c_enable_70, n16288, n11593, n16116, n16285, n45, 
        n16293, n16295, n16157, n12394, n6_adj_617, n16329, n16330, 
        n16304, n7675, n6_adj_618, n16158, clk_in_c_enable_63, n16314, 
        n16155, n16156, n15289, n16339, n33_adj_619, sda_out_N_292, 
        n11, n16283, n49, n16277, n16263, n16251, n16297, n15284, 
        n14423, n10890, n15_adj_620, n1, n133, n30_adj_621, n9, 
        sda_out_N_285, n16217, n4_adj_622, n14452, n9604;
    wire [2:0]n5724;
    
    wire sda_out_N_283, n16201, n9853, n16118, n16298, clk_in_c_enable_62, 
        n2_adj_624, n3_adj_625, n15384, n16302;
    wire [2:0]n5727;
    
    wire clk_in_c_enable_57, n12354, n16, n16299, n12361, n5, n15588, 
        n14551, n14434, n15535, n20, sda_out_N_275, n10949, n15594, 
        n15595, n15533, n15590, n15591, n16312, n14_adj_627, clk_in_c_enable_67, 
        clk_in_c_enable_71, n15587, n15592, n15593, n4_adj_628, n14294, 
        n7_adj_629, n4_adj_630, n4_adj_631, n6_adj_632;
    
    FD1S3AX clk_200khz_185 (.D(clk_200khz_N_276), .CK(clk_in_c), .Q(clk_200khz)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(71[12] 76[6])
    defparam clk_200khz_185.GSR = "ENABLED";
    FD1P3AX cnt_ack_r_i0_i1 (.D(n15319), .SP(clk_in_c_enable_1), .CK(clk_in_c), 
            .Q(cnt_ack_r[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_ack_r_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i0 (.D(n10[0]), .SP(clk_in_c_enable_15), .CD(n9996), 
            .CK(clk_in_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    FD1P3JX read_num_i0_i1 (.D(n6_c), .SP(clk_in_c_enable_11), .PD(n9998), 
            .CK(clk_in_c), .Q(read_num[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam read_num_i0_i1.GSR = "ENABLED";
    FD1P3JX read_num_i0_i2 (.D(n6_adj_611), .SP(clk_in_c_enable_11), .PD(n9998), 
            .CK(clk_in_c), .Q(read_num[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam read_num_i0_i2.GSR = "ENABLED";
    FD1P3JX write_num_i0_i1 (.D(n16129), .SP(clk_in_c_enable_12), .PD(n9998), 
            .CK(clk_in_c), .Q(write_num[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam write_num_i0_i1.GSR = "ENABLED";
    FD1S3AY sda_out_r_188 (.D(sda_out_N_277), .CK(clk_200khz), .Q(sda_out_N_274)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam sda_out_r_188.GSR = "ENABLED";
    FD1P3AX work_dat_i0_i0 (.D(sda_out_out), .SP(clk_in_c_enable_6), .CK(clk_in_c), 
            .Q(work_dat[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam work_dat_i0_i0.GSR = "DISABLED";
    FD1P3AX cap_dat2_0___i1 (.D(work_dat[0]), .SP(clk_in_c_enable_41), .CK(clk_in_c), 
            .Q(sensor_data2[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat2_0___i1.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i0 (.D(n2), .SP(clk_in_c_enable_32), .CK(clk_in_c), 
            .Q(data_wr[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam data_wr_i0_i0.GSR = "DISABLED";
    FD1P3AX cap_dat1_0___i1 (.D(work_dat[0]), .SP(clk_in_c_enable_30), .CK(clk_in_c), 
            .Q(sensor_data1[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat1_0___i1.GSR = "DISABLED";
    FD1P3AY scl_out_r_187 (.D(scl_out_N_267), .SP(clk_200khz_enable_1), 
            .CK(clk_200khz), .Q(scl_out_c)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam scl_out_r_187.GSR = "ENABLED";
    FD1S3IX cnt_200khz_1365__i0 (.D(n29[0]), .CK(clk_in_c), .CD(cnt_200khz_5__N_145), 
            .Q(cnt_200khz[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(75[18:35])
    defparam cnt_200khz_1365__i0.GSR = "ENABLED";
    CCU2D cnt_200khz_1365_add_4_3 (.A0(cnt_200khz[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200khz[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14292), .COUT(n14293), .S0(n29[1]), .S1(n29[2]));   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(75[18:35])
    defparam cnt_200khz_1365_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_200khz_1365_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_200khz_1365_add_4_3.INJECT1_0 = "NO";
    defparam cnt_200khz_1365_add_4_3.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(cnt_work[0]), .B(work_num[0]), .C(cnt_work[1]), 
         .D(n6_adj_612), .Z(n9477)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i4_4_lut.init = 16'hffef;
    FD1P3AX state_back_i0_i0 (.D(n16294), .SP(clk_in_c_enable_44), .CK(clk_in_c), 
            .Q(\state_back[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    FD1P3JX read_num_i0_i0 (.D(n6_adj_613), .SP(clk_in_c_enable_11), .PD(n9998), 
            .CK(clk_in_c), .Q(read_num[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam read_num_i0_i0.GSR = "ENABLED";
    FD1P3JX write_num_i0_i2 (.D(n16100), .SP(clk_in_c_enable_12), .PD(n9998), 
            .CK(clk_in_c), .Q(write_num[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam write_num_i0_i2.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(n6579), .SP(clk_in_c_enable_61), .CK(clk_in_c), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam state_i0_i1.GSR = "ENABLED";
    PFUMX i5166 (.BLUT(n10905), .ALUT(n14416), .C0(state[0]), .Z(n2_adj_614));
    FD1P3AX cnt_write_i0_i1 (.D(n14632), .SP(clk_in_c_enable_14), .CK(clk_in_c), 
            .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i1 (.D(n10[1]), .SP(clk_in_c_enable_15), .CD(n9996), 
            .CK(clk_in_c), .Q(\cnt_main[1] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_work_i0_i4 (.D(n15174), .SP(clk_in_c_enable_60), .CK(clk_in_c), 
            .Q(cnt_work[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_work_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_work_i0_i3 (.D(n3), .SP(clk_in_c_enable_60), .CK(clk_in_c), 
            .Q(cnt_work[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_work_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_work_i0_i2 (.D(n3_adj_616), .SP(clk_in_c_enable_60), .CK(clk_in_c), 
            .Q(cnt_work[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_work_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_work_i0_i1 (.D(n15178), .SP(clk_in_c_enable_60), .CK(clk_in_c), 
            .Q(cnt_work[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_work_i0_i1.GSR = "ENABLED";
    FD1S3IX cnt_200khz_1365__i5 (.D(n29[5]), .CK(clk_in_c), .CD(cnt_200khz_5__N_145), 
            .Q(cnt_200khz[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(75[18:35])
    defparam cnt_200khz_1365__i5.GSR = "ENABLED";
    FD1S3IX cnt_200khz_1365__i4 (.D(n29[4]), .CK(clk_in_c), .CD(cnt_200khz_5__N_145), 
            .Q(cnt_200khz[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(75[18:35])
    defparam cnt_200khz_1365__i4.GSR = "ENABLED";
    FD1S3IX cnt_200khz_1365__i3 (.D(n29[3]), .CK(clk_in_c), .CD(cnt_200khz_5__N_145), 
            .Q(cnt_200khz[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(75[18:35])
    defparam cnt_200khz_1365__i3.GSR = "ENABLED";
    FD1S3IX cnt_200khz_1365__i2 (.D(n29[2]), .CK(clk_in_c), .CD(cnt_200khz_5__N_145), 
            .Q(cnt_200khz[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(75[18:35])
    defparam cnt_200khz_1365__i2.GSR = "ENABLED";
    FD1S3IX cnt_200khz_1365__i1 (.D(n29[1]), .CK(clk_in_c), .CD(cnt_200khz_5__N_145), 
            .Q(cnt_200khz[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(75[18:35])
    defparam cnt_200khz_1365__i1.GSR = "ENABLED";
    FD1P3IX init_num_i0_i1 (.D(init_num_2__N_214[1]), .SP(clk_in_c_enable_59), 
            .CD(n9994), .CK(clk_in_c), .Q(init_num[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam init_num_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_ack_r_i0_i0 (.D(n14425), .SP(clk_in_c_enable_21), .CK(clk_in_c), 
            .Q(cnt_ack_r[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_ack_r_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_read_i0_i1 (.D(n15976), .SP(clk_in_c_enable_74), .CK(clk_in_c), 
            .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    CCU2D cnt_200khz_1365_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200khz[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n14292), .S1(n29[0]));   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(75[18:35])
    defparam cnt_200khz_1365_add_4_1.INIT0 = 16'hF000;
    defparam cnt_200khz_1365_add_4_1.INIT1 = 16'h0555;
    defparam cnt_200khz_1365_add_4_1.INJECT1_0 = "NO";
    defparam cnt_200khz_1365_add_4_1.INJECT1_1 = "NO";
    FD1P3IX init_num_i0_i2 (.D(init_num_2__N_214[2]), .SP(clk_in_c_enable_59), 
            .CD(n9994), .CK(clk_in_c), .Q(init_num[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam init_num_i0_i2.GSR = "ENABLED";
    FD1P3AX cap_dat1_0___i8 (.D(work_dat[7]), .SP(clk_in_c_enable_30), .CK(clk_in_c), 
            .Q(sensor_data1[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat1_0___i8.GSR = "DISABLED";
    FD1P3AX cap_dat1_0___i7 (.D(work_dat[6]), .SP(clk_in_c_enable_30), .CK(clk_in_c), 
            .Q(sensor_data1[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat1_0___i7.GSR = "DISABLED";
    FD1P3AX cap_dat1_0___i6 (.D(work_dat[5]), .SP(clk_in_c_enable_30), .CK(clk_in_c), 
            .Q(sensor_data1[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat1_0___i6.GSR = "DISABLED";
    FD1P3AX cap_dat1_0___i5 (.D(work_dat[4]), .SP(clk_in_c_enable_30), .CK(clk_in_c), 
            .Q(sensor_data1[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat1_0___i5.GSR = "DISABLED";
    FD1P3AX cap_dat1_0___i4 (.D(work_dat[3]), .SP(clk_in_c_enable_30), .CK(clk_in_c), 
            .Q(sensor_data1[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat1_0___i4.GSR = "DISABLED";
    FD1P3AX cap_dat1_0___i3 (.D(work_dat[2]), .SP(clk_in_c_enable_30), .CK(clk_in_c), 
            .Q(sensor_data1[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat1_0___i3.GSR = "DISABLED";
    FD1P3AX cap_dat1_0___i2 (.D(work_dat[1]), .SP(clk_in_c_enable_30), .CK(clk_in_c), 
            .Q(sensor_data1[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat1_0___i2.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i7 (.D(n15283), .SP(clk_in_c_enable_73), .CK(clk_in_c), 
            .Q(data_wr[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam data_wr_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n16660), .SP(clk_in_c_enable_32), .CK(clk_in_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i1 (.D(n15032), .SP(clk_in_c_enable_33), .CK(clk_in_c), 
            .Q(data_wr[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam data_wr_i0_i1.GSR = "DISABLED";
    FD1P3AX cap_dat2_0___i8 (.D(work_dat[7]), .SP(clk_in_c_enable_41), .CK(clk_in_c), 
            .Q(sensor_data2[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat2_0___i8.GSR = "DISABLED";
    FD1P3IX cnt_init_i0_i1 (.D(n71[1]), .SP(clk_in_c_enable_59), .CD(n11597), 
            .CK(clk_in_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    FD1P3AX cap_dat2_0___i7 (.D(work_dat[6]), .SP(clk_in_c_enable_41), .CK(clk_in_c), 
            .Q(sensor_data2[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat2_0___i7.GSR = "DISABLED";
    FD1P3AX cap_dat2_0___i6 (.D(work_dat[5]), .SP(clk_in_c_enable_41), .CK(clk_in_c), 
            .Q(sensor_data2[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat2_0___i6.GSR = "DISABLED";
    FD1P3AX cap_dat2_0___i5 (.D(work_dat[4]), .SP(clk_in_c_enable_41), .CK(clk_in_c), 
            .Q(sensor_data2[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat2_0___i5.GSR = "DISABLED";
    FD1P3AX cap_dat2_0___i4 (.D(work_dat[3]), .SP(clk_in_c_enable_41), .CK(clk_in_c), 
            .Q(sensor_data2[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat2_0___i4.GSR = "DISABLED";
    FD1P3AX cap_dat2_0___i3 (.D(work_dat[2]), .SP(clk_in_c_enable_41), .CK(clk_in_c), 
            .Q(sensor_data2[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat2_0___i3.GSR = "DISABLED";
    FD1P3AX cap_dat2_0___i2 (.D(work_dat[1]), .SP(clk_in_c_enable_41), .CK(clk_in_c), 
            .Q(sensor_data2[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cap_dat2_0___i2.GSR = "DISABLED";
    PFUMX i10020 (.BLUT(n16029), .ALUT(n16028), .C0(init_num[2]), .Z(init_num_2__N_214[0]));
    FD1P3IX cnt_init_i0_i2 (.D(n71[2]), .SP(clk_in_c_enable_59), .CD(n11597), 
            .CK(clk_in_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i3 (.D(n71[3]), .SP(clk_in_c_enable_59), .CD(n11597), 
            .CK(clk_in_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_init_i0_i3.GSR = "ENABLED";
    FD1P3AX state_back_i0_i1 (.D(state[1]), .SP(clk_in_c_enable_44), .CK(clk_in_c), 
            .Q(\state_back[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    FD1P3AX work_num_i0_i1 (.D(n16662), .SP(clk_in_c_enable_52), .CK(clk_in_c), 
            .Q(work_num[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam work_num_i0_i1.GSR = "ENABLED";
    PFUMX i10107 (.BLUT(n16340), .ALUT(n16337), .C0(state[1]), .Z(clk_200khz_enable_1));
    LUT4 i9899_3_lut (.A(state[3]), .B(state[2]), .C(state[1]), .Z(n15585)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i9899_3_lut.init = 16'hfbfb;
    FD1P3IX cnt_init_i0_i4 (.D(n71[4]), .SP(clk_in_c_enable_59), .CD(n11597), 
            .CK(clk_in_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_init_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_start_i0_i1 (.D(n9602), .SP(clk_in_c_enable_48), .CK(clk_in_c), 
            .Q(cnt_start[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_start_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_stop_i0_i1 (.D(cnt_stop_1__N_129[1]), .SP(clk_in_c_enable_49), 
            .CK(clk_in_c), .Q(cnt_stop[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_stop_i0_i1.GSR = "ENABLED";
    FD1P3IX state_i0_i2 (.D(n6545[2]), .SP(clk_in_c_enable_61), .CD(n12044), 
            .CK(clk_in_c), .Q(state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1P3IX state_i0_i3 (.D(n16134), .SP(clk_in_c_enable_61), .CD(n12044), 
            .CK(clk_in_c), .Q(state[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam state_i0_i3.GSR = "ENABLED";
    FD1P3AX work_num_i0_i0 (.D(n15266), .SP(clk_in_c_enable_52), .CK(clk_in_c), 
            .Q(work_num[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam work_num_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_stop_i0_i0 (.D(n14483), .SP(clk_in_c_enable_53), .CK(clk_in_c), 
            .Q(cnt_stop_c[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_stop_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(cnt_work[3]), .B(cnt_work[0]), .C(cnt_work[1]), 
         .D(cnt_work[2]), .Z(n136)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C+!(D))+!B !(C)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h4147;
    LUT4 i3_4_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(state[2]), 
         .D(n16308), .Z(n14632)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;
    defparam i3_4_lut_4_lut.init = 16'h6000;
    LUT4 i9827_3_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n16244), 
         .D(state[2]), .Z(clk_in_c_enable_21)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam i9827_3_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 i1_3_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n16244), 
         .D(state[2]), .Z(clk_in_c_enable_14)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0201;
    LUT4 i9823_3_lut_4_lut_4_lut (.A(state[0]), .B(state[1]), .C(n16244), 
         .D(state[2]), .Z(clk_in_c_enable_74)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i9823_3_lut_4_lut_4_lut.init = 16'h0401;
    LUT4 i1_4_lut_4_lut_adj_10 (.A(n16244), .B(state[0]), .C(state[1]), 
         .D(state[2]), .Z(clk_in_c_enable_1)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_10.init = 16'h4001;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_work[2]), .B(cnt_work[1]), .C(cnt_work[3]), 
         .D(cnt_work[0]), .Z(n15)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B !(C (D)+!C !(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hef96;
    LUT4 n15289_bdd_3_lut_10124 (.A(state[3]), .B(cnt_ack_t[0]), .C(cnt_ack_t[1]), 
         .Z(n16338)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;
    defparam n15289_bdd_3_lut_10124.init = 16'h7d7d;
    LUT4 state_2__bdd_4_lut_9988 (.A(state[3]), .B(cnt_start[0]), .C(state[0]), 
         .D(n16282), .Z(n15950)) /* synthesis lut_function=(!(A+!(B (C (D))+!B ((D)+!C)))) */ ;
    defparam state_2__bdd_4_lut_9988.init = 16'h5101;
    LUT4 cnt_work_3__bdd_4_lut_9996 (.A(cnt_work[3]), .B(cnt_work[4]), .C(cnt_work[1]), 
         .D(cnt_work[2]), .Z(n15968)) /* synthesis lut_function=(!(A (B+!(D))+!A (B ((D)+!C)+!B !(C+!(D))))) */ ;
    defparam cnt_work_3__bdd_4_lut_9996.init = 16'h3251;
    LUT4 i1114_2_lut_rep_184 (.A(clk_200khz), .B(cnt_200khz_5__N_145), .Z(n16258)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(71[12] 76[6])
    defparam i1114_2_lut_rep_184.init = 16'h4444;
    LUT4 segment_led_2_c_bdd_2_lut_10023_3_lut (.A(clk_200khz), .B(cnt_200khz_5__N_145), 
         .C(n16021), .Z(n6575)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(71[12] 76[6])
    defparam segment_led_2_c_bdd_2_lut_10023_3_lut.init = 16'h4040;
    PFUMX state_3__I_0_233_i15 (.BLUT(n7731), .ALUT(n14), .C0(state[3]), 
          .Z(sda_out_N_278)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;
    LUT4 cnt_work_0__bdd_4_lut_10055 (.A(cnt_work[0]), .B(cnt_work[1]), 
         .C(cnt_work[4]), .D(cnt_work[3]), .Z(n16082)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam cnt_work_0__bdd_4_lut_10055.init = 16'hfce0;
    LUT4 write_num_1__bdd_4_lut (.A(write_num[1]), .B(n16274), .C(write_num[0]), 
         .D(write_num[2]), .Z(n16100)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)+!C !(D)))) */ ;
    defparam write_num_1__bdd_4_lut.init = 16'hc804;
    PFUMX i5877 (.BLUT(n12266), .ALUT(state_3__N_172[2]), .C0(state[0]), 
          .Z(n6545[2]));
    LUT4 i1_2_lut_4_lut (.A(n7), .B(read_num[2]), .C(n16294), .D(n15366), 
         .Z(clk_in_c_enable_65)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    LUT4 cnt_read_1__bdd_4_lut (.A(cnt_read[1]), .B(state[2]), .C(n16294), 
         .D(cnt_read[0]), .Z(n15976)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam cnt_read_1__bdd_4_lut.init = 16'h0408;
    LUT4 i1_2_lut_4_lut_adj_11 (.A(n7), .B(read_num[2]), .C(n16294), .D(n15400), 
         .Z(clk_in_c_enable_66)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut_adj_11.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n16294), .B(n7), .C(n15363), .D(read_num[2]), 
         .Z(clk_in_c_enable_68)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i2_3_lut_4_lut (.A(n16294), .B(n7), .C(read_num[2]), .D(n15363), 
         .Z(clk_in_c_enable_64)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.A(n16294), .B(n7), .C(n15366), 
         .D(read_num[2]), .Z(clk_in_c_enable_69)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_12.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_13 (.A(n16294), .B(n7), .C(n15400), 
         .D(read_num[2]), .Z(clk_in_c_enable_70)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_13.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_14 (.A(cnt_init[2]), .B(n16288), .C(init_num[2]), 
         .D(cnt_init[3]), .Z(n11593)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(156[25:40])
    defparam i1_2_lut_3_lut_4_lut_adj_14.init = 16'h0800;
    LUT4 cnt_work_0__bdd_4_lut_10061 (.A(cnt_work[0]), .B(cnt_work[3]), 
         .C(cnt_work[1]), .D(cnt_work[2]), .Z(n16116)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)+!C !(D)))+!A ((C)+!B))) */ ;
    defparam cnt_work_0__bdd_4_lut_10061.init = 16'h2c0e;
    LUT4 i18_2_lut_3_lut_4_lut (.A(cnt_init[2]), .B(n16288), .C(cnt_init[4]), 
         .D(cnt_init[3]), .Z(n71[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(156[25:40])
    defparam i18_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_4_lut_4_lut_adj_15 (.A(cnt_work[2]), .B(n16285), .C(n45), 
         .D(n16082), .Z(state_3__N_172[2])) /* synthesis lut_function=(!(A (C)+!A !(B+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_4_lut_4_lut_adj_15.init = 16'h4e5f;
    LUT4 i9843_3_lut_4_lut_4_lut (.A(n16294), .B(n7), .C(n16293), .D(read_num[0]), 
         .Z(clk_in_c_enable_6)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9843_3_lut_4_lut_4_lut.init = 16'h0001;
    LUT4 i1_4_lut (.A(state[1]), .B(n16227), .C(n16295), .D(state[0]), 
         .Z(clk_in_c_enable_52)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i1_4_lut.init = 16'h2011;
    LUT4 cnt_init_3__bdd_1_lut (.A(cnt_init[4]), .Z(n16157)) /* synthesis lut_function=(!(A)) */ ;
    defparam cnt_init_3__bdd_1_lut.init = 16'h5555;
    LUT4 i9699_2_lut (.A(cnt_work[4]), .B(cnt_work[2]), .Z(n15571)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(189[7] 217[14])
    defparam i9699_2_lut.init = 16'h1111;
    FD1P3AX cnt_ack_t_i0_i0 (.D(n12394), .SP(clk_in_c_enable_56), .CK(clk_in_c), 
            .Q(cnt_ack_t[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_ack_t_i0_i0.GSR = "ENABLED";
    LUT4 clk_200khz_I_0_2_lut (.A(clk_200khz), .B(cnt_200khz_5__N_145), 
         .Z(clk_200khz_N_276)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(74[12] 76[6])
    defparam clk_200khz_I_0_2_lut.init = 16'h6666;
    LUT4 i1_3_lut (.A(state[0]), .B(cnt_ack_r[1]), .C(cnt_ack_r[0]), .Z(n6_adj_617)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i1_3_lut.init = 16'ha8a8;
    PFUMX i10101 (.BLUT(n16329), .ALUT(n16330), .C0(state[3]), .Z(clk_in_c_enable_49));
    LUT4 i1_3_lut_4_lut (.A(n16304), .B(write_num[0]), .C(state[2]), .D(state[0]), 
         .Z(n7675)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i1_3_lut_4_lut.init = 16'h2f0f;
    LUT4 i3_4_lut (.A(n6_adj_618), .B(cnt_200khz[5]), .C(cnt_200khz[4]), 
         .D(cnt_200khz[3]), .Z(cnt_200khz_5__N_145)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 cnt_init_3__bdd_4_lut (.A(cnt_init[3]), .B(cnt_init[4]), .C(cnt_init[2]), 
         .D(cnt_init[1]), .Z(n16158)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam cnt_init_3__bdd_4_lut.init = 16'h3334;
    LUT4 write_num_1__bdd_3_lut_4_lut (.A(n16308), .B(n16304), .C(write_num[0]), 
         .D(write_num[1]), .Z(n16129)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam write_num_1__bdd_3_lut_4_lut.init = 16'h8008;
    LUT4 i1470_3_lut (.A(cnt_200khz[0]), .B(cnt_200khz[2]), .C(cnt_200khz[1]), 
         .Z(n6_adj_618)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1470_3_lut.init = 16'hecec;
    LUT4 i9878_2_lut_2_lut_3_lut_4_lut (.A(state[0]), .B(n16300), .C(cnt_200khz_5__N_145), 
         .D(clk_200khz), .Z(clk_in_c_enable_63)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i9878_2_lut_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_4_lut_adj_16 (.A(state[1]), .B(state[0]), .C(n16311), 
         .D(read_num[0]), .Z(n6_adj_613)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1_2_lut_4_lut_adj_16.init = 16'h0020;
    LUT4 i1_4_lut_adj_17 (.A(state[2]), .B(n16314), .C(cnt_ack_r[0]), 
         .D(cnt_ack_r[1]), .Z(n15319)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(94[14:23])
    defparam i1_4_lut_adj_17.init = 16'h0880;
    LUT4 segment_led_2_c_bdd_2_lut_10077 (.A(n16155), .B(cnt_work[0]), .Z(n16156)) /* synthesis lut_function=(A (B)) */ ;
    defparam segment_led_2_c_bdd_2_lut_10077.init = 16'h8888;
    LUT4 cnt_work_4__bdd_4_lut_10081 (.A(cnt_work[4]), .B(cnt_work[2]), 
         .C(cnt_work[3]), .D(cnt_work[1]), .Z(n16155)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C+(D))+!B !(C)))) */ ;
    defparam cnt_work_4__bdd_4_lut_10081.init = 16'h4741;
    PFUMX i10105 (.BLUT(n16338), .ALUT(n15289), .C0(state[0]), .Z(n16339));
    LUT4 n15950_bdd_3_lut (.A(n33_adj_619), .B(state[3]), .C(state[2]), 
         .Z(n16337)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n15950_bdd_3_lut.init = 16'h2020;
    LUT4 i6288_2_lut (.A(cnt_main[0]), .B(\cnt_main[1] ), .Z(\state_3__N_180[0] )) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(143[7] 148[14])
    defparam i6288_2_lut.init = 16'h2222;
    LUT4 i9819_3_lut_4_lut (.A(state[2]), .B(state[3]), .C(state[1]), 
         .D(n6_adj_617), .Z(sda_out_N_292)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i9819_3_lut_4_lut.init = 16'hffdf;
    LUT4 i1503_1_lut (.A(cnt_main[0]), .Z(n10[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(142[24:39])
    defparam i1503_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_208 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n16282)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_208.init = 16'heeee;
    LUT4 i30_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(state[0]), 
         .D(cnt_start[1]), .Z(n11)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i30_3_lut_4_lut.init = 16'h101f;
    LUT4 i9650_2_lut_rep_209 (.A(state[2]), .B(state[3]), .Z(n16283)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9650_2_lut_rep_209.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_18 (.A(state[2]), .B(state[3]), .C(n49), .D(n16233), 
         .Z(clk_in_c_enable_33)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_18.init = 16'h1000;
    LUT4 i1_2_lut_rep_210 (.A(cnt_init[0]), .B(cnt_init[4]), .Z(n16284)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_210.init = 16'h2222;
    LUT4 i1_2_lut_rep_211 (.A(cnt_work[1]), .B(cnt_work[3]), .Z(n16285)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_rep_211.init = 16'h2222;
    LUT4 i6506_3_lut (.A(read_num[1]), .B(n16277), .C(read_num[0]), .Z(n6_c)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;
    defparam i6506_3_lut.init = 16'h8484;
    LUT4 i1_2_lut_rep_212 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n16286)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_212.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_19 (.A(cnt_init[1]), .B(cnt_init[2]), 
         .C(cnt_init[4]), .D(cnt_init[0]), .Z(n4)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_19.init = 16'h0700;
    LUT4 i1_2_lut_rep_214 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n16288)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_rep_214.init = 16'h8888;
    LUT4 i1529_2_lut_rep_189_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(n16263)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1529_2_lut_rep_189_3_lut.init = 16'h8080;
    LUT4 i1527_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(n71[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1527_2_lut_3_lut.init = 16'h7878;
    LUT4 i19_2_lut_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[3]), 
         .D(cnt_init[2]), .Z(n71[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i19_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_177_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[0]), 
         .C(cnt_init[3]), .D(cnt_init[2]), .Z(n16251)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_rep_177_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut (.A(cnt_work[2]), .B(cnt_work[1]), .C(cnt_work[0]), 
         .Z(n8)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i3_4_lut_adj_20 (.A(work_num[0]), .B(work_num[1]), .C(n16295), 
         .D(n16314), .Z(n15266)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_adj_20.init = 16'h1000;
    LUT4 i1_4_lut_adj_21 (.A(n16243), .B(n16313), .C(n16308), .D(state[3]), 
         .Z(clk_in_c_enable_53)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_21.init = 16'h5011;
    LUT4 i2_4_lut (.A(cnt_stop[1]), .B(n16308), .C(state[3]), .D(cnt_stop_c[0]), 
         .Z(n14483)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i2_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_22 (.A(cnt_init[1]), .B(cnt_init[2]), 
         .C(n16297), .D(state[0]), .Z(n15284)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_3_lut_4_lut_adj_22.init = 16'h00e0;
    LUT4 i2_3_lut_4_lut_adj_23 (.A(cnt_init[1]), .B(cnt_init[2]), .C(cnt_init[0]), 
         .D(cnt_init[4]), .Z(n14423)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i2_3_lut_4_lut_adj_23.init = 16'h000e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_24 (.A(cnt_work[3]), .B(cnt_work[0]), 
         .C(cnt_work[2]), .D(cnt_work[1]), .Z(n10890)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_3_lut_4_lut_adj_24.init = 16'h4000;
    LUT4 i9906_3_lut_4_lut (.A(n16313), .B(n16244), .C(state[2]), .D(n16274), 
         .Z(clk_in_c_enable_12)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!((D)+!C)))) */ ;
    defparam i9906_3_lut_4_lut.init = 16'h3101;
    PFUMX mux_51_Mux_1_i31 (.BLUT(n15_adj_620), .ALUT(n14423), .C0(n1), 
          .Z(\state_3__N_172[1] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;
    LUT4 i1_4_lut_then_4_lut (.A(n16259), .B(state[2]), .C(state[1]), 
         .D(state[0]), .Z(n16330)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0100;
    PFUMX i5281 (.BLUT(n133), .ALUT(n30_adj_621), .C0(cnt_work[4]), .Z(n15_adj_620));
    LUT4 i1_4_lut_adj_25 (.A(n16277), .B(read_num[1]), .C(read_num[2]), 
         .D(read_num[0]), .Z(n6_adj_611)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(92[14:22])
    defparam i1_4_lut_adj_25.init = 16'ha082;
    LUT4 i1_4_lut_else_4_lut (.A(n16259), .B(state[2]), .C(state[1]), 
         .D(state[0]), .Z(n16329)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0001;
    LUT4 i9825_3_lut_4_lut (.A(n16313), .B(n16244), .C(state[2]), .D(n16277), 
         .Z(clk_in_c_enable_11)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!((D)+!C)))) */ ;
    defparam i9825_3_lut_4_lut.init = 16'h3101;
    LUT4 i1_2_lut_rep_219 (.A(read_num[1]), .B(read_num[2]), .Z(n16293)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_219.init = 16'heeee;
    PFUMX state_3__I_0_239_i15 (.BLUT(n11), .ALUT(n9), .C0(n15585), .Z(sda_out_N_285)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;
    LUT4 i1_2_lut_rep_194_3_lut (.A(read_num[1]), .B(read_num[2]), .C(read_num[0]), 
         .Z(n16268)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_194_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_3_lut_4_lut (.A(state[2]), .B(n16244), .C(state[1]), 
         .D(state[0]), .Z(clk_in_c_enable_44)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'h1011;
    LUT4 i6267_2_lut_rep_220 (.A(state[0]), .B(state[1]), .Z(n16294)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i6267_2_lut_rep_220.init = 16'hbbbb;
    LUT4 i9628_2_lut_rep_143_3_lut (.A(state[0]), .B(state[1]), .C(n7), 
         .Z(n16217)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i9628_2_lut_rep_143_3_lut.init = 16'hfbfb;
    LUT4 i9863_2_lut_3_lut_4_lut (.A(state[2]), .B(n16244), .C(state[1]), 
         .D(state[0]), .Z(n9994)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9863_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i17_4_lut (.A(cnt_start[1]), .B(read_num[0]), .C(state[1]), .D(n4_adj_622), 
         .Z(n6)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i17_4_lut.init = 16'h3a0a;
    LUT4 i9872_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(cnt_read[0]), .Z(n14452)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i9872_3_lut_4_lut.init = 16'h0040;
    LUT4 i9970_2_lut_3_lut (.A(cnt_ack_t[1]), .B(state[3]), .C(cnt_ack_t[0]), 
         .Z(n12394)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i9970_2_lut_3_lut.init = 16'h0404;
    LUT4 i6265_2_lut_3_lut (.A(cnt_ack_t[1]), .B(state[3]), .C(cnt_ack_t[0]), 
         .Z(n9604)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i6265_2_lut_3_lut.init = 16'h4040;
    LUT4 i9840_2_lut (.A(cnt_start[0]), .B(cnt_start[1]), .Z(n5724[1])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i9840_2_lut.init = 16'h1111;
    LUT4 sda_out_N_283_bdd_4_lut (.A(sda_out_N_283), .B(n16282), .C(n5724[1]), 
         .D(state[0]), .Z(n16201)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam sda_out_N_283_bdd_4_lut.init = 16'h22f0;
    LUT4 i1_2_lut_rep_221 (.A(cnt_work[3]), .B(cnt_work[4]), .Z(n16295)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_rep_221.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_26 (.A(cnt_work[3]), .B(cnt_work[4]), .C(cnt_work[0]), 
         .D(state[1]), .Z(n9853)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_3_lut_4_lut_adj_26.init = 16'h0700;
    LUT4 i1_2_lut_rep_223 (.A(init_num[0]), .B(init_num[1]), .Z(n16297)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1_2_lut_rep_223.init = 16'h2222;
    LUT4 n47_bdd_2_lut_3_lut_4_lut (.A(init_num[0]), .B(init_num[1]), .C(cnt_init[2]), 
         .D(cnt_init[1]), .Z(n16118)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam n47_bdd_2_lut_3_lut_4_lut.init = 16'h222f;
    LUT4 i5157_3_lut_4_lut (.A(init_num[0]), .B(init_num[1]), .C(cnt_init[2]), 
         .D(n16298), .Z(n10905)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i5157_3_lut_4_lut.init = 16'h202f;
    LUT4 i1_3_lut_adj_27 (.A(sda_out_out), .B(cnt_ack_r[1]), .C(cnt_ack_r[0]), 
         .Z(n42)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut_adj_27.init = 16'hc8c8;
    LUT4 i1_3_lut_4_lut_adj_28 (.A(state[1]), .B(n16244), .C(state[0]), 
         .D(state[2]), .Z(clk_in_c_enable_62)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_28.init = 16'h1001;
    LUT4 i1_2_lut_3_lut_4_lut_adj_29 (.A(init_num[0]), .B(init_num[1]), 
         .C(cnt_init[2]), .D(state[0]), .Z(n15283)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1_2_lut_3_lut_4_lut_adj_29.init = 16'h0020;
    LUT4 i6439_4_lut (.A(state[0]), .B(state[1]), .C(n16201), .D(state[2]), 
         .Z(n7731)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i6439_4_lut.init = 16'h3011;
    PFUMX i11 (.BLUT(n2_adj_624), .ALUT(n3_adj_625), .C0(state[3]), .Z(scl_out_N_267));
    LUT4 i1_2_lut_3_lut_adj_30 (.A(init_num[0]), .B(init_num[1]), .C(cnt_init[2]), 
         .Z(n15384)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1_2_lut_3_lut_adj_30.init = 16'h2020;
    LUT4 sda_out_I_0_3_lut (.A(sda_out_out), .B(sda_out_N_278), .C(sda_out_N_285), 
         .Z(sda_out_N_277)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam sda_out_I_0_3_lut.init = 16'hcaca;
    LUT4 i6440_4_lut (.A(n16302), .B(n16300), .C(n5727[2]), .D(state[0]), 
         .Z(n14)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i6440_4_lut.init = 16'h3011;
    LUT4 i1_2_lut (.A(cnt_stop[1]), .B(cnt_stop_c[0]), .Z(n5727[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut.init = 16'h2222;
    FD1P3AX cnt_start_i0_i0 (.D(n12354), .SP(clk_in_c_enable_57), .CK(clk_in_c), 
            .Q(cnt_start[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_start_i0_i0.GSR = "ENABLED";
    LUT4 i9648_2_lut_rep_224 (.A(cnt_init[1]), .B(cnt_init[3]), .Z(n16298)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9648_2_lut_rep_224.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_4_lut_adj_31 (.A(cnt_init[1]), .B(cnt_init[3]), 
         .C(n16297), .D(cnt_init[2]), .Z(n16)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_4_lut_4_lut_adj_31.init = 16'hf0b1;
    LUT4 i2_4_lut_adj_32 (.A(cnt_work[1]), .B(n16299), .C(cnt_work[2]), 
         .D(cnt_work[3]), .Z(n14416)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C+(D))+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(86[14:22])
    defparam i2_4_lut_adj_32.init = 16'h0084;
    LUT4 i1_2_lut_rep_225 (.A(cnt_work[0]), .B(cnt_work[4]), .Z(n16299)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_rep_225.init = 16'h2222;
    LUT4 i9980_4_lut (.A(cnt_init[1]), .B(cnt_init[4]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n12266)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B))) */ ;
    defparam i9980_4_lut.init = 16'h1333;
    LUT4 i6517_3_lut_4_lut_4_lut (.A(cnt_work[0]), .B(cnt_work[4]), .C(cnt_work[1]), 
         .D(cnt_work[3]), .Z(n45)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i6517_3_lut_4_lut_4_lut.init = 16'hccc2;
    LUT4 i6502_2_lut_rep_226 (.A(state[1]), .B(state[2]), .Z(n16300)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6502_2_lut_rep_226.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_33 (.A(state[1]), .B(state[2]), .C(state[0]), 
         .D(cnt_stop[1]), .Z(n9481)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_33.init = 16'heefe;
    LUT4 i2_3_lut_4_lut_adj_34 (.A(state[1]), .B(state[2]), .C(cnt_stop[1]), 
         .D(cnt_stop_c[0]), .Z(n14379)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_34.init = 16'h1000;
    LUT4 i6536_2_lut_rep_228 (.A(cnt_ack_t[0]), .B(cnt_ack_t[1]), .Z(n16302)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6536_2_lut_rep_228.init = 16'heeee;
    LUT4 i5059_3_lut_4_lut (.A(cnt_ack_t[0]), .B(cnt_ack_t[1]), .C(state[0]), 
         .D(cnt_stop_c[0]), .Z(n12361)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i5059_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i1_2_lut_rep_230 (.A(cnt_write[0]), .B(cnt_write[1]), .Z(n16304)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_rep_230.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_35 (.A(cnt_write[0]), .B(cnt_write[1]), 
         .C(n16310), .D(write_num[0]), .Z(n30)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_3_lut_4_lut_adj_35.init = 16'hfff7;
    LUT4 i1505_2_lut (.A(\cnt_main[1] ), .B(cnt_main[0]), .Z(n10[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(142[24:39])
    defparam i1505_2_lut.init = 16'h6666;
    PFUMX i10075 (.BLUT(n16158), .ALUT(n16157), .C0(cnt_init[0]), .Z(\state_3__N_176[0] ));
    LUT4 i1_2_lut_rep_198_3_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(write_num[0]), 
         .Z(n16272)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_rep_198_3_lut.init = 16'h0808;
    FD1P3IX cnt_init_i0_i0 (.D(n5), .SP(clk_in_c_enable_59), .CD(n11597), 
            .CK(clk_in_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    FD1P3IX init_num_i0_i0 (.D(init_num_2__N_214[0]), .SP(clk_in_c_enable_59), 
            .CD(n9994), .CK(clk_in_c), .Q(init_num[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam init_num_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_work_i0_i0 (.D(n9853), .SP(clk_in_c_enable_60), .CK(clk_in_c), 
            .Q(cnt_work[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_work_i0_i0.GSR = "ENABLED";
    FD1P3AX state_i0_i0 (.D(n6580), .SP(clk_in_c_enable_61), .CK(clk_in_c), 
            .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam state_i0_i0.GSR = "ENABLED";
    LUT4 i4241_3_lut_4_lut (.A(state[2]), .B(n16228), .C(state[0]), .D(\cnt_main[1] ), 
         .Z(n9996)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i4241_3_lut_4_lut.init = 16'h1101;
    LUT4 i2_4_lut_adj_36 (.A(n16283), .B(n16259), .C(state[1]), .D(state[0]), 
         .Z(clk_in_c_enable_60)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i2_4_lut_adj_36.init = 16'h1001;
    LUT4 i9716_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write[1]), .C(state[1]), 
         .D(cnt_ack_r[1]), .Z(n15588)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9716_3_lut_4_lut.init = 16'hf808;
    FD1P3AX cnt_write_i0_i0 (.D(n14551), .SP(clk_in_c_enable_62), .CK(clk_in_c), 
            .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    PFUMX mux_128_Mux_0_i2 (.BLUT(n15384), .ALUT(n14434), .C0(state[0]), 
          .Z(n2)) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;
    LUT4 i1_4_lut_adj_37 (.A(state[1]), .B(cnt_work[4]), .C(cnt_work[3]), 
         .D(n15535), .Z(n15174)) /* synthesis lut_function=(!((B (C)+!B !(C (D)))+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_4_lut_adj_37.init = 16'h2808;
    PFUMX mux_51_Mux_0_i31 (.BLUT(n15), .ALUT(n136), .C0(cnt_work[4]), 
          .Z(\state_3__N_172[0] )) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;
    LUT4 i9664_3_lut (.A(cnt_work[0]), .B(cnt_work[1]), .C(cnt_work[2]), 
         .Z(n15535)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9664_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_38 (.A(state[1]), .B(n15535), .C(cnt_work[4]), .D(cnt_work[3]), 
         .Z(n3)) /* synthesis lut_function=(!((B (D)+!B (C+!(D)))+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_4_lut_adj_38.init = 16'h0288;
    LUT4 i3_4_lut_adj_39 (.A(cnt_read[0]), .B(cnt_read[1]), .C(n7685), 
         .D(state[2]), .Z(n7)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_39.init = 16'hfdff;
    PFUMX i32 (.BLUT(n16), .ALUT(n20), .C0(state[0]), .Z(n15032));
    LUT4 i1_2_lut_4_lut_adj_40 (.A(rst_n_in_c), .B(state[1]), .C(n16259), 
         .D(n16283), .Z(n15340)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_40.init = 16'h0008;
    LUT4 i1850_1_lut (.A(sda_out_N_275), .Z(n7580)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(100[2] 303[5])
    defparam i1850_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_41 (.A(state[1]), .B(n10949), .Z(n3_adj_616)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_adj_41.init = 16'h8888;
    LUT4 i2165_2_lut_rep_234 (.A(state[0]), .B(state[1]), .Z(n16308)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i2165_2_lut_rep_234.init = 16'h2222;
    LUT4 i5201_4_lut (.A(cnt_work[1]), .B(cnt_work[0]), .C(cnt_work[2]), 
         .D(n16295), .Z(n10949)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(86[14:22])
    defparam i5201_4_lut.init = 16'h0078;
    LUT4 i2_4_lut_adj_42 (.A(cnt_work[0]), .B(state[1]), .C(cnt_work[1]), 
         .D(n16295), .Z(n15178)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (((D)+!C)+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i2_4_lut_adj_42.init = 16'h0048;
    LUT4 i1_2_lut_3_lut_4_lut_adj_43 (.A(state[0]), .B(state[1]), .C(n15289), 
         .D(state[2]), .Z(cnt_stop_1__N_129[1])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1_2_lut_3_lut_4_lut_adj_43.init = 16'h0020;
    LUT4 i1_2_lut_rep_200_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(cnt_write[1]), 
         .D(cnt_write[0]), .Z(n16274)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1_2_lut_rep_200_3_lut_4_lut.init = 16'h2000;
    LUT4 n16339_bdd_3_lut (.A(n16339), .B(n15950), .C(state[2]), .Z(n16340)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16339_bdd_3_lut.init = 16'hcaca;
    FD1P3AY i180_208 (.D(sda_out_N_292), .SP(sda_out_N_285), .CK(clk_200khz), 
            .Q(sda_out_N_275));   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i180_208.GSR = "ENABLED";
    L6MUX21 i9724 (.D0(n15594), .D1(n15595), .SD(write_num[2]), .Z(sda_out_N_283));
    LUT4 i1_2_lut_rep_236 (.A(write_num[1]), .B(write_num[2]), .Z(n16310)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_rep_236.init = 16'heeee;
    LUT4 i1475_2_lut_rep_237 (.A(cnt_read[0]), .B(cnt_read[1]), .Z(n16311)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1475_2_lut_rep_237.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_44 (.A(cnt_read[0]), .B(cnt_read[1]), 
         .C(read_num[2]), .D(read_num[1]), .Z(n4_adj_622)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_44.init = 16'h0008;
    LUT4 i2_3_lut_rep_203_4_lut (.A(cnt_read[0]), .B(cnt_read[1]), .C(state[0]), 
         .D(state[1]), .Z(n16277)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_rep_203_4_lut.init = 16'h0800;
    FD1P3AX cnt_ack_t_i0_i1 (.D(n9604), .SP(clk_in_c_enable_63), .CK(clk_in_c), 
            .Q(cnt_ack_t[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_ack_t_i0_i1.GSR = "ENABLED";
    LUT4 i6269_2_lut_3_lut (.A(cnt_start[1]), .B(state[2]), .C(cnt_start[0]), 
         .Z(n9602)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i6269_2_lut_3_lut.init = 16'h4040;
    LUT4 i3_4_lut_adj_45 (.A(n15533), .B(cnt_work[3]), .C(n9477), .D(n7685), 
         .Z(clk_in_c_enable_41)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_45.init = 16'h0002;
    LUT4 i9902_2_lut_3_lut (.A(cnt_start[1]), .B(state[2]), .C(cnt_start[0]), 
         .Z(n12354)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i9902_2_lut_3_lut.init = 16'h0404;
    FD1P3AX work_dat_i0_i1 (.D(sda_out_out), .SP(clk_in_c_enable_64), .CK(clk_in_c), 
            .Q(work_dat[1])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam work_dat_i0_i1.GSR = "DISABLED";
    PFUMX i9722 (.BLUT(n15590), .ALUT(n15591), .C0(write_num[1]), .Z(n15594));
    LUT4 i9662_2_lut (.A(cnt_work[4]), .B(cnt_work[2]), .Z(n15533)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9662_2_lut.init = 16'h8888;
    FD1P3AX work_dat_i0_i2 (.D(sda_out_out), .SP(clk_in_c_enable_65), .CK(clk_in_c), 
            .Q(work_dat[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam work_dat_i0_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_238 (.A(cnt_work[3]), .B(cnt_work[0]), .Z(n16312)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(86[14:22])
    defparam i1_2_lut_rep_238.init = 16'heeee;
    LUT4 i5278_3_lut_3_lut (.A(cnt_work[3]), .B(cnt_work[0]), .C(cnt_work[1]), 
         .Z(n11026)) /* synthesis lut_function=(!(A (C)+!A (B+!(C)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(86[14:22])
    defparam i5278_3_lut_3_lut.init = 16'h1a1a;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(cnt_work[3]), .B(cnt_work[0]), .C(cnt_work[2]), 
         .D(cnt_work[1]), .Z(n30_adj_621)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(86[14:22])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h0051;
    LUT4 i1956_2_lut_rep_239 (.A(state[0]), .B(state[1]), .Z(n16313)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1956_2_lut_rep_239.init = 16'heeee;
    FD1P3AX work_dat_i0_i3 (.D(sda_out_out), .SP(clk_in_c_enable_66), .CK(clk_in_c), 
            .Q(work_dat[3])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam work_dat_i0_i3.GSR = "DISABLED";
    LUT4 i31_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), .D(n6_adj_617), 
         .Z(n14_adj_627)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i31_3_lut_4_lut.init = 16'hfe0e;
    FD1P3AX work_dat_i0_i4 (.D(sda_out_out), .SP(clk_in_c_enable_67), .CK(clk_in_c), 
            .Q(work_dat[4])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam work_dat_i0_i4.GSR = "DISABLED";
    FD1P3AX work_dat_i0_i5 (.D(sda_out_out), .SP(clk_in_c_enable_68), .CK(clk_in_c), 
            .Q(work_dat[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam work_dat_i0_i5.GSR = "DISABLED";
    LUT4 i1876_1_lut (.A(state[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1876_1_lut.init = 16'h5555;
    LUT4 i9752_4_lut (.A(n14_adj_627), .B(n12361), .C(state[3]), .D(n16300), 
         .Z(n9)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C)+!B (C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i9752_4_lut.init = 16'h0535;
    FD1P3AX work_dat_i0_i6 (.D(sda_out_out), .SP(clk_in_c_enable_69), .CK(clk_in_c), 
            .Q(work_dat[6])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam work_dat_i0_i6.GSR = "DISABLED";
    FD1P3AX work_dat_i0_i7 (.D(sda_out_out), .SP(clk_in_c_enable_70), .CK(clk_in_c), 
            .Q(work_dat[7])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam work_dat_i0_i7.GSR = "DISABLED";
    FD1P3AY write_num_i0_i0 (.D(n7675), .SP(clk_in_c_enable_71), .CK(clk_in_c), 
            .Q(write_num[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam write_num_i0_i0.GSR = "ENABLED";
    LUT4 i9821_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(cnt_ack_r[0]), .Z(n14425)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i9821_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_adj_46 (.A(state[0]), .B(state[1]), .C(state[2]), 
         .Z(n6_adj_612)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1_2_lut_3_lut_adj_46.init = 16'hf7f7;
    LUT4 i1970_2_lut_rep_240 (.A(state[0]), .B(state[1]), .Z(n16314)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1970_2_lut_rep_240.init = 16'h8888;
    LUT4 i9924_4_lut (.A(state[2]), .B(n15587), .C(n15588), .D(state[0]), 
         .Z(n2_adj_624)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i9924_4_lut.init = 16'h5f77;
    LUT4 i9715_3_lut (.A(cnt_start[1]), .B(cnt_read[1]), .C(state[1]), 
         .Z(n15587)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9715_3_lut.init = 16'hcaca;
    LUT4 i9921_2_lut (.A(state[0]), .B(cnt_ack_t[1]), .Z(n3_adj_625)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i9921_2_lut.init = 16'hbbbb;
    FD1P3AX data_wr_i0_i2 (.D(n2_adj_614), .SP(clk_in_c_enable_72), .CK(clk_in_c), 
            .Q(data_wr[2])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam data_wr_i0_i2.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i5 (.D(n15284), .SP(clk_in_c_enable_73), .CK(clk_in_c), 
            .Q(data_wr[5])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam data_wr_i0_i5.GSR = "DISABLED";
    PFUMX i9723 (.BLUT(n15592), .ALUT(n15593), .C0(write_num[1]), .Z(n15595));
    LUT4 i9956_3_lut (.A(cnt_work[0]), .B(cnt_work[3]), .C(cnt_work[1]), 
         .Z(n133)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i9956_3_lut.init = 16'h4141;
    LUT4 i2_3_lut_4_lut_adj_47 (.A(read_num[2]), .B(n16217), .C(read_num[0]), 
         .D(read_num[1]), .Z(clk_in_c_enable_67)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i2_3_lut_4_lut_adj_47.init = 16'h0002;
    LUT4 i1208_1_lut (.A(cnt_init[0]), .Z(n5)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(159[7] 178[14])
    defparam i1208_1_lut.init = 16'h5555;
    LUT4 i9961_2_lut (.A(cnt_write[0]), .B(state[2]), .Z(n14551)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i9961_2_lut.init = 16'h4444;
    LUT4 i2_3_lut (.A(cnt_stop[1]), .B(cnt_stop_c[0]), .C(state[3]), .Z(n15289)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i2_4_lut_adj_48 (.A(n10890), .B(n16312), .C(cnt_work[4]), .D(n4_adj_628), 
         .Z(n14434)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(189[7] 217[14])
    defparam i2_4_lut_adj_48.init = 16'hfefa;
    LUT4 i1_2_lut_adj_49 (.A(work_num[0]), .B(cnt_work[1]), .Z(n4_adj_628)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_adj_49.init = 16'h4444;
    CCU2D cnt_200khz_1365_add_4_7 (.A0(cnt_200khz[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n14294), .S0(n29[5]));   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(75[18:35])
    defparam cnt_200khz_1365_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_200khz_1365_add_4_7.INIT1 = 16'h0000;
    defparam cnt_200khz_1365_add_4_7.INJECT1_0 = "NO";
    defparam cnt_200khz_1365_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_50 (.A(cnt_work[4]), .B(cnt_work[1]), .C(cnt_work[3]), 
         .Z(n20)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(120[4] 301[11])
    defparam i1_3_lut_adj_50.init = 16'h4545;
    LUT4 i4_4_lut_adj_51 (.A(n7_adj_629), .B(state[1]), .C(sda_out_out), 
         .D(cnt_ack_r[0]), .Z(n14532)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i4_4_lut_adj_51.init = 16'h0080;
    LUT4 i2_2_lut (.A(cnt_ack_r[1]), .B(state[2]), .Z(n7_adj_629)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i2_2_lut.init = 16'h8888;
    CCU2D cnt_200khz_1365_add_4_5 (.A0(cnt_200khz[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200khz[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n14293), .COUT(n14294), .S0(n29[3]), .S1(n29[4]));   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(75[18:35])
    defparam cnt_200khz_1365_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_200khz_1365_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_200khz_1365_add_4_5.INJECT1_0 = "NO";
    defparam cnt_200khz_1365_add_4_5.INJECT1_1 = "NO";
    FD1P3AX cnt_read_i0_i0 (.D(n14452), .SP(clk_in_c_enable_74), .CK(clk_in_c), 
            .Q(cnt_read[0])) /* synthesis LSE_LINE_FILE_ID=9, LSE_LCOL=14, LSE_RCOL=2, LSE_LLINE=34, LSE_RLINE=42 */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_52 (.A(read_num[0]), .B(read_num[1]), .Z(n15363)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_adj_52.init = 16'h2222;
    LUT4 i9718_3_lut (.A(data_wr[0]), .B(data_wr[1]), .C(write_num[0]), 
         .Z(n15590)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9718_3_lut.init = 16'hcaca;
    LUT4 i9719_3_lut (.A(data_wr[2]), .B(data_wr[7]), .C(write_num[0]), 
         .Z(n15591)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9719_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_53 (.A(read_num[1]), .B(read_num[0]), .Z(n15366)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_adj_53.init = 16'h2222;
    LUT4 i1_2_lut_adj_54 (.A(read_num[0]), .B(read_num[1]), .Z(n15400)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_adj_54.init = 16'h8888;
    LUT4 i1_4_lut_adj_55 (.A(state[2]), .B(n16228), .C(n16304), .D(state[0]), 
         .Z(clk_in_c_enable_71)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i1_4_lut_adj_55.init = 16'h2011;
    LUT4 i9720_3_lut (.A(data_wr[6]), .B(data_wr[5]), .C(write_num[0]), 
         .Z(n15592)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9720_3_lut.init = 16'hcaca;
    LUT4 i9721_3_lut (.A(data_wr[6]), .B(data_wr[7]), .C(write_num[0]), 
         .Z(n15593)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9721_3_lut.init = 16'hcaca;
    LUT4 i5861_4_lut (.A(init_num[2]), .B(cnt_init[4]), .C(init_num[1]), 
         .D(n4_adj_630), .Z(init_num_2__N_214[1])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(85[14:22])
    defparam i5861_4_lut.init = 16'h3530;
    LUT4 init_num_2__bdd_4_lut (.A(init_num[1]), .B(cnt_init[4]), .C(init_num[0]), 
         .D(n16251), .Z(n16029)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam init_num_2__bdd_4_lut.init = 16'h2534;
    LUT4 i9943_2_lut_rep_145_3_lut_4_lut (.A(state[3]), .B(n16259), .C(state[0]), 
         .D(state[2]), .Z(clk_in_c_enable_59)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9943_2_lut_rep_145_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_56 (.A(cnt_init[4]), .B(init_num[2]), .Z(init_num_2__N_214[2])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_2_lut_adj_56.init = 16'h4444;
    LUT4 i1_4_lut_adj_57 (.A(n4), .B(n15340), .C(n16156), .D(state[0]), 
         .Z(clk_in_c_enable_73)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_57.init = 16'hc088;
    LUT4 i9885_2_lut_2_lut_3_lut_4_lut (.A(state[3]), .B(n16259), .C(n16313), 
         .D(state[2]), .Z(n9998)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9885_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_58 (.A(n15968), .B(state[0]), .C(cnt_work[0]), .D(n4), 
         .Z(n49)) /* synthesis lut_function=(A (B (C)+!B (D))+!A !(B+!(D))) */ ;
    defparam i1_4_lut_adj_58.init = 16'hb380;
    LUT4 i1_4_lut_adj_59 (.A(init_num[1]), .B(clk_in_c_enable_59), .C(n4_adj_631), 
         .D(n11593), .Z(n11597)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_59.init = 16'hc4c0;
    LUT4 i9837_2_lut_3_lut_4_lut (.A(state[3]), .B(n16259), .C(state[0]), 
         .D(state[1]), .Z(clk_in_c_enable_57)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9837_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_60 (.A(cnt_init[4]), .B(state[1]), .Z(n4_adj_631)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_60.init = 16'hbbbb;
    LUT4 i14_2_lut (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n71[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(84[14:22])
    defparam i14_2_lut.init = 16'h6666;
    LUT4 i9813_2_lut_rep_146_3_lut_4_lut (.A(state[3]), .B(n16259), .C(state[2]), 
         .D(state[1]), .Z(clk_in_c_enable_15)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i9813_2_lut_rep_146_3_lut_4_lut.init = 16'h0001;
    LUT4 init_num_2__bdd_2_lut (.A(cnt_init[4]), .B(init_num[0]), .Z(n16028)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam init_num_2__bdd_2_lut.init = 16'h4444;
    LUT4 i9936_4_lut (.A(n7685), .B(cnt_work[3]), .C(cnt_work[2]), .D(n6_adj_632), 
         .Z(clk_in_c_enable_30)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i9936_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_adj_61 (.A(n9477), .B(cnt_work[4]), .Z(n6_adj_632)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_61.init = 16'heeee;
    LUT4 i5800_4_lut (.A(cnt_read[1]), .B(cnt_ack_r[0]), .C(state[0]), 
         .D(cnt_read[0]), .Z(n33_adj_619)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(97[15:20])
    defparam i5800_4_lut.init = 16'hcacf;
    LUT4 i1_3_lut_4_lut_adj_62 (.A(cnt_init[3]), .B(n16263), .C(cnt_init[4]), 
         .D(init_num[0]), .Z(n4_adj_630)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/test/desktop/pianoshield/source/cap1188_i2c.v(119[12] 302[6])
    defparam i1_3_lut_4_lut_adj_62.init = 16'hf800;
    LUT4 n16116_bdd_4_lut (.A(n16116), .B(cnt_work[4]), .C(n16118), .D(state[0]), 
         .Z(n16660)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam n16116_bdd_4_lut.init = 16'heef0;
    
endmodule
