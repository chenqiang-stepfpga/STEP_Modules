// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Jun 11 23:12:36 2017
//
// Verilog Description of module Sensor_Board
//

module Sensor_Board (clk, rst, ir, scl, sda, seg_led_1, seg_led_2, 
            row, col, led, one_wire) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(18[8:20])
    input clk;   // c:/users/22822/desktop/sensor_board/sensor_board.v(32[11:14])
    input rst;   // c:/users/22822/desktop/sensor_board/sensor_board.v(33[11:14])
    input ir;   // c:/users/22822/desktop/sensor_board/sensor_board.v(34[11:13])
    output scl;   // c:/users/22822/desktop/sensor_board/sensor_board.v(35[12:15])
    inout sda;   // c:/users/22822/desktop/sensor_board/sensor_board.v(41[11:14])
    output [8:0]seg_led_1;   // c:/users/22822/desktop/sensor_board/sensor_board.v(36[16:25])
    output [8:0]seg_led_2;   // c:/users/22822/desktop/sensor_board/sensor_board.v(37[16:25])
    output [15:0]row;   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    output [7:0]col;   // c:/users/22822/desktop/sensor_board/sensor_board.v(39[16:19])
    output [7:0]led;   // c:/users/22822/desktop/sensor_board/sensor_board.v(40[15:18])
    inout one_wire;   // c:/users/22822/desktop/sensor_board/sensor_board.v(42[10:18])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(32[11:14])
    
    wire GND_net, VCC_net, rst_c, ir_c, scl_c, seg_led_1_c_7, seg_led_1_c_6, 
        seg_led_1_c_5, seg_led_1_c_4, seg_led_1_c_3, seg_led_1_c_2, 
        seg_led_1_c_1, seg_led_1_c_0, seg_led_2_c_7, seg_led_2_c_6, 
        seg_led_2_c_5, seg_led_2_c_4, seg_led_2_c_3, seg_led_2_c_2, 
        seg_led_2_c_1, seg_led_2_c_0, row_c_15, row_c_14, row_c_13, 
        row_c_12, row_c_11, row_c_10, row_c_9, row_c_8, row_c_7, 
        row_c_6, row_c_5, row_c_4, row_c_3, row_c_2, row_c_1, row_c_0, 
        col_c_7, col_c_6, col_c_5, col_c_4, col_c_3, col_c_2, col_c_1, 
        col_c_0, led_c;
    wire [15:0]x_axis;   // c:/users/22822/desktop/sensor_board/sensor_board.v(46[14:20])
    wire [15:0]x_axis_jiaozhun;   // c:/users/22822/desktop/sensor_board/sensor_board.v(47[14:29])
    wire [15:0]y_axis;   // c:/users/22822/desktop/sensor_board/sensor_board.v(51[14:20])
    wire [4:0]x;   // c:/users/22822/desktop/sensor_board/sensor_board.v(81[6:7])
    wire [4:0]y;   // c:/users/22822/desktop/sensor_board/sensor_board.v(82[6:7])
    wire [15:0]data_out;   // c:/users/22822/desktop/sensor_board/sensor_board.v(96[15:23])
    wire [3:0]num_unit;   // c:/users/22822/desktop/sensor_board/sensor_board.v(70[15:23])
    wire [3:0]num_decade;   // c:/users/22822/desktop/sensor_board/sensor_board.v(69[15:25])
    
    wire sda_r, n23244, n23243, n23810, clk_shift, clk_c_enable_39, 
        n16881, n22692, n1807, n1806, n1804, n179, n180, n1790, 
        n1789, n12;
    wire [3:0]cnt_write;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(62[14:23])
    wire [2:0]state_adj_1580;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(66[15:20])
    
    wire n2000;
    wire [2:0]state_back_2__N_737;
    
    wire one_wire_N_887, n22175, n21000, n1886;
    wire [20:0]tem_data;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(48[16:24])
    
    wire num_unit_3__N_923, num_unit_3__N_933, num_unit_3__N_932, num_unit_3__N_941, 
        num_unit_3__N_960, num_unit_3__N_964, n6328, sda_out, n16879, 
        n3320, n6, n22571, n20858, n4, n22403, n23462, n23461, 
        n23976, n7, n4_adj_1538, n23, n23966, one_wire_out, n4_adj_1539, 
        n4_adj_1540, n6326, n22406, n23935, n23933, n23932, n23931, 
        n23930, n23929, n23928, n5, n23206, n23205, n22618, n23912, 
        n20765, n23893, n23879, n23878, n20764, n4_adj_1541, n22439, 
        n22189, n53, n5_adj_1542, n20763, n10634, n23852, n23851, 
        n23849, n23847, n23844, n23843, n23842, n23841, n23835, 
        clk_c_enable_118, n23833, n23832, n23831, n23830, n23272, 
        n23271, n23270, n17013, clk_c_enable_108, n22932, n20762, 
        n22333, n10251, n23817, n23259, n23258, n23257, n11, n8, 
        n23256, n23255, n23254, n23253, n6_adj_1543, n10542, n24801;
    
    VHI i21579 (.Z(VCC_net));
    LUT4 mux_1147_i1_3_lut_4_lut (.A(n22932), .B(n23844), .C(n2000), .D(y[0]), 
         .Z(n1790)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (D))) */ ;
    defparam mux_1147_i1_3_lut_4_lut.init = 16'h20fd;
    OB seg_led_1_pad_7 (.I(seg_led_1_c_7), .O(seg_led_1[7]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(36[16:25])
    OB seg_led_1_pad_8 (.I(GND_net), .O(seg_led_1[8]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(36[16:25])
    OB scl_pad (.I(scl_c), .O(scl));   // c:/users/22822/desktop/sensor_board/sensor_board.v(35[12:15])
    BB one_wire_pad (.I(one_wire_N_887), .T(n6328), .B(one_wire), .O(one_wire_out));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(69[2] 185[5])
    BB sda_pad (.I(sda_r), .T(n6326), .B(sda), .O(sda_out));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(420[8:11])
    LUT4 i2_4_lut_4_lut (.A(y[2]), .B(n23832), .C(n23831), .D(y[3]), 
         .Z(n10251)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i2_4_lut_4_lut.init = 16'hdb24;
    LUT4 i1_2_lut_4_lut_4_lut (.A(clk_c_enable_118), .B(y[1]), .C(n16879), 
         .D(n23843), .Z(n4_adj_1541)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h3339;
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX mux_1156_i4 (.BLUT(n21000), .ALUT(n1886), .C0(n1804), .Z(n1806));
    PFUMX i20902 (.BLUT(n23206), .ALUT(n23205), .C0(num_unit_3__N_923), 
          .Z(num_unit_3__N_941));
    CCU2D add_1779_10 (.A0(x_axis[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_axis[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20765), .S0(x_axis_jiaozhun[14]), .S1(x_axis_jiaozhun[15]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(48[25:53])
    defparam add_1779_10.INIT0 = 16'h5aaa;
    defparam add_1779_10.INIT1 = 16'h5aaa;
    defparam add_1779_10.INJECT1_0 = "NO";
    defparam add_1779_10.INJECT1_1 = "NO";
    CCU2D add_1779_8 (.A0(x_axis[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_axis[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20764), .COUT(n20765), .S0(x_axis_jiaozhun[12]), .S1(x_axis_jiaozhun[13]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(48[25:53])
    defparam add_1779_8.INIT0 = 16'h5aaa;
    defparam add_1779_8.INIT1 = 16'h5aaa;
    defparam add_1779_8.INJECT1_0 = "NO";
    defparam add_1779_8.INJECT1_1 = "NO";
    IB ir_pad (.I(ir), .O(ir_c));   // c:/users/22822/desktop/sensor_board/sensor_board.v(34[11:13])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/22822/desktop/sensor_board/sensor_board.v(33[11:14])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/22822/desktop/sensor_board/sensor_board.v(32[11:14])
    OB led_pad_0 (.I(led_c), .O(led[0]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(40[15:18])
    OB led_pad_1 (.I(led_c), .O(led[1]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(40[15:18])
    OB led_pad_2 (.I(led_c), .O(led[2]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(40[15:18])
    OB led_pad_3 (.I(led_c), .O(led[3]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(40[15:18])
    OB led_pad_4 (.I(led_c), .O(led[4]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(40[15:18])
    OB led_pad_5 (.I(led_c), .O(led[5]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(40[15:18])
    OB led_pad_6 (.I(led_c), .O(led[6]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(40[15:18])
    OB led_pad_7 (.I(led_c), .O(led[7]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(40[15:18])
    OB col_pad_0 (.I(col_c_0), .O(col[0]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(39[16:19])
    OB col_pad_1 (.I(col_c_1), .O(col[1]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(39[16:19])
    OB col_pad_2 (.I(col_c_2), .O(col[2]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(39[16:19])
    OB col_pad_3 (.I(col_c_3), .O(col[3]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(39[16:19])
    OB col_pad_4 (.I(col_c_4), .O(col[4]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(39[16:19])
    OB col_pad_5 (.I(col_c_5), .O(col[5]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(39[16:19])
    OB col_pad_6 (.I(col_c_6), .O(col[6]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(39[16:19])
    OB col_pad_7 (.I(col_c_7), .O(col[7]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(39[16:19])
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_2 (.I(row_c_2), .O(row[2]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_3 (.I(row_c_3), .O(row[3]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_4 (.I(row_c_4), .O(row[4]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_5 (.I(row_c_5), .O(row[5]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_6 (.I(row_c_6), .O(row[6]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_7 (.I(row_c_7), .O(row[7]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_8 (.I(row_c_8), .O(row[8]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_9 (.I(row_c_9), .O(row[9]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_10 (.I(row_c_10), .O(row[10]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_11 (.I(row_c_11), .O(row[11]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_12 (.I(row_c_12), .O(row[12]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_13 (.I(row_c_13), .O(row[13]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    CCU2D add_1779_6 (.A0(x_axis[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_axis[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20763), .COUT(n20764), .S0(x_axis_jiaozhun[10]), .S1(x_axis_jiaozhun[11]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(48[25:53])
    defparam add_1779_6.INIT0 = 16'h5aaa;
    defparam add_1779_6.INIT1 = 16'h5aaa;
    defparam add_1779_6.INJECT1_0 = "NO";
    defparam add_1779_6.INJECT1_1 = "NO";
    OB row_pad_14 (.I(row_c_14), .O(row[14]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB row_pad_15 (.I(row_c_15), .O(row[15]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(38[17:20])
    OB seg_led_2_pad_0 (.I(seg_led_2_c_0), .O(seg_led_2[0]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(37[16:25])
    OB seg_led_2_pad_1 (.I(seg_led_2_c_1), .O(seg_led_2[1]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(37[16:25])
    OB seg_led_2_pad_2 (.I(seg_led_2_c_2), .O(seg_led_2[2]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(37[16:25])
    OB seg_led_2_pad_3 (.I(seg_led_2_c_3), .O(seg_led_2[3]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(37[16:25])
    OB seg_led_2_pad_4 (.I(seg_led_2_c_4), .O(seg_led_2[4]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(37[16:25])
    OB seg_led_2_pad_5 (.I(seg_led_2_c_5), .O(seg_led_2[5]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(37[16:25])
    OB seg_led_2_pad_6 (.I(seg_led_2_c_6), .O(seg_led_2[6]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(37[16:25])
    OB seg_led_2_pad_7 (.I(seg_led_2_c_7), .O(seg_led_2[7]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(37[16:25])
    OB seg_led_2_pad_8 (.I(GND_net), .O(seg_led_2[8]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(37[16:25])
    OB seg_led_1_pad_0 (.I(seg_led_1_c_0), .O(seg_led_1[0]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(36[16:25])
    OB seg_led_1_pad_1 (.I(seg_led_1_c_1), .O(seg_led_1[1]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(36[16:25])
    OB seg_led_1_pad_2 (.I(seg_led_1_c_2), .O(seg_led_1[2]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(36[16:25])
    OB seg_led_1_pad_3 (.I(seg_led_1_c_3), .O(seg_led_1[3]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(36[16:25])
    OB seg_led_1_pad_4 (.I(seg_led_1_c_4), .O(seg_led_1[4]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(36[16:25])
    OB seg_led_1_pad_5 (.I(seg_led_1_c_5), .O(seg_led_1[5]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(36[16:25])
    OB seg_led_1_pad_6 (.I(seg_led_1_c_6), .O(seg_led_1[6]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(36[16:25])
    CCU2D add_1779_4 (.A0(x_axis[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(x_axis[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20762), .COUT(n20763), .S1(x_axis_jiaozhun[9]));   // c:/users/22822/desktop/sensor_board/sensor_board.v(48[25:53])
    defparam add_1779_4.INIT0 = 16'h5555;
    defparam add_1779_4.INIT1 = 16'h5aaa;
    defparam add_1779_4.INJECT1_0 = "NO";
    defparam add_1779_4.INJECT1_1 = "NO";
    CCU2D add_1779_2 (.A0(x_axis[6]), .B0(x_axis[5]), .C0(GND_net), .D0(GND_net), 
          .A1(x_axis[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n20762));   // c:/users/22822/desktop/sensor_board/sensor_board.v(48[25:53])
    defparam add_1779_2.INIT0 = 16'h1000;
    defparam add_1779_2.INIT1 = 16'h5555;
    defparam add_1779_2.INJECT1_0 = "NO";
    defparam add_1779_2.INJECT1_1 = "NO";
    PFUMX i20941 (.BLUT(n23270), .ALUT(n22403), .C0(x[0]), .Z(n23271));
    LUT4 i14612_2_lut_rep_600 (.A(y[0]), .B(y[1]), .Z(n23933)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14612_2_lut_rep_600.init = 16'h8888;
    GSR GSR_INST (.GSR(rst_c));
    LUT4 i1912_3_lut_4_lut (.A(y[0]), .B(y[1]), .C(y[3]), .D(y[2]), 
         .Z(n180)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1912_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i2_3_lut_rep_602 (.A(y[3]), .B(y[1]), .C(y[0]), .Z(n23935)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_602.init = 16'hfefe;
    PFUMX i20932 (.BLUT(n23258), .ALUT(n23257), .C0(n23833), .Z(n23259));
    LUT4 i1_2_lut_4_lut (.A(y[3]), .B(y[1]), .C(y[0]), .D(y[2]), .Z(n5_adj_1542)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0100;
    PFUMX i20929 (.BLUT(n23254), .ALUT(n23842), .C0(y[3]), .Z(n23255));
    LUT4 i20771_3_lut_4_lut (.A(n23844), .B(n23852), .C(n23931), .D(n23932), 
         .Z(clk_c_enable_39)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i20771_3_lut_4_lut.init = 16'h1101;
    LUT4 i31_2_lut_rep_511 (.A(clk_shift), .B(n23851), .Z(n23844)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i31_2_lut_rep_511.init = 16'hbbbb;
    LUT4 i20849_2_lut_rep_500_3_lut (.A(clk_shift), .B(n23851), .C(n22932), 
         .Z(n23833)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i20849_2_lut_rep_500_3_lut.init = 16'h4040;
    LUT4 num_unit_3__N_950_bdd_4_lut (.A(n23810), .B(n23), .C(num_unit_3__N_932), 
         .D(n23830), .Z(n23205)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam num_unit_3__N_950_bdd_4_lut.init = 16'h2032;
    LUT4 y_axis_15__bdd_4_lut (.A(y_axis[15]), .B(x[3]), .C(n10542), .D(y_axis[14]), 
         .Z(n22189)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam y_axis_15__bdd_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_516 (.A(clk_shift), .B(n10634), .Z(n23849)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i1_2_lut_rep_516.init = 16'h4444;
    LUT4 seg_led_2_c_bdd_2_lut_20966_3_lut (.A(clk_shift), .B(n10634), .C(n23255), 
         .Z(n23256)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam seg_led_2_c_bdd_2_lut_20966_3_lut.init = 16'h4040;
    LUT4 n23844_bdd_4_lut (.A(n23844), .B(x_axis_jiaozhun[15]), .C(x_axis_jiaozhun[14]), 
         .D(n16879), .Z(n23832)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n23844_bdd_4_lut.init = 16'hfffe;
    LUT4 n23461_bdd_2_lut (.A(n23461), .B(y_axis[10]), .Z(n23462)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n23461_bdd_2_lut.init = 16'h2222;
    LUT4 y_axis_10__bdd_4_lut_21420 (.A(n23928), .B(n7), .C(n23879), .D(x[3]), 
         .Z(n23461)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam y_axis_10__bdd_4_lut_21420.init = 16'h0111;
    LUT4 tem_data_18__bdd_4_lut (.A(tem_data[18]), .B(tem_data[17]), .C(tem_data[19]), 
         .D(tem_data[20]), .Z(num_unit_3__N_933)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam tem_data_18__bdd_4_lut.init = 16'h2410;
    LUT4 mux_1156_i3_4_lut (.A(n4), .B(n23847), .C(n1804), .D(n4_adj_1540), 
         .Z(n1807)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam mux_1156_i3_4_lut.init = 16'hc5ca;
    LUT4 i1_2_lut (.A(n22439), .B(x[2]), .Z(n4_adj_1540)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i2_4_lut (.A(n23931), .B(n23844), .C(n23462), .D(n4_adj_1539), 
         .Z(n22439)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut.init = 16'hfffe;
    LUT4 i2574_3_lut (.A(x[1]), .B(n22439), .C(x[0]), .Z(n4)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(C))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam i2574_3_lut.init = 16'hb2b2;
    LUT4 i1_4_lut (.A(n10542), .B(x[3]), .C(n17013), .D(n8), .Z(n11)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut.init = 16'hce02;
    LUT4 i1_4_lut_adj_239 (.A(x[0]), .B(n17013), .C(n22406), .D(n10542), 
         .Z(n8)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(D))) */ ;
    defparam i1_4_lut_adj_239.init = 16'ha0b3;
    LUT4 i1_2_lut_adj_240 (.A(n22439), .B(x[1]), .Z(n4_adj_1538)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam i1_2_lut_adj_240.init = 16'h9999;
    LUT4 i2_4_lut_adj_241 (.A(x[2]), .B(n22439), .C(x[3]), .D(n4), .Z(n21000)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam i2_4_lut_adj_241.init = 16'h78e1;
    LUT4 i14272_4_lut (.A(n23930), .B(n23847), .C(n6_adj_1543), .D(n22189), 
         .Z(n1886)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam i14272_4_lut.init = 16'hdccc;
    LUT4 i21_4_lut (.A(n23842), .B(n180), .C(n179), .D(n24801), .Z(n16879)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i21_4_lut.init = 16'hcfca;
    LUT4 i20607_4_lut (.A(n22571), .B(x_axis_jiaozhun[13]), .C(x_axis_jiaozhun[11]), 
         .D(x_axis_jiaozhun[9]), .Z(n22175)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i20607_4_lut.init = 16'hfffe;
    LUT4 i20470_2_lut (.A(x_axis_jiaozhun[12]), .B(x_axis_jiaozhun[10]), 
         .Z(n22571)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20470_2_lut.init = 16'heeee;
    LUT4 seg_led_2_c_bdd_2_lut_20931 (.A(n23253), .B(y[2]), .Z(n23254)) /* synthesis lut_function=(A (B)) */ ;
    defparam seg_led_2_c_bdd_2_lut_20931.init = 16'h8888;
    LUT4 i1599_1_lut (.A(ir_c), .Z(led_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(34[11:13])
    defparam i1599_1_lut.init = 16'h5555;
    LUT4 mux_1147_i2_4_lut (.A(y[0]), .B(n2000), .C(n23833), .D(n4_adj_1541), 
         .Z(n1789)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam mux_1147_i2_4_lut.init = 16'hc5ca;
    LUT4 n2122_bdd_4_lut_20981 (.A(n23832), .B(y[1]), .C(y[2]), .D(y[0]), 
         .Z(n23258)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;
    defparam n2122_bdd_4_lut_20981.init = 16'hb4d2;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i2602_4_lut_3_lut_rep_498 (.A(n23832), .B(y[0]), .C(y[1]), .Z(n23831)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i2602_4_lut_3_lut_rep_498.init = 16'he8e8;
    LUT4 n22403_bdd_4_lut_21035 (.A(n17013), .B(n10542), .C(clk_shift), 
         .D(x[3]), .Z(n23270)) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;
    defparam n22403_bdd_4_lut_21035.init = 16'hfefb;
    LUT4 i3_4_lut (.A(n23841), .B(n23849), .C(n180), .D(n23835), .Z(n2000)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i3_4_lut.init = 16'h4000;
    LUT4 i2_4_lut_adj_242 (.A(n23), .B(num_unit_3__N_932), .C(n23810), 
         .D(n23817), .Z(num_unit_3__N_964)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2_4_lut_adj_242.init = 16'h36c9;
    LUT4 n23271_bdd_3_lut_4_lut_4_lut_4_lut (.A(x[0]), .B(n23852), .C(n23271), 
         .D(n23851), .Z(n23272)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B+(C+!(D))))) */ ;
    defparam n23271_bdd_3_lut_4_lut_4_lut_4_lut.init = 16'h7455;
    mpu6050_iic mpu6050_iic_u1 (.\x_axis[11] (x_axis[11]), .clk_c(clk_c), 
            .sda_out(sda_out), .\x_axis[10] (x_axis[10]), .sda_r(sda_r), 
            .\y_axis[15] (y_axis[15]), .\y_axis[14] (y_axis[14]), .\x_axis[9] (x_axis[9]), 
            .\y_axis[10] (y_axis[10]), .\x_axis[15] (x_axis[15]), .\x_axis[14] (x_axis[14]), 
            .\x_axis[7] (x_axis[7]), .\x_axis[6] (x_axis[6]), .\x_axis[5] (x_axis[5]), 
            .\x_axis[13] (x_axis[13]), .\x_axis[12] (x_axis[12]), .GND_net(GND_net), 
            .n23893(n23893), .n3320(n3320), .\state_back_2__N_737[2] (state_back_2__N_737[2]), 
            .\state[0] (state_adj_1580[0]), .n53(n53), .n6326(n6326), 
            .rst_c(rst_c), .\cnt_write[0] (cnt_write[0]), .n6(n6), .scl_c(scl_c), 
            .n23928(n23928), .n7(n7), .n10542(n10542), .\x_axis[8] (x_axis[8]), 
            .\state[1] (state_adj_1580[1]), .clk_c_enable_108(clk_c_enable_108)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(55[14] 66[4])
    LUT4 i20847_4_lut (.A(n22618), .B(n12), .C(n23878), .D(n23842), 
         .Z(n22932)) /* synthesis lut_function=(!(A (B)+!A (B+!((D)+!C)))) */ ;
    defparam i20847_4_lut.init = 16'h3323;
    VLO i1 (.Z(GND_net));
    segment_LED segment_LED_u1 (.num_decade({num_decade}), .seg_led_1_c_1(seg_led_1_c_1), 
            .seg_led_1_c_0(seg_led_1_c_0), .num_unit({num_unit}), .seg_led_2_c_0(seg_led_2_c_0), 
            .seg_led_2_c_1(seg_led_2_c_1), .seg_led_1_c_3(seg_led_1_c_3), 
            .seg_led_2_c_3(seg_led_2_c_3), .seg_led_2_c_5(seg_led_2_c_5), 
            .seg_led_1_c_2(seg_led_1_c_2), .seg_led_2_c_2(seg_led_2_c_2), 
            .seg_led_2_c_4(seg_led_2_c_4), .seg_led_1_c_6(seg_led_1_c_6), 
            .seg_led_1_c_4(seg_led_1_c_4), .seg_led_2_c_6(seg_led_2_c_6), 
            .seg_led_1_c_5(seg_led_1_c_5), .seg_led_1_c_7(seg_led_1_c_7), 
            .seg_led_2_c_7(seg_led_2_c_7)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(68[14] 73[4])
    PFUMX i20921 (.BLUT(n23244), .ALUT(n23243), .C0(n23), .Z(num_unit_3__N_960));
    LUT4 i3_4_lut_adj_243 (.A(x_axis_jiaozhun[15]), .B(x_axis_jiaozhun[14]), 
         .C(n23935), .D(y[2]), .Z(n20858)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_243.init = 16'h0008;
    ds18b20_dataprocess ds18b20_dataprocess_u1 (.GND_net(GND_net), .data_out({data_out}), 
            .num_unit({num_unit}), .clk_c(clk_c), .\tem_data[20] (tem_data[20]), 
            .\tem_data[18] (tem_data[18]), .\tem_data[19] (tem_data[19]), 
            .\tem_data[17] (tem_data[17]), .num_decade({num_decade}), .num_unit_3__N_923(num_unit_3__N_923), 
            .num_unit_3__N_932(num_unit_3__N_932), .n23830(n23830), .n23810(n23810), 
            .num_unit_3__N_933(num_unit_3__N_933), .num_unit_3__N_941(num_unit_3__N_941), 
            .n23(n23), .num_unit_3__N_964(num_unit_3__N_964), .num_unit_3__N_960(num_unit_3__N_960), 
            .n23244(n23244), .n23243(n23243), .n23817(n23817), .n23206(n23206)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(111[22] 123[4])
    LUT4 n177_bdd_4_lut_20977_4_lut (.A(n22175), .B(n23841), .C(y[0]), 
         .D(y[1]), .Z(n23253)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam n177_bdd_4_lut_20977_4_lut.init = 16'he001;
    led_matrix_dot_driver led_matrix_dot_driver_u1 (.n23933(n23933), .col_c_0(col_c_0), 
            .clk_c(clk_c), .row_c_0(row_c_0), .\x[0] (x[0]), .\x[1] (x[1]), 
            .n23930(n23930), .\x[2] (x[2]), .n23879(n23879), .row_c_15(row_c_15), 
            .row_c_14(row_c_14), .row_c_13(row_c_13), .row_c_12(row_c_12), 
            .row_c_11(row_c_11), .row_c_10(row_c_10), .row_c_9(row_c_9), 
            .row_c_8(row_c_8), .n23929(n23929), .row_c_7(row_c_7), .row_c_6(row_c_6), 
            .row_c_5(row_c_5), .row_c_4(row_c_4), .row_c_3(row_c_3), .row_c_2(row_c_2), 
            .row_c_1(row_c_1), .col_c_7(col_c_7), .\y[3] (y[3]), .col_c_6(col_c_6), 
            .col_c_5(col_c_5), .col_c_4(col_c_4), .col_c_3(col_c_3), .col_c_2(col_c_2), 
            .col_c_1(col_c_1), .\y[2] (y[2]), .\x[3] (x[3]), .\y[0] (y[0]), 
            .\y[1] (y[1]), .n24801(n24801), .n16881(n16881), .n22692(n22692), 
            .n23912(n23912), .n23878(n23878), .n23976(n23976), .n22333(n22333), 
            .n23966(n23966), .n10634(n10634), .clk_shift(clk_shift), .n6(n6_adj_1543), 
            .n23932(n23932), .n4(n4_adj_1539), .\x_axis_jiaozhun[15] (x_axis_jiaozhun[15]), 
            .\x_axis_jiaozhun[14] (x_axis_jiaozhun[14]), .n5(n5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(76[24] 83[4])
    coordinate_process coordinate_process_u1 (.\y[0] (y[0]), .clk_c(clk_c), 
            .clk_c_enable_118(clk_c_enable_118), .n1790(n1790), .\x[0] (x[0]), 
            .clk_c_enable_39(clk_c_enable_39), .n23272(n23272), .clk_shift(clk_shift), 
            .\x[2] (x[2]), .\x[3] (x[3]), .n22333(n22333), .n23930(n23930), 
            .n22692(n22692), .n22189(n22189), .n23852(n23852), .GND_net(GND_net), 
            .n23841(n23841), .n23835(n23835), .n23844(n23844), .n22932(n22932), 
            .n23851(n23851), .n1806(n1806), .n1807(n1807), .\x[1] (x[1]), 
            .\y_axis[14] (y_axis[14]), .\y_axis[15] (y_axis[15]), .n23931(n23931), 
            .n23966(n23966), .n17013(n17013), .\y[2] (y[2]), .n23259(n23259), 
            .\y[1] (y[1]), .n1789(n1789), .n23932(n23932), .n22406(n22406), 
            .\y[3] (y[3]), .n10251(n10251), .\x_axis_jiaozhun[14] (x_axis_jiaozhun[14]), 
            .\x_axis_jiaozhun[15] (x_axis_jiaozhun[15]), .n23256(n23256), 
            .n23257(n23257), .n22175(n22175), .n179(n179), .n23842(n23842), 
            .n23843(n23843), .n11(n11), .n1804(n1804), .n22403(n22403), 
            .n23847(n23847), .n4(n4_adj_1538), .n10634(n10634), .n24801(n24801), 
            .n23976(n23976), .n16881(n16881), .n23912(n23912), .n23929(n23929), 
            .n5(n5), .n22618(n22618), .n5_adj_1(n5_adj_1542), .n20858(n20858), 
            .n12(n12), .n180(n180)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(87[21] 94[3])
    ds18b20_interface ds18b20_interface_u1 (.cnt_write({Open_0, Open_1, 
            Open_2, cnt_write[0]}), .\state_back_2__N_737[2] (state_back_2__N_737[2]), 
            .clk_c(clk_c), .data_out({data_out}), .clk_c_enable_108(clk_c_enable_108), 
            .one_wire_N_887(one_wire_N_887), .\state[0] (state_adj_1580[0]), 
            .GND_net(GND_net), .\state[1] (state_adj_1580[1]), .one_wire_out(one_wire_out), 
            .n6328(n6328), .n23893(n23893), .n53(n53), .n3320(n3320), 
            .rst_c(rst_c), .n6(n6)) /* synthesis syn_module_defined=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(97[20] 102[4])
    
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
// Verilog Description of module mpu6050_iic
//

module mpu6050_iic (\x_axis[11] , clk_c, sda_out, \x_axis[10] , sda_r, 
            \y_axis[15] , \y_axis[14] , \x_axis[9] , \y_axis[10] , \x_axis[15] , 
            \x_axis[14] , \x_axis[7] , \x_axis[6] , \x_axis[5] , \x_axis[13] , 
            \x_axis[12] , GND_net, n23893, n3320, \state_back_2__N_737[2] , 
            \state[0] , n53, n6326, rst_c, \cnt_write[0] , n6, scl_c, 
            n23928, n7, n10542, \x_axis[8] , \state[1] , clk_c_enable_108) /* synthesis syn_module_defined=1 */ ;
    output \x_axis[11] ;
    input clk_c;
    input sda_out;
    output \x_axis[10] ;
    output sda_r;
    output \y_axis[15] ;
    output \y_axis[14] ;
    output \x_axis[9] ;
    output \y_axis[10] ;
    output \x_axis[15] ;
    output \x_axis[14] ;
    output \x_axis[7] ;
    output \x_axis[6] ;
    output \x_axis[5] ;
    output \x_axis[13] ;
    output \x_axis[12] ;
    input GND_net;
    input n23893;
    input n3320;
    input \state_back_2__N_737[2] ;
    input \state[0] ;
    input n53;
    output n6326;
    input rst_c;
    input \cnt_write[0] ;
    output n6;
    output scl_c;
    output n23928;
    output n7;
    output n10542;
    output \x_axis[8] ;
    input \state[1] ;
    output clk_c_enable_108;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(32[11:14])
    
    wire clk_c_enable_1;
    wire [7:0]db_r;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(137[12:16])
    
    wire clk_c_enable_138;
    wire [7:0]db_r_7__N_342;
    
    wire clk_c_enable_3, clk_c_enable_4, n6928, sda_link, clk_c_enable_5, 
        n20944;
    wire [2:0]cnt;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(39[13:16])
    wire [2:0]cnt_2__N_100;
    wire [15:0]cnt_10ms;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(43[12:20])
    wire [15:0]n69;
    wire [8:0]cnt_sum;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(40[13:20])
    
    wire n11491;
    wire [6:0]n1;
    wire [4:0]times;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(150[12:17])
    
    wire n11421, clk_c_enable_8, clk_c_enable_9;
    wire [15:0]y_axis;   // c:/users/22822/desktop/sensor_board/sensor_board.v(51[14:20])
    
    wire clk_c_enable_12, clk_c_enable_13, clk_c_enable_14, clk_c_enable_15, 
        clk_c_enable_16;
    wire [15:0]n603;
    
    wire n20828, clk_c_enable_17, clk_c_enable_19, clk_c_enable_21, 
        clk_c_enable_23, clk_c_enable_24, clk_c_enable_25, clk_c_enable_27, 
        clk_c_enable_28, n23996, n23997, clk_c_enable_117, n20720, 
        n20721, cnt_2__N_162, n23277, n23276, n792, n23278, n11367, 
        n21738, n20723, n20724, n20719, n20727, n20726, n20725, 
        n6682, n6684, n6686, n6688, n6690, n6694, n6696, n6698, 
        n6700, n6702, n6706, n6710, n6714, n6718, n21926;
    wire [3:0]num;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(136[12:15])
    
    wire clk_c_enable_127, n11506;
    wire [3:0]n21;
    
    wire n20718, n23939;
    wire [4:0]n25;
    
    wire n11420, n10, n8;
    wire [0:0]n1834;
    
    wire n16250, n23938, n6927, n20717, n20722, n23990, n23991, 
        n23992, n29, n22327, n23936, n19, n24000, n23999, n24009, 
        n24008, n22219, n23969, clk_c_enable_139, n23957, n7_c, 
        n23866, n23884, n23853, n17045, n23918, n20, n22346, n23864, 
        n23610, n20592, n23883, n24789, n10030, n23611, n23424, 
        n23423, n23425, n23422, n23426, n23428, n23429, n23865, 
        n23430, n23427, n23431, n23906, n1167, n23886, n800, n23449, 
        n24001, n22_adj_1524, n23845, n15918, n10_adj_1525, n23889, 
        n4, n6_adj_1526, n3034, n5, n22159, n63, n6_adj_1527, 
        n23508, n23882, n23506, n23509, n23989, n22160, n23979, 
        n39_adj_1528, n49, n23942, n31, n22387, n23885, n33, n24_adj_1529, 
        n23947, n43, n23956, n1635, n16747, n8_adj_1530, n22712, 
        n22764, n23510, n23507, sda_r_N_358, n22714, n22581, n23867, 
        n4_adj_1531, n23953, n6_adj_1532, n23965, n22183, n23950, 
        n22326, n22489, n10695, n62, n10305, n4_adj_1533, n6695, 
        n23863, n1170, n15, n22805, n23970, n23448, n22239, n22688, 
        n23862, n23896, n17, n23948, n23949, n24788, n24787, n23_adj_1535, 
        n22_adj_1536, n7_adj_1537;
    
    FD1P3AX ACC_XH_READ__i4 (.D(sda_out), .SP(clk_c_enable_1), .CK(clk_c), 
            .Q(\x_axis[11] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XH_READ__i4.GSR = "ENABLED";
    FD1P3AX db_r_i0_i4 (.D(db_r_7__N_342[4]), .SP(clk_c_enable_138), .CK(clk_c), 
            .Q(db_r[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam db_r_i0_i4.GSR = "DISABLED";
    FD1P3AX ACC_XH_READ__i3 (.D(sda_out), .SP(clk_c_enable_3), .CK(clk_c), 
            .Q(\x_axis[10] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XH_READ__i3.GSR = "ENABLED";
    FD1P3AY sda_r_368 (.D(n6928), .SP(clk_c_enable_4), .CK(clk_c), .Q(sda_r)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam sda_r_368.GSR = "ENABLED";
    FD1P3AX sda_link_369 (.D(n20944), .SP(clk_c_enable_5), .CK(clk_c), 
            .Q(sda_link)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam sda_link_369.GSR = "ENABLED";
    FD1S3AY cnt_i0 (.D(cnt_2__N_100[0]), .CK(clk_c), .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(63[8] 70[15])
    defparam cnt_i0.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i0 (.D(n69[0]), .CK(clk_c), .Q(cnt_10ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i0.GSR = "ENABLED";
    FD1S3IX cnt_sum_1799_1800__i1 (.D(n1[0]), .CK(clk_c), .CD(n11491), 
            .Q(cnt_sum[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800__i1.GSR = "ENABLED";
    FD1S3AX times_1801__i0 (.D(n11421), .CK(clk_c), .Q(times[0]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam times_1801__i0.GSR = "ENABLED";
    FD1P3AX ACC_YH_READ__i8 (.D(sda_out), .SP(clk_c_enable_8), .CK(clk_c), 
            .Q(\y_axis[15] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_YH_READ__i8.GSR = "ENABLED";
    FD1S3IX cnt_sum_1799_1800__i3 (.D(n1[2]), .CK(clk_c), .CD(n11491), 
            .Q(cnt_sum[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800__i3.GSR = "ENABLED";
    FD1S3IX cnt_sum_1799_1800__i2 (.D(n1[1]), .CK(clk_c), .CD(n11491), 
            .Q(cnt_sum[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800__i2.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i15 (.D(n69[15]), .CK(clk_c), .Q(cnt_10ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i15.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i14 (.D(n69[14]), .CK(clk_c), .Q(cnt_10ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i14.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i13 (.D(n69[13]), .CK(clk_c), .Q(cnt_10ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i13.GSR = "ENABLED";
    FD1P3AX ACC_YH_READ__i7 (.D(sda_out), .SP(clk_c_enable_9), .CK(clk_c), 
            .Q(\y_axis[14] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_YH_READ__i7.GSR = "ENABLED";
    FD1P3AX ACC_YH_READ__i6 (.D(sda_out), .SP(clk_c_enable_12), .CK(clk_c), 
            .Q(y_axis[13])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_YH_READ__i6.GSR = "ENABLED";
    FD1P3AX ACC_YH_READ__i5 (.D(sda_out), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(y_axis[12])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_YH_READ__i5.GSR = "ENABLED";
    FD1P3AX ACC_XH_READ__i2 (.D(sda_out), .SP(clk_c_enable_14), .CK(clk_c), 
            .Q(\x_axis[9] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XH_READ__i2.GSR = "ENABLED";
    FD1P3AX ACC_YH_READ__i4 (.D(sda_out), .SP(clk_c_enable_15), .CK(clk_c), 
            .Q(y_axis[11])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_YH_READ__i4.GSR = "ENABLED";
    FD1P3AX ACC_YH_READ__i3 (.D(sda_out), .SP(clk_c_enable_16), .CK(clk_c), 
            .Q(\y_axis[10] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_YH_READ__i3.GSR = "ENABLED";
    FD1S3AY state_FSM_i1 (.D(n20828), .CK(clk_c), .Q(n603[0]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX ACC_XH_READ__i8 (.D(sda_out), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(\x_axis[15] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XH_READ__i8.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i12 (.D(n69[12]), .CK(clk_c), .Q(cnt_10ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i12.GSR = "ENABLED";
    FD1P3AX ACC_XH_READ__i7 (.D(sda_out), .SP(clk_c_enable_19), .CK(clk_c), 
            .Q(\x_axis[14] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XH_READ__i7.GSR = "ENABLED";
    FD1P3AX ACC_YH_READ__i2 (.D(sda_out), .SP(clk_c_enable_21), .CK(clk_c), 
            .Q(y_axis[9])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_YH_READ__i2.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i11 (.D(n69[11]), .CK(clk_c), .Q(cnt_10ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i11.GSR = "ENABLED";
    FD1P3AX ACC_XL_READ__i8 (.D(sda_out), .SP(clk_c_enable_23), .CK(clk_c), 
            .Q(\x_axis[7] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XL_READ__i8.GSR = "ENABLED";
    FD1P3AX ACC_XL_READ__i7 (.D(sda_out), .SP(clk_c_enable_24), .CK(clk_c), 
            .Q(\x_axis[6] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XL_READ__i7.GSR = "ENABLED";
    FD1P3AX ACC_XL_READ__i6 (.D(sda_out), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(\x_axis[5] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XL_READ__i6.GSR = "ENABLED";
    FD1P3AX ACC_XH_READ__i6 (.D(sda_out), .SP(clk_c_enable_27), .CK(clk_c), 
            .Q(\x_axis[13] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XH_READ__i6.GSR = "ENABLED";
    FD1P3AX ACC_XH_READ__i5 (.D(sda_out), .SP(clk_c_enable_28), .CK(clk_c), 
            .Q(\x_axis[12] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XH_READ__i5.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i10 (.D(n69[10]), .CK(clk_c), .Q(cnt_10ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i10.GSR = "ENABLED";
    PFUMX i21136 (.BLUT(n23996), .ALUT(n23997), .C0(n603[10]), .Z(clk_c_enable_117));
    FD1S3AX cnt_10ms_1798__i9 (.D(n69[9]), .CK(clk_c), .Q(cnt_10ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i9.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i8 (.D(n69[8]), .CK(clk_c), .Q(cnt_10ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i8.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i7 (.D(n69[7]), .CK(clk_c), .Q(cnt_10ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i7.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i6 (.D(n69[6]), .CK(clk_c), .Q(cnt_10ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i6.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i5 (.D(n69[5]), .CK(clk_c), .Q(cnt_10ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i5.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i4 (.D(n69[4]), .CK(clk_c), .Q(cnt_10ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i4.GSR = "ENABLED";
    CCU2D cnt_10ms_1798_add_4_9 (.A0(cnt_10ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_10ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20720), .COUT(n20721), .S0(n69[7]), .S1(n69[8]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_9.INJECT1_0 = "NO";
    defparam cnt_10ms_1798_add_4_9.INJECT1_1 = "NO";
    FD1S3AX cnt_10ms_1798__i3 (.D(n69[3]), .CK(clk_c), .Q(cnt_10ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i3.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i2 (.D(n69[2]), .CK(clk_c), .Q(cnt_10ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i2.GSR = "ENABLED";
    FD1S3AX cnt_10ms_1798__i1 (.D(n69[1]), .CK(clk_c), .Q(cnt_10ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798__i1.GSR = "ENABLED";
    FD1P3AX db_r_i0_i5 (.D(db_r_7__N_342[5]), .SP(clk_c_enable_138), .CK(clk_c), 
            .Q(db_r[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam db_r_i0_i5.GSR = "DISABLED";
    FD1S3AY cnt_i2 (.D(cnt_2__N_162), .CK(clk_c), .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(63[8] 70[15])
    defparam cnt_i2.GSR = "ENABLED";
    FD1S3AX cnt_i1 (.D(cnt_2__N_100[1]), .CK(clk_c), .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(63[8] 70[15])
    defparam cnt_i1.GSR = "ENABLED";
    PFUMX i20943 (.BLUT(n23277), .ALUT(n23276), .C0(n792), .Z(n23278));
    FD1S3AX times_1801__i4 (.D(n23278), .CK(clk_c), .Q(times[4]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam times_1801__i4.GSR = "ENABLED";
    FD1S3AX times_1801__i3 (.D(n11367), .CK(clk_c), .Q(times[3]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam times_1801__i3.GSR = "ENABLED";
    FD1S3AX times_1801__i1 (.D(n21738), .CK(clk_c), .Q(times[1]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam times_1801__i1.GSR = "ENABLED";
    CCU2D cnt_10ms_1798_add_4_15 (.A0(cnt_10ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_10ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20723), .COUT(n20724), .S0(n69[13]), .S1(n69[14]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_15.INJECT1_0 = "NO";
    defparam cnt_10ms_1798_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_10ms_1798_add_4_7 (.A0(cnt_10ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_10ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20719), .COUT(n20720), .S0(n69[5]), .S1(n69[6]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_7.INJECT1_0 = "NO";
    defparam cnt_10ms_1798_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_sum_1799_1800_add_4_7 (.A0(cnt_sum[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_sum[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20727), .S0(n1[5]), .S1(n1[6]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_sum_1799_1800_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_sum_1799_1800_add_4_7.INJECT1_0 = "NO";
    defparam cnt_sum_1799_1800_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_sum_1799_1800_add_4_5 (.A0(cnt_sum[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_sum[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20726), .COUT(n20727), .S0(n1[3]), .S1(n1[4]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_sum_1799_1800_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_sum_1799_1800_add_4_5.INJECT1_0 = "NO";
    defparam cnt_sum_1799_1800_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_sum_1799_1800_add_4_3 (.A0(cnt_sum[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_sum[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20725), .COUT(n20726), .S0(n1[1]), .S1(n1[2]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_sum_1799_1800_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_sum_1799_1800_add_4_3.INJECT1_0 = "NO";
    defparam cnt_sum_1799_1800_add_4_3.INJECT1_1 = "NO";
    FD1S3AX state_FSM_i15 (.D(n6682), .CK(clk_c), .Q(n603[14]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i15.GSR = "ENABLED";
    FD1S3AX state_FSM_i14 (.D(n6684), .CK(clk_c), .Q(n603[13]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i14.GSR = "ENABLED";
    FD1S3AX state_FSM_i13 (.D(n6686), .CK(clk_c), .Q(n603[12]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i13.GSR = "ENABLED";
    FD1S3AX state_FSM_i12 (.D(n6688), .CK(clk_c), .Q(n603[11]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i12.GSR = "ENABLED";
    FD1S3AX state_FSM_i11 (.D(n6690), .CK(clk_c), .Q(n603[10]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i11.GSR = "ENABLED";
    FD1S3AX state_FSM_i10 (.D(n6694), .CK(clk_c), .Q(n603[9]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i10.GSR = "ENABLED";
    FD1S3AX state_FSM_i9 (.D(n6696), .CK(clk_c), .Q(n603[8]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i9.GSR = "ENABLED";
    FD1S3AX state_FSM_i8 (.D(n6698), .CK(clk_c), .Q(n603[7]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i8.GSR = "ENABLED";
    FD1S3AX state_FSM_i7 (.D(n6700), .CK(clk_c), .Q(n603[6]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1S3AX state_FSM_i6 (.D(n6702), .CK(clk_c), .Q(n603[5]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3AX state_FSM_i5 (.D(n6706), .CK(clk_c), .Q(n603[4]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n6710), .CK(clk_c), .Q(n603[3]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n6714), .CK(clk_c), .Q(n603[2]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n6718), .CK(clk_c), .Q(n603[1]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1P3AX db_r_i0_i6 (.D(db_r_7__N_342[6]), .SP(clk_c_enable_138), .CK(clk_c), 
            .Q(db_r[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam db_r_i0_i6.GSR = "DISABLED";
    FD1S3IX cnt_sum_1799_1800__i7 (.D(n1[6]), .CK(clk_c), .CD(n11491), 
            .Q(cnt_sum[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800__i7.GSR = "ENABLED";
    FD1S3IX cnt_sum_1799_1800__i6 (.D(n1[5]), .CK(clk_c), .CD(n11491), 
            .Q(cnt_sum[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800__i6.GSR = "ENABLED";
    FD1P3AX db_r_i0_i7 (.D(db_r_7__N_342[7]), .SP(clk_c_enable_138), .CK(clk_c), 
            .Q(db_r[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam db_r_i0_i7.GSR = "DISABLED";
    CCU2D cnt_sum_1799_1800_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_sum[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n20725), .S1(n1[0]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800_add_4_1.INIT0 = 16'hF000;
    defparam cnt_sum_1799_1800_add_4_1.INIT1 = 16'h0555;
    defparam cnt_sum_1799_1800_add_4_1.INJECT1_0 = "NO";
    defparam cnt_sum_1799_1800_add_4_1.INJECT1_1 = "NO";
    FD1P3AX times_1801__i2 (.D(n21926), .SP(clk_c_enable_117), .CK(clk_c), 
            .Q(times[2]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam times_1801__i2.GSR = "ENABLED";
    FD1P3IX num_1803__i1 (.D(n21[1]), .SP(clk_c_enable_127), .CD(n11506), 
            .CK(clk_c), .Q(num[1]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(290[15:23])
    defparam num_1803__i1.GSR = "ENABLED";
    FD1P3IX num_1803__i2 (.D(n21[2]), .SP(clk_c_enable_127), .CD(n11506), 
            .CK(clk_c), .Q(num[2]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(290[15:23])
    defparam num_1803__i2.GSR = "ENABLED";
    FD1P3IX num_1803__i3 (.D(n21[3]), .SP(clk_c_enable_127), .CD(n11506), 
            .CK(clk_c), .Q(num[3]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(290[15:23])
    defparam num_1803__i3.GSR = "ENABLED";
    FD1S3IX cnt_sum_1799_1800__i5 (.D(n1[4]), .CK(clk_c), .CD(n11491), 
            .Q(cnt_sum[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800__i5.GSR = "ENABLED";
    CCU2D cnt_10ms_1798_add_4_5 (.A0(cnt_10ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_10ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20718), .COUT(n20719), .S0(n69[3]), .S1(n69[4]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_5.INJECT1_0 = "NO";
    defparam cnt_10ms_1798_add_4_5.INJECT1_1 = "NO";
    FD1P3IX num_1803__i0 (.D(n23939), .SP(clk_c_enable_127), .CD(n11506), 
            .CK(clk_c), .Q(num[0]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(290[15:23])
    defparam num_1803__i0.GSR = "ENABLED";
    PFUMX i9653 (.BLUT(n25[0]), .ALUT(n11420), .C0(n792), .Z(n11421));
    PFUMX i23 (.BLUT(n10), .ALUT(n8), .C0(n792), .Z(n21926));
    PFUMX i5233 (.BLUT(n1834[0]), .ALUT(n16250), .C0(n23938), .Z(n6927));
    CCU2D cnt_10ms_1798_add_4_3 (.A0(cnt_10ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_10ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20717), .COUT(n20718), .S0(n69[1]), .S1(n69[2]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_3.INJECT1_0 = "NO";
    defparam cnt_10ms_1798_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_10ms_1798_add_4_13 (.A0(cnt_10ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_10ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20722), .COUT(n20723), .S0(n69[11]), .S1(n69[12]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_13.INJECT1_0 = "NO";
    defparam cnt_10ms_1798_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_10ms_1798_add_4_17 (.A0(cnt_10ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20724), .S0(n69[15]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_17.INIT1 = 16'h0000;
    defparam cnt_10ms_1798_add_4_17.INJECT1_0 = "NO";
    defparam cnt_10ms_1798_add_4_17.INJECT1_1 = "NO";
    PFUMX i21132 (.BLUT(n23990), .ALUT(n23991), .C0(times[2]), .Z(n23992));
    CCU2D cnt_10ms_1798_add_4_11 (.A0(cnt_10ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_10ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20721), .COUT(n20722), .S0(n69[9]), .S1(n69[10]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_10ms_1798_add_4_11.INJECT1_0 = "NO";
    defparam cnt_10ms_1798_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_10ms_1798_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_10ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n20717), .S1(n69[0]));   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(49[16:29])
    defparam cnt_10ms_1798_add_4_1.INIT0 = 16'hF000;
    defparam cnt_10ms_1798_add_4_1.INIT1 = 16'h0555;
    defparam cnt_10ms_1798_add_4_1.INJECT1_0 = "NO";
    defparam cnt_10ms_1798_add_4_1.INJECT1_1 = "NO";
    PFUMX i44 (.BLUT(n29), .ALUT(n22327), .C0(n603[9]), .Z(n11506));
    LUT4 i323_2_lut_rep_603 (.A(n603[3]), .B(n603[5]), .Z(n23936)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i323_2_lut_rep_603.init = 16'heeee;
    LUT4 i38_4_lut_4_lut (.A(cnt_sum[3]), .B(cnt_sum[5]), .C(cnt_sum[2]), 
         .D(cnt_sum[1]), .Z(n19)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(64[4] 70[11])
    defparam i38_4_lut_4_lut.init = 16'h4002;
    LUT4 mux_51_Mux_5_i31_3_lut_4_lut_then_4_lut (.A(times[4]), .B(times[2]), 
         .C(times[0]), .D(times[1]), .Z(n24000)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam mux_51_Mux_5_i31_3_lut_4_lut_then_4_lut.init = 16'habbb;
    LUT4 mux_51_Mux_5_i31_3_lut_4_lut_else_4_lut (.A(times[4]), .B(times[2]), 
         .C(times[1]), .Z(n23999)) /* synthesis lut_function=(A (B+(C))+!A (B (C)+!B !(C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam mux_51_Mux_5_i31_3_lut_4_lut_else_4_lut.init = 16'he9e9;
    LUT4 i1_4_lut_then_4_lut (.A(n23893), .B(n3320), .C(\state_back_2__N_737[2] ), 
         .D(\state[0] ), .Z(n24009)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_4_lut_then_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_else_4_lut (.A(n23893), .B(n53), .C(\state_back_2__N_737[2] ), 
         .D(\state[0] ), .Z(n24008)) /* synthesis lut_function=(!(A+(B (D)+!B (C+(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_4_lut_else_4_lut.init = 16'h0045;
    LUT4 i4758_1_lut (.A(sda_link), .Z(n6326)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(420[8:11])
    defparam i4758_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_4_lut (.A(times[0]), .B(n22219), .C(n23969), .D(num[1]), 
         .Z(clk_c_enable_139)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut (.A(times[0]), .B(n22219), .C(n23957), .Z(clk_c_enable_28)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam i1_2_lut_3_lut.init = 16'h0404;
    LUT4 i2_4_lut (.A(n7_c), .B(times[2]), .C(times[1]), .D(times[3]), 
         .Z(n22219)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i2_4_lut.init = 16'h0080;
    LUT4 i1698_3_lut_4_lut_rep_520 (.A(times[4]), .B(n23866), .C(n603[10]), 
         .D(n23884), .Z(n23853)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i1698_3_lut_4_lut_rep_520.init = 16'hdfd0;
    LUT4 i15087_3_lut_4_lut_2_lut_4_lut (.A(times[4]), .B(n23866), .C(n603[10]), 
         .D(n23884), .Z(n17045)) /* synthesis lut_function=((B (C+(D))+!B !(C+!(D)))+!A) */ ;
    defparam i15087_3_lut_4_lut_2_lut_4_lut.init = 16'hdfd5;
    LUT4 i2_4_lut_adj_191 (.A(times[4]), .B(n603[9]), .C(n23918), .D(num[3]), 
         .Z(n7_c)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut_adj_191.init = 16'h0004;
    LUT4 times_0__bdd_4_lut_21268 (.A(times[0]), .B(n20), .C(n22346), 
         .D(n23864), .Z(n23610)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam times_0__bdd_4_lut_21268.init = 16'hf077;
    LUT4 i2_3_lut_4_lut_adj_192 (.A(n603[3]), .B(n603[5]), .C(n603[0]), 
         .D(rst_c), .Z(n20592)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i2_3_lut_4_lut_adj_192.init = 16'h1000;
    LUT4 n10030_bdd_4_lut_4_lut (.A(n23883), .B(n23864), .C(n24789), .D(n10030), 
         .Z(n23611)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(B+(C)))) */ ;
    defparam n10030_bdd_4_lut_4_lut.init = 16'h74fc;
    LUT4 times_0__bdd_4_lut_21127 (.A(times[0]), .B(times[1]), .C(times[3]), 
         .D(times[2]), .Z(n23424)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(D))+!A !(B (C (D)+!C !(D))+!B !((D)+!C))) */ ;
    defparam times_0__bdd_4_lut_21127.init = 16'h956b;
    LUT4 times_0__bdd_3_lut_21535 (.A(times[1]), .B(times[3]), .C(times[2]), 
         .Z(n23423)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam times_0__bdd_3_lut_21535.init = 16'h0202;
    LUT4 n23425_bdd_3_lut (.A(n23425), .B(n23422), .C(times[4]), .Z(n23426)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n23425_bdd_3_lut.init = 16'hcaca;
    LUT4 n1163_bdd_3_lut_21102 (.A(times[3]), .B(times[2]), .C(times[1]), 
         .Z(n23428)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n1163_bdd_3_lut_21102.init = 16'h1010;
    LUT4 n1163_bdd_4_lut_21103 (.A(times[0]), .B(times[3]), .C(times[2]), 
         .D(times[1]), .Z(n23429)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B ((D)+!C))) */ ;
    defparam n1163_bdd_4_lut_21103.init = 16'he4ac;
    LUT4 i5047_3_lut_4_lut (.A(n23918), .B(n603[1]), .C(n23865), .D(n603[2]), 
         .Z(n6714)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i5047_3_lut_4_lut.init = 16'hf444;
    LUT4 n23430_bdd_3_lut (.A(n23430), .B(n23427), .C(times[4]), .Z(n23431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n23430_bdd_3_lut.init = 16'hcaca;
    LUT4 n1163_bdd_3_lut_21015_4_lut (.A(n603[5]), .B(n23884), .C(n23906), 
         .D(times[0]), .Z(n23427)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam n1163_bdd_3_lut_21015_4_lut.init = 16'h000d;
    LUT4 times_0__bdd_3_lut_21011_4_lut (.A(n603[5]), .B(n23884), .C(n23906), 
         .D(times[0]), .Z(n23422)) /* synthesis lut_function=(A (B (C+!(D)))+!A (C+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam times_0__bdd_3_lut_21011_4_lut.init = 16'hd0dd;
    LUT4 mux_663_i4_3_lut_4_lut (.A(n603[5]), .B(n23884), .C(n23883), 
         .D(n23992), .Z(n1167)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A (D)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam mux_663_i4_3_lut_4_lut.init = 16'hdf02;
    LUT4 n10695_bdd_4_lut (.A(n23886), .B(n23918), .C(n800), .D(n603[1]), 
         .Z(n23449)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C)+!B (C+(D))))) */ ;
    defparam n10695_bdd_4_lut.init = 16'h5350;
    LUT4 i3_4_lut (.A(n24001), .B(n603[5]), .C(n23884), .D(n603[3]), 
         .Z(db_r_7__N_342[5])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0200;
    LUT4 i20764_3_lut (.A(cnt_sum[4]), .B(cnt_sum[0]), .C(n22_adj_1524), 
         .Z(cnt_2__N_162)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(64[4] 70[11])
    defparam i20764_3_lut.init = 16'h7f7f;
    LUT4 i652_2_lut_rep_512_3_lut_4_lut (.A(times[0]), .B(n23906), .C(n603[10]), 
         .D(times[4]), .Z(n23845)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam i652_2_lut_rep_512_3_lut_4_lut.init = 16'h2000;
    LUT4 i3_4_lut_adj_193 (.A(cnt_sum[2]), .B(cnt_sum[0]), .C(n15918), 
         .D(n10_adj_1525), .Z(cnt_2__N_100[1])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i3_4_lut_adj_193.init = 16'h4000;
    LUT4 i21_3_lut (.A(cnt_sum[6]), .B(cnt_sum[1]), .C(cnt_sum[5]), .Z(n10_adj_1525)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;
    defparam i21_3_lut.init = 16'h4242;
    LUT4 n6021_bdd_3_lut_4_lut (.A(times[2]), .B(n23889), .C(times[4]), 
         .D(times[3]), .Z(n23277)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam n6021_bdd_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_3_lut_4_lut (.A(n23893), .B(rst_c), .C(\state[0] ), .D(\cnt_write[0] ), 
         .Z(n6)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_3_lut_4_lut.init = 16'hffbf;
    LUT4 i2_4_lut_adj_194 (.A(n603[9]), .B(n603[8]), .C(n4), .D(n603[5]), 
         .Z(clk_c_enable_4)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_194.init = 16'h0010;
    LUT4 i4_4_lut (.A(times[0]), .B(times[1]), .C(times[2]), .D(n6_adj_1526), 
         .Z(n3034)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4_4_lut.init = 16'h0100;
    LUT4 i1_2_lut (.A(times[3]), .B(n7_c), .Z(n6_adj_1526)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n5), .B(n603[3]), .C(n22159), .D(n63), .Z(n4)) /* synthesis lut_function=(!(A (B)+!A (B+!((D)+!C)))) */ ;
    defparam i1_4_lut.init = 16'h3323;
    LUT4 i1_4_lut_adj_195 (.A(n603[0]), .B(cnt[1]), .C(n6_adj_1527), .D(cnt[0]), 
         .Z(n5)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_195.init = 16'hbaaa;
    LUT4 num_0__bdd_3_lut_21058 (.A(num[2]), .B(db_r[2]), .C(db_r[6]), 
         .Z(n23508)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam num_0__bdd_3_lut_21058.init = 16'hd8d8;
    LUT4 i2_4_lut_adj_196 (.A(n23882), .B(n603[11]), .C(n23884), .D(n23938), 
         .Z(n22159)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut_adj_196.init = 16'hfffe;
    LUT4 num_0__bdd_3_lut_21057 (.A(num[0]), .B(db_r[0]), .C(db_r[1]), 
         .Z(n23506)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam num_0__bdd_3_lut_21057.init = 16'hd8d8;
    LUT4 num_0__bdd_3_lut (.A(db_r[3]), .B(num[2]), .C(db_r[7]), .Z(n23509)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam num_0__bdd_3_lut.init = 16'hb8b8;
    LUT4 i1_4_lut_adj_197 (.A(rst_c), .B(n603[0]), .C(n23884), .D(n23936), 
         .Z(clk_c_enable_138)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(133[12:17])
    defparam i1_4_lut_adj_197.init = 16'h0a88;
    LUT4 scl_c_bdd_4_lut (.A(scl_c), .B(cnt[1]), .C(cnt[0]), .D(cnt[2]), 
         .Z(n23989)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B+(C+(D)))) */ ;
    defparam scl_c_bdd_4_lut.init = 16'haaa3;
    LUT4 i14485_2_lut (.A(n6927), .B(n603[0]), .Z(n6928)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i14485_2_lut.init = 16'heeee;
    FD1P3IX db_r_i0_i0 (.D(n23610), .SP(clk_c_enable_138), .CD(n20592), 
            .CK(clk_c), .Q(db_r[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam db_r_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_549 (.A(n603[12]), .B(n800), .Z(n23882)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_549.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_198 (.A(n603[12]), .B(n800), .C(n603[11]), 
         .Z(n22160)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_198.init = 16'hfefe;
    LUT4 i5024_3_lut_4_lut (.A(cnt[0]), .B(n23979), .C(n39_adj_1528), 
         .D(n603[10]), .Z(n6690)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(83[11:20])
    defparam i5024_3_lut_4_lut.init = 16'hfef0;
    LUT4 i65_3_lut_4_lut (.A(cnt[0]), .B(n23979), .C(n603[8]), .D(n39_adj_1528), 
         .Z(n49)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(83[11:20])
    defparam i65_3_lut_4_lut.init = 16'h1f10;
    LUT4 i186_2_lut_rep_532_4_lut (.A(num[3]), .B(n23942), .C(num[1]), 
         .D(n23886), .Z(n23865)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(279[10:21])
    defparam i186_2_lut_rep_532_4_lut.init = 16'hfffd;
    LUT4 i2_3_lut_4_lut_adj_199 (.A(cnt[0]), .B(n23979), .C(n31), .D(n603[12]), 
         .Z(n20828)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i2_3_lut_4_lut_adj_199.init = 16'h0d00;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt[0]), .B(n23979), .C(n603[11]), .D(n23918), 
         .Z(n22387)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h00d0;
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt[0]), .B(n23979), .C(n800), .D(n23885), 
         .Z(n33)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_4_lut_adj_200 (.A(n23936), .B(n24_adj_1529), .C(n23947), .D(n603[12]), 
         .Z(clk_c_enable_5)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_200.init = 16'h0004;
    LUT4 i42_4_lut (.A(n603[0]), .B(n43), .C(n23918), .D(n603[1]), .Z(n24_adj_1529)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i42_4_lut.init = 16'hafee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_201 (.A(num[1]), .B(n23956), .C(n22219), 
         .D(times[0]), .Z(clk_c_enable_1)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_201.init = 16'h0010;
    FD1P3IX db_r_i0_i1 (.D(n23426), .SP(clk_c_enable_138), .CD(n20592), 
            .CK(clk_c), .Q(db_r[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam db_r_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_202 (.A(num[1]), .B(n23956), .C(n22219), 
         .D(times[0]), .Z(clk_c_enable_14)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_202.init = 16'h0020;
    LUT4 i1_4_lut_adj_203 (.A(n23886), .B(n1635), .C(n16747), .D(n49), 
         .Z(n43)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i1_4_lut_adj_203.init = 16'h3705;
    LUT4 i1_2_lut_3_lut_4_lut_adj_204 (.A(num[1]), .B(n23942), .C(n22219), 
         .D(times[0]), .Z(clk_c_enable_27)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_204.init = 16'h0020;
    FD1P3IX db_r_i0_i2 (.D(n23431), .SP(clk_c_enable_138), .CD(n20592), 
            .CK(clk_c), .Q(db_r[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam db_r_i0_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_205 (.A(num[1]), .B(n23942), .C(n22219), 
         .D(times[0]), .Z(clk_c_enable_25)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_205.init = 16'h2000;
    LUT4 i5232_2_lut_rep_605 (.A(n603[6]), .B(n603[1]), .Z(n23938)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i5232_2_lut_rep_605.init = 16'heeee;
    LUT4 i64_4_lut (.A(n603[8]), .B(n23885), .C(n1635), .D(n603[9]), 
         .Z(n16747)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i64_4_lut.init = 16'hcfca;
    LUT4 i4_3_lut (.A(cnt_10ms[3]), .B(n8_adj_1530), .C(cnt_10ms[11]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut_adj_206 (.A(n22712), .B(cnt_10ms[7]), .C(n22764), .D(cnt_10ms[15]), 
         .Z(n8_adj_1530)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i3_4_lut_adj_206.init = 16'hffdf;
    LUT4 i20597_4_lut (.A(cnt_10ms[10]), .B(cnt_10ms[2]), .C(cnt_10ms[12]), 
         .D(cnt_10ms[9]), .Z(n22712)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20597_4_lut.init = 16'h8000;
    L6MUX21 i21061 (.D0(n23510), .D1(n23507), .SD(num[1]), .Z(sda_r_N_358));
    LUT4 i20639_4_lut (.A(cnt_10ms[6]), .B(n22714), .C(n22581), .D(cnt_10ms[0]), 
         .Z(n22764)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20639_4_lut.init = 16'h8000;
    LUT4 i9600_4_lut (.A(times[3]), .B(n17045), .C(n792), .D(n23867), 
         .Z(n11367)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i9600_4_lut.init = 16'h858a;
    LUT4 i331_2_lut (.A(n603[3]), .B(n603[10]), .Z(n792)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i331_2_lut.init = 16'heeee;
    LUT4 i20599_4_lut (.A(cnt_10ms[1]), .B(cnt_10ms[8]), .C(cnt_10ms[4]), 
         .D(cnt_10ms[13]), .Z(n22714)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20599_4_lut.init = 16'h8000;
    LUT4 i20480_2_lut (.A(cnt_10ms[14]), .B(cnt_10ms[5]), .Z(n22581)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20480_2_lut.init = 16'h8888;
    LUT4 mux_323_i5_4_lut (.A(n603[0]), .B(n23611), .C(n23936), .D(n23884), 
         .Z(db_r_7__N_342[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam mux_323_i5_4_lut.init = 16'h0aca;
    LUT4 i2_4_lut_adj_207 (.A(n603[1]), .B(n1635), .C(n603[0]), .D(n4_adj_1531), 
         .Z(n20944)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i2_4_lut_adj_207.init = 16'hfbfa;
    PFUMX i21059 (.BLUT(n23509), .ALUT(n23508), .C0(num[0]), .Z(n23510));
    LUT4 i27_4_lut (.A(n23953), .B(n17045), .C(n792), .D(times[1]), 
         .Z(n21738)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i27_4_lut.init = 16'hc50a;
    LUT4 i1_4_lut_adj_208 (.A(n23885), .B(n603[8]), .C(n6_adj_1532), .D(n603[11]), 
         .Z(n4_adj_1531)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_208.init = 16'h3332;
    LUT4 i2_2_lut (.A(n603[9]), .B(n603[6]), .Z(n6_adj_1532)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_209 (.A(num[0]), .B(n23965), .C(n22219), 
         .D(times[0]), .Z(clk_c_enable_19)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_209.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_210 (.A(num[0]), .B(n23965), .C(n22219), 
         .D(times[0]), .Z(clk_c_enable_24)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_210.init = 16'h2000;
    LUT4 i2_3_lut_4_lut_adj_211 (.A(n603[6]), .B(n603[1]), .C(cnt[2]), 
         .D(n603[11]), .Z(n6_adj_1527)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i2_3_lut_4_lut_adj_211.init = 16'h0f0e;
    LUT4 i5016_4_lut (.A(n603[14]), .B(n603[13]), .C(n23884), .D(n22183), 
         .Z(n6682)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i5016_4_lut.init = 16'heca0;
    LUT4 i4_4_lut_adj_212 (.A(n23950), .B(n22326), .C(num[2]), .D(n22489), 
         .Z(n22183)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i4_4_lut_adj_212.init = 16'h0008;
    LUT4 i20403_2_lut (.A(num[0]), .B(num[1]), .Z(n22489)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20403_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_213 (.A(num[0]), .B(n23965), .C(n22219), 
         .D(times[0]), .Z(clk_c_enable_17)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_213.init = 16'h0010;
    LUT4 i1_2_lut_adj_214 (.A(cnt[0]), .B(num[3]), .Z(n22326)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_214.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_215 (.A(num[0]), .B(n23965), .C(n22326), .D(n23979), 
         .Z(n10695)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i2_3_lut_4_lut_adj_215.init = 16'hffef;
    LUT4 i1_4_lut_4_lut (.A(n603[6]), .B(n603[1]), .C(n22160), .D(n23886), 
         .Z(n63)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i1_4_lut_4_lut.init = 16'h0032;
    LUT4 i1_4_lut_adj_216 (.A(n603[13]), .B(n62), .C(n23865), .D(n23864), 
         .Z(n6684)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(150[12:17])
    defparam i1_4_lut_adj_216.init = 16'hb3a0;
    LUT4 i2_4_lut_adj_217 (.A(times[3]), .B(times[4]), .C(times[1]), .D(times[2]), 
         .Z(n62)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut_adj_217.init = 16'hfeee;
    LUT4 i5020_4_lut (.A(n603[12]), .B(n22387), .C(n31), .D(n23886), 
         .Z(n6686)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i5020_4_lut.init = 16'hecee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_218 (.A(num[0]), .B(n23965), .C(n22219), 
         .D(times[0]), .Z(clk_c_enable_23)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_218.init = 16'h1000;
    LUT4 i5022_4_lut (.A(n603[11]), .B(cnt[0]), .C(n10305), .D(n4_adj_1533), 
         .Z(n6688)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i5022_4_lut.init = 16'hb3a0;
    LUT4 i2_3_lut (.A(n603[9]), .B(n10695), .C(num[3]), .Z(n39_adj_1528)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut.init = 16'h2020;
    LUT4 i5028_4_lut (.A(n603[9]), .B(n23884), .C(n10695), .D(n603[8]), 
         .Z(n6694)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i5028_4_lut.init = 16'hb3a0;
    LUT4 i5030_4_lut (.A(n6695), .B(n22183), .C(n603[7]), .D(n23885), 
         .Z(n6696)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i5030_4_lut.init = 16'haaea;
    LUT4 i1_4_lut_adj_219 (.A(n23865), .B(n603[6]), .C(n603[7]), .D(n23863), 
         .Z(n6698)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(254[7:21])
    defparam i1_4_lut_adj_219.init = 16'heca0;
    LUT4 i1_4_lut_adj_220 (.A(n603[6]), .B(n23864), .C(n10305), .D(n62), 
         .Z(n6700)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(150[12:17])
    defparam i1_4_lut_adj_220.init = 16'heca0;
    LUT4 i1_4_lut_adj_221 (.A(n10695), .B(n603[5]), .C(n603[4]), .D(n23884), 
         .Z(n6702)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_221.init = 16'hdc50;
    LUT4 i5040_4_lut (.A(n23865), .B(n23884), .C(n603[4]), .D(n603[3]), 
         .Z(n6706)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i5040_4_lut.init = 16'hb3a0;
    LUT4 i5043_4_lut (.A(n603[3]), .B(n10695), .C(n23884), .D(n603[2]), 
         .Z(n6710)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i5043_4_lut.init = 16'hb3a0;
    LUT4 i1_2_lut_adj_222 (.A(n603[2]), .B(n603[7]), .Z(n1635)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_222.init = 16'heeee;
    LUT4 mux_323_i7_4_lut (.A(n603[0]), .B(n1170), .C(n23936), .D(n23884), 
         .Z(db_r_7__N_342[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam mux_323_i7_4_lut.init = 16'h0aca;
    LUT4 mux_663_i7_4_lut (.A(n15), .B(n10030), .C(n23864), .D(times[4]), 
         .Z(n1170)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam mux_663_i7_4_lut.init = 16'h3f3a;
    LUT4 i13753_4_lut (.A(times[3]), .B(times[2]), .C(times[0]), .D(times[1]), 
         .Z(n15)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+(D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(150[12:17])
    defparam i13753_4_lut.init = 16'ha899;
    LUT4 mux_51_Mux_3_i31_4_lut_then_2_lut (.A(times[4]), .B(times[3]), 
         .Z(n23991)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam mux_51_Mux_3_i31_4_lut_then_2_lut.init = 16'hbbbb;
    LUT4 mux_51_Mux_3_i31_4_lut_else_2_lut (.A(times[1]), .B(times[4]), 
         .C(times[3]), .D(times[0]), .Z(n23990)) /* synthesis lut_function=(A (B+!(C (D)))+!A ((C+(D))+!B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam mux_51_Mux_3_i31_4_lut_else_2_lut.init = 16'hdffb;
    LUT4 mux_323_i8_4_lut (.A(n603[0]), .B(n10030), .C(n23936), .D(n23864), 
         .Z(db_r_7__N_342[7])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam mux_323_i8_4_lut.init = 16'h3a0a;
    LUT4 i4_1_lut_rep_606 (.A(num[0]), .Z(n23939)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i4_1_lut_rep_606.init = 16'h5555;
    LUT4 i20678_3_lut_3_lut (.A(num[0]), .B(db_r[5]), .C(db_r[4]), .Z(n22805)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i20678_3_lut_3_lut.init = 16'he4e4;
    LUT4 i18677_2_lut (.A(num[1]), .B(num[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(290[15:23])
    defparam i18677_2_lut.init = 16'h6666;
    LUT4 n10695_bdd_3_lut_4_lut (.A(cnt[1]), .B(n23970), .C(num[3]), .D(n10695), 
         .Z(n23448)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam n10695_bdd_3_lut_4_lut.init = 16'h01f1;
    LUT4 i5050_3_lut_4_lut (.A(cnt[1]), .B(n23970), .C(n603[0]), .D(n603[1]), 
         .Z(n6718)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i5050_3_lut_4_lut.init = 16'hfef0;
    FD1P3IX db_r_i0_i3 (.D(n1167), .SP(clk_c_enable_138), .CD(n20592), 
            .CK(clk_c), .Q(db_r[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam db_r_i0_i3.GSR = "DISABLED";
    PFUMX i21055 (.BLUT(n22805), .ALUT(n23506), .C0(num[2]), .Z(n23507));
    LUT4 i18633_2_lut (.A(n603[0]), .B(times[0]), .Z(n25[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i18633_2_lut.init = 16'h6666;
    LUT4 i9652_4_lut (.A(n23845), .B(times[0]), .C(n23853), .D(n20), 
         .Z(n11420)) /* synthesis lut_function=(A (B (C))+!A (B+!(C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i9652_4_lut.init = 16'hc4c5;
    LUT4 i3_4_lut_adj_223 (.A(times[2]), .B(n23853), .C(times[4]), .D(n23845), 
         .Z(n8)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i3_4_lut_adj_223.init = 16'h0002;
    LUT4 i13300_4_lut (.A(n603[12]), .B(n23886), .C(n603[11]), .D(n22239), 
         .Z(n1834[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i13300_4_lut.init = 16'hcfca;
    LUT4 i1_3_lut (.A(n23885), .B(n800), .C(sda_r_N_358), .Z(n22239)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i1_3_lut.init = 16'hf7f7;
    LUT4 i2_4_lut_adj_224 (.A(n603[13]), .B(n603[4]), .C(n603[2]), .D(n603[7]), 
         .Z(n800)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut_adj_224.init = 16'hfffe;
    LUT4 i1_4_lut_adj_225 (.A(n22688), .B(n33), .C(n23862), .D(n603[2]), 
         .Z(n29)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_225.init = 16'hccdc;
    LUT4 i20578_3_lut (.A(n603[7]), .B(n603[4]), .C(n603[13]), .Z(n22688)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i20578_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut_adj_226 (.A(cnt[1]), .B(cnt[2]), .C(n23896), .D(n22326), 
         .Z(n22327)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut_adj_226.init = 16'h0200;
    PFUMX i37 (.BLUT(n17), .ALUT(n19), .C0(cnt_sum[6]), .Z(n22_adj_1524));
    LUT4 i7442_2_lut_3_lut_4_lut (.A(num[1]), .B(n23969), .C(n22219), 
         .D(times[0]), .Z(clk_c_enable_3)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i7442_2_lut_3_lut_4_lut.init = 16'h0040;
    FD1S3IX cnt_sum_1799_1800__i4 (.D(n1[3]), .CK(clk_c), .CD(n11491), 
            .Q(cnt_sum[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(57[15:27])
    defparam cnt_sum_1799_1800__i4.GSR = "ENABLED";
    LUT4 i20842_4_lut (.A(times[2]), .B(n23948), .C(times[0]), .D(times[1]), 
         .Z(n22346)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i20842_4_lut.init = 16'hefed;
    LUT4 i1_4_lut_adj_227 (.A(cnt_sum[3]), .B(cnt_sum[2]), .C(cnt_sum[5]), 
         .D(cnt_sum[1]), .Z(n17)) /* synthesis lut_function=(!((B (C+(D))+!B !(C (D)))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(64[4] 70[11])
    defparam i1_4_lut_adj_227.init = 16'h2008;
    LUT4 i1_2_lut_rep_595 (.A(y_axis[11]), .B(y_axis[13]), .Z(n23928)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_595.init = 16'heeee;
    LUT4 i18684_2_lut_3_lut (.A(num[1]), .B(num[0]), .C(num[2]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(290[15:23])
    defparam i18684_2_lut_3_lut.init = 16'h7878;
    LUT4 i18691_3_lut_4_lut (.A(num[1]), .B(num[0]), .C(num[2]), .D(num[3]), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(290[15:23])
    defparam i18691_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4_3_lut_4_lut (.A(y_axis[11]), .B(y_axis[13]), .C(\y_axis[10] ), 
         .D(n7), .Z(n10542)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_609 (.A(num[0]), .B(num[2]), .Z(n23942)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(279[10:21])
    defparam i1_2_lut_rep_609.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_228 (.A(num[0]), .B(num[2]), .C(n3034), 
         .D(num[1]), .Z(clk_c_enable_12)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(279[10:21])
    defparam i1_2_lut_3_lut_4_lut_adj_228.init = 16'h1000;
    LUT4 i2_3_lut_rep_552_4_lut (.A(num[0]), .B(num[2]), .C(num[1]), .D(num[3]), 
         .Z(n23885)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(279[10:21])
    defparam i2_3_lut_rep_552_4_lut.init = 16'hfeff;
    LUT4 i20807_4_lut_then_4_lut (.A(n23853), .B(times[4]), .C(n23906), 
         .D(times[0]), .Z(n23997)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;
    defparam i20807_4_lut_then_4_lut.init = 16'h5551;
    LUT4 i1_2_lut_rep_614 (.A(n603[10]), .B(n603[14]), .Z(n23947)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam i1_2_lut_rep_614.init = 16'heeee;
    LUT4 i20482_2_lut_rep_615 (.A(times[4]), .B(times[3]), .Z(n23948)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20482_2_lut_rep_615.init = 16'heeee;
    LUT4 i3_3_lut_rep_550_4_lut (.A(times[4]), .B(times[3]), .C(times[2]), 
         .D(n23949), .Z(n23883)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3_3_lut_rep_550_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_616 (.A(times[1]), .B(times[0]), .Z(n23949)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i1_2_lut_rep_616.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_adj_229 (.A(times[1]), .B(times[0]), .C(times[2]), 
         .D(n23948), .Z(n10030)) /* synthesis lut_function=(!(A (C+(D))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i1_4_lut_4_lut_adj_229.init = 16'h005e;
    LUT4 i1_2_lut_rep_617 (.A(cnt[2]), .B(cnt[1]), .Z(n23950)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i1_2_lut_rep_617.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_adj_230 (.A(cnt[2]), .B(cnt[1]), .C(n603[14]), 
         .D(n603[10]), .Z(n4_adj_1533)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i1_2_lut_3_lut_4_lut_adj_230.init = 16'h4440;
    PFUMX i21024 (.BLUT(n23449), .ALUT(n23448), .C0(n603[9]), .Z(clk_c_enable_127));
    LUT4 i18635_2_lut_rep_620 (.A(n603[0]), .B(times[0]), .Z(n23953)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i18635_2_lut_rep_620.init = 16'h8888;
    LUT4 i18644_2_lut_rep_556_3_lut (.A(n603[0]), .B(times[0]), .C(times[1]), 
         .Z(n23889)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i18644_2_lut_rep_556_3_lut.init = 16'h8080;
    PFUMX i21016 (.BLUT(n23429), .ALUT(n23428), .C0(n23864), .Z(n23430));
    LUT4 i28_2_lut_3_lut_4_lut (.A(n603[0]), .B(times[0]), .C(times[2]), 
         .D(times[1]), .Z(n10)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i28_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i18651_2_lut_rep_534_3_lut_4_lut (.A(n603[0]), .B(times[0]), .C(times[2]), 
         .D(times[1]), .Z(n23867)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(175[16:26])
    defparam i18651_2_lut_rep_534_3_lut_4_lut.init = 16'h8000;
    FD1S3AX scl_r_366 (.D(n23989), .CK(clk_c), .Q(scl_c)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(81[8] 84[18])
    defparam scl_r_366.GSR = "ENABLED";
    LUT4 i14127_4_lut_then_4_lut (.A(times[4]), .B(times[0]), .C(times[3]), 
         .D(times[2]), .Z(n24788)) /* synthesis lut_function=(!(A+(B (C)+!B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam i14127_4_lut_then_4_lut.init = 16'h0515;
    LUT4 n6021_bdd_4_lut (.A(n23853), .B(n23845), .C(n23906), .D(times[4]), 
         .Z(n23276)) /* synthesis lut_function=(A (D)+!A !(B+(C+!(D)))) */ ;
    defparam n6021_bdd_4_lut.init = 16'hab00;
    LUT4 i20807_4_lut_else_4_lut (.A(n23853), .B(times[4]), .C(n23906), 
         .D(n603[3]), .Z(n23996)) /* synthesis lut_function=(!(A (D)+!A !((C+!(D))+!B))) */ ;
    defparam i20807_4_lut_else_4_lut.init = 16'h51ff;
    PFUMX i21012 (.BLUT(n23424), .ALUT(n23423), .C0(n23864), .Z(n23425));
    LUT4 i1_2_lut_rep_623 (.A(num[0]), .B(num[2]), .Z(n23956)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_rep_623.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_231 (.A(num[0]), .B(num[2]), .C(n3034), 
         .D(num[1]), .Z(clk_c_enable_15)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_231.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_232 (.A(num[0]), .B(num[2]), .C(n3034), 
         .D(num[1]), .Z(clk_c_enable_21)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_232.init = 16'h4000;
    LUT4 i2_3_lut_rep_624 (.A(num[1]), .B(num[2]), .C(num[0]), .Z(n23957)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut_rep_624.init = 16'hdfdf;
    LUT4 i1_2_lut_4_lut (.A(num[1]), .B(num[2]), .C(num[0]), .D(n3034), 
         .Z(clk_c_enable_13)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h2000;
    PFUMX i21572 (.BLUT(n24787), .ALUT(n24788), .C0(times[1]), .Z(n24789));
    LUT4 equal_93_i4_2_lut_rep_632 (.A(num[1]), .B(num[2]), .Z(n23965)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam equal_93_i4_2_lut_rep_632.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_233 (.A(num[1]), .B(num[2]), .C(n3034), 
         .D(num[0]), .Z(clk_c_enable_9)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_233.init = 16'h1000;
    LUT4 equal_93_i5_2_lut_rep_563_3_lut (.A(num[1]), .B(num[2]), .C(num[0]), 
         .Z(n23896)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam equal_93_i5_2_lut_rep_563_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_234 (.A(num[1]), .B(num[2]), .C(n3034), 
         .D(num[0]), .Z(clk_c_enable_8)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(357[15:36])
    defparam i1_2_lut_3_lut_4_lut_adj_234.init = 16'h0010;
    LUT4 i14486_2_lut_rep_533_3_lut_4_lut (.A(times[1]), .B(times[2]), .C(times[0]), 
         .D(times[3]), .Z(n23866)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam i14486_2_lut_rep_533_3_lut_4_lut.init = 16'hffef;
    LUT4 i2_2_lut_rep_573_3_lut (.A(times[1]), .B(times[2]), .C(times[3]), 
         .Z(n23906)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam i2_2_lut_rep_573_3_lut.init = 16'hfefe;
    LUT4 i43_2_lut_3_lut_4_lut (.A(times[1]), .B(times[2]), .C(times[4]), 
         .D(times[3]), .Z(n20)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam i43_2_lut_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i14477_2_lut_rep_636 (.A(num[0]), .B(num[2]), .Z(n23969)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14477_2_lut_rep_636.init = 16'h8888;
    LUT4 i7420_2_lut_3_lut_4_lut (.A(num[0]), .B(num[2]), .C(n3034), .D(num[1]), 
         .Z(clk_c_enable_16)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i7420_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_637 (.A(cnt[2]), .B(cnt[0]), .Z(n23970)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(400[11] 406[22])
    defparam i1_2_lut_rep_637.init = 16'hbbbb;
    LUT4 i14302_2_lut_rep_585_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[1]), 
         .Z(n23918)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(400[11] 406[22])
    defparam i14302_2_lut_rep_585_3_lut.init = 16'hfbfb;
    LUT4 i648_2_lut_rep_529_3_lut_4_lut (.A(cnt[2]), .B(cnt[0]), .C(n603[1]), 
         .D(cnt[1]), .Z(n23862)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(400[11] 406[22])
    defparam i648_2_lut_rep_529_3_lut_4_lut.init = 16'h0040;
    LUT4 i2_2_lut_adj_235 (.A(y_axis[9]), .B(y_axis[12]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_235.init = 16'heeee;
    LUT4 i1_4_lut_adj_236 (.A(cnt_sum[4]), .B(n22_adj_1524), .C(cnt_sum[0]), 
         .D(n23_adj_1535), .Z(cnt_2__N_100[0])) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_236.init = 16'hff7f;
    LUT4 i3_4_lut_adj_237 (.A(cnt_sum[1]), .B(cnt_sum[5]), .C(n15918), 
         .D(n22_adj_1536), .Z(n23_adj_1535)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_adj_237.init = 16'h1000;
    LUT4 cnt_2__I_0_412_i4_2_lut_rep_646 (.A(cnt[1]), .B(cnt[2]), .Z(n23979)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam cnt_2__I_0_412_i4_2_lut_rep_646.init = 16'hdddd;
    LUT4 i5029_2_lut_3_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(n603[8]), 
         .D(cnt[0]), .Z(n6695)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i5029_2_lut_3_lut_4_lut.init = 16'hf0d0;
    LUT4 cnt_2__I_0_405_i5_2_lut_rep_551_3_lut (.A(cnt[1]), .B(cnt[2]), 
         .C(cnt[0]), .Z(n23884)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam cnt_2__I_0_405_i5_2_lut_rep_551_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .Z(n10305)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hefef;
    LUT4 i663_2_lut_rep_531_3_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(n603[5]), 
         .D(cnt[0]), .Z(n23864)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i663_2_lut_rep_531_3_lut_4_lut.init = 16'h0020;
    LUT4 cnt_2__I_0_412_i5_2_lut_rep_553_3_lut (.A(cnt[1]), .B(cnt[2]), 
         .C(cnt[0]), .Z(n23886)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam cnt_2__I_0_412_i5_2_lut_rep_553_3_lut.init = 16'hdfdf;
    LUT4 i20837_2_lut_3_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(n603[1]), 
         .D(cnt[0]), .Z(n16250)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i20837_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_530_3_lut_4_lut_4_lut_3_lut (.A(cnt[1]), .B(cnt[2]), 
         .C(cnt[0]), .Z(n23863)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(277[9:17])
    defparam i1_2_lut_rep_530_3_lut_4_lut_4_lut_3_lut.init = 16'h1010;
    LUT4 i46_2_lut (.A(cnt_sum[6]), .B(cnt_sum[2]), .Z(n22_adj_1536)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i46_2_lut.init = 16'h6666;
    LUT4 i14164_2_lut (.A(cnt_sum[3]), .B(cnt_sum[4]), .Z(n15918)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14164_2_lut.init = 16'h8888;
    LUT4 i20754_4_lut (.A(n7_adj_1537), .B(cnt_sum[2]), .C(cnt_sum[4]), 
         .D(cnt_sum[6]), .Z(n11491)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(54[11:27])
    defparam i20754_4_lut.init = 16'h4000;
    LUT4 i2_4_lut_adj_238 (.A(cnt_sum[3]), .B(cnt_sum[1]), .C(cnt_sum[5]), 
         .D(cnt_sum[0]), .Z(n7_adj_1537)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i2_4_lut_adj_238.init = 16'hbfff;
    FD1P3AX ACC_XH_READ__i1 (.D(sda_out), .SP(clk_c_enable_139), .CK(clk_c), 
            .Q(\x_axis[8] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=14, LSE_RCOL=4, LSE_LLINE=55, LSE_RLINE=66 */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(173[4] 417[10])
    defparam ACC_XH_READ__i1.GSR = "ENABLED";
    LUT4 i14127_4_lut_else_4_lut (.A(times[4]), .B(times[3]), .C(times[2]), 
         .Z(n24787)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/22822/desktop/sensor_board/mpu6050_i2c.v(208[7] 230[14])
    defparam i14127_4_lut_else_4_lut.init = 16'h1414;
    PFUMX i21144 (.BLUT(n24008), .ALUT(n24009), .C0(\state[1] ), .Z(clk_c_enable_108));
    PFUMX i21138 (.BLUT(n23999), .ALUT(n24000), .C0(times[3]), .Z(n24001));
    
endmodule
//
// Verilog Description of module segment_LED
//

module segment_LED (num_decade, seg_led_1_c_1, seg_led_1_c_0, num_unit, 
            seg_led_2_c_0, seg_led_2_c_1, seg_led_1_c_3, seg_led_2_c_3, 
            seg_led_2_c_5, seg_led_1_c_2, seg_led_2_c_2, seg_led_2_c_4, 
            seg_led_1_c_6, seg_led_1_c_4, seg_led_2_c_6, seg_led_1_c_5, 
            seg_led_1_c_7, seg_led_2_c_7) /* synthesis syn_module_defined=1 */ ;
    input [3:0]num_decade;
    output seg_led_1_c_1;
    output seg_led_1_c_0;
    input [3:0]num_unit;
    output seg_led_2_c_0;
    output seg_led_2_c_1;
    output seg_led_1_c_3;
    output seg_led_2_c_3;
    output seg_led_2_c_5;
    output seg_led_1_c_2;
    output seg_led_2_c_2;
    output seg_led_2_c_4;
    output seg_led_1_c_6;
    output seg_led_1_c_4;
    output seg_led_2_c_6;
    output seg_led_1_c_5;
    output seg_led_1_c_7;
    output seg_led_2_c_7;
    
    
    LUT4 num_decade_1__bdd_4_lut (.A(num_decade[1]), .B(num_decade[3]), 
         .C(num_decade[2]), .D(num_decade[0]), .Z(seg_led_1_c_1)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam num_decade_1__bdd_4_lut.init = 16'h671f;
    LUT4 num_decade_0__bdd_4_lut_21122 (.A(num_decade[0]), .B(num_decade[3]), 
         .C(num_decade[1]), .D(num_decade[2]), .Z(seg_led_1_c_0)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam num_decade_0__bdd_4_lut_21122.init = 16'hf67d;
    LUT4 num_unit_0__bdd_4_lut_21117 (.A(num_unit[0]), .B(num_unit[3]), 
         .C(num_unit[1]), .D(num_unit[2]), .Z(seg_led_2_c_0)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam num_unit_0__bdd_4_lut_21117.init = 16'hf67d;
    LUT4 num_unit_1__bdd_4_lut_21125 (.A(num_unit[1]), .B(num_unit[3]), 
         .C(num_unit[2]), .D(num_unit[0]), .Z(seg_led_2_c_1)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam num_unit_1__bdd_4_lut_21125.init = 16'h671f;
    LUT4 num_decade_3__bdd_4_lut_21123 (.A(num_decade[3]), .B(num_decade[1]), 
         .C(num_decade[0]), .D(num_decade[2]), .Z(seg_led_1_c_3)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam num_decade_3__bdd_4_lut_21123.init = 16'h3ee7;
    LUT4 num_unit_3__bdd_4_lut (.A(num_unit[3]), .B(num_unit[1]), .C(num_unit[0]), 
         .D(num_unit[2]), .Z(seg_led_2_c_3)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam num_unit_3__bdd_4_lut.init = 16'h3ee7;
    LUT4 num_unit_0__bdd_4_lut (.A(num_unit[0]), .B(num_unit[3]), .C(num_unit[2]), 
         .D(num_unit[1]), .Z(seg_led_2_c_5)) /* synthesis lut_function=(A (B ((D)+!C)+!B !((D)+!C))+!A (B+(C+!(D)))) */ ;
    defparam num_unit_0__bdd_4_lut.init = 16'hdc7d;
    LUT4 num_decade_0__bdd_4_lut_21124 (.A(num_decade[0]), .B(num_decade[3]), 
         .C(num_decade[2]), .D(num_decade[1]), .Z(seg_led_1_c_2)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C)+!B !(C+!(D))))) */ ;
    defparam num_decade_0__bdd_4_lut_21124.init = 16'h3ebf;
    LUT4 num_unit_0__bdd_4_lut_21120 (.A(num_unit[0]), .B(num_unit[3]), 
         .C(num_unit[2]), .D(num_unit[1]), .Z(seg_led_2_c_2)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C)+!B !(C+!(D))))) */ ;
    defparam num_unit_0__bdd_4_lut_21120.init = 16'h3ebf;
    LUT4 num_unit_0__bdd_4_lut_21121 (.A(num_unit[0]), .B(num_unit[3]), 
         .C(num_unit[2]), .D(num_unit[1]), .Z(seg_led_2_c_4)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam num_unit_0__bdd_4_lut_21121.init = 16'hddc5;
    LUT4 num_decade_3__bdd_4_lut_21126 (.A(num_decade[3]), .B(num_decade[1]), 
         .C(num_decade[0]), .D(num_decade[2]), .Z(seg_led_1_c_6)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam num_decade_3__bdd_4_lut_21126.init = 16'hbdee;
    LUT4 num_decade_0__bdd_4_lut (.A(num_decade[0]), .B(num_decade[3]), 
         .C(num_decade[2]), .D(num_decade[1]), .Z(seg_led_1_c_4)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam num_decade_0__bdd_4_lut.init = 16'hddc5;
    LUT4 num_unit_1__bdd_4_lut (.A(num_unit[1]), .B(num_unit[3]), .C(num_unit[0]), 
         .D(num_unit[2]), .Z(seg_led_2_c_6)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B (D))) */ ;
    defparam num_unit_1__bdd_4_lut.init = 16'hdbee;
    LUT4 num_decade_3__bdd_4_lut (.A(num_decade[3]), .B(num_decade[0]), 
         .C(num_decade[2]), .D(num_decade[1]), .Z(seg_led_1_c_5)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam num_decade_3__bdd_4_lut.init = 16'hba7b;
    LUT4 i1_2_lut_3_lut_4_lut (.A(num_decade[1]), .B(num_decade[2]), .C(num_decade[0]), 
         .D(num_decade[3]), .Z(seg_led_1_c_7)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/segment.v(48[28:43])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_adj_190 (.A(num_unit[1]), .B(num_unit[2]), 
         .C(num_unit[0]), .D(num_unit[3]), .Z(seg_led_2_c_7)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_190.init = 16'h0200;
    
endmodule
//
// Verilog Description of module ds18b20_dataprocess
//

module ds18b20_dataprocess (GND_net, data_out, num_unit, clk_c, \tem_data[20] , 
            \tem_data[18] , \tem_data[19] , \tem_data[17] , num_decade, 
            num_unit_3__N_923, num_unit_3__N_932, n23830, n23810, num_unit_3__N_933, 
            num_unit_3__N_941, n23, num_unit_3__N_964, num_unit_3__N_960, 
            n23244, n23243, n23817, n23206) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]data_out;
    output [3:0]num_unit;
    input clk_c;
    output \tem_data[20] ;
    output \tem_data[18] ;
    output \tem_data[19] ;
    output \tem_data[17] ;
    output [3:0]num_decade;
    output num_unit_3__N_923;
    output num_unit_3__N_932;
    output n23830;
    output n23810;
    input num_unit_3__N_933;
    input num_unit_3__N_941;
    output n23;
    input num_unit_3__N_964;
    input num_unit_3__N_960;
    output n23244;
    output n23243;
    output n23817;
    output n23206;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(32[11:14])
    
    wire n20795, n6414, n20794, n8, n7;
    wire [10:0]tem_code_10__N_1474;
    wire [14:0]n6398;
    
    wire n20793;
    wire [3:0]n480;
    
    wire n23683;
    wire [3:0]n484;
    
    wire n23671;
    wire [3:0]n489;
    
    wire num_unit_3__N_1358;
    wire [3:0]n461;
    
    wire n23781;
    wire [3:0]n464;
    
    wire n23776, n23772;
    wire [3:0]n494;
    
    wire n23632;
    wire [3:0]n497;
    
    wire n23624, n23616, n20792;
    wire [10:0]tem_code;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(47[16:24])
    
    wire tem_flag_N_1496, n20748;
    wire [16:0]n6355;
    wire [17:0]n6421;
    
    wire n20749, n20791, n20747, n20746;
    wire [20:0]tem_data;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(48[16:24])
    
    wire n20790, n20745, n20743, n20789, n20788, n6440, n20742;
    wire [3:0]n467;
    
    wire n20787, n20786, n20741, n20740, n20785, n23780, n23775, 
        n23769, n23663, n20739, n20784, n23677;
    wire [3:0]n483;
    
    wire n23670, n23627;
    wire [3:0]n496;
    
    wire n23623;
    wire [3:0]n499;
    
    wire n20772, n6373, n20771, n20770, n20769, n20768, n20767;
    wire [2:0]n2147;
    wire [3:0]n501;
    
    wire n24784, n24785, n23681, n23660, n23982, n23983, n6633;
    wire [3:0]n460;
    
    wire n23786;
    wire [3:0]n462;
    
    wire n23779, n23766, n23765, n35, n23826;
    wire [3:0]n453;
    
    wire n23820, n23714, n23701, n23694, n23682;
    wire [3:0]n475;
    
    wire n23709;
    wire [3:0]n479;
    
    wire n23697, n23691, n23684, n23678;
    wire [3:0]n468;
    wire [3:0]n466;
    
    wire n24003, n24002, n24799;
    wire [3:0]n478;
    
    wire n23703, n23696, n23685, n23704, n4;
    wire [3:0]n477;
    
    wire n23705;
    wire [3:0]n481;
    
    wire n23687, n23700, n23615, n23614, n3125;
    wire [2:0]n2146;
    
    wire n20751;
    wire [3:0]n474;
    
    wire n23708, n23636, n23635;
    wire [3:0]n498;
    
    wire n23621;
    wire [3:0]n495;
    
    wire n23637;
    wire [3:0]n472;
    
    wire n23722;
    wire [3:0]n476;
    
    wire n23707, n23622, n23693, n23689, n23715, n23706, n23695, 
        n23717, n23716, n23690, n22825, n24792, n24791, n23718, 
        n23711, n23698;
    wire [3:0]n482;
    wire [3:0]n490;
    
    wire n23644, n23719, n23710, n23699, n23631, n23625, n23720, 
        n23666;
    wire [3:0]n491;
    
    wire n23649, n23655, n23734, n23721, n23613;
    wire [2:0]n486;
    
    wire n23640, n23639;
    wire [3:0]n471;
    
    wire n23730;
    wire [3:0]n492;
    
    wire n23642;
    wire [3:0]n493;
    
    wire n23724, n23630, n20750, n23725;
    wire [3:0]n500;
    wire [3:0]n469;
    
    wire n23726, n23712;
    wire [3:0]n470;
    
    wire n23729, n23643, n23741, n23728, n23735, n23727, n23737, 
        n23736, n23739, n23732, n23738, n23731, n23740, n23748, 
        n23743, n23744;
    wire [3:0]n485;
    
    wire n23651, n23647, n23650, n23646, n23747, n23752, n23746, 
        n23652, n23754, n23753, n23755, n23750, n23756, n23749, 
        n23761;
    wire [3:0]n465;
    
    wire n23758, n23673;
    wire [3:0]n488;
    
    wire n23659, n23654, n23759, n23760, n2, n23664;
    wire [3:0]n487;
    
    wire n23658, n3686, n3730, n3708, n23686, n23675, n23662, 
        n23656, n23762, n23668, n23768, n23764, n23774, n23669, 
        n23661, n23763, n23767, n23672, n23771, n24776, n23773, 
        n23777, n23617, n23674, n23822, n23657, n23985, n23986, 
        n23782, n23778, n29, n23784;
    wire [3:0]n459;
    
    wire n23785, n23679, n23790, n23789, n23791, n23788, n23792, 
        n23787, n23793, n23794, n23795, n3116, n23798, n23803;
    wire [3:0]n457;
    
    wire n23799, n23797, n23800, n23796, n23801, n23802;
    wire [3:0]n455;
    
    wire n23809, n23805, n23807, n23804, n23808, n23812, n23811;
    wire [3:0]n454;
    
    wire n23819, n23814, n23818, n23821, n23823, n23824, n23829;
    
    CCU2D add_4794_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n20795), 
          .S0(n6414));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4794_cout.INIT0 = 16'h0000;
    defparam add_4794_cout.INIT1 = 16'h0000;
    defparam add_4794_cout.INJECT1_0 = "NO";
    defparam add_4794_cout.INJECT1_1 = "NO";
    CCU2D add_4794_11 (.A0(n8), .B0(n7), .C0(tem_code_10__N_1474[9]), 
          .D0(data_out[9]), .A1(n8), .B1(n7), .C1(tem_code_10__N_1474[10]), 
          .D1(data_out[10]), .CIN(n20794), .COUT(n20795), .S0(n6398[13]), 
          .S1(n6398[14]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4794_11.INIT0 = 16'hf1e0;
    defparam add_4794_11.INIT1 = 16'hf1e0;
    defparam add_4794_11.INJECT1_0 = "NO";
    defparam add_4794_11.INJECT1_1 = "NO";
    CCU2D add_4794_9 (.A0(n8), .B0(n7), .C0(tem_code_10__N_1474[7]), .D0(data_out[7]), 
          .A1(n8), .B1(n7), .C1(tem_code_10__N_1474[8]), .D1(data_out[8]), 
          .CIN(n20793), .COUT(n20794), .S0(n6398[11]), .S1(n6398[12]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4794_9.INIT0 = 16'hf1e0;
    defparam add_4794_9.INIT1 = 16'hf1e0;
    defparam add_4794_9.INJECT1_0 = "NO";
    defparam add_4794_9.INJECT1_1 = "NO";
    LUT4 i2947_3_lut_4_lut_3_lut_4_lut (.A(n480[1]), .B(n23683), .C(n484[1]), 
         .D(n23671), .Z(n489[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2947_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    FD1S3AX bcd_code_i1 (.D(num_unit_3__N_1358), .CK(clk_c), .Q(num_unit[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=22, LSE_RCOL=4, LSE_LLINE=111, LSE_RLINE=123 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(68[4] 81[6])
    defparam bcd_code_i1.GSR = "ENABLED";
    LUT4 i2102_3_lut_rep_439_4_lut (.A(n461[1]), .B(n23781), .C(n464[1]), 
         .D(n23776), .Z(n23772)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2102_3_lut_rep_439_4_lut.init = 16'hf666;
    LUT4 i2695_3_lut_rep_283_4_lut_3_lut_4_lut (.A(n494[1]), .B(n23632), 
         .C(n497[1]), .D(n23624), .Z(n23616)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2695_3_lut_rep_283_4_lut_3_lut_4_lut.init = 16'h9666;
    CCU2D add_4794_7 (.A0(tem_code[9]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[5]), 
          .D0(data_out[5]), .A1(tem_code[10]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[6]), 
          .D1(data_out[6]), .CIN(n20792), .COUT(n20793), .S0(n6398[9]), 
          .S1(n6398[10]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4794_7.INIT0 = 16'h596a;
    defparam add_4794_7.INIT1 = 16'h596a;
    defparam add_4794_7.INJECT1_0 = "NO";
    defparam add_4794_7.INJECT1_1 = "NO";
    CCU2D add_4811_9 (.A0(n6398[12]), .B0(n6355[12]), .C0(GND_net), .D0(GND_net), 
          .A1(n6398[13]), .B1(n6355[13]), .C1(GND_net), .D1(GND_net), 
          .CIN(n20748), .COUT(n20749), .S0(n6421[12]), .S1(n6421[13]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4811_9.INIT0 = 16'h5666;
    defparam add_4811_9.INIT1 = 16'h5666;
    defparam add_4811_9.INJECT1_0 = "NO";
    defparam add_4811_9.INJECT1_1 = "NO";
    CCU2D add_4794_5 (.A0(tem_code[7]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[3]), 
          .D0(data_out[3]), .A1(tem_code[8]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[4]), 
          .D1(data_out[4]), .CIN(n20791), .COUT(n20792), .S0(n6398[7]), 
          .S1(n6398[8]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4794_5.INIT0 = 16'h596a;
    defparam add_4794_5.INIT1 = 16'h596a;
    defparam add_4794_5.INJECT1_0 = "NO";
    defparam add_4794_5.INJECT1_1 = "NO";
    CCU2D add_4811_7 (.A0(n6398[10]), .B0(n6355[10]), .C0(GND_net), .D0(GND_net), 
          .A1(n6398[11]), .B1(n6355[11]), .C1(GND_net), .D1(GND_net), 
          .CIN(n20747), .COUT(n20748), .S0(n6421[10]), .S1(n6421[11]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4811_7.INIT0 = 16'h5666;
    defparam add_4811_7.INIT1 = 16'h5666;
    defparam add_4811_7.INJECT1_0 = "NO";
    defparam add_4811_7.INJECT1_1 = "NO";
    CCU2D add_4811_5 (.A0(n6398[8]), .B0(n6355[8]), .C0(GND_net), .D0(GND_net), 
          .A1(n6398[9]), .B1(n6355[9]), .C1(GND_net), .D1(GND_net), 
          .CIN(n20746), .COUT(n20747), .S0(tem_data[8]), .S1(n6421[9]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4811_5.INIT0 = 16'h5666;
    defparam add_4811_5.INIT1 = 16'h5666;
    defparam add_4811_5.INJECT1_0 = "NO";
    defparam add_4811_5.INJECT1_1 = "NO";
    CCU2D add_4794_3 (.A0(tem_code[5]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[1]), 
          .D0(data_out[1]), .A1(tem_code[6]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[2]), 
          .D1(data_out[2]), .CIN(n20790), .COUT(n20791), .S0(n6398[5]), 
          .S1(n6398[6]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4794_3.INIT0 = 16'h596a;
    defparam add_4794_3.INIT1 = 16'h596a;
    defparam add_4794_3.INJECT1_0 = "NO";
    defparam add_4794_3.INJECT1_1 = "NO";
    CCU2D add_4811_3 (.A0(n6398[6]), .B0(n6355[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n6398[7]), .B1(n6355[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n20745), .COUT(n20746), .S0(tem_data[6]), .S1(tem_data[7]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4811_3.INIT0 = 16'h5666;
    defparam add_4811_3.INIT1 = 16'h5666;
    defparam add_4811_3.INJECT1_0 = "NO";
    defparam add_4811_3.INJECT1_1 = "NO";
    CCU2D add_4811_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6398[5]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[0]), 
          .D1(data_out[0]), .COUT(n20745), .S1(tem_data[5]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4811_1.INIT0 = 16'hF000;
    defparam add_4811_1.INIT1 = 16'h596a;
    defparam add_4811_1.INJECT1_0 = "NO";
    defparam add_4811_1.INJECT1_1 = "NO";
    CCU2D add_4794_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tem_code[4]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[0]), 
          .D1(data_out[0]), .COUT(n20790), .S1(tem_data[4]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4794_1.INIT0 = 16'hF000;
    defparam add_4794_1.INIT1 = 16'h596a;
    defparam add_4794_1.INJECT1_0 = "NO";
    defparam add_4794_1.INJECT1_1 = "NO";
    CCU2D tem_code_10__I_73_11 (.A0(data_out[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(data_out[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20743), .S0(tem_code_10__N_1474[9]), .S1(tem_code_10__N_1474[10]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[43:65])
    defparam tem_code_10__I_73_11.INIT0 = 16'ha555;
    defparam tem_code_10__I_73_11.INIT1 = 16'ha555;
    defparam tem_code_10__I_73_11.INJECT1_0 = "NO";
    defparam tem_code_10__I_73_11.INJECT1_1 = "NO";
    CCU2D add_4807_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n20789), 
          .S0(\tem_data[20] ));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4807_cout.INIT0 = 16'h0000;
    defparam add_4807_cout.INIT1 = 16'h0000;
    defparam add_4807_cout.INJECT1_0 = "NO";
    defparam add_4807_cout.INJECT1_1 = "NO";
    CCU2D add_4807_11 (.A0(n6440), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[9]), 
          .D0(data_out[9]), .A1(n8), .B1(n7), .C1(tem_code_10__N_1474[10]), 
          .D1(data_out[10]), .CIN(n20788), .COUT(n20789), .S0(\tem_data[18] ), 
          .S1(\tem_data[19] ));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4807_11.INIT0 = 16'h596a;
    defparam add_4807_11.INIT1 = 16'hf1e0;
    defparam add_4807_11.INJECT1_0 = "NO";
    defparam add_4807_11.INJECT1_1 = "NO";
    CCU2D tem_code_10__I_73_9 (.A0(data_out[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(data_out[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20742), .COUT(n20743), .S0(tem_code_10__N_1474[7]), 
          .S1(tem_code_10__N_1474[8]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[43:65])
    defparam tem_code_10__I_73_9.INIT0 = 16'ha555;
    defparam tem_code_10__I_73_9.INIT1 = 16'ha555;
    defparam tem_code_10__I_73_9.INJECT1_0 = "NO";
    defparam tem_code_10__I_73_9.INJECT1_1 = "NO";
    LUT4 i3479_3_lut_4_lut_3_lut_4_lut (.A(n461[1]), .B(n23781), .C(n464[1]), 
         .D(n23776), .Z(n467[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3479_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    CCU2D add_4807_9 (.A0(n6421[16]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[7]), 
          .D0(data_out[7]), .A1(n6421[17]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[8]), 
          .D1(data_out[8]), .CIN(n20787), .COUT(n20788), .S0(tem_data[16]), 
          .S1(\tem_data[17] ));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4807_9.INIT0 = 16'h596a;
    defparam add_4807_9.INIT1 = 16'h596a;
    defparam add_4807_9.INJECT1_0 = "NO";
    defparam add_4807_9.INJECT1_1 = "NO";
    CCU2D add_4807_7 (.A0(n6421[14]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[5]), 
          .D0(data_out[5]), .A1(n6421[15]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[6]), 
          .D1(data_out[6]), .CIN(n20786), .COUT(n20787), .S0(tem_data[14]), 
          .S1(tem_data[15]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4807_7.INIT0 = 16'h596a;
    defparam add_4807_7.INIT1 = 16'h596a;
    defparam add_4807_7.INJECT1_0 = "NO";
    defparam add_4807_7.INJECT1_1 = "NO";
    CCU2D tem_code_10__I_73_7 (.A0(data_out[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(data_out[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20741), .COUT(n20742), .S0(tem_code_10__N_1474[5]), 
          .S1(tem_code_10__N_1474[6]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[43:65])
    defparam tem_code_10__I_73_7.INIT0 = 16'ha555;
    defparam tem_code_10__I_73_7.INIT1 = 16'ha555;
    defparam tem_code_10__I_73_7.INJECT1_0 = "NO";
    defparam tem_code_10__I_73_7.INJECT1_1 = "NO";
    CCU2D tem_code_10__I_73_5 (.A0(data_out[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(data_out[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20740), .COUT(n20741), .S0(tem_code_10__N_1474[3]), 
          .S1(tem_code_10__N_1474[4]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[43:65])
    defparam tem_code_10__I_73_5.INIT0 = 16'ha555;
    defparam tem_code_10__I_73_5.INIT1 = 16'ha555;
    defparam tem_code_10__I_73_5.INJECT1_0 = "NO";
    defparam tem_code_10__I_73_5.INJECT1_1 = "NO";
    CCU2D add_4807_5 (.A0(n6421[12]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[3]), 
          .D0(data_out[3]), .A1(n6421[13]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[4]), 
          .D1(data_out[4]), .CIN(n20785), .COUT(n20786), .S0(tem_data[12]), 
          .S1(tem_data[13]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4807_5.INIT0 = 16'h596a;
    defparam add_4807_5.INIT1 = 16'h596a;
    defparam add_4807_5.INJECT1_0 = "NO";
    defparam add_4807_5.INJECT1_1 = "NO";
    LUT4 i3457_2_lut_rep_436_4_lut_4_lut (.A(n23780), .B(tem_data[10]), 
         .C(n464[1]), .D(n23775), .Z(n23769)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3457_2_lut_rep_436_4_lut_4_lut.init = 16'h332c;
    LUT4 i2157_3_lut_rep_330_4_lut (.A(n480[1]), .B(n23683), .C(n484[1]), 
         .D(n23671), .Z(n23663)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2157_3_lut_rep_330_4_lut.init = 16'hf666;
    CCU2D tem_code_10__I_73_3 (.A0(data_out[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(data_out[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20739), .COUT(n20740), .S0(tem_code_10__N_1474[1]), 
          .S1(tem_code_10__N_1474[2]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[43:65])
    defparam tem_code_10__I_73_3.INIT0 = 16'ha555;
    defparam tem_code_10__I_73_3.INIT1 = 16'ha555;
    defparam tem_code_10__I_73_3.INJECT1_0 = "NO";
    defparam tem_code_10__I_73_3.INJECT1_1 = "NO";
    CCU2D add_4807_3 (.A0(n6421[10]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[1]), 
          .D0(data_out[1]), .A1(n6421[11]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[2]), 
          .D1(data_out[2]), .CIN(n20784), .COUT(n20785), .S0(tem_data[10]), 
          .S1(tem_data[11]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4807_3.INIT0 = 16'h596a;
    defparam add_4807_3.INIT1 = 16'h596a;
    defparam add_4807_3.INJECT1_0 = "NO";
    defparam add_4807_3.INJECT1_1 = "NO";
    CCU2D tem_code_10__I_73_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(data_out[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n20739), .S1(tem_code_10__N_1474[0]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[43:65])
    defparam tem_code_10__I_73_1.INIT0 = 16'hF000;
    defparam tem_code_10__I_73_1.INIT1 = 16'haaaa;
    defparam tem_code_10__I_73_1.INJECT1_0 = "NO";
    defparam tem_code_10__I_73_1.INJECT1_1 = "NO";
    CCU2D add_4807_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6421[9]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[0]), 
          .D1(data_out[0]), .COUT(n20784), .S1(tem_data[9]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4807_1.INIT0 = 16'hF000;
    defparam add_4807_1.INIT1 = 16'h596a;
    defparam add_4807_1.INJECT1_0 = "NO";
    defparam add_4807_1.INJECT1_1 = "NO";
    LUT4 i2940_2_lut_3_lut_3_lut_4_lut (.A(n480[1]), .B(n23683), .C(n484[1]), 
         .D(n23671), .Z(n489[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2940_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2925_2_lut_4_lut_4_lut (.A(n23677), .B(n483[3]), .C(n484[1]), 
         .D(n23670), .Z(n489[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2925_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i2673_2_lut_4_lut_4_lut (.A(n23627), .B(n496[3]), .C(n497[1]), 
         .D(n23623), .Z(n499[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2673_2_lut_4_lut_4_lut.init = 16'h332c;
    CCU2D add_4769_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n20772), 
          .S0(n6373));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4769_cout.INIT0 = 16'h0000;
    defparam add_4769_cout.INIT1 = 16'h0000;
    defparam add_4769_cout.INJECT1_0 = "NO";
    defparam add_4769_cout.INJECT1_1 = "NO";
    CCU2D add_4769_11 (.A0(tem_code[10]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[9]), 
          .D0(data_out[9]), .A1(n8), .B1(n7), .C1(tem_code_10__N_1474[10]), 
          .D1(data_out[10]), .CIN(n20771), .COUT(n20772), .S0(n6355[15]), 
          .S1(n6355[16]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4769_11.INIT0 = 16'h596a;
    defparam add_4769_11.INIT1 = 16'hf1e0;
    defparam add_4769_11.INJECT1_0 = "NO";
    defparam add_4769_11.INJECT1_1 = "NO";
    CCU2D add_4769_9 (.A0(tem_code[8]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[7]), 
          .D0(data_out[7]), .A1(tem_code[9]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[8]), 
          .D1(data_out[8]), .CIN(n20770), .COUT(n20771), .S0(n6355[13]), 
          .S1(n6355[14]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4769_9.INIT0 = 16'h596a;
    defparam add_4769_9.INIT1 = 16'h596a;
    defparam add_4769_9.INJECT1_0 = "NO";
    defparam add_4769_9.INJECT1_1 = "NO";
    CCU2D add_4769_7 (.A0(tem_code[6]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[5]), 
          .D0(data_out[5]), .A1(tem_code[7]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[6]), 
          .D1(data_out[6]), .CIN(n20769), .COUT(n20770), .S0(n6355[11]), 
          .S1(n6355[12]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4769_7.INIT0 = 16'h596a;
    defparam add_4769_7.INIT1 = 16'h596a;
    defparam add_4769_7.INJECT1_0 = "NO";
    defparam add_4769_7.INJECT1_1 = "NO";
    CCU2D add_4769_5 (.A0(tem_code[4]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[3]), 
          .D0(data_out[3]), .A1(tem_code[5]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[4]), 
          .D1(data_out[4]), .CIN(n20768), .COUT(n20769), .S0(n6355[9]), 
          .S1(n6355[10]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4769_5.INIT0 = 16'h596a;
    defparam add_4769_5.INIT1 = 16'h596a;
    defparam add_4769_5.INJECT1_0 = "NO";
    defparam add_4769_5.INJECT1_1 = "NO";
    CCU2D add_4769_3 (.A0(tem_code[2]), .B0(tem_flag_N_1496), .C0(tem_code_10__N_1474[1]), 
          .D0(data_out[1]), .A1(tem_code[3]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[2]), 
          .D1(data_out[2]), .CIN(n20767), .COUT(n20768), .S0(n6355[7]), 
          .S1(n6355[8]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4769_3.INIT0 = 16'h596a;
    defparam add_4769_3.INIT1 = 16'h596a;
    defparam add_4769_3.INJECT1_0 = "NO";
    defparam add_4769_3.INJECT1_1 = "NO";
    CCU2D add_4769_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tem_code[1]), .B1(tem_flag_N_1496), .C1(tem_code_10__N_1474[0]), 
          .D1(data_out[0]), .COUT(n20767), .S1(n6355[6]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4769_1.INIT0 = 16'hF000;
    defparam add_4769_1.INIT1 = 16'h596a;
    defparam add_4769_1.INJECT1_0 = "NO";
    defparam add_4769_1.INJECT1_1 = "NO";
    FD1S3AX bcd_code_i8 (.D(n2147[2]), .CK(clk_c), .Q(num_decade[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=22, LSE_RCOL=4, LSE_LLINE=111, LSE_RLINE=123 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(68[4] 81[6])
    defparam bcd_code_i8.GSR = "ENABLED";
    FD1S3AX bcd_code_i7 (.D(n2147[1]), .CK(clk_c), .Q(num_decade[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=22, LSE_RCOL=4, LSE_LLINE=111, LSE_RLINE=123 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(68[4] 81[6])
    defparam bcd_code_i7.GSR = "ENABLED";
    FD1S3AX bcd_code_i6 (.D(n2147[0]), .CK(clk_c), .Q(num_decade[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=22, LSE_RCOL=4, LSE_LLINE=111, LSE_RLINE=123 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(68[4] 81[6])
    defparam bcd_code_i6.GSR = "ENABLED";
    FD1S3AX bcd_code_i5 (.D(n501[3]), .CK(clk_c), .Q(num_decade[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=22, LSE_RCOL=4, LSE_LLINE=111, LSE_RLINE=123 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(68[4] 81[6])
    defparam bcd_code_i5.GSR = "ENABLED";
    FD1S3AX bcd_code_i4 (.D(n501[2]), .CK(clk_c), .Q(num_unit[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=22, LSE_RCOL=4, LSE_LLINE=111, LSE_RLINE=123 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(68[4] 81[6])
    defparam bcd_code_i4.GSR = "ENABLED";
    FD1S3AX bcd_code_i3 (.D(n501[1]), .CK(clk_c), .Q(num_unit[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=22, LSE_RCOL=4, LSE_LLINE=111, LSE_RLINE=123 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(68[4] 81[6])
    defparam bcd_code_i3.GSR = "ENABLED";
    FD1S3AX bcd_code_i2 (.D(n501[0]), .CK(clk_c), .Q(num_unit[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=22, LSE_RCOL=4, LSE_LLINE=111, LSE_RLINE=123 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(68[4] 81[6])
    defparam bcd_code_i2.GSR = "ENABLED";
    PFUMX i21570 (.BLUT(n24784), .ALUT(n24785), .C0(n23681), .Z(n23660));
    PFUMX i21128 (.BLUT(n23982), .ALUT(n23983), .C0(\tem_data[20] ), .Z(num_unit_3__N_923));
    LUT4 i4972_2_lut_4_lut_4_lut (.A(n23627), .B(n496[3]), .C(n497[1]), 
         .D(n23623), .Z(n6633)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i4972_2_lut_4_lut_4_lut.init = 16'h3320;
    LUT4 i3500_2_lut_rep_433_3_lut_3_lut_4_lut (.A(n460[1]), .B(n23786), 
         .C(n462[1]), .D(n23779), .Z(n23766)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3500_2_lut_rep_433_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3507_3_lut_rep_432_4_lut_3_lut_4_lut (.A(n460[1]), .B(n23786), 
         .C(n462[1]), .D(n23779), .Z(n23765)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3507_3_lut_rep_432_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i1_4_lut_4_lut (.A(num_unit_3__N_923), .B(num_unit_3__N_932), .C(n23830), 
         .D(n23810), .Z(n35)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B (C)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h60e2;
    LUT4 i3724_2_lut_rep_487_3_lut_4_lut_4_lut (.A(n23826), .B(tem_data[16]), 
         .C(n453[1]), .D(num_unit_3__N_933), .Z(n23820)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3724_2_lut_rep_487_3_lut_4_lut_4_lut.init = 16'h1e10;
    LUT4 i3045_3_lut_4_lut (.A(n23714), .B(n23701), .C(n23694), .D(n23682), 
         .Z(n484[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3045_3_lut_4_lut.init = 16'h6966;
    LUT4 i2149_3_lut_rep_358_4_lut (.A(n475[1]), .B(n23709), .C(n479[1]), 
         .D(n23697), .Z(n23691)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2149_3_lut_rep_358_4_lut.init = 16'hf666;
    LUT4 i8136_2_lut_rep_351_3_lut_4_lut (.A(n475[1]), .B(n23709), .C(n479[1]), 
         .D(n23697), .Z(n23684)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i8136_2_lut_rep_351_3_lut_4_lut.init = 16'hf600;
    LUT4 i3080_2_lut_rep_345_3_lut_3_lut_4_lut (.A(n475[1]), .B(n23709), 
         .C(n479[1]), .D(n23697), .Z(n23678)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3080_2_lut_rep_345_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3087_3_lut_4_lut_3_lut_4_lut (.A(n475[1]), .B(n23709), .C(n479[1]), 
         .D(n23697), .Z(n483[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3087_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3317_2_lut_rep_402_4_lut_4_lut_then_4_lut (.A(n468[3]), .B(n23765), 
         .C(n466[1]), .D(n466[2]), .Z(n24003)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3317_2_lut_rep_402_4_lut_4_lut_then_4_lut.init = 16'h2524;
    LUT4 i3317_2_lut_rep_402_4_lut_4_lut_else_4_lut (.A(n468[3]), .B(n23765), 
         .C(n466[1]), .D(n466[2]), .Z(n24002)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3317_2_lut_rep_402_4_lut_4_lut_else_4_lut.init = 16'h959a;
    LUT4 i2113_3_lut_4_lut_rep_653 (.A(n23826), .B(tem_data[16]), .C(n453[1]), 
         .D(num_unit_3__N_933), .Z(n24799)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2113_3_lut_4_lut_rep_653.init = 16'hffe0;
    LUT4 i3065_2_lut_rep_352_4_lut_4_lut (.A(n478[3]), .B(n23703), .C(n479[1]), 
         .D(n23696), .Z(n23685)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i3065_2_lut_rep_352_4_lut_4_lut.init = 16'h554a;
    LUT4 i2047_2_lut_3_lut (.A(tem_data[6]), .B(n23704), .C(tem_data[5]), 
         .Z(n4)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2047_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i3143_3_lut_4_lut_3_lut_4_lut (.A(n477[0]), .B(n23705), .C(n477[1]), 
         .D(n477[2]), .Z(n481[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i3143_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i8133_2_lut_rep_354_3_lut_4_lut (.A(n477[0]), .B(n23705), .C(n477[1]), 
         .D(n477[2]), .Z(n23687)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i8133_2_lut_rep_354_3_lut_4_lut.init = 16'heee0;
    LUT4 tem_code_10__I_0_552_i10_3_lut (.A(data_out[9]), .B(tem_code_10__N_1474[9]), 
         .C(tem_flag_N_1496), .Z(tem_code[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[19:65])
    defparam tem_code_10__I_0_552_i10_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(data_out[14]), .B(data_out[12]), .C(n8), .Z(tem_flag_N_1496)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(51[18:33])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 tem_code_10__I_0_552_i11_3_lut (.A(data_out[10]), .B(tem_code_10__N_1474[10]), 
         .C(tem_flag_N_1496), .Z(tem_code[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[19:65])
    defparam tem_code_10__I_0_552_i11_3_lut.init = 16'hcaca;
    LUT4 i2140_3_lut_rep_367 (.A(n477[0]), .B(n23705), .C(n477[1]), .D(n477[2]), 
         .Z(n23700)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2140_3_lut_rep_367.init = 16'hffe0;
    LUT4 i3129_3_lut_4_lut (.A(n477[0]), .B(n23705), .C(n477[1]), .D(n477[2]), 
         .Z(n481[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i3129_3_lut_4_lut.init = 16'h998a;
    LUT4 tem_code_10__I_0_552_i8_3_lut (.A(data_out[7]), .B(tem_code_10__N_1474[7]), 
         .C(tem_flag_N_1496), .Z(tem_code[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[19:65])
    defparam tem_code_10__I_0_552_i8_3_lut.init = 16'hcaca;
    LUT4 tem_code_10__I_0_552_i9_3_lut (.A(data_out[8]), .B(tem_code_10__N_1474[8]), 
         .C(tem_flag_N_1496), .Z(tem_code[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[19:65])
    defparam tem_code_10__I_0_552_i9_3_lut.init = 16'hcaca;
    LUT4 tem_code_10__I_0_552_i6_3_lut (.A(data_out[5]), .B(tem_code_10__N_1474[5]), 
         .C(tem_flag_N_1496), .Z(tem_code[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[19:65])
    defparam tem_code_10__I_0_552_i6_3_lut.init = 16'hcaca;
    LUT4 tem_code_10__I_0_552_i7_3_lut (.A(data_out[6]), .B(tem_code_10__N_1474[6]), 
         .C(tem_flag_N_1496), .Z(tem_code[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[19:65])
    defparam tem_code_10__I_0_552_i7_3_lut.init = 16'hcaca;
    LUT4 tem_code_10__I_0_552_i5_3_lut (.A(data_out[4]), .B(tem_code_10__N_1474[4]), 
         .C(tem_flag_N_1496), .Z(tem_code[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[19:65])
    defparam tem_code_10__I_0_552_i5_3_lut.init = 16'hcaca;
    LUT4 i3752_3_lut_4_lut (.A(n23615), .B(n23614), .C(n3125), .D(n2146[1]), 
         .Z(n2147[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(76[52:76])
    defparam i3752_3_lut_4_lut.init = 16'h1fe0;
    CCU2D add_4811_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n20751), 
          .S0(n6440));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4811_cout.INIT0 = 16'h0000;
    defparam add_4811_cout.INIT1 = 16'h0000;
    defparam add_4811_cout.INJECT1_0 = "NO";
    defparam add_4811_cout.INJECT1_1 = "NO";
    LUT4 i2039_2_lut_rep_364_3_lut (.A(n474[3]), .B(n23708), .C(n478[3]), 
         .Z(n23697)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2039_2_lut_rep_364_3_lut.init = 16'hf6f6;
    LUT4 i3073_3_lut_4_lut (.A(n474[3]), .B(n23708), .C(n478[3]), .D(n23691), 
         .Z(n483[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3073_3_lut_4_lut.init = 16'h6966;
    LUT4 i2658_2_lut_rep_288_4_lut_4_lut (.A(n23636), .B(n23635), .C(n494[1]), 
         .D(n498[0]), .Z(n23621)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2658_2_lut_rep_288_4_lut_4_lut.init = 16'hff6c;
    LUT4 i2701_2_lut_4_lut_4_lut (.A(n495[0]), .B(n23637), .C(n495[1]), 
         .D(n495[2]), .Z(n498[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2701_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i2716_2_lut_3_lut_3_lut_4_lut (.A(n495[0]), .B(n23637), .C(n495[1]), 
         .D(n495[2]), .Z(n498[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2716_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i2138_3_lut_rep_368_4_lut (.A(n472[1]), .B(n23722), .C(n476[1]), 
         .D(n23707), .Z(n23701)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2138_3_lut_rep_368_4_lut.init = 16'hf666;
    LUT4 i2723_3_lut_rep_289_4_lut_3_lut_4_lut (.A(n495[0]), .B(n23637), 
         .C(n495[1]), .D(n495[2]), .Z(n23622)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2723_3_lut_rep_289_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i8130_2_lut_rep_360_3_lut_4_lut (.A(n472[1]), .B(n23722), .C(n476[1]), 
         .D(n23707), .Z(n23693)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i8130_2_lut_rep_360_3_lut_4_lut.init = 16'hf600;
    LUT4 i2709_3_lut_4_lut (.A(n495[0]), .B(n23637), .C(n495[1]), .D(n495[2]), 
         .Z(n498[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2709_3_lut_4_lut.init = 16'h998a;
    LUT4 i3164_2_lut_rep_356_3_lut_3_lut_4_lut (.A(n472[1]), .B(n23722), 
         .C(n476[1]), .D(n23707), .Z(n23689)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3164_2_lut_rep_356_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3171_3_lut_4_lut_3_lut_4_lut (.A(n472[1]), .B(n23722), .C(n476[1]), 
         .D(n23707), .Z(n480[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3171_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3149_2_lut_rep_362_4_lut_4_lut (.A(n23715), .B(n23714), .C(n476[1]), 
         .D(n23706), .Z(n23695)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3149_2_lut_rep_362_4_lut_4_lut.init = 16'h332c;
    LUT4 mux_4743_i3_4_lut_4_lut_then_4_lut_3_lut (.A(\tem_data[17] ), .B(\tem_data[18] ), 
         .C(\tem_data[19] ), .Z(n23983)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;
    defparam mux_4743_i3_4_lut_4_lut_then_4_lut_3_lut.init = 16'h8383;
    LUT4 i2041_2_lut_rep_357_4_lut_4_lut (.A(n23717), .B(n23716), .C(n475[1]), 
         .D(n23695), .Z(n23690)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2041_2_lut_rep_357_4_lut_4_lut.init = 16'hff6c;
    LUT4 i20740_2_lut_3_lut_4_lut (.A(\tem_data[17] ), .B(\tem_data[18] ), 
         .C(\tem_data[19] ), .D(\tem_data[20] ), .Z(n22825)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i20740_2_lut_3_lut_4_lut.init = 16'h7fe0;
    LUT4 i4066_2_lut_rep_387_4_lut_4_lut_then_4_lut (.A(n23765), .B(n466[0]), 
         .C(n466[1]), .D(n466[2]), .Z(n24792)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i4066_2_lut_rep_387_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    LUT4 i4066_2_lut_rep_387_4_lut_4_lut_else_4_lut (.A(n23765), .B(n466[0]), 
         .C(n466[1]), .D(n466[2]), .Z(n24791)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i4066_2_lut_rep_387_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i2141_3_lut_rep_371_4_lut (.A(n474[1]), .B(n23718), .C(n478[1]), 
         .D(n23711), .Z(n23704)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2141_3_lut_rep_371_4_lut.init = 16'hf666;
    LUT4 i8134_2_lut_rep_365_3_lut_4_lut (.A(n474[1]), .B(n23718), .C(n478[1]), 
         .D(n23711), .Z(n23698)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8134_2_lut_rep_365_3_lut_4_lut.init = 16'hf600;
    LUT4 i3115_3_lut_4_lut_3_lut_4_lut (.A(n474[1]), .B(n23718), .C(n478[1]), 
         .D(n23711), .Z(n482[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3115_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i8107_2_lut_rep_299_4_lut (.A(n490[1]), .B(n23644), .C(n494[1]), 
         .D(n23636), .Z(n23632)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i8107_2_lut_rep_299_4_lut.init = 16'hf600;
    LUT4 i3093_2_lut_rep_366_4_lut_4_lut (.A(n23719), .B(tem_data[6]), .C(n478[1]), 
         .D(n23710), .Z(n23699)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3093_2_lut_rep_366_4_lut_4_lut.init = 16'h332c;
    LUT4 i2165_3_lut_rep_298_4_lut (.A(n490[1]), .B(n23644), .C(n494[1]), 
         .D(n23636), .Z(n23631)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2165_3_lut_rep_298_4_lut.init = 16'hf666;
    LUT4 i2751_3_lut_rep_292_4_lut_3_lut_4_lut (.A(n490[1]), .B(n23644), 
         .C(n494[1]), .D(n23636), .Z(n23625)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2751_3_lut_rep_292_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3963_3_lut_4_lut_3_lut_4_lut (.A(n23720), .B(n466[3]), .C(n23666), 
         .D(n481[3]), .Z(n491[1])) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i3963_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i9144_2_lut_3_lut_4_lut (.A(n23720), .B(n466[3]), .C(n23666), 
         .D(n481[3]), .Z(n491[2])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i9144_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i3955_2_lut_rep_316_3_lut_3_lut_4_lut (.A(n23720), .B(n466[3]), 
         .C(n23666), .D(n481[3]), .Z(n23649)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i3955_2_lut_rep_316_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i2252_2_lut_rep_322_3_lut_4_lut (.A(n23720), .B(n466[3]), .C(n23666), 
         .D(n481[3]), .Z(n23655)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2252_2_lut_rep_322_3_lut_4_lut.init = 16'h8880;
    LUT4 i2744_2_lut_rep_290_3_lut_3_lut_4_lut (.A(n490[1]), .B(n23644), 
         .C(n494[1]), .D(n23636), .Z(n23623)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2744_2_lut_rep_290_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3157_3_lut_4_lut (.A(n23734), .B(n23721), .C(n23714), .D(n23701), 
         .Z(n480[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3157_3_lut_4_lut.init = 16'h6966;
    LUT4 n9845_bdd_4_lut (.A(n23613), .B(n23655), .C(n486[0]), .D(n23622), 
         .Z(n3125)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A !((C+(D))+!B)) */ ;
    defparam n9845_bdd_4_lut.init = 16'ha02c;
    LUT4 i2729_2_lut_rep_294_4_lut_4_lut (.A(n23640), .B(n23639), .C(n494[1]), 
         .D(n23635), .Z(n23627)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2729_2_lut_rep_294_4_lut_4_lut.init = 16'h332c;
    LUT4 i2135_3_lut_rep_375_4_lut (.A(n471[1]), .B(n23730), .C(n475[1]), 
         .D(n23717), .Z(n23708)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2135_3_lut_rep_375_4_lut.init = 16'hf666;
    LUT4 i3199_3_lut_rep_361_4_lut_3_lut_4_lut (.A(n471[1]), .B(n23730), 
         .C(n475[1]), .D(n23717), .Z(n23694)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3199_3_lut_rep_361_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3192_2_lut_rep_363_3_lut_3_lut_4_lut (.A(n471[1]), .B(n23730), 
         .C(n475[1]), .D(n23717), .Z(n23696)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3192_2_lut_rep_363_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2779_3_lut_4_lut_3_lut_4_lut (.A(n492[3]), .B(n23642), .C(n493[1]), 
         .D(n493[2]), .Z(n496[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i2779_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i2757_2_lut_4_lut_4_lut (.A(n492[3]), .B(n23642), .C(n493[1]), 
         .D(n493[2]), .Z(n496[0])) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i2757_2_lut_4_lut_4_lut.init = 16'h554a;
    LUT4 i8129_2_lut_rep_376_4_lut (.A(n471[1]), .B(n23730), .C(n475[1]), 
         .D(n23717), .Z(n23709)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i8129_2_lut_rep_376_4_lut.init = 16'hf600;
    LUT4 i3177_2_lut_rep_370_4_lut_4_lut (.A(n23724), .B(n474[3]), .C(n475[1]), 
         .D(n23716), .Z(n23703)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3177_2_lut_rep_370_4_lut_4_lut.init = 16'h332c;
    LUT4 i7811_2_lut_rep_297_3_lut_4_lut (.A(n492[3]), .B(n23642), .C(n493[1]), 
         .D(n493[2]), .Z(n23630)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i7811_2_lut_rep_297_3_lut_4_lut.init = 16'heee0;
    CCU2D add_4811_13 (.A0(n6355[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n6373), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n20750), 
          .COUT(n20751), .S0(n6421[16]), .S1(n6421[17]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4811_13.INIT0 = 16'hfaaa;
    defparam add_4811_13.INIT1 = 16'hfaaa;
    defparam add_4811_13.INJECT1_0 = "NO";
    defparam add_4811_13.INJECT1_1 = "NO";
    LUT4 i3101_3_lut_4_lut (.A(tem_data[7]), .B(n23725), .C(tem_data[6]), 
         .D(n23704), .Z(n482[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3101_3_lut_4_lut.init = 16'h6966;
    LUT4 i2617_2_lut_4_lut_4_lut (.A(n500[0]), .B(n23616), .C(n500[1]), 
         .D(n500[2]), .Z(n501[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2617_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i3106_2_lut_rep_378_3_lut (.A(tem_data[7]), .B(n23725), .C(tem_data[6]), 
         .Z(n23711)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3106_2_lut_rep_378_3_lut.init = 16'hf6f6;
    LUT4 tem_code_10__I_0_552_i3_3_lut (.A(data_out[2]), .B(tem_code_10__N_1474[2]), 
         .C(tem_flag_N_1496), .Z(tem_code[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[19:65])
    defparam tem_code_10__I_0_552_i3_3_lut.init = 16'hcaca;
    LUT4 tem_code_10__I_0_552_i4_3_lut (.A(data_out[3]), .B(tem_code_10__N_1474[3]), 
         .C(tem_flag_N_1496), .Z(tem_code[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[19:65])
    defparam tem_code_10__I_0_552_i4_3_lut.init = 16'hcaca;
    LUT4 i2224_2_lut_rep_379_3_lut (.A(n469[3]), .B(n23726), .C(n466[3]), 
         .Z(n23712)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2224_2_lut_rep_379_3_lut.init = 16'he0e0;
    LUT4 i2765_3_lut_4_lut (.A(n492[3]), .B(n23642), .C(n493[1]), .D(n493[2]), 
         .Z(n496[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i2765_3_lut_4_lut.init = 16'h998c;
    LUT4 i9142_2_lut_3_lut (.A(n469[3]), .B(n23726), .C(n466[3]), .Z(n477[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i9142_2_lut_3_lut.init = 16'h1010;
    LUT4 i4061_3_lut_4_lut_3_lut (.A(n469[3]), .B(n23726), .C(n466[3]), 
         .Z(n477[1])) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i4061_3_lut_4_lut_3_lut.init = 16'h8a8a;
    LUT4 i4053_2_lut_3_lut_3_lut (.A(n469[3]), .B(n23726), .C(n466[3]), 
         .Z(n477[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i4053_2_lut_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i3185_3_lut_4_lut (.A(n470[3]), .B(n23729), .C(n474[3]), .D(n23708), 
         .Z(n479[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3185_3_lut_4_lut.init = 16'h6966;
    LUT4 i3190_2_lut_rep_384_3_lut (.A(n470[3]), .B(n23729), .C(n474[3]), 
         .Z(n23717)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3190_2_lut_rep_384_3_lut.init = 16'hf6f6;
    LUT4 tem_code_10__I_0_552_i2_3_lut (.A(data_out[1]), .B(tem_code_10__N_1474[1]), 
         .C(tem_flag_N_1496), .Z(tem_code[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(52[19:65])
    defparam tem_code_10__I_0_552_i2_3_lut.init = 16'hcaca;
    LUT4 i2737_3_lut_4_lut (.A(n489[3]), .B(n23643), .C(n23639), .D(n23631), 
         .Z(n497[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2737_3_lut_4_lut.init = 16'h6966;
    LUT4 i2172_3_lut_rep_388_4_lut (.A(n469[1]), .B(n23741), .C(n472[1]), 
         .D(n23728), .Z(n23721)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2172_3_lut_rep_388_4_lut.init = 16'hf666;
    LUT4 i3255_3_lut_rep_372_4_lut_3_lut_4_lut (.A(n469[1]), .B(n23741), 
         .C(n472[1]), .D(n23728), .Z(n23705)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3255_3_lut_rep_372_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3248_2_lut_rep_373_3_lut_3_lut_4_lut (.A(n469[1]), .B(n23741), 
         .C(n472[1]), .D(n23728), .Z(n23706)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3248_2_lut_rep_373_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i8126_2_lut_rep_389_4_lut (.A(n469[1]), .B(n23741), .C(n472[1]), 
         .D(n23728), .Z(n23722)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i8126_2_lut_rep_389_4_lut.init = 16'hf600;
    LUT4 i3233_2_lut_rep_382_4_lut_4_lut (.A(n23735), .B(n23734), .C(n472[1]), 
         .D(n23727), .Z(n23715)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3233_2_lut_rep_382_4_lut_4_lut.init = 16'h332c;
    LUT4 i3162_2_lut_rep_374_4_lut_4_lut (.A(n23737), .B(n23736), .C(n471[1]), 
         .D(n23715), .Z(n23707)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i3162_2_lut_rep_374_4_lut_4_lut.init = 16'hff6c;
    LUT4 i3968_2_lut_rep_327_4_lut_4_lut_then_4_lut (.A(n23705), .B(n477[0]), 
         .C(n477[1]), .D(n477[2]), .Z(n24785)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D)))) */ ;
    defparam i3968_2_lut_rep_327_4_lut_4_lut_then_4_lut.init = 16'h9ffc;
    LUT4 i3220_2_lut_rep_377_3_lut_3_lut_4_lut (.A(n470[1]), .B(n23739), 
         .C(n474[1]), .D(n23732), .Z(n23710)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3220_2_lut_rep_377_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2132_3_lut_rep_392_4_lut (.A(n470[1]), .B(n23739), .C(n474[1]), 
         .D(n23732), .Z(n23725)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2132_3_lut_rep_392_4_lut.init = 16'hf666;
    LUT4 i8127_2_lut_rep_385_3_lut_4_lut (.A(n470[1]), .B(n23739), .C(n474[1]), 
         .D(n23732), .Z(n23718)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8127_2_lut_rep_385_3_lut_4_lut.init = 16'hf600;
    LUT4 i3227_3_lut_4_lut_3_lut_4_lut (.A(n470[1]), .B(n23739), .C(n474[1]), 
         .D(n23732), .Z(n478[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3227_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3205_2_lut_rep_386_4_lut_4_lut (.A(n23738), .B(tem_data[7]), .C(n474[1]), 
         .D(n23731), .Z(n23719)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3205_2_lut_rep_386_4_lut_4_lut.init = 16'h332c;
    LUT4 i2639_3_lut_4_lut_3_lut_4_lut (.A(n500[0]), .B(n23616), .C(n500[1]), 
         .D(n500[2]), .Z(n501[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2639_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3968_2_lut_rep_327_4_lut_4_lut_else_4_lut (.A(n23705), .B(n477[0]), 
         .C(n477[1]), .D(n477[2]), .Z(n24784)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i3968_2_lut_rep_327_4_lut_4_lut_else_4_lut.init = 16'h1ff0;
    LUT4 i2632_2_lut_3_lut_3_lut_4_lut (.A(n500[0]), .B(n23616), .C(n500[1]), 
         .D(n500[2]), .Z(n501[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2632_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i3241_3_lut_4_lut (.A(n468[3]), .B(n23740), .C(n23734), .D(n23721), 
         .Z(n476[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3241_3_lut_4_lut.init = 16'h6966;
    LUT4 i2095_3_lut_rep_396_4_lut (.A(n468[1]), .B(n23748), .C(n471[1]), 
         .D(n23737), .Z(n23729)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2095_3_lut_rep_396_4_lut.init = 16'hf666;
    LUT4 i3283_3_lut_rep_381_4_lut_3_lut_4_lut (.A(n468[1]), .B(n23748), 
         .C(n471[1]), .D(n23737), .Z(n23714)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3283_3_lut_rep_381_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2785_2_lut_4_lut_4_lut (.A(n23649), .B(n490[3]), .C(n491[1]), 
         .D(n491[2]), .Z(n495[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2785_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i2800_2_lut_3_lut_3_lut_4_lut (.A(n23649), .B(n490[3]), .C(n491[1]), 
         .D(n491[2]), .Z(n495[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2800_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i3276_2_lut_rep_383_3_lut_3_lut_4_lut (.A(n468[1]), .B(n23748), 
         .C(n471[1]), .D(n23737), .Z(n23716)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3276_2_lut_rep_383_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2807_3_lut_4_lut_3_lut_4_lut (.A(n23649), .B(n490[3]), .C(n491[1]), 
         .D(n491[2]), .Z(n486[0])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2807_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i8114_2_lut_rep_397_4_lut (.A(n468[1]), .B(n23748), .C(n471[1]), 
         .D(n23737), .Z(n23730)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i8114_2_lut_rep_397_4_lut.init = 16'hf600;
    LUT4 i3261_2_lut_rep_391_4_lut_4_lut (.A(n23743), .B(n470[3]), .C(n471[1]), 
         .D(n23736), .Z(n23724)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3261_2_lut_rep_391_4_lut_4_lut.init = 16'h332c;
    LUT4 i2793_3_lut_4_lut (.A(n23649), .B(n490[3]), .C(n491[1]), .D(n491[2]), 
         .Z(n495[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2793_3_lut_4_lut.init = 16'h998a;
    LUT4 i3213_3_lut_4_lut (.A(tem_data[8]), .B(n23744), .C(tem_data[7]), 
         .D(n23725), .Z(n478[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3213_3_lut_4_lut.init = 16'h6966;
    LUT4 i3218_2_lut_rep_399_3_lut (.A(tem_data[8]), .B(n23744), .C(tem_data[7]), 
         .Z(n23732)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3218_2_lut_rep_399_3_lut.init = 16'hf6f6;
    LUT4 i2162_3_lut_rep_310_4_lut (.A(n485[1]), .B(n23651), .C(n490[1]), 
         .D(n23647), .Z(n23643)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2162_3_lut_rep_310_4_lut.init = 16'hf666;
    LUT4 i2828_2_lut_rep_302_3_lut_3_lut_4_lut (.A(n485[1]), .B(n23651), 
         .C(n490[1]), .D(n23647), .Z(n23635)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2828_2_lut_rep_302_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3750_2_lut_rep_280_4_lut_4_lut (.A(n23621), .B(n498[2]), .C(n498[1]), 
         .D(n23615), .Z(n23613)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i3750_2_lut_rep_280_4_lut_4_lut.init = 16'hff6c;
    LUT4 i2835_3_lut_rep_304_4_lut_3_lut_4_lut (.A(n485[1]), .B(n23651), 
         .C(n490[1]), .D(n23647), .Z(n23637)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2835_3_lut_rep_304_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i8135_2_lut_rep_311_4_lut (.A(n485[1]), .B(n23651), .C(n490[1]), 
         .D(n23647), .Z(n23644)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i8135_2_lut_rep_311_4_lut.init = 16'hf600;
    LUT4 i2813_2_lut_rep_307_4_lut_4_lut (.A(n23650), .B(n489[3]), .C(n490[1]), 
         .D(n23646), .Z(n23640)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2813_2_lut_rep_307_4_lut_4_lut.init = 16'h332c;
    LUT4 i3269_3_lut_4_lut (.A(n467[3]), .B(n23747), .C(n470[3]), .D(n23729), 
         .Z(n475[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3269_3_lut_4_lut.init = 16'h6966;
    LUT4 i3274_2_lut_rep_404_3_lut (.A(n467[3]), .B(n23747), .C(n470[3]), 
         .Z(n23737)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3274_2_lut_rep_404_3_lut.init = 16'hf6f6;
    LUT4 i2097_3_lut_rep_407_4_lut (.A(n466[1]), .B(n23752), .C(n469[1]), 
         .D(n23746), .Z(n23740)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2097_3_lut_rep_407_4_lut.init = 16'hf666;
    LUT4 i3339_3_lut_rep_393_4_lut_3_lut_4_lut (.A(n466[1]), .B(n23752), 
         .C(n469[1]), .D(n23746), .Z(n23726)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3339_3_lut_rep_393_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3332_2_lut_rep_394_3_lut_3_lut_4_lut (.A(n466[1]), .B(n23752), 
         .C(n469[1]), .D(n23746), .Z(n23727)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3332_2_lut_rep_394_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i8098_2_lut_rep_408_4_lut (.A(n466[1]), .B(n23752), .C(n469[1]), 
         .D(n23746), .Z(n23741)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i8098_2_lut_rep_408_4_lut.init = 16'hf600;
    LUT4 i2742_2_lut_rep_303_4_lut_4_lut (.A(n23652), .B(n489[2]), .C(n489[1]), 
         .D(n23640), .Z(n23636)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2742_2_lut_rep_303_4_lut_4_lut.init = 16'hff6c;
    LUT4 i3246_2_lut_rep_395_4_lut_4_lut (.A(n23754), .B(n23753), .C(n468[1]), 
         .D(n23735), .Z(n23728)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i3246_2_lut_rep_395_4_lut_4_lut.init = 16'hff6c;
    LUT4 i2096_3_lut_rep_411_4_lut (.A(n467[1]), .B(n23755), .C(n470[1]), 
         .D(n23750), .Z(n23744)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2096_3_lut_rep_411_4_lut.init = 16'hf666;
    LUT4 i3304_2_lut_rep_398_3_lut_3_lut_4_lut (.A(n467[1]), .B(n23755), 
         .C(n470[1]), .D(n23750), .Z(n23731)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3304_2_lut_rep_398_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3311_3_lut_4_lut_3_lut_4_lut (.A(n467[1]), .B(n23755), .C(n470[1]), 
         .D(n23750), .Z(n474[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3311_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i8109_2_lut_rep_406_3_lut_4_lut (.A(n467[1]), .B(n23755), .C(n470[1]), 
         .D(n23750), .Z(n23739)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8109_2_lut_rep_406_3_lut_4_lut.init = 16'hf600;
    LUT4 i3289_2_lut_rep_405_4_lut_4_lut (.A(n23756), .B(tem_data[8]), .C(n470[1]), 
         .D(n23749), .Z(n23738)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3289_2_lut_rep_405_4_lut_4_lut.init = 16'h332c;
    LUT4 i3325_3_lut_4_lut (.A(n23765), .B(n23761), .C(n468[3]), .D(n23740), 
         .Z(n472[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3325_3_lut_4_lut.init = 16'h6966;
    LUT4 i3330_2_lut_rep_413_3_lut (.A(n23765), .B(n23761), .C(n468[3]), 
         .Z(n23746)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3330_2_lut_rep_413_3_lut.init = 16'hf6f6;
    LUT4 i2098_3_lut_rep_414_4_lut (.A(n465[1]), .B(n23758), .C(n468[1]), 
         .D(n23754), .Z(n23747)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2098_3_lut_rep_414_4_lut.init = 16'hf666;
    LUT4 i2_3_lut_adj_189 (.A(data_out[13]), .B(data_out[15]), .C(data_out[11]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(51[18:33])
    defparam i2_3_lut_adj_189.init = 16'hfefe;
    LUT4 i3360_2_lut_rep_403_3_lut_3_lut_4_lut (.A(n465[1]), .B(n23758), 
         .C(n468[1]), .D(n23754), .Z(n23736)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3360_2_lut_rep_403_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3367_3_lut_rep_401_4_lut_3_lut_4_lut (.A(n465[1]), .B(n23758), 
         .C(n468[1]), .D(n23754), .Z(n23734)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3367_3_lut_rep_401_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2884_2_lut_3_lut_3_lut_4_lut (.A(n483[1]), .B(n23673), .C(n488[1]), 
         .D(n23659), .Z(n492[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2884_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2_2_lut (.A(data_out[12]), .B(data_out[14]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(51[18:33])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i7814_2_lut_rep_415_4_lut (.A(n465[1]), .B(n23758), .C(n468[1]), 
         .D(n23754), .Z(n23748)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i7814_2_lut_rep_415_4_lut.init = 16'hf600;
    LUT4 i2160_3_lut_rep_321_4_lut (.A(n483[1]), .B(n23673), .C(n488[1]), 
         .D(n23659), .Z(n23654)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2160_3_lut_rep_321_4_lut.init = 16'hf666;
    LUT4 i3345_2_lut_rep_410_4_lut_4_lut (.A(n467[3]), .B(n23759), .C(n468[1]), 
         .D(n23753), .Z(n23743)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i3345_2_lut_rep_410_4_lut_4_lut.init = 16'h554a;
    LUT4 i2891_3_lut_4_lut_3_lut_4_lut (.A(n483[1]), .B(n23673), .C(n488[1]), 
         .D(n23659), .Z(n492[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2891_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3297_3_lut_4_lut (.A(tem_data[9]), .B(n23760), .C(tem_data[8]), 
         .D(n23744), .Z(n474[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3297_3_lut_4_lut.init = 16'h6966;
    LUT4 i3302_2_lut_rep_417_3_lut (.A(tem_data[9]), .B(n23760), .C(tem_data[8]), 
         .Z(n23750)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3302_2_lut_rep_417_3_lut.init = 16'hf6f6;
    LUT4 i15_4_lut (.A(n499[2]), .B(n23627), .C(n2), .D(n6633), .Z(num_unit_3__N_1358)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[6:77])
    defparam i15_4_lut.init = 16'h9a6a;
    LUT4 i2869_2_lut_4_lut_4_lut (.A(n23664), .B(n487[3]), .C(n488[1]), 
         .D(n23658), .Z(n492[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2869_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i2545_4_lut (.A(n499[0]), .B(n493[1]), .C(n3686), .D(n23630), 
         .Z(n2)) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2545_4_lut.init = 16'hebbe;
    LUT4 i2320_4_lut (.A(n496[1]), .B(n492[2]), .C(n496[0]), .D(n3730), 
         .Z(n3686)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2320_4_lut.init = 16'ha2a8;
    LUT4 i2364_4_lut (.A(n492[1]), .B(n492[0]), .C(n487[2]), .D(n3708), 
         .Z(n3730)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2364_4_lut.init = 16'h8aa8;
    LUT4 tem_data_17__bdd_4_lut_21169 (.A(\tem_data[17] ), .B(\tem_data[18] ), 
         .C(\tem_data[19] ), .D(\tem_data[20] ), .Z(n453[1])) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (C+(D))+!B !(D)))) */ ;
    defparam tem_data_17__bdd_4_lut_21169.init = 16'h318c;
    LUT4 i2342_4_lut (.A(n23699), .B(tem_data[4]), .C(n23686), .D(tem_data[5]), 
         .Z(n3708)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !((D)+!C)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2342_4_lut.init = 16'h8a58;
    LUT4 tem_data_17__bdd_4_lut_21168 (.A(\tem_data[17] ), .B(\tem_data[18] ), 
         .C(\tem_data[19] ), .D(\tem_data[20] ), .Z(n23826)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam tem_data_17__bdd_4_lut_21168.init = 16'h294a;
    LUT4 i3737_2_lut_4_lut_4_lut (.A(n23621), .B(n498[2]), .C(n498[1]), 
         .D(n3125), .Z(n2147[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i3737_2_lut_4_lut_4_lut.init = 16'h936c;
    LUT4 i2158_3_lut_rep_323_4_lut (.A(n481[1]), .B(n23675), .C(n485[1]), 
         .D(n23662), .Z(n23656)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2158_3_lut_rep_323_4_lut.init = 16'hf666;
    LUT4 i2015_2_lut_rep_421_3_lut (.A(n464[3]), .B(n23762), .C(n467[3]), 
         .Z(n23754)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2015_2_lut_rep_421_3_lut.init = 16'hf6f6;
    LUT4 i3353_3_lut_4_lut (.A(n464[3]), .B(n23762), .C(n467[3]), .D(n23747), 
         .Z(n471[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3353_3_lut_4_lut.init = 16'h6966;
    LUT4 i2821_3_lut_4_lut (.A(n23668), .B(n23656), .C(n489[3]), .D(n23643), 
         .Z(n494[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2821_3_lut_4_lut.init = 16'h6966;
    LUT4 i8110_2_lut_rep_318_3_lut_4_lut (.A(n481[1]), .B(n23675), .C(n485[1]), 
         .D(n23662), .Z(n23651)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i8110_2_lut_rep_318_3_lut_4_lut.init = 16'hf600;
    LUT4 i2826_2_lut_rep_314_3_lut (.A(n23668), .B(n23656), .C(n489[3]), 
         .Z(n23647)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2826_2_lut_rep_314_3_lut.init = 16'hf6f6;
    CCU2D add_4811_11 (.A0(n6398[14]), .B0(n6355[14]), .C0(GND_net), .D0(GND_net), 
          .A1(n6414), .B1(n6355[15]), .C1(GND_net), .D1(GND_net), .CIN(n20749), 
          .COUT(n20750), .S0(n6421[14]), .S1(n6421[15]));   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(53[18:30])
    defparam add_4811_11.INIT0 = 16'h5666;
    defparam add_4811_11.INIT1 = 16'h5666;
    defparam add_4811_11.INJECT1_0 = "NO";
    defparam add_4811_11.INJECT1_1 = "NO";
    LUT4 i2912_2_lut_rep_313_3_lut_3_lut_4_lut (.A(n481[1]), .B(n23675), 
         .C(n485[1]), .D(n23662), .Z(n23646)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2912_2_lut_rep_313_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2625_3_lut_4_lut (.A(n500[0]), .B(n23616), .C(n500[1]), .D(n500[2]), 
         .Z(n501[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2625_3_lut_4_lut.init = 16'h998a;
    LUT4 i8125_2_lut_rep_419_3_lut_4_lut (.A(n466[0]), .B(n23765), .C(n466[1]), 
         .D(n466[2]), .Z(n23752)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i8125_2_lut_rep_419_3_lut_4_lut.init = 16'heee0;
    LUT4 i3423_3_lut_4_lut_3_lut_4_lut (.A(n466[0]), .B(n23765), .C(n466[1]), 
         .D(n466[2]), .Z(n469[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3423_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i2919_3_lut_4_lut_3_lut_4_lut (.A(n481[1]), .B(n23675), .C(n485[1]), 
         .D(n23662), .Z(n490[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2919_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2100_3_lut_rep_428 (.A(n466[0]), .B(n23765), .C(n466[1]), .D(n466[2]), 
         .Z(n23761)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2100_3_lut_rep_428.init = 16'hffe0;
    LUT4 i3409_3_lut_4_lut (.A(n466[0]), .B(n23765), .C(n466[1]), .D(n466[2]), 
         .Z(n469[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3409_3_lut_4_lut.init = 16'h998a;
    LUT4 i8141_2_lut_rep_422_3_lut_4_lut (.A(n464[1]), .B(n23768), .C(n467[1]), 
         .D(n23764), .Z(n23755)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8141_2_lut_rep_422_3_lut_4_lut.init = 16'hf600;
    LUT4 i8122_2_lut_rep_441_4_lut (.A(n460[1]), .B(n23786), .C(n462[1]), 
         .D(n23779), .Z(n23774)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i8122_2_lut_rep_441_4_lut.init = 16'hf600;
    LUT4 i2099_3_lut_rep_427_4_lut (.A(n464[1]), .B(n23768), .C(n467[1]), 
         .D(n23764), .Z(n23760)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2099_3_lut_rep_427_4_lut.init = 16'hf666;
    LUT4 i2996_2_lut_3_lut_3_lut_4_lut (.A(n478[1]), .B(n23698), .C(n482[1]), 
         .D(n4), .Z(n487[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2996_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3388_2_lut_rep_416_3_lut_3_lut_4_lut (.A(n464[1]), .B(n23768), 
         .C(n467[1]), .D(n23764), .Z(n23749)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3388_2_lut_rep_416_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2897_2_lut_rep_317_4_lut_4_lut (.A(n23669), .B(n23668), .C(n485[1]), 
         .D(n23661), .Z(n23650)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2897_2_lut_rep_317_4_lut_4_lut.init = 16'h332c;
    LUT4 i3395_3_lut_4_lut_3_lut_4_lut (.A(n464[1]), .B(n23768), .C(n467[1]), 
         .D(n23764), .Z(n470[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3395_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3373_2_lut_rep_423_4_lut_4_lut (.A(tem_data[9]), .B(n23769), .C(n467[1]), 
         .D(n23763), .Z(n23756)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i3373_2_lut_rep_423_4_lut_4_lut.init = 16'h554a;
    LUT4 i8124_2_lut_rep_425_3_lut_4_lut (.A(n462[1]), .B(n23774), .C(n465[1]), 
         .D(n23767), .Z(n23758)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i8124_2_lut_rep_425_3_lut_4_lut.init = 16'hf600;
    LUT4 i2101_3_lut_rep_429_4_lut (.A(n462[1]), .B(n23774), .C(n465[1]), 
         .D(n23767), .Z(n23762)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2101_3_lut_rep_429_4_lut.init = 16'hf666;
    LUT4 i3444_2_lut_rep_420_3_lut_3_lut_4_lut (.A(n462[1]), .B(n23774), 
         .C(n465[1]), .D(n23767), .Z(n23753)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3444_2_lut_rep_420_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2877_3_lut_4_lut (.A(n482[3]), .B(n23672), .C(n487[3]), .D(n23654), 
         .Z(n492[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2877_3_lut_4_lut.init = 16'h6966;
    LUT4 i3451_3_lut_4_lut_3_lut_4_lut (.A(n462[1]), .B(n23774), .C(n465[1]), 
         .D(n23767), .Z(n468[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3451_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3429_2_lut_rep_426_4_lut_4_lut (.A(n23771), .B(n464[3]), .C(n465[1]), 
         .D(n23766), .Z(n23759)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3429_2_lut_rep_426_4_lut_4_lut.init = 16'h332c;
    LUT4 tem_data_17__bdd_4_lut_rep_649 (.A(\tem_data[17] ), .B(\tem_data[18] ), 
         .C(\tem_data[19] ), .D(\tem_data[20] ), .Z(n24776)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam tem_data_17__bdd_4_lut_rep_649.init = 16'h83e0;
    LUT4 i2882_2_lut_rep_326_3_lut (.A(n482[3]), .B(n23672), .C(n487[3]), 
         .Z(n23659)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2882_2_lut_rep_326_3_lut.init = 16'hf6f6;
    LUT4 i2013_2_lut_rep_431_3_lut (.A(tem_data[10]), .B(n23772), .C(tem_data[9]), 
         .Z(n23764)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2013_2_lut_rep_431_3_lut.init = 16'hf6f6;
    LUT4 i3381_3_lut_4_lut (.A(tem_data[10]), .B(n23772), .C(tem_data[9]), 
         .D(n23760), .Z(n470[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3381_3_lut_4_lut.init = 16'h6966;
    LUT4 i3437_3_lut_4_lut (.A(n461[3]), .B(n23773), .C(n464[3]), .D(n23762), 
         .Z(n468[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3437_3_lut_4_lut.init = 16'h6966;
    LUT4 i3442_2_lut_rep_434_3_lut (.A(n461[3]), .B(n23773), .C(n464[3]), 
         .Z(n23767)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3442_2_lut_rep_434_3_lut.init = 16'hf6f6;
    LUT4 i9140_2_lut_3_lut (.A(n460[3]), .B(n23777), .C(num_unit_3__N_941), 
         .Z(n466[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i9140_2_lut_3_lut.init = 16'h1010;
    LUT4 i2660_2_lut_3_lut_3_lut_4_lut (.A(n498[0]), .B(n23625), .C(n498[1]), 
         .D(n498[2]), .Z(n500[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2660_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i3745_3_lut_4_lut (.A(n23622), .B(n23617), .C(n23614), .D(n3125), 
         .Z(n2147[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(76[52:76])
    defparam i3745_3_lut_4_lut.init = 16'h6966;
    LUT4 i2202_2_lut_3_lut (.A(n460[3]), .B(n23777), .C(num_unit_3__N_941), 
         .Z(n466[3])) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2202_2_lut_3_lut.init = 16'he0e0;
    LUT4 i2645_2_lut_4_lut_4_lut (.A(n498[0]), .B(n23625), .C(n498[1]), 
         .D(n498[2]), .Z(n500[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2645_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i2104_3_lut_rep_440_4_lut (.A(n460[1]), .B(n23786), .C(n462[1]), 
         .D(n23779), .Z(n23773)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2104_3_lut_rep_440_4_lut.init = 16'hf666;
    LUT4 mux_4743_i3_4_lut_4_lut_else_4_lut_4_lut (.A(\tem_data[17] ), .B(\tem_data[18] ), 
         .C(\tem_data[19] ), .D(\tem_data[20] ), .Z(n23982)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_4743_i3_4_lut_4_lut_else_4_lut_4_lut.init = 16'h80e0;
    LUT4 i2905_3_lut_4_lut (.A(n480[3]), .B(n23674), .C(n23668), .D(n23656), 
         .Z(n490[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2905_3_lut_4_lut.init = 16'h6966;
    LUT4 i3709_2_lut_rep_489_4_lut (.A(n23826), .B(tem_data[16]), .C(n453[1]), 
         .D(num_unit_3__N_933), .Z(n23822)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3709_2_lut_rep_489_4_lut.init = 16'h332c;
    LUT4 i2863_3_lut_rep_306_4_lut_3_lut_4_lut (.A(n489[0]), .B(n23657), 
         .C(n489[1]), .D(n489[2]), .Z(n23639)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2863_3_lut_rep_306_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3472_2_lut_rep_430_3_lut_3_lut_4_lut (.A(n461[1]), .B(n23781), 
         .C(n464[1]), .D(n23776), .Z(n23763)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3472_2_lut_rep_430_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2688_2_lut_3_lut_3_lut_4_lut (.A(n494[1]), .B(n23632), .C(n497[1]), 
         .D(n23624), .Z(n499[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2688_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2667_3_lut_rep_281_4_lut_3_lut_4_lut (.A(n498[0]), .B(n23625), 
         .C(n498[1]), .D(n498[2]), .Z(n23614)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2667_3_lut_rep_281_4_lut_3_lut_4_lut.init = 16'h1fe0;
    PFUMX i21130 (.BLUT(n23985), .ALUT(n23986), .C0(n480[3]), .Z(n23669));
    LUT4 i3485_2_lut_rep_438_4_lut_4_lut (.A(n23782), .B(n461[3]), .C(n462[1]), 
         .D(n23778), .Z(n23771)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3485_2_lut_rep_438_4_lut_4_lut.init = 16'h332c;
    LUT4 i2653_3_lut_4_lut (.A(n498[0]), .B(n23625), .C(n498[1]), .D(n498[2]), 
         .Z(n500[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(75[52:76])
    defparam i2653_3_lut_4_lut.init = 16'h998a;
    LUT4 i8123_2_lut_rep_435_3_lut_4_lut (.A(n461[1]), .B(n23781), .C(n464[1]), 
         .D(n23776), .Z(n23768)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8123_2_lut_rep_435_3_lut_4_lut.init = 16'hf600;
    LUT4 i1_4_lut (.A(n23830), .B(n35), .C(n29), .D(n22825), .Z(n23)) /* synthesis lut_function=(A (B)+!A (B+(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hdcdd;
    LUT4 i3465_3_lut_4_lut (.A(tem_data[11]), .B(n23784), .C(tem_data[10]), 
         .D(n23772), .Z(n467[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3465_3_lut_4_lut.init = 16'h6966;
    LUT4 i3470_2_lut_rep_443_3_lut (.A(tem_data[11]), .B(n23784), .C(tem_data[10]), 
         .Z(n23776)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3470_2_lut_rep_443_3_lut.init = 16'hf6f6;
    LUT4 i3493_3_lut_4_lut (.A(n459[3]), .B(n23785), .C(n461[3]), .D(n23773), 
         .Z(n465[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3493_3_lut_4_lut.init = 16'h6966;
    LUT4 i3498_2_lut_rep_446_3_lut (.A(n459[3]), .B(n23785), .C(n461[3]), 
         .Z(n23779)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3498_2_lut_rep_446_3_lut.init = 16'hf6f6;
    LUT4 i2854_2_lut_rep_319_4_lut_4_lut (.A(n23679), .B(n23678), .C(n483[1]), 
         .D(n489[0]), .Z(n23652)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2854_2_lut_rep_319_4_lut_4_lut.init = 16'hff6c;
    LUT4 i2856_2_lut_3_lut_3_lut_4_lut (.A(n489[0]), .B(n23657), .C(n489[1]), 
         .D(n489[2]), .Z(n493[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2856_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4109_2_lut_4_lut_4_lut (.A(n23790), .B(n23789), .C(n460[1]), 
         .D(n466[3]), .Z(n466[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i4109_2_lut_4_lut_4_lut.init = 16'h936c;
    LUT4 i3528_2_lut_rep_442_3_lut_3_lut_4_lut (.A(n459[1]), .B(n23791), 
         .C(n461[1]), .D(n23788), .Z(n23775)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3528_2_lut_rep_442_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2105_3_lut_rep_451_4_lut (.A(n459[1]), .B(n23791), .C(n461[1]), 
         .D(n23788), .Z(n23784)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2105_3_lut_rep_451_4_lut.init = 16'hf666;
    LUT4 i3535_3_lut_4_lut_3_lut_4_lut (.A(n459[1]), .B(n23791), .C(n461[1]), 
         .D(n23788), .Z(n464[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3535_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i8121_2_lut_rep_448_3_lut_4_lut (.A(n459[1]), .B(n23791), .C(n461[1]), 
         .D(n23788), .Z(n23781)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8121_2_lut_rep_448_3_lut_4_lut.init = 16'hf600;
    LUT4 i3513_2_lut_rep_447_4_lut_4_lut (.A(n23792), .B(tem_data[11]), 
         .C(n461[1]), .D(n23787), .Z(n23780)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3513_2_lut_rep_447_4_lut_4_lut.init = 16'h332c;
    PFUMX i21574 (.BLUT(n24791), .ALUT(n24792), .C0(n23746), .Z(n23720));
    LUT4 i2155_3_lut_rep_353_4_lut (.A(n478[1]), .B(n23698), .C(n482[1]), 
         .D(n4), .Z(n23686)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2155_3_lut_rep_353_4_lut.init = 16'hf666;
    LUT4 i2106_3_lut_rep_452_4_lut (.A(num_unit_3__N_964), .B(n23793), .C(n460[1]), 
         .D(n23790), .Z(n23785)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2106_3_lut_rep_452_4_lut.init = 16'hf666;
    LUT4 i2841_2_lut_rep_309_4_lut_4_lut (.A(n489[0]), .B(n23657), .C(n489[1]), 
         .D(n489[2]), .Z(n23642)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2841_2_lut_rep_309_4_lut_4_lut.init = 16'h332c;
    LUT4 i3556_2_lut_rep_445_3_lut_3_lut_4_lut (.A(num_unit_3__N_964), .B(n23793), 
         .C(n460[1]), .D(n23790), .Z(n23778)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3556_2_lut_rep_445_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3563_3_lut_rep_444_4_lut_3_lut_4_lut (.A(num_unit_3__N_964), .B(n23793), 
         .C(n460[1]), .D(n23790), .Z(n23777)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3563_3_lut_rep_444_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i8120_2_lut_rep_453_4_lut (.A(num_unit_3__N_964), .B(n23793), .C(n460[1]), 
         .D(n23790), .Z(n23786)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i8120_2_lut_rep_453_4_lut.init = 16'hf600;
    LUT4 i2933_3_lut_4_lut (.A(n23694), .B(n23682), .C(n483[3]), .D(n23663), 
         .Z(n489[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2933_3_lut_4_lut.init = 16'h6966;
    LUT4 i2849_3_lut_4_lut (.A(n489[0]), .B(n23657), .C(n489[1]), .D(n489[2]), 
         .Z(n493[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2849_3_lut_4_lut.init = 16'h998a;
    LUT4 i2938_2_lut_rep_338_3_lut (.A(n23694), .B(n23682), .C(n483[3]), 
         .Z(n23671)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2938_2_lut_rep_338_3_lut.init = 16'hf6f6;
    LUT4 i3541_2_lut_rep_449_4_lut_4_lut (.A(n23794), .B(n459[3]), .C(n460[1]), 
         .D(n23789), .Z(n23782)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3541_2_lut_rep_449_4_lut_4_lut.init = 16'h332c;
    LUT4 i2968_2_lut_rep_325_3_lut_3_lut_4_lut (.A(n479[1]), .B(n23684), 
         .C(n483[1]), .D(n23679), .Z(n23658)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2968_2_lut_rep_325_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2156_3_lut_rep_339_4_lut (.A(n479[1]), .B(n23684), .C(n483[1]), 
         .D(n23679), .Z(n23672)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2156_3_lut_rep_339_4_lut.init = 16'hf666;
    LUT4 i3521_3_lut_4_lut (.A(tem_data[12]), .B(n23795), .C(tem_data[11]), 
         .D(n23784), .Z(n464[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3521_3_lut_4_lut.init = 16'h6966;
    LUT4 i3526_2_lut_rep_455_3_lut (.A(tem_data[12]), .B(n23795), .C(tem_data[11]), 
         .Z(n23788)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3526_2_lut_rep_455_3_lut.init = 16'hf6f6;
    LUT4 i3619_3_lut_4_lut (.A(n3116), .B(n23798), .C(num_unit_3__N_964), 
         .D(num_unit_3__N_960), .Z(n460[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3619_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2975_3_lut_rep_324_4_lut_3_lut_4_lut (.A(n479[1]), .B(n23684), 
         .C(n483[1]), .D(n23679), .Z(n23657)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2975_3_lut_rep_324_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i8101_2_lut_rep_340_4_lut (.A(n479[1]), .B(n23684), .C(n483[1]), 
         .D(n23679), .Z(n23673)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i8101_2_lut_rep_340_4_lut.init = 16'hf600;
    LUT4 i3549_3_lut_4_lut (.A(n23803), .B(n3116), .C(n459[3]), .D(n23785), 
         .Z(n462[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3549_3_lut_4_lut.init = 16'h6966;
    LUT4 i3766_3_lut_4_lut_3_lut_4_lut (.A(n23660), .B(n23712), .C(n23622), 
         .D(n486[0]), .Z(n2146[1])) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i3766_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i2279_2_lut_rep_284_3_lut_4_lut (.A(n23660), .B(n23712), .C(n23622), 
         .D(n486[0]), .Z(n23617)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2279_2_lut_rep_284_3_lut_4_lut.init = 16'h8880;
    LUT4 i3554_2_lut_rep_457_3_lut (.A(n23803), .B(n3116), .C(n459[3]), 
         .Z(n23790)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3554_2_lut_rep_457_3_lut.init = 16'hf6f6;
    LUT4 i2686_2_lut_rep_291_3_lut (.A(n23639), .B(n23631), .C(n496[3]), 
         .Z(n23624)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2686_2_lut_rep_291_3_lut.init = 16'hf6f6;
    LUT4 i2953_2_lut_rep_331_4_lut_4_lut (.A(n23685), .B(n482[3]), .C(n483[1]), 
         .D(n23678), .Z(n23664)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2953_2_lut_rep_331_4_lut_4_lut.init = 16'h332c;
    LUT4 i8119_2_lut_rep_458_3_lut_4_lut (.A(n457[1]), .B(n23799), .C(n459[1]), 
         .D(n23797), .Z(n23791)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8119_2_lut_rep_458_3_lut_4_lut.init = 16'hf600;
    LUT4 i4117_3_lut (.A(n460[3]), .B(n466[3]), .C(n23777), .Z(n466[1])) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i4117_3_lut.init = 16'ha6a6;
    LUT4 i3591_3_lut_4_lut_3_lut_4_lut (.A(n457[1]), .B(n23799), .C(n459[1]), 
         .D(n23797), .Z(n461[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3591_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3584_2_lut_rep_454_3_lut_3_lut_4_lut (.A(n457[1]), .B(n23799), 
         .C(n459[1]), .D(n23797), .Z(n23787)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3584_2_lut_rep_454_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2152_3_lut_rep_341_4_lut (.A(n477[1]), .B(n23687), .C(n481[1]), 
         .D(n23681), .Z(n23674)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2152_3_lut_rep_341_4_lut.init = 16'hf666;
    LUT4 i2107_3_lut_rep_462_4_lut (.A(n457[1]), .B(n23799), .C(n459[1]), 
         .D(n23797), .Z(n23795)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2107_3_lut_rep_462_4_lut.init = 16'hf666;
    LUT4 i3569_2_lut_rep_459_4_lut_4_lut (.A(n23800), .B(tem_data[12]), 
         .C(n459[1]), .D(n23796), .Z(n23792)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3569_2_lut_rep_459_4_lut_4_lut.init = 16'h332c;
    LUT4 i3024_2_lut_rep_328_3_lut_3_lut_4_lut (.A(n477[1]), .B(n23687), 
         .C(n481[1]), .D(n23681), .Z(n23661)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i3024_2_lut_rep_328_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3612_2_lut_rep_456_3_lut_4_lut (.A(n23801), .B(n23803), .C(num_unit_3__N_964), 
         .D(n3116), .Z(n23789)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3612_2_lut_rep_456_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i2108_3_lut_4_lut (.A(n23801), .B(n23803), .C(num_unit_3__N_964), 
         .D(num_unit_3__N_960), .Z(n3116)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2108_3_lut_4_lut.init = 16'hffe0;
    LUT4 i3577_3_lut_4_lut (.A(tem_data[13]), .B(n23802), .C(tem_data[12]), 
         .D(n23795), .Z(n461[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3577_3_lut_4_lut.init = 16'h6966;
    LUT4 i3582_2_lut_rep_464_3_lut (.A(tem_data[13]), .B(n23802), .C(tem_data[12]), 
         .Z(n23797)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3582_2_lut_rep_464_3_lut.init = 16'hf6f6;
    LUT4 i8118_2_lut_rep_460_3_lut_4_lut (.A(n23810), .B(n23), .C(n3116), 
         .D(n23803), .Z(n23793)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i8118_2_lut_rep_460_3_lut_4_lut.init = 16'hf090;
    LUT4 i3605_3_lut_4_lut (.A(n23810), .B(n23), .C(n23803), .D(n3116), 
         .Z(n460[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3605_3_lut_4_lut.init = 16'h9699;
    LUT4 i3610_2_lut_rep_465_3_lut (.A(n23810), .B(n23), .C(n23803), .Z(n23798)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i3610_2_lut_rep_465_3_lut.init = 16'hf9f9;
    LUT4 i3031_3_lut_rep_333_4_lut_3_lut_4_lut (.A(n477[1]), .B(n23687), 
         .C(n481[1]), .D(n23681), .Z(n23666)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i3031_3_lut_rep_333_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i8117_2_lut_rep_466_3_lut_4_lut (.A(n455[1]), .B(n23809), .C(n457[1]), 
         .D(n23805), .Z(n23799)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8117_2_lut_rep_466_3_lut_4_lut.init = 16'hf600;
    LUT4 i2109_3_lut_rep_469_4_lut (.A(n455[1]), .B(n23809), .C(n457[1]), 
         .D(n23805), .Z(n23802)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2109_3_lut_rep_469_4_lut.init = 16'hf666;
    LUT4 i3640_2_lut_rep_463_3_lut_3_lut_4_lut (.A(n455[1]), .B(n23809), 
         .C(n457[1]), .D(n23805), .Z(n23796)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3640_2_lut_rep_463_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3009_2_lut_rep_336_4_lut_4_lut_then_4_lut (.A(n23705), .B(n477[0]), 
         .C(n477[1]), .D(n477[2]), .Z(n23986)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (C)+!B !(C+(D))))) */ ;
    defparam i3009_2_lut_rep_336_4_lut_4_lut_then_4_lut.init = 16'h6063;
    LUT4 i3647_3_lut_4_lut_3_lut_4_lut (.A(n455[1]), .B(n23809), .C(n457[1]), 
         .D(n23805), .Z(n459[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3647_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i8140_2_lut_rep_342_4_lut (.A(n477[1]), .B(n23687), .C(n481[1]), 
         .D(n23681), .Z(n23675)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i8140_2_lut_rep_342_4_lut.init = 16'hf600;
    LUT4 i3625_2_lut_rep_467_4_lut_4_lut (.A(n23807), .B(tem_data[13]), 
         .C(n457[1]), .D(n23804), .Z(n23800)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3625_2_lut_rep_467_4_lut_4_lut.init = 16'h332c;
    LUT4 i3633_3_lut_4_lut (.A(tem_data[14]), .B(n23808), .C(tem_data[13]), 
         .D(n23802), .Z(n459[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3633_3_lut_4_lut.init = 16'h6966;
    LUT4 i3638_2_lut_rep_472_3_lut (.A(tem_data[14]), .B(n23808), .C(tem_data[13]), 
         .Z(n23805)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3638_2_lut_rep_472_3_lut.init = 16'hf6f6;
    LUT4 i3597_2_lut_rep_461_4_lut_4_lut (.A(n23812), .B(n23811), .C(n455[1]), 
         .D(n3116), .Z(n23794)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i3597_2_lut_rep_461_4_lut_4_lut.init = 16'h936c;
    LUT4 i2111_3_lut_rep_475_4_lut (.A(n454[1]), .B(n23819), .C(n455[1]), 
         .D(n23812), .Z(n23808)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2111_3_lut_rep_475_4_lut.init = 16'hf666;
    LUT4 i8116_2_lut_rep_476_4_lut (.A(n454[1]), .B(n23819), .C(n455[1]), 
         .D(n23812), .Z(n23809)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8116_2_lut_rep_476_4_lut.init = 16'hf600;
    LUT4 i3675_3_lut_rep_470_4_lut_3_lut_4_lut (.A(n454[1]), .B(n23819), 
         .C(n455[1]), .D(n23812), .Z(n23803)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3675_3_lut_rep_470_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3668_2_lut_rep_471_3_lut_3_lut_4_lut (.A(n454[1]), .B(n23819), 
         .C(n455[1]), .D(n23812), .Z(n23804)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3668_2_lut_rep_471_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i3653_2_lut_rep_474_4_lut_4_lut (.A(n23814), .B(tem_data[14]), 
         .C(n455[1]), .D(n23811), .Z(n23807)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3653_2_lut_rep_474_4_lut_4_lut.init = 16'h332c;
    LUT4 i2910_2_lut_rep_329_4_lut_4_lut (.A(n23690), .B(n23689), .C(n480[1]), 
         .D(n23669), .Z(n23662)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i2910_2_lut_rep_329_4_lut_4_lut.init = 16'hff6c;
    LUT4 i3661_3_lut_4_lut (.A(tem_data[15]), .B(n23818), .C(tem_data[14]), 
         .D(n23808), .Z(n457[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3661_3_lut_4_lut.init = 16'h6966;
    LUT4 i3666_2_lut_rep_479_3_lut (.A(tem_data[15]), .B(n23818), .C(tem_data[14]), 
         .Z(n23812)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3666_2_lut_rep_479_3_lut.init = 16'hf6f6;
    LUT4 i3009_2_lut_rep_336_4_lut_4_lut_else_4_lut (.A(n23705), .B(n477[0]), 
         .C(n477[1]), .D(n477[2]), .Z(n23985)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i3009_2_lut_rep_336_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(num_unit_3__N_923), .B(num_unit_3__N_932), 
         .C(n23810), .D(n23830), .Z(n29)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0d03;
    LUT4 num_unit_3__N_919_bdd_4_lut_4_lut (.A(num_unit_3__N_923), .B(num_unit_3__N_932), 
         .C(n23830), .D(n23810), .Z(n23244)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam num_unit_3__N_919_bdd_4_lut_4_lut.init = 16'h75a6;
    LUT4 i3758_2_lut_rep_282_3_lut_3_lut_4_lut (.A(n23660), .B(n23712), 
         .C(n23622), .D(n486[0]), .Z(n23615)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i3758_2_lut_rep_282_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i4165_2_lut_rep_468_4_lut_4_lut (.A(n23821), .B(n23820), .C(n454[1]), 
         .D(n23), .Z(n23801)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i4165_2_lut_rep_468_4_lut_4_lut.init = 16'h6c93;
    LUT4 i2112_3_lut_rep_485_4_lut (.A(n453[1]), .B(n23823), .C(n454[1]), 
         .D(n23821), .Z(n23818)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i2112_3_lut_rep_485_4_lut.init = 16'hf666;
    LUT4 i8115_2_lut_rep_486_4_lut (.A(n453[1]), .B(n23823), .C(n454[1]), 
         .D(n23821), .Z(n23819)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8115_2_lut_rep_486_4_lut.init = 16'hf600;
    LUT4 i3696_2_lut_rep_478_3_lut_3_lut_4_lut (.A(n453[1]), .B(n23823), 
         .C(n454[1]), .D(n23821), .Z(n23811)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3696_2_lut_rep_478_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2961_3_lut_4_lut (.A(n478[3]), .B(n23691), .C(n482[3]), .D(n23672), 
         .Z(n488[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2961_3_lut_4_lut.init = 16'h6966;
    LUT4 i2966_2_lut_rep_346_3_lut (.A(n478[3]), .B(n23691), .C(n482[3]), 
         .Z(n23679)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(72[52:76])
    defparam i2966_2_lut_rep_346_3_lut.init = 16'hf6f6;
    LUT4 i3703_3_lut_rep_477_4_lut_3_lut_4_lut (.A(n453[1]), .B(n23823), 
         .C(n454[1]), .D(n23821), .Z(n23810)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3703_3_lut_rep_477_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i3681_2_lut_rep_481_4_lut_4_lut (.A(n23822), .B(tem_data[15]), 
         .C(n454[1]), .D(n23820), .Z(n23814)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3681_2_lut_rep_481_4_lut_4_lut.init = 16'h332c;
    LUT4 i3689_3_lut_4_lut (.A(tem_data[16]), .B(n24799), .C(tem_data[15]), 
         .D(n23818), .Z(n455[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3689_3_lut_4_lut.init = 16'h6966;
    LUT4 i3694_2_lut_rep_488_3_lut (.A(tem_data[16]), .B(n24799), .C(tem_data[15]), 
         .Z(n23821)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3694_2_lut_rep_488_3_lut.init = 16'hf6f6;
    LUT4 i3731_3_lut_4_lut (.A(n24799), .B(n23824), .C(n453[1]), .D(num_unit_3__N_933), 
         .Z(num_unit_3__N_932)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3731_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2043_2_lut_rep_348_3_lut (.A(n23705), .B(n23700), .C(n480[3]), 
         .Z(n23681)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i2043_2_lut_rep_348_3_lut.init = 16'hf6f6;
    LUT4 i3017_3_lut_4_lut (.A(n23705), .B(n23700), .C(n480[3]), .D(n23674), 
         .Z(n485[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(74[52:76])
    defparam i3017_3_lut_4_lut.init = 16'h6966;
    LUT4 i3717_3_lut_4_lut (.A(\tem_data[17] ), .B(n24776), .C(tem_data[16]), 
         .D(n24799), .Z(n454[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3717_3_lut_4_lut.init = 16'h6966;
    LUT4 i3722_2_lut_rep_491_3_lut (.A(\tem_data[17] ), .B(n24776), .C(tem_data[16]), 
         .Z(n23824)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3722_2_lut_rep_491_3_lut.init = 16'hf6f6;
    LUT4 i8113_2_lut_rep_490_3_lut_4_lut (.A(\tem_data[17] ), .B(n24776), 
         .C(n24799), .D(tem_data[16]), .Z(n23823)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i8113_2_lut_rep_490_3_lut_4_lut.init = 16'hf060;
    LUT4 i3059_3_lut_rep_335_4_lut_3_lut_4_lut (.A(n476[1]), .B(n23693), 
         .C(n480[1]), .D(n23690), .Z(n23668)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3059_3_lut_rep_335_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2151_3_lut_rep_349_4_lut (.A(n476[1]), .B(n23693), .C(n480[1]), 
         .D(n23690), .Z(n23682)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i2151_3_lut_rep_349_4_lut.init = 16'hf666;
    LUT4 i3003_3_lut_4_lut_3_lut_4_lut (.A(n478[1]), .B(n23698), .C(n482[1]), 
         .D(n4), .Z(n487[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(71[52:76])
    defparam i3003_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 num_unit_3__N_919_bdd_3_lut_4_lut_3_lut_4_lut (.A(n23829), .B(\tem_data[20] ), 
         .C(num_unit_3__N_932), .D(num_unit_3__N_923), .Z(n23243)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam num_unit_3__N_919_bdd_3_lut_4_lut_3_lut_4_lut.init = 16'hf700;
    LUT4 i2182_2_lut_rep_484_4_lut (.A(n23829), .B(\tem_data[20] ), .C(num_unit_3__N_932), 
         .D(num_unit_3__N_923), .Z(n23817)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2182_2_lut_rep_484_4_lut.init = 16'h8880;
    LUT4 i3052_2_lut_rep_337_3_lut_3_lut_4_lut (.A(n476[1]), .B(n23693), 
         .C(n480[1]), .D(n23690), .Z(n23670)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i3052_2_lut_rep_337_3_lut_3_lut_4_lut.init = 16'h06f0;
    PFUMX i21140 (.BLUT(n24002), .ALUT(n24003), .C0(n466[0]), .Z(n23735));
    LUT4 i1977_2_lut_rep_496 (.A(\tem_data[18] ), .B(\tem_data[19] ), .Z(n23829)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1977_2_lut_rep_496.init = 16'heeee;
    LUT4 i8138_2_lut_rep_350_4_lut (.A(n476[1]), .B(n23693), .C(n480[1]), 
         .D(n23690), .Z(n23683)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_dataprocess.v(73[52:76])
    defparam i8138_2_lut_rep_350_4_lut.init = 16'hf600;
    LUT4 num_unit_3__N_950_bdd_2_lut_3_lut_4_lut (.A(\tem_data[18] ), .B(\tem_data[19] ), 
         .C(num_unit_3__N_932), .D(\tem_data[20] ), .Z(n23206)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam num_unit_3__N_950_bdd_2_lut_3_lut_4_lut.init = 16'h0e00;
    LUT4 i2174_2_lut_rep_497 (.A(\tem_data[18] ), .B(\tem_data[19] ), .C(\tem_data[20] ), 
         .Z(n23830)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i2174_2_lut_rep_497.init = 16'he0e0;
    LUT4 i3037_2_lut_rep_344_4_lut_4_lut (.A(n23694), .B(n23695), .C(n480[1]), 
         .D(n23689), .Z(n23677)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i3037_2_lut_rep_344_4_lut_4_lut.init = 16'h554a;
    
endmodule
//
// Verilog Description of module led_matrix_dot_driver
//

module led_matrix_dot_driver (n23933, col_c_0, clk_c, row_c_0, \x[0] , 
            \x[1] , n23930, \x[2] , n23879, row_c_15, row_c_14, 
            row_c_13, row_c_12, row_c_11, row_c_10, row_c_9, row_c_8, 
            n23929, row_c_7, row_c_6, row_c_5, row_c_4, row_c_3, 
            row_c_2, row_c_1, col_c_7, \y[3] , col_c_6, col_c_5, 
            col_c_4, col_c_3, col_c_2, col_c_1, \y[2] , \x[3] , 
            \y[0] , \y[1] , n24801, n16881, n22692, n23912, n23878, 
            n23976, n22333, n23966, n10634, clk_shift, n6, n23932, 
            n4, \x_axis_jiaozhun[15] , \x_axis_jiaozhun[14] , n5) /* synthesis syn_module_defined=1 */ ;
    input n23933;
    output col_c_0;
    input clk_c;
    output row_c_0;
    input \x[0] ;
    input \x[1] ;
    output n23930;
    input \x[2] ;
    output n23879;
    output row_c_15;
    output row_c_14;
    output row_c_13;
    output row_c_12;
    output row_c_11;
    output row_c_10;
    output row_c_9;
    output row_c_8;
    input n23929;
    output row_c_7;
    output row_c_6;
    output row_c_5;
    output row_c_4;
    output row_c_3;
    output row_c_2;
    output row_c_1;
    output col_c_7;
    input \y[3] ;
    output col_c_6;
    output col_c_5;
    output col_c_4;
    output col_c_3;
    output col_c_2;
    output col_c_1;
    input \y[2] ;
    input \x[3] ;
    input \y[0] ;
    input \y[1] ;
    input n24801;
    input n16881;
    input n22692;
    input n23912;
    output n23878;
    output n23976;
    output n22333;
    output n23966;
    input n10634;
    input clk_shift;
    output n6;
    input n23932;
    output n4;
    input \x_axis_jiaozhun[15] ;
    input \x_axis_jiaozhun[14] ;
    output n5;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(32[11:14])
    
    wire n23881, n17229, n23926, n23837;
    wire [7:0]col_7__N_401;
    wire [15:0]row_15__N_383;
    
    wire n17181, n17247, n17249, n22541, n23838, n22543, n11, 
        n24019, n22477, n10, n22338, n23897, n23840, n17223, n22192, 
        n11_adj_1520, n22193, n24778, n23915, n22481, n23958, n17172, 
        n24800, n24795, n16467, n23869, n23512, n23913, n24014, 
        n20824, n22204, n24802, n24780, n24790, n23872, n23919, 
        n23873, n17142, n23916, n17136, n23895, n29, n23917, n17122, 
        n23975, n24518, n17280, row_15__N_537, n7, n23968, n17137, 
        n22557, n22696, n7_adj_1521, n51, n22788, n23903, n23907, 
        n63, n22585, n8, n22315, n22879, n9, n23904, n16895, 
        n7_adj_1522, n16956, n23870, n23909, n17231, n23836, n22194, 
        n23927, n23902, n14, n23899, n23973, n24781, n24782, n12, 
        n8_adj_1523, n24796, n24797;
    
    LUT4 i15264_3_lut_rep_504_4_lut (.A(n23881), .B(n17229), .C(n23933), 
         .D(n23926), .Z(n23837)) /* synthesis lut_function=(A ((D)+!C)+!A (B+((D)+!C))) */ ;
    defparam i15264_3_lut_rep_504_4_lut.init = 16'hff4f;
    FD1S3AX col_i1 (.D(col_7__N_401[0]), .CK(clk_c), .Q(col_c_0)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam col_i1.GSR = "ENABLED";
    FD1S3AX row_i1 (.D(row_15__N_383[0]), .CK(clk_c), .Q(row_c_0)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i1.GSR = "ENABLED";
    LUT4 i20441_2_lut_3_lut_4_lut (.A(n17181), .B(n23837), .C(n17247), 
         .D(n17249), .Z(n22541)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20441_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i20443_2_lut_3_lut_4_lut (.A(n17181), .B(n23837), .C(n23838), 
         .D(n17249), .Z(n22543)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20443_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i3_4_lut (.A(n11), .B(n17229), .C(n24019), .D(n22477), .Z(n10)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'hfac8;
    LUT4 i2_3_lut_4_lut (.A(n17181), .B(n23837), .C(n17247), .D(n23838), 
         .Z(n22338)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 x_3__I_0_205_i12_2_lut_rep_597 (.A(\x[0] ), .B(\x[1] ), .Z(n23930)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam x_3__I_0_205_i12_2_lut_rep_597.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_158 (.A(n23897), .B(n23840), .C(n17223), .D(n17249), 
         .Z(n22192)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_158.init = 16'he000;
    LUT4 i2_3_lut_4_lut_adj_159 (.A(n11_adj_1520), .B(n23840), .C(n22192), 
         .D(n17181), .Z(n22193)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_159.init = 16'he000;
    LUT4 i2143_2_lut_rep_546_3_lut (.A(\x[0] ), .B(\x[1] ), .C(\x[2] ), 
         .Z(n23879)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam i2143_2_lut_rep_546_3_lut.init = 16'hfefe;
    FD1S3AX row_i16 (.D(row_15__N_383[15]), .CK(clk_c), .Q(row_c_15)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i16.GSR = "ENABLED";
    FD1S3AX row_i15 (.D(row_15__N_383[14]), .CK(clk_c), .Q(row_c_14)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i15.GSR = "ENABLED";
    FD1S3AX row_i14 (.D(row_15__N_383[13]), .CK(clk_c), .Q(row_c_13)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i14.GSR = "ENABLED";
    FD1S3AX row_i13 (.D(row_15__N_383[12]), .CK(clk_c), .Q(row_c_12)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i13.GSR = "ENABLED";
    FD1S3AX row_i12 (.D(row_15__N_383[11]), .CK(clk_c), .Q(row_c_11)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i12.GSR = "ENABLED";
    FD1S3AX row_i11 (.D(row_15__N_383[10]), .CK(clk_c), .Q(row_c_10)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i11.GSR = "ENABLED";
    FD1S3AX row_i10 (.D(row_15__N_383[9]), .CK(clk_c), .Q(row_c_9)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i10.GSR = "ENABLED";
    FD1S3AX row_i9 (.D(row_15__N_383[8]), .CK(clk_c), .Q(row_c_8)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i9.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n11), .B(n24778), .C(n23915), .D(n23929), .Z(n22481)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfbfa;
    FD1S3AX row_i8 (.D(row_15__N_383[7]), .CK(clk_c), .Q(row_c_7)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i8.GSR = "ENABLED";
    FD1S3AX row_i7 (.D(row_15__N_383[6]), .CK(clk_c), .Q(row_c_6)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i7.GSR = "ENABLED";
    FD1S3AX row_i6 (.D(row_15__N_383[5]), .CK(clk_c), .Q(row_c_5)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i6.GSR = "ENABLED";
    FD1S3AX row_i5 (.D(row_15__N_383[4]), .CK(clk_c), .Q(row_c_4)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i5.GSR = "ENABLED";
    FD1S3AX row_i4 (.D(row_15__N_383[3]), .CK(clk_c), .Q(row_c_3)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i4.GSR = "ENABLED";
    FD1S3AX row_i3 (.D(row_15__N_383[2]), .CK(clk_c), .Q(row_c_2)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i3.GSR = "ENABLED";
    FD1S3AX row_i2 (.D(row_15__N_383[1]), .CK(clk_c), .Q(row_c_1)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam row_i2.GSR = "ENABLED";
    FD1S3AX col_i8 (.D(col_7__N_401[7]), .CK(clk_c), .Q(col_c_7)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam col_i8.GSR = "ENABLED";
    LUT4 i15171_2_lut_3_lut_4_lut (.A(\x[0] ), .B(\x[1] ), .C(\y[3] ), 
         .D(n23958), .Z(n17172)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam i15171_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1S3AX col_i7 (.D(col_7__N_401[6]), .CK(clk_c), .Q(col_c_6)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam col_i7.GSR = "ENABLED";
    FD1S3AX col_i6 (.D(col_7__N_401[5]), .CK(clk_c), .Q(col_c_5)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam col_i6.GSR = "ENABLED";
    FD1S3AX col_i5 (.D(col_7__N_401[4]), .CK(clk_c), .Q(col_c_4)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam col_i5.GSR = "ENABLED";
    FD1S3AX col_i4 (.D(col_7__N_401[3]), .CK(clk_c), .Q(col_c_3)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam col_i4.GSR = "ENABLED";
    FD1S3AX col_i3 (.D(col_7__N_401[2]), .CK(clk_c), .Q(col_c_2)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam col_i3.GSR = "ENABLED";
    FD1S3AX col_i2 (.D(col_7__N_401[1]), .CK(clk_c), .Q(col_c_1)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=24, LSE_RCOL=4, LSE_LLINE=76, LSE_RLINE=83 */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam col_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_else_3_lut (.A(\x[1] ), .B(\y[3] ), .C(\y[2] ), 
         .D(n24800), .Z(n24795)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i1_2_lut_4_lut_else_3_lut.init = 16'hfffe;
    LUT4 x_3__I_0_172_i13_2_lut_rep_654 (.A(\x[2] ), .B(\x[3] ), .Z(n24800)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(72[5:10])
    defparam x_3__I_0_172_i13_2_lut_rep_654.init = 16'heeee;
    LUT4 i14441_2_lut_3_lut_4_lut_4_lut (.A(\x[0] ), .B(\x[1] ), .C(\x[2] ), 
         .D(\x[3] ), .Z(n16467)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(101[5:10])
    defparam i14441_2_lut_3_lut_4_lut_4_lut.init = 16'hfe7f;
    LUT4 i1_2_lut_rep_536_3_lut_4_lut_4_lut (.A(\y[2] ), .B(\y[3] ), .C(\y[0] ), 
         .D(\y[1] ), .Z(n23869)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(41[5:10])
    defparam i1_2_lut_rep_536_3_lut_4_lut_4_lut.init = 16'hedff;
    LUT4 n10_bdd_4_lut_4_lut (.A(\y[2] ), .B(\y[3] ), .C(\y[0] ), .D(\y[1] ), 
         .Z(n23512)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+!(C+!(D)))) */ ;
    defparam n10_bdd_4_lut_4_lut.init = 16'hcdce;
    LUT4 i14325_2_lut_rep_651 (.A(\x[2] ), .B(\x[3] ), .Z(n24778)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14325_2_lut_rep_651.init = 16'h8888;
    LUT4 n23913_bdd_2_lut (.A(n23913), .B(\y[3] ), .Z(n24014)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n23913_bdd_2_lut.init = 16'heeee;
    LUT4 y_3__bdd_4_lut (.A(\y[3] ), .B(\y[0] ), .C(\y[2] ), .D(\y[1] ), 
         .Z(n20824)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam y_3__bdd_4_lut.init = 16'haaba;
    LUT4 x_2__bdd_4_lut_21149 (.A(\x[2] ), .B(\x[3] ), .C(\x[1] ), .D(\x[0] ), 
         .Z(n22204)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A !((C (D))+!B)) */ ;
    defparam x_2__bdd_4_lut_21149.init = 16'ha664;
    LUT4 i1_4_lut_else_2_lut (.A(n24801), .B(\x[2] ), .C(n24802), .D(\x[1] ), 
         .Z(n24780)) /* synthesis lut_function=(A+(B (C)+!B (C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(93[5:10])
    defparam i1_4_lut_else_2_lut.init = 16'hfafb;
    LUT4 x_2__bdd_4_lut_21407 (.A(\x[2] ), .B(\x[0] ), .C(\x[3] ), .D(\x[1] ), 
         .Z(n17229)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam x_2__bdd_4_lut_21407.init = 16'h8000;
    LUT4 x_0__bdd_4_lut_21475 (.A(\x[0] ), .B(\x[1] ), .C(\x[3] ), .D(\x[2] ), 
         .Z(n24019)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B (C)+!B !(C+(D))))) */ ;
    defparam x_0__bdd_4_lut_21475.init = 16'h6063;
    LUT4 n23974_bdd_3_lut_4_lut (.A(\x[2] ), .B(\x[3] ), .C(\y[3] ), .D(\x[1] ), 
         .Z(n24790)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(72[5:10])
    defparam n23974_bdd_3_lut_4_lut.init = 16'hfffe;
    LUT4 i15155_2_lut_3_lut_4_lut (.A(n23872), .B(n23869), .C(n23919), 
         .D(n23873), .Z(n17142)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i15155_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i15151_2_lut_3_lut_4_lut (.A(n23872), .B(n23869), .C(n23916), 
         .D(n23873), .Z(n17136)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i15151_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_3_lut_4_lut (.A(n23872), .B(n23869), .C(n23895), .D(n23897), 
         .Z(n29)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i1_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i15144_2_lut_3_lut_4_lut (.A(n23872), .B(n23869), .C(n23917), 
         .D(n23873), .Z(n17122)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i15144_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 y_2__bdd_4_lut_21476 (.A(\y[2] ), .B(\y[3] ), .C(n23975), .D(\y[0] ), 
         .Z(n24518)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;
    defparam y_2__bdd_4_lut_21476.init = 16'hfcfe;
    LUT4 y_1__bdd_3_lut_21578 (.A(\y[1] ), .B(\y[3] ), .C(\y[2] ), .Z(n17181)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam y_1__bdd_3_lut_21578.init = 16'hfefe;
    LUT4 i1_3_lut (.A(row_c_15), .B(n17280), .C(row_15__N_537), .Z(row_15__N_383[15])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i1_3_lut.init = 16'hb3b3;
    LUT4 i1_4_lut_adj_160 (.A(n17280), .B(n17142), .C(row_c_14), .D(row_15__N_537), 
         .Z(row_15__N_383[14])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i1_4_lut_adj_160.init = 16'hf777;
    LUT4 i20826_4_lut (.A(n17142), .B(row_c_13), .C(n7), .D(row_15__N_537), 
         .Z(row_15__N_383[13])) /* synthesis lut_function=((B ((D)+!C)+!B !(C))+!A) */ ;
    defparam i20826_4_lut.init = 16'hdf5f;
    LUT4 i1_4_lut_adj_161 (.A(n23926), .B(n23872), .C(n24802), .D(n23968), 
         .Z(n17137)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_161.init = 16'hc888;
    LUT4 i2_4_lut (.A(n22557), .B(n22696), .C(row_c_12), .D(row_15__N_537), 
         .Z(row_15__N_383[12])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i2_4_lut.init = 16'hf777;
    LUT4 i20788_4_lut (.A(n7_adj_1521), .B(row_c_11), .C(n16881), .D(row_15__N_537), 
         .Z(row_15__N_383[11])) /* synthesis lut_function=((B ((D)+!C)+!B !(C))+!A) */ ;
    defparam i20788_4_lut.init = 16'hdf5f;
    LUT4 i2_4_lut_adj_162 (.A(n24014), .B(n16881), .C(row_15__N_537), 
         .D(row_c_10), .Z(row_15__N_383[10])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i2_4_lut_adj_162.init = 16'hf777;
    LUT4 i2_4_lut_adj_163 (.A(n51), .B(n22788), .C(row_c_9), .D(row_15__N_537), 
         .Z(row_15__N_383[9])) /* synthesis lut_function=(A+((C (D))+!B)) */ ;
    defparam i2_4_lut_adj_163.init = 16'hfbbb;
    LUT4 i1_4_lut_adj_164 (.A(n23903), .B(n11_adj_1520), .C(n23907), .D(n63), 
         .Z(n51)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_164.init = 16'h5551;
    LUT4 i20660_4_lut (.A(n23929), .B(n23915), .C(n24518), .D(n22585), 
         .Z(n22788)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i20660_4_lut.init = 16'hfaea;
    LUT4 i4_4_lut (.A(n22692), .B(n8), .C(row_c_8), .D(row_15__N_537), 
         .Z(row_15__N_383[8])) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i4_4_lut.init = 16'hfddd;
    LUT4 i3_4_lut_adj_165 (.A(n23912), .B(n22477), .C(n22585), .D(n22315), 
         .Z(n8)) /* synthesis lut_function=(A (D)+!A (((D)+!C)+!B)) */ ;
    defparam i3_4_lut_adj_165.init = 16'hff15;
    LUT4 i20796_4_lut (.A(n22879), .B(n23878), .C(n9), .D(n16467), .Z(row_15__N_383[7])) /* synthesis lut_function=(A+!(B (C)+!B (C (D)))) */ ;
    defparam i20796_4_lut.init = 16'hafbf;
    LUT4 i20794_4_lut (.A(row_c_7), .B(n23904), .C(row_15__N_537), .D(n20824), 
         .Z(n22879)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(D))) */ ;
    defparam i20794_4_lut.init = 16'ha0b3;
    LUT4 i20823_4_lut (.A(n16895), .B(row_c_6), .C(n7_adj_1522), .D(row_15__N_537), 
         .Z(row_15__N_383[6])) /* synthesis lut_function=((B ((D)+!C)+!B !(C))+!A) */ ;
    defparam i20823_4_lut.init = 16'hdf5f;
    LUT4 i1_4_lut_adj_166 (.A(n17136), .B(n16895), .C(row_c_5), .D(row_15__N_537), 
         .Z(row_15__N_383[5])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i1_4_lut_adj_166.init = 16'hf777;
    LUT4 i2_4_lut_adj_167 (.A(n17136), .B(n17172), .C(row_c_4), .D(row_15__N_537), 
         .Z(row_15__N_383[4])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i2_4_lut_adj_167.init = 16'hf777;
    LUT4 i2_4_lut_adj_168 (.A(n17122), .B(n17172), .C(row_c_3), .D(row_15__N_537), 
         .Z(row_15__N_383[3])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i2_4_lut_adj_168.init = 16'hf777;
    LUT4 i2_4_lut_adj_169 (.A(n17122), .B(n16956), .C(row_c_2), .D(row_15__N_537), 
         .Z(row_15__N_383[2])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i2_4_lut_adj_169.init = 16'hf777;
    LUT4 i2_4_lut_adj_170 (.A(row_c_1), .B(n16956), .C(row_15__N_537), 
         .D(n24790), .Z(row_15__N_383[1])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (D))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i2_4_lut_adj_170.init = 16'hb3ff;
    LUT4 i2_4_lut_adj_171 (.A(n17247), .B(n22193), .C(col_c_7), .D(row_15__N_537), 
         .Z(col_7__N_401[7])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i2_4_lut_adj_171.init = 16'hf777;
    LUT4 i20768_4_lut (.A(row_c_0), .B(n23870), .C(row_15__N_537), .D(n29), 
         .Z(row_15__N_383[0])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (D))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i20768_4_lut.init = 16'hb3ff;
    LUT4 i1_3_lut_adj_172 (.A(col_c_6), .B(n22193), .C(row_15__N_537), 
         .Z(col_7__N_401[6])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i1_3_lut_adj_172.init = 16'hb3b3;
    LUT4 i3_4_lut_adj_173 (.A(n17223), .B(n22543), .C(col_c_5), .D(row_15__N_537), 
         .Z(col_7__N_401[5])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i3_4_lut_adj_173.init = 16'hf777;
    LUT4 i2_4_lut_adj_174 (.A(col_c_4), .B(n22338), .C(row_15__N_537), 
         .D(n17223), .Z(col_7__N_401[4])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (D))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i2_4_lut_adj_174.init = 16'hb3ff;
    LUT4 i1_3_lut_4_lut_adj_175 (.A(n23915), .B(n23909), .C(n16467), .D(n22204), 
         .Z(n17231)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_175.init = 16'he000;
    LUT4 i2_4_lut_adj_176 (.A(col_c_3), .B(n22338), .C(row_15__N_537), 
         .D(n23836), .Z(col_7__N_401[3])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (D))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i2_4_lut_adj_176.init = 16'hb3ff;
    LUT4 i3_4_lut_adj_177 (.A(n23836), .B(n22541), .C(col_c_2), .D(row_15__N_537), 
         .Z(col_7__N_401[2])) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i3_4_lut_adj_177.init = 16'hf777;
    LUT4 i1_3_lut_adj_178 (.A(col_c_1), .B(n22194), .C(row_15__N_537), 
         .Z(col_7__N_401[1])) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i1_3_lut_adj_178.init = 16'hb3b3;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n23927), .B(n23926), .C(n23902), .D(n20824), 
         .Z(n7_adj_1521)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(42[5:10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_179 (.A(n23927), .B(n23926), .C(n14), 
         .D(n20824), .Z(n7)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(42[5:10])
    defparam i1_2_lut_3_lut_4_lut_adj_179.init = 16'hfef0;
    LUT4 i20585_3_lut_4_lut (.A(n23927), .B(n23926), .C(n24778), .D(\x[1] ), 
         .Z(n22696)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(42[5:10])
    defparam i20585_3_lut_4_lut.init = 16'hffef;
    LUT4 i15271_3_lut_4_lut (.A(n23927), .B(n23926), .C(n17231), .D(n23881), 
         .Z(n17249)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(42[5:10])
    defparam i15271_3_lut_4_lut.init = 16'heefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_180 (.A(n23927), .B(n23926), .C(n23904), 
         .D(n20824), .Z(n7_adj_1522)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(42[5:10])
    defparam i1_2_lut_3_lut_4_lut_adj_180.init = 16'hfef0;
    LUT4 i1_3_lut_4_lut_adj_181 (.A(n23930), .B(n23929), .C(n23512), .D(n11_adj_1520), 
         .Z(n9)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam i1_3_lut_4_lut_adj_181.init = 16'hfeee;
    LUT4 i15234_2_lut_rep_503_3_lut_4_lut (.A(n23976), .B(n24778), .C(n23897), 
         .D(n17229), .Z(n23836)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i15234_2_lut_rep_503_3_lut_4_lut.init = 16'hf7f0;
    LUT4 i15257_3_lut_4_lut (.A(n23976), .B(n24778), .C(n17231), .D(n23899), 
         .Z(n17247)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i15257_3_lut_4_lut.init = 16'hff70;
    LUT4 i15256_2_lut_rep_505_3_lut_4_lut (.A(n23976), .B(n24778), .C(n11_adj_1520), 
         .D(n17229), .Z(n23838)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i15256_2_lut_rep_505_3_lut_4_lut.init = 16'hf7f0;
    LUT4 i15258_3_lut_4_lut (.A(n23976), .B(n24778), .C(n22333), .D(n17137), 
         .Z(n17280)) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i15258_3_lut_4_lut.init = 16'hf777;
    LUT4 i2_2_lut_3_lut_4_lut (.A(\x[2] ), .B(n23966), .C(n10634), .D(clk_shift), 
         .Z(n6)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_182 (.A(\x[2] ), .B(n23966), .C(\x[3] ), .D(n23932), 
         .Z(n4)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_182.init = 16'hff01;
    LUT4 i1_2_lut_rep_656 (.A(\y[0] ), .B(\y[1] ), .Z(n24802)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(39[5:10])
    defparam i1_2_lut_rep_656.init = 16'hdddd;
    LUT4 i2_3_lut_rep_537_4_lut (.A(n24801), .B(\y[1] ), .C(n24800), .D(\x[1] ), 
         .Z(n23870)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_537_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_183 (.A(n24801), .B(n23968), .C(n23929), 
         .D(n23973), .Z(n22315)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_183.init = 16'h0004;
    LUT4 i1_2_lut_rep_539_4_lut (.A(n23926), .B(n23927), .C(n23933), .D(n11_adj_1520), 
         .Z(n23872)) /* synthesis lut_function=(A (D)+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_rep_539_4_lut.init = 16'hae00;
    LUT4 i9_2_lut_4_lut (.A(n23926), .B(n23933), .C(n24802), .D(n11_adj_1520), 
         .Z(n22477)) /* synthesis lut_function=(A (D)+!A !(B+!(C (D)))) */ ;
    defparam i9_2_lut_4_lut.init = 16'hba00;
    LUT4 i1_4_lut_then_2_lut_3_lut_4_lut (.A(\y[0] ), .B(\y[1] ), .C(\y[3] ), 
         .D(\y[2] ), .Z(n24781)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(39[5:10])
    defparam i1_4_lut_then_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 x_3__I_0_146_i10_2_lut_rep_593 (.A(\y[2] ), .B(\y[3] ), .Z(n23926)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(43[5:10])
    defparam x_3__I_0_146_i10_2_lut_rep_593.init = 16'hdddd;
    LUT4 i20609_2_lut_3_lut (.A(\y[2] ), .B(\y[3] ), .C(\y[0] ), .Z(n22585)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(43[5:10])
    defparam i20609_2_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut (.A(\y[2] ), .B(\y[3] ), .C(\y[0] ), .Z(n63)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(43[5:10])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 x_3__I_0_205_i9_2_lut_rep_594 (.A(\y[0] ), .B(\y[1] ), .Z(n23927)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam x_3__I_0_205_i9_2_lut_rep_594.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_184 (.A(\y[0] ), .B(\y[1] ), .C(\x_axis_jiaozhun[15] ), 
         .D(\x_axis_jiaozhun[14] ), .Z(n5)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam i1_3_lut_4_lut_adj_184.init = 16'hfeee;
    LUT4 x_3__I_0_145_i11_2_lut_rep_545_3_lut_4_lut (.A(\y[0] ), .B(\y[1] ), 
         .C(\y[3] ), .D(\y[2] ), .Z(n23878)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam x_3__I_0_145_i11_2_lut_rep_545_3_lut_4_lut.init = 16'hfeff;
    LUT4 i15192_2_lut_rep_507_3_lut_4_lut (.A(\x[2] ), .B(\x[3] ), .C(n17229), 
         .D(n23976), .Z(n23840)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i15192_2_lut_rep_507_3_lut_4_lut.init = 16'h70f0;
    LUT4 i20456_2_lut_3_lut_4_lut (.A(\x[2] ), .B(\x[3] ), .C(n20824), 
         .D(\x[1] ), .Z(n22557)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i20456_2_lut_3_lut_4_lut.init = 16'hfff7;
    LUT4 x_3__I_0_238_i14_2_lut_rep_569_3_lut_4_lut (.A(\x[2] ), .B(\x[3] ), 
         .C(\x[1] ), .D(\x[0] ), .Z(n23902)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam x_3__I_0_238_i14_2_lut_rep_569_3_lut_4_lut.init = 16'hfff7;
    LUT4 i5_4_lut (.A(n23899), .B(n10), .C(n24782), .D(n17231), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'hc080;
    LUT4 x_3__I_0_173_i13_2_lut_rep_625 (.A(\x[2] ), .B(\x[3] ), .Z(n23958)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(74[5:10])
    defparam x_3__I_0_173_i13_2_lut_rep_625.init = 16'hdddd;
    LUT4 i15054_2_lut_3_lut_4_lut (.A(\x[2] ), .B(\x[3] ), .C(\y[3] ), 
         .D(n23975), .Z(n16895)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(74[5:10])
    defparam i15054_2_lut_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_rep_576_3_lut_2_lut (.A(\x[2] ), .B(\x[3] ), .Z(n23909)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(74[5:10])
    defparam i1_2_lut_rep_576_3_lut_2_lut.init = 16'h9999;
    LUT4 i1_2_lut_rep_540_3_lut_4_lut_4_lut_4_lut (.A(\y[0] ), .B(\y[1] ), 
         .C(\y[2] ), .D(\y[3] ), .Z(n23873)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(39[5:10])
    defparam i1_2_lut_rep_540_3_lut_4_lut_4_lut_4_lut.init = 16'hffdc;
    LUT4 i1_4_lut_adj_185 (.A(n23878), .B(n23881), .C(n17231), .D(n17137), 
         .Z(n8_adj_1523)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i1_4_lut_adj_185.init = 16'hfa32;
    LUT4 i20462_2_lut_rep_633 (.A(\x[1] ), .B(\x[0] ), .Z(n23966)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20462_2_lut_rep_633.init = 16'heeee;
    LUT4 i1_2_lut_rep_635 (.A(\y[0] ), .B(\y[1] ), .Z(n23968)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_635.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_566_3_lut_4_lut (.A(\y[0] ), .B(\y[1] ), .C(\y[3] ), 
         .D(\y[2] ), .Z(n23899)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_2_lut_rep_566_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_rep_564_3_lut_4_lut (.A(\y[0] ), .B(\y[1] ), .C(\y[3] ), 
         .D(\y[2] ), .Z(n23897)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(39[5:10])
    defparam i1_2_lut_rep_564_3_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_rep_568_3_lut_4_lut (.A(\y[2] ), .B(\y[3] ), .C(\y[1] ), 
         .D(\y[0] ), .Z(n17223)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam i1_2_lut_rep_568_3_lut_4_lut.init = 16'hefff;
    LUT4 i20408_3_lut_4_lut (.A(\y[2] ), .B(\y[3] ), .C(\y[0] ), .D(\y[1] ), 
         .Z(n22333)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam i20408_3_lut_4_lut.init = 16'hefee;
    LUT4 i1_2_lut_rep_574_3_lut_4_lut (.A(\y[2] ), .B(\y[3] ), .C(\y[1] ), 
         .D(\y[0] ), .Z(n23907)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam i1_2_lut_rep_574_3_lut_4_lut.init = 16'h1101;
    LUT4 i1_2_lut_3_lut_4_lut_adj_186 (.A(\y[2] ), .B(\y[3] ), .C(\y[1] ), 
         .D(\y[0] ), .Z(n11_adj_1520)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam i1_2_lut_3_lut_4_lut_adj_186.init = 16'hffef;
    LUT4 x_3__I_0_173_i11_2_lut_3_lut_4_lut (.A(\y[2] ), .B(\y[3] ), .C(\y[1] ), 
         .D(\y[0] ), .Z(n11)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(110[5:10])
    defparam x_3__I_0_173_i11_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 x_3__I_0_155_i12_2_lut_rep_640 (.A(\x[0] ), .B(\x[1] ), .Z(n23973)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(53[5:10])
    defparam x_3__I_0_155_i12_2_lut_rep_640.init = 16'hdddd;
    LUT4 x_3__I_0_246_i14_2_lut_3_lut_4_lut (.A(\x[0] ), .B(\x[1] ), .C(\x[3] ), 
         .D(\x[2] ), .Z(n14)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(53[5:10])
    defparam x_3__I_0_246_i14_2_lut_3_lut_4_lut.init = 16'hdfff;
    LUT4 x_3__I_0_214_i14_2_lut_rep_570_3_lut_4_lut (.A(\x[0] ), .B(\x[1] ), 
         .C(\x[3] ), .D(\x[2] ), .Z(n23903)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(53[5:10])
    defparam x_3__I_0_214_i14_2_lut_rep_570_3_lut_4_lut.init = 16'hffdf;
    LUT4 x_3__I_0_183_i14_2_lut_rep_583_3_lut_4_lut (.A(\x[0] ), .B(\x[1] ), 
         .C(\x[3] ), .D(\x[2] ), .Z(n23916)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(53[5:10])
    defparam x_3__I_0_183_i14_2_lut_rep_583_3_lut_4_lut.init = 16'hfdff;
    LUT4 i15005_2_lut_rep_562_3_lut (.A(\x[2] ), .B(\x[3] ), .C(\x[1] ), 
         .Z(n23895)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(72[5:10])
    defparam i15005_2_lut_rep_562_3_lut.init = 16'hfefe;
    LUT4 i15022_2_lut_3_lut_4_lut (.A(\x[2] ), .B(\x[3] ), .C(\y[3] ), 
         .D(n23975), .Z(n16956)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(72[5:10])
    defparam i15022_2_lut_3_lut_4_lut.init = 16'hfffe;
    PFUMX i21568 (.BLUT(n24780), .ALUT(n24781), .C0(\x[3] ), .Z(n24782));
    LUT4 x_3__I_0_163_i12_2_lut_rep_642 (.A(\x[0] ), .B(\x[1] ), .Z(n23975)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(62[5:10])
    defparam x_3__I_0_163_i12_2_lut_rep_642.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_580_3_lut_4_lut (.A(\x[0] ), .B(\x[1] ), .C(\x[3] ), 
         .D(\x[2] ), .Z(n23913)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(62[5:10])
    defparam i1_2_lut_rep_580_3_lut_4_lut.init = 16'hffbf;
    LUT4 i14032_2_lut_rep_582_3_lut_2_lut (.A(\x[0] ), .B(\x[1] ), .Z(n23915)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(62[5:10])
    defparam i14032_2_lut_rep_582_3_lut_2_lut.init = 16'h9999;
    LUT4 x_3__I_0_256_i14_2_lut_rep_586_3_lut_4_lut (.A(\x[0] ), .B(\x[1] ), 
         .C(\x[3] ), .D(\x[2] ), .Z(n23919)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(62[5:10])
    defparam x_3__I_0_256_i14_2_lut_rep_586_3_lut_4_lut.init = 16'hbfff;
    LUT4 i14256_2_lut_rep_643 (.A(\x[0] ), .B(\x[1] ), .Z(n23976)) /* synthesis lut_function=(A (B)) */ ;
    defparam i14256_2_lut_rep_643.init = 16'h8888;
    LUT4 x_3__I_0_197_i14_2_lut_rep_571_3_lut_4_lut (.A(\x[0] ), .B(\x[1] ), 
         .C(\x[3] ), .D(\x[2] ), .Z(n23904)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam x_3__I_0_197_i14_2_lut_rep_571_3_lut_4_lut.init = 16'hf7ff;
    LUT4 x_3__I_0_165_i14_2_lut_rep_584_3_lut_4_lut (.A(\x[0] ), .B(\x[1] ), 
         .C(\x[3] ), .D(\x[2] ), .Z(n23917)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam x_3__I_0_165_i14_2_lut_rep_584_3_lut_4_lut.init = 16'hfff7;
    LUT4 i14349_2_lut_rep_548_3_lut_4_lut (.A(\x[0] ), .B(\x[1] ), .C(\x[3] ), 
         .D(\x[2] ), .Z(n23881)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i14349_2_lut_rep_548_3_lut_4_lut.init = 16'h8000;
    PFUMX i21576 (.BLUT(n24795), .ALUT(n24796), .C0(\y[1] ), .Z(n24797));
    LUT4 i2_4_lut_adj_187 (.A(col_c_0), .B(n22194), .C(row_15__N_537), 
         .D(n23838), .Z(col_7__N_401[0])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (D))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i2_4_lut_adj_187.init = 16'hb3ff;
    LUT4 i2_3_lut (.A(n23837), .B(n17247), .C(n22192), .Z(n22194)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_4_lut_then_3_lut (.A(\y[3] ), .B(\y[2] ), .C(\y[0] ), 
         .Z(n24796)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/22822/desktop/sensor_board/led_matrix_dot_driver.v(37[4] 182[11])
    defparam i1_2_lut_4_lut_then_3_lut.init = 16'hefef;
    LUT4 i2_4_lut_adj_188 (.A(n22481), .B(n24797), .C(n12), .D(n8_adj_1523), 
         .Z(row_15__N_537)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_188.init = 16'h8000;
    
endmodule
//
// Verilog Description of module coordinate_process
//

module coordinate_process (\y[0] , clk_c, clk_c_enable_118, n1790, \x[0] , 
            clk_c_enable_39, n23272, clk_shift, \x[2] , \x[3] , n22333, 
            n23930, n22692, n22189, n23852, GND_net, n23841, n23835, 
            n23844, n22932, n23851, n1806, n1807, \x[1] , \y_axis[14] , 
            \y_axis[15] , n23931, n23966, n17013, \y[2] , n23259, 
            \y[1] , n1789, n23932, n22406, \y[3] , n10251, \x_axis_jiaozhun[14] , 
            \x_axis_jiaozhun[15] , n23256, n23257, n22175, n179, n23842, 
            n23843, n11, n1804, n22403, n23847, n4, n10634, n24801, 
            n23976, n16881, n23912, n23929, n5, n22618, n5_adj_1, 
            n20858, n12, n180) /* synthesis syn_module_defined=1 */ ;
    output \y[0] ;
    input clk_c;
    output clk_c_enable_118;
    input n1790;
    output \x[0] ;
    input clk_c_enable_39;
    input n23272;
    output clk_shift;
    output \x[2] ;
    output \x[3] ;
    input n22333;
    input n23930;
    output n22692;
    input n22189;
    output n23852;
    input GND_net;
    output n23841;
    output n23835;
    input n23844;
    input n22932;
    output n23851;
    input n1806;
    input n1807;
    output \x[1] ;
    input \y_axis[14] ;
    input \y_axis[15] ;
    output n23931;
    input n23966;
    output n17013;
    output \y[2] ;
    input n23259;
    output \y[1] ;
    input n1789;
    output n23932;
    output n22406;
    output \y[3] ;
    input n10251;
    input \x_axis_jiaozhun[14] ;
    input \x_axis_jiaozhun[15] ;
    input n23256;
    output n23257;
    input n22175;
    output n179;
    output n23842;
    output n23843;
    input n11;
    output n1804;
    output n22403;
    output n23847;
    input n4;
    output n10634;
    output n24801;
    input n23976;
    output n16881;
    output n23912;
    output n23929;
    input n5;
    output n22618;
    input n5_adj_1;
    input n20858;
    output n12;
    input n180;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(32[11:14])
    
    wire clk_shift_N_615, n22708;
    wire [23:0]cnt_shift;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(29[15:24])
    
    wire n23934, n22760, n22638, n20782;
    wire [20:0]n89;
    
    wire n20781, n20780, n20779, n22162, n20778, n20777, n20776, 
        n20775, n20774, n20773;
    wire [3:0]n1805;
    
    wire n20, n22, n22163, n22784, n23925, n21, n22539, n26, 
        n23, n22431;
    
    FD1P3AX y__i1 (.D(n1790), .SP(clk_c_enable_118), .CK(clk_c), .Q(\y[0] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=87, LSE_RLINE=94 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam y__i1.GSR = "ENABLED";
    FD1P3AX x__i1 (.D(n23272), .SP(clk_c_enable_39), .CK(clk_c), .Q(\x[0] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=87, LSE_RLINE=94 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam x__i1.GSR = "ENABLED";
    FD1S3AX clk_shift_64 (.D(clk_shift_N_615), .CK(clk_c), .Q(clk_shift)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=87, LSE_RLINE=94 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(36[9] 41[32])
    defparam clk_shift_64.GSR = "ENABLED";
    LUT4 i20581_2_lut_3_lut_4_lut (.A(\x[2] ), .B(\x[3] ), .C(n22333), 
         .D(n23930), .Z(n22692)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam i20581_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i20635_4_lut (.A(n22708), .B(cnt_shift[6]), .C(n23934), .D(cnt_shift[10]), 
         .Z(n22760)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20635_4_lut.init = 16'h8000;
    LUT4 i20531_2_lut (.A(cnt_shift[1]), .B(cnt_shift[0]), .Z(n22638)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20531_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_519_4_lut_4_lut_4_lut (.A(\x[2] ), .B(\x[3] ), .C(n22189), 
         .D(n23930), .Z(n23852)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam i2_3_lut_rep_519_4_lut_4_lut_4_lut.init = 16'h0010;
    CCU2D cnt_shift_1804_1805_add_4_21 (.A0(cnt_shift[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_shift[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n20782), .S0(n89[19]), .S1(n89[20]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_21.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_shift_1804_1805_add_4_19 (.A0(cnt_shift[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_shift[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n20781), .COUT(n20782), .S0(n89[17]), 
          .S1(n89[18]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_19.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_shift_1804_1805_add_4_17 (.A0(cnt_shift[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_shift[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n20780), .COUT(n20781), .S0(n89[15]), 
          .S1(n89[16]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_17.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_shift_1804_1805_add_4_15 (.A0(cnt_shift[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_shift[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n20779), .COUT(n20780), .S0(n89[13]), 
          .S1(n89[14]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_15.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_15.INJECT1_1 = "NO";
    LUT4 i20761_2_lut_3_lut_4_lut (.A(n23841), .B(n23835), .C(n23844), 
         .D(n22932), .Z(n22162)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i20761_2_lut_3_lut_4_lut.init = 16'h0700;
    CCU2D cnt_shift_1804_1805_add_4_13 (.A0(cnt_shift[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_shift[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n20778), .COUT(n20779), .S0(n89[11]), 
          .S1(n89[12]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_13.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_shift_1804_1805_add_4_11 (.A0(cnt_shift[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_shift[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n20777), .COUT(n20778), .S0(n89[9]), 
          .S1(n89[10]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_11.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_shift_1804_1805_add_4_9 (.A0(cnt_shift[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_shift[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n20776), .COUT(n20777), .S0(n89[7]), 
          .S1(n89[8]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_9.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_9.INJECT1_1 = "NO";
    FD1S3IX cnt_shift_1804_1805__i1 (.D(n89[0]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i1.GSR = "ENABLED";
    CCU2D cnt_shift_1804_1805_add_4_7 (.A0(cnt_shift[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_shift[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n20775), .COUT(n20776), .S0(n89[5]), 
          .S1(n89[6]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_7.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_shift_1804_1805_add_4_5 (.A0(cnt_shift[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_shift[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n20774), .COUT(n20775), .S0(n89[3]), 
          .S1(n89[4]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_5.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_shift_1804_1805_add_4_3 (.A0(cnt_shift[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_shift[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n20773), .COUT(n20774), .S0(n89[1]), 
          .S1(n89[2]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_shift_1804_1805_add_4_3.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_shift_1804_1805_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_shift[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n20773), .S1(n89[0]));   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805_add_4_1.INIT0 = 16'hF000;
    defparam cnt_shift_1804_1805_add_4_1.INIT1 = 16'h0555;
    defparam cnt_shift_1804_1805_add_4_1.INJECT1_0 = "NO";
    defparam cnt_shift_1804_1805_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_shift_1804_1805__i21 (.D(n89[20]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i21.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i20 (.D(n89[19]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i20.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i19 (.D(n89[18]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i19.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i18 (.D(n89[17]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i18.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i17 (.D(n89[16]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i17.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i16 (.D(n89[15]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i16.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i15 (.D(n89[14]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i15.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i14 (.D(n89[13]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i14.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i13 (.D(n89[12]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i13.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i12 (.D(n89[11]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i12.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i11 (.D(n89[10]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i11.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i10 (.D(n89[9]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i10.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i9 (.D(n89[8]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i9.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i8 (.D(n89[7]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i8.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i7 (.D(n89[6]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i7.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i6 (.D(n89[5]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i6.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i5 (.D(n89[4]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i5.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i4 (.D(n89[3]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i4.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i3 (.D(n89[2]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i3.GSR = "ENABLED";
    FD1S3IX cnt_shift_1804_1805__i2 (.D(n89[1]), .CK(clk_c), .CD(n23851), 
            .Q(cnt_shift[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(40[18:32])
    defparam cnt_shift_1804_1805__i2.GSR = "ENABLED";
    FD1P3AY x__i4 (.D(n1806), .SP(clk_c_enable_39), .CK(clk_c), .Q(\x[3] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=87, LSE_RLINE=94 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam x__i4.GSR = "ENABLED";
    FD1P3AX x__i3 (.D(n1807), .SP(clk_c_enable_39), .CK(clk_c), .Q(\x[2] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=87, LSE_RLINE=94 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam x__i3.GSR = "ENABLED";
    FD1P3AX x__i2 (.D(n1805[1]), .SP(clk_c_enable_39), .CK(clk_c), .Q(\x[1] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=87, LSE_RLINE=94 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam x__i2.GSR = "ENABLED";
    LUT4 i14568_2_lut_rep_598 (.A(\y_axis[14] ), .B(\y_axis[15] ), .Z(n23931)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14568_2_lut_rep_598.init = 16'heeee;
    LUT4 i3_3_lut_4_lut (.A(\y_axis[14] ), .B(\y_axis[15] ), .C(\x[2] ), 
         .D(n23966), .Z(n17013)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(cnt_shift[19]), .B(cnt_shift[17]), .Z(n20)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6_2_lut.init = 16'h8888;
    FD1P3AY y__i3 (.D(n23259), .SP(clk_c_enable_118), .CK(clk_c), .Q(\y[2] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=87, LSE_RLINE=94 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam y__i3.GSR = "ENABLED";
    FD1P3AX y__i2 (.D(n1789), .SP(clk_c_enable_118), .CK(clk_c), .Q(\y[1] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=87, LSE_RLINE=94 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam y__i2.GSR = "ENABLED";
    LUT4 i2297_2_lut_rep_599 (.A(\y_axis[14] ), .B(\y_axis[15] ), .Z(n23932)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2297_2_lut_rep_599.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(\y_axis[14] ), .B(\y_axis[15] ), .C(\x[1] ), 
         .D(\x[2] ), .Z(n22406)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    FD1P3IX y__i4 (.D(n10251), .SP(clk_c_enable_118), .CD(n22162), .CK(clk_c), 
            .Q(\y[3] )) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=21, LSE_RCOL=3, LSE_LLINE=87, LSE_RLINE=94 */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam y__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_601 (.A(cnt_shift[3]), .B(cnt_shift[2]), .Z(n23934)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_601.init = 16'h8888;
    LUT4 i8_3_lut_4_lut (.A(cnt_shift[3]), .B(cnt_shift[2]), .C(cnt_shift[5]), 
         .D(cnt_shift[6]), .Z(n22)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i8_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_508 (.A(\x_axis_jiaozhun[14] ), .B(\x_axis_jiaozhun[15] ), 
         .Z(n23841)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i1_2_lut_rep_508.init = 16'heeee;
    LUT4 n23256_bdd_2_lut_3_lut (.A(\x_axis_jiaozhun[14] ), .B(\x_axis_jiaozhun[15] ), 
         .C(n23256), .Z(n23257)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam n23256_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i46_2_lut_3_lut (.A(\x_axis_jiaozhun[14] ), .B(\x_axis_jiaozhun[15] ), 
         .C(n22175), .Z(n179)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i46_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_509 (.A(\x_axis_jiaozhun[14] ), .B(\x_axis_jiaozhun[15] ), 
         .C(n22175), .Z(n23842)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i1_2_lut_rep_509.init = 16'hfefe;
    LUT4 i2137_2_lut_rep_510 (.A(\x_axis_jiaozhun[14] ), .B(\x_axis_jiaozhun[15] ), 
         .Z(n23843)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2137_2_lut_rep_510.init = 16'h8888;
    LUT4 i1_2_lut_rep_502_3_lut_4_lut_3_lut (.A(\x_axis_jiaozhun[14] ), .B(\x_axis_jiaozhun[15] ), 
         .C(n22175), .Z(n23835)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;
    defparam i1_2_lut_rep_502_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n23851), .B(n11), .C(clk_shift), .D(n23852), 
         .Z(n1804)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(36[12:35])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_rep_514 (.A(\x[0] ), .B(n22403), .Z(n23847)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[11:37])
    defparam i1_2_lut_rep_514.init = 16'h8888;
    LUT4 mux_1156_i2_4_lut_4_lut (.A(\x[0] ), .B(n22403), .C(n4), .D(n1804), 
         .Z(n1805[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !((D)+!C)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[11:37])
    defparam mux_1156_i2_4_lut_4_lut.init = 16'h885a;
    LUT4 i20813_4_lut_rep_518 (.A(n22163), .B(n22784), .C(cnt_shift[12]), 
         .D(n23925), .Z(n23851)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(36[12:35])
    defparam i20813_4_lut_rep_518.init = 16'h0004;
    LUT4 i1_4_lut (.A(n10634), .B(n22406), .C(\x[3] ), .D(clk_shift), 
         .Z(n22403)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[11:37])
    defparam i1_4_lut.init = 16'h0080;
    LUT4 i1_2_lut (.A(clk_shift), .B(n23851), .Z(clk_shift_N_615)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i14606_2_lut (.A(\y[2] ), .B(\y[3] ), .Z(n24801)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14606_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_155 (.A(n21), .B(n22539), .C(n26), .D(n22), .Z(n10634)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_155.init = 16'h2000;
    LUT4 i7_2_lut (.A(cnt_shift[12]), .B(cnt_shift[18]), .Z(n21)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i7_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_rep_592 (.A(cnt_shift[13]), .B(cnt_shift[16]), .C(cnt_shift[14]), 
         .Z(n23925)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_592.init = 16'hfefe;
    LUT4 i20439_2_lut_4_lut (.A(cnt_shift[13]), .B(cnt_shift[16]), .C(cnt_shift[14]), 
         .D(n22163), .Z(n22539)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i20439_2_lut_4_lut.init = 16'hfffe;
    LUT4 i15060_2_lut_3_lut_4_lut (.A(\x[2] ), .B(\x[3] ), .C(\y[3] ), 
         .D(n23976), .Z(n16881)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam i15060_2_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 i20589_2_lut_rep_579_3_lut (.A(\x[2] ), .B(\x[3] ), .C(\x[1] ), 
         .Z(n23912)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam i20589_2_lut_rep_579_3_lut.init = 16'hfbfb;
    LUT4 i20758_2_lut_rep_501_3_lut_4_lut (.A(\x_axis_jiaozhun[14] ), .B(\x_axis_jiaozhun[15] ), 
         .C(n23851), .D(clk_shift), .Z(clk_c_enable_118)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i20758_2_lut_rep_501_3_lut_4_lut.init = 16'h0090;
    LUT4 i1_2_lut_rep_596 (.A(\x[2] ), .B(\x[3] ), .Z(n23929)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(47[8] 59[10])
    defparam i1_2_lut_rep_596.init = 16'hbbbb;
    LUT4 i12_4_lut (.A(n23), .B(cnt_shift[20]), .C(n20), .D(cnt_shift[10]), 
         .Z(n26)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12_4_lut.init = 16'h8000;
    LUT4 i9_4_lut (.A(cnt_shift[15]), .B(cnt_shift[1]), .C(cnt_shift[0]), 
         .D(cnt_shift[4]), .Z(n23)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i20593_4_lut (.A(cnt_shift[15]), .B(cnt_shift[5]), .C(cnt_shift[4]), 
         .D(cnt_shift[20]), .Z(n22708)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20593_4_lut.init = 16'h8000;
    LUT4 i20512_4_lut (.A(n179), .B(n5), .C(\y[3] ), .D(\y[2] ), .Z(n22618)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i20512_4_lut.init = 16'hfeff;
    LUT4 i1_4_lut_adj_156 (.A(n5_adj_1), .B(n22431), .C(n20858), .D(n23842), 
         .Z(n12)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C)+!B))) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i1_4_lut_adj_156.init = 16'h0c04;
    LUT4 i3_4_lut (.A(cnt_shift[7]), .B(cnt_shift[8]), .C(cnt_shift[9]), 
         .D(cnt_shift[11]), .Z(n22163)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_157 (.A(n180), .B(\x_axis_jiaozhun[14] ), .C(n22175), 
         .D(\x_axis_jiaozhun[15] ), .Z(n22431)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/22822/desktop/sensor_board/coordinate_process.v(64[8] 76[10])
    defparam i1_4_lut_adj_157.init = 16'hffdf;
    LUT4 i20656_4_lut (.A(n20), .B(n22760), .C(cnt_shift[18]), .D(n22638), 
         .Z(n22784)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i20656_4_lut.init = 16'h8000;
    
endmodule
//
// Verilog Description of module ds18b20_interface
//

module ds18b20_interface (cnt_write, \state_back_2__N_737[2] , clk_c, 
            data_out, clk_c_enable_108, one_wire_N_887, \state[0] , 
            GND_net, \state[1] , one_wire_out, n6328, n23893, n53, 
            n3320, rst_c, n6) /* synthesis syn_module_defined=1 */ ;
    output [3:0]cnt_write;
    output \state_back_2__N_737[2] ;
    input clk_c;
    output [15:0]data_out;
    input clk_c_enable_108;
    output one_wire_N_887;
    output \state[0] ;
    input GND_net;
    output \state[1] ;
    input one_wire_out;
    output n6328;
    output n23893;
    output n53;
    output n3320;
    input rst_c;
    input n6;
    
    wire clk_1mhz /* synthesis is_clock=1, SET_AS_NETWORK=\ds18b20_interface_u1/clk_1mhz */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(40[10:18])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/22822/desktop/sensor_board/sensor_board.v(32[11:14])
    wire [3:0]cnt_write_c;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(62[14:23])
    
    wire n22508, n336;
    wire [19:0]n338;
    
    wire n22298, n22303, clk_1mhz_N_889, clk_c_enable_99;
    wire [15:0]temperature;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(64[15:26])
    wire [2:0]cnt;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(54[14:17])
    wire [2:0]cnt_2__N_637;
    
    wire one_wire_N_890, n22374, n16, n21, clk_c_enable_22, clk_c_enable_78;
    wire [7:0]temperature_buffer;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(65[14:32])
    wire [19:0]cnt_delay;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(60[15:24])
    
    wire clk_c_enable_62, n22304, n15826, n4, n3;
    wire [2:0]state_back;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(67[15:25])
    wire [2:0]state_back_2__N_737;
    
    wire n22293;
    wire [19:0]num_delay;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(61[15:24])
    
    wire clk_c_enable_26, n23951, n22291, n20738, n20737, n20736, 
        n22306, n23859, n23924, n22415, clk_c_enable_29;
    wire [19:0]num_delay_19__N_827;
    
    wire n20735, clk_c_enable_30, clk_c_enable_31, clk_c_enable_32, 
        clk_c_enable_134, clk_c_enable_34;
    wire [2:0]cnt_1mhz;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(41[14:22])
    
    wire n23964;
    wire [2:0]n17;
    
    wire n20734, n20733, n20732, n20731, n20730, n20729, clk_c_enable_38, 
        clk_c_enable_40, n23977, clk_c_enable_41, clk_c_enable_43, clk_c_enable_44, 
        n22305, n22302, n22290, n22289, n22288, n22300, n22301, 
        n22297, n22307, n22292, n22299, n22295, n22296, n22294, 
        clk_c_enable_71, clk_c_enable_64, n22367, n28, n43, n20761, 
        n20760, n20759, n22658, n29, n15;
    wire [7:0]data_wr;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(57[14:21])
    
    wire clk_c_enable_84, n7, n11395, n23945, n20758, n20757;
    wire [7:0]data_wr_buffer;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(58[14:28])
    
    wire clk_c_enable_102, n20756, clk_c_enable_104, n20755, clk_c_enable_105, 
        clk_c_enable_106;
    wire [2:0]cnt_init;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(59[14:22])
    
    wire clk_c_enable_132, n11522, n23943;
    wire [2:0]n109;
    wire [3:0]cnt_main;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(56[14:22])
    
    wire clk_c_enable_131, n11519, n23946, n15292;
    wire [3:0]n1;
    
    wire clk_c_enable_130, n11516;
    wire [3:0]cnt_write_3__N_800;
    wire [2:0]cnt_read;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(63[14:22])
    
    wire clk_c_enable_129, n11511;
    wire [2:0]n260;
    
    wire clk_c_enable_121;
    wire [2:0]state_2__N_734;
    
    wire clk_c_enable_122, clk_c_enable_126, one_wire_N_888, one_wire_N_896, 
        one_wire_N_901, n20754, n20753, n20_adj_1497, n22379, n22, 
        clk_c_enable_128, n22400, n3_adj_1498, n4_adj_1499, n20752, 
        n152, n24006, n23940, n24005, n23846, n23891, n23890, 
        n23875, n20923, n22311, n23857, n23868, n23850, n24779, 
        n23993, n23978, n23858, n22395, n25, n23962, n23922, n38, 
        n30, n28_adj_1501, n23848, n37, n11351, n23981, n23877, 
        n33, n22742, n9977, n23894, n27, n34, n27_adj_1502, n23874, 
        n23980, n9, n23954, n4_adj_1503, n23937, clk_c_enable_133, 
        n23887, n13, n16_adj_1504, n23856, n7_adj_1505, n22380, 
        n23921, n23513, n4_adj_1506, n22363, n5, n23514, n23892, 
        n23960, n23961, n9_adj_1507, n10, one_wire_N_894, n23952, 
        n6_c, n21168, n23959, n23854, n22389, n23888, n22427;
    wire [2:0]state_2__N_773;
    wire [2:0]state_2__N_770;
    
    wire n2, n6_adj_1509, n11488, n6_adj_1510, n22_adj_1511, n18_adj_1512, 
        n6_adj_1513, n46, n33_adj_1514, n28_adj_1515, n48, n3_adj_1516, 
        n22668, n23876, n24, n31;
    wire [2:0]state_2__N_776;
    
    wire n23941, n23963, n23944, n2_adj_1517, n22801, n2_adj_1518;
    
    LUT4 i20417_2_lut (.A(cnt_write[0]), .B(cnt_write_c[2]), .Z(n22508)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20417_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(\state_back_2__N_737[2] ), .B(n336), .C(n338[8]), 
         .Z(n22298)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_74 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[7]), .Z(n22303)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_74.init = 16'h2020;
    FD1S3AX clk_1mhz_142 (.D(clk_1mhz_N_889), .CK(clk_c), .Q(clk_1mhz)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(46[12] 51[6])
    defparam clk_1mhz_142.GSR = "ENABLED";
    FD1P3AX data_out_i0_i0 (.D(temperature[0]), .SP(clk_c_enable_99), .CK(clk_c), 
            .Q(data_out[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i0.GSR = "DISABLED";
    FD1P3AX cnt_i0_i0 (.D(cnt_2__N_637[0]), .SP(clk_c_enable_108), .CK(clk_c), 
            .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_i0_i0.GSR = "ENABLED";
    FD1S3AX one_wire_buffer_152 (.D(one_wire_N_890), .CK(clk_1mhz), .Q(one_wire_N_887)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam one_wire_buffer_152.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(\state_back_2__N_737[2] ), .B(n22374), .C(n16), 
         .D(n21), .Z(clk_c_enable_22)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(67[15:25])
    defparam i1_4_lut.init = 16'hccc8;
    FD1P3AX temperature_i0_i0 (.D(temperature_buffer[0]), .SP(clk_c_enable_78), 
            .CK(clk_c), .Q(temperature[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i0 (.D(n22304), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i0.GSR = "ENABLED";
    LUT4 state_2__I_0_i3_4_lut (.A(\state[0] ), .B(n15826), .C(\state_back_2__N_737[2] ), 
         .D(n4), .Z(n3)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam state_2__I_0_i3_4_lut.init = 16'hfaca;
    FD1P3AX state_back_i0_i0 (.D(state_back_2__N_737[0]), .SP(clk_c_enable_22), 
            .CK(clk_c), .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam state_back_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_75 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[6]), .Z(n22293)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_75.init = 16'h2020;
    FD1P3AX num_delay_i0_i12 (.D(n23951), .SP(clk_c_enable_26), .CK(clk_c), 
            .Q(num_delay[12])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam num_delay_i0_i12.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_76 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[0]), .Z(n22304)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_76.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_77 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[19]), .Z(n22291)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_77.init = 16'h2020;
    CCU2D add_76_21 (.A0(cnt_delay[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n20738), 
          .S0(n338[19]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_21.INIT0 = 16'h5aaa;
    defparam add_76_21.INIT1 = 16'h0000;
    defparam add_76_21.INJECT1_0 = "NO";
    defparam add_76_21.INJECT1_1 = "NO";
    CCU2D add_76_19 (.A0(cnt_delay[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20737), .COUT(n20738), .S0(n338[17]), .S1(n338[18]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_19.INIT0 = 16'h5aaa;
    defparam add_76_19.INIT1 = 16'h5aaa;
    defparam add_76_19.INJECT1_0 = "NO";
    defparam add_76_19.INJECT1_1 = "NO";
    CCU2D add_76_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20736), .COUT(n20737), .S0(n338[15]), .S1(n338[16]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_17.INIT0 = 16'h5aaa;
    defparam add_76_17.INIT1 = 16'h5aaa;
    defparam add_76_17.INJECT1_0 = "NO";
    defparam add_76_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_78 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[18]), .Z(n22306)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_78.init = 16'h2020;
    LUT4 i27_4_lut (.A(n23859), .B(n23924), .C(\state[1] ), .D(n22415), 
         .Z(n21)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(67[15:25])
    defparam i27_4_lut.init = 16'h3a0a;
    FD1P3AX num_delay_i0_i8 (.D(num_delay_19__N_827[7]), .SP(clk_c_enable_29), 
            .CK(clk_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam num_delay_i0_i8.GSR = "DISABLED";
    CCU2D add_76_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20735), .COUT(n20736), .S0(n338[13]), .S1(n338[14]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_15.INIT0 = 16'h5aaa;
    defparam add_76_15.INIT1 = 16'h5aaa;
    defparam add_76_15.INJECT1_0 = "NO";
    defparam add_76_15.INJECT1_1 = "NO";
    FD1P3AX num_delay_i0_i6 (.D(num_delay_19__N_827[6]), .SP(clk_c_enable_30), 
            .CK(clk_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam num_delay_i0_i6.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i5 (.D(num_delay_19__N_827[5]), .SP(clk_c_enable_31), 
            .CK(clk_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam num_delay_i0_i5.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i4 (.D(num_delay_19__N_827[4]), .SP(clk_c_enable_32), 
            .CK(clk_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam num_delay_i0_i4.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i3 (.D(num_delay_19__N_827[3]), .SP(clk_c_enable_134), 
            .CK(clk_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam num_delay_i0_i3.GSR = "DISABLED";
    FD1P3AX num_delay_i0_i1 (.D(num_delay_19__N_827[1]), .SP(clk_c_enable_34), 
            .CK(clk_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam num_delay_i0_i1.GSR = "DISABLED";
    FD1S3IX cnt_1mhz_1806__i0 (.D(n17[0]), .CK(clk_c), .CD(n23964), .Q(cnt_1mhz[0]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(50[16:31])
    defparam cnt_1mhz_1806__i0.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_1806__i2 (.D(n17[2]), .CK(clk_c), .CD(n23964), .Q(cnt_1mhz[2]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(50[16:31])
    defparam cnt_1mhz_1806__i2.GSR = "ENABLED";
    FD1S3IX cnt_1mhz_1806__i1 (.D(n17[1]), .CK(clk_c), .CD(n23964), .Q(cnt_1mhz[1]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(50[16:31])
    defparam cnt_1mhz_1806__i1.GSR = "ENABLED";
    CCU2D add_76_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20734), .COUT(n20735), .S0(n338[11]), .S1(n338[12]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_13.INIT0 = 16'h5aaa;
    defparam add_76_13.INIT1 = 16'h5aaa;
    defparam add_76_13.INJECT1_0 = "NO";
    defparam add_76_13.INJECT1_1 = "NO";
    CCU2D add_76_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20733), .COUT(n20734), .S0(n338[9]), .S1(n338[10]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_11.INIT0 = 16'h5aaa;
    defparam add_76_11.INIT1 = 16'h5aaa;
    defparam add_76_11.INJECT1_0 = "NO";
    defparam add_76_11.INJECT1_1 = "NO";
    CCU2D add_76_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20732), .COUT(n20733), .S0(n338[7]), .S1(n338[8]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_9.INIT0 = 16'h5aaa;
    defparam add_76_9.INIT1 = 16'h5aaa;
    defparam add_76_9.INJECT1_0 = "NO";
    defparam add_76_9.INJECT1_1 = "NO";
    CCU2D add_76_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20731), .COUT(n20732), .S0(n338[5]), .S1(n338[6]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_7.INIT0 = 16'h5aaa;
    defparam add_76_7.INIT1 = 16'h5aaa;
    defparam add_76_7.INJECT1_0 = "NO";
    defparam add_76_7.INJECT1_1 = "NO";
    CCU2D add_76_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20730), .COUT(n20731), .S0(n338[3]), .S1(n338[4]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_5.INIT0 = 16'h5aaa;
    defparam add_76_5.INIT1 = 16'h5aaa;
    defparam add_76_5.INJECT1_0 = "NO";
    defparam add_76_5.INJECT1_1 = "NO";
    CCU2D add_76_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20729), .COUT(n20730), .S0(n338[1]), .S1(n338[2]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_3.INIT0 = 16'h5aaa;
    defparam add_76_3.INIT1 = 16'h5aaa;
    defparam add_76_3.INJECT1_0 = "NO";
    defparam add_76_3.INJECT1_1 = "NO";
    FD1P3AX state_back_i0_i2 (.D(\state_back_2__N_737[2] ), .SP(clk_c_enable_38), 
            .CK(clk_c), .Q(state_back[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam state_back_i0_i2.GSR = "ENABLED";
    FD1P3AX state_back_i0_i1 (.D(n23977), .SP(clk_c_enable_40), .CK(clk_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam state_back_i0_i1.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i1 (.D(one_wire_out), .SP(clk_c_enable_41), 
            .CK(clk_c), .Q(temperature_buffer[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_buffer_i0_i1.GSR = "DISABLED";
    FD1P3AX cnt_delay_i0_i19 (.D(n22291), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[19])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i19.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i2 (.D(one_wire_out), .SP(clk_c_enable_43), 
            .CK(clk_c), .Q(temperature_buffer[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_buffer_i0_i2.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i3 (.D(one_wire_out), .SP(clk_c_enable_44), 
            .CK(clk_c), .Q(temperature_buffer[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_buffer_i0_i3.GSR = "DISABLED";
    FD1P3AX cnt_delay_i0_i18 (.D(n22306), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[18])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i18.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i17 (.D(n22305), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[17])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i17.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i16 (.D(n22302), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[16])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i16.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i15 (.D(n22290), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i14 (.D(n22289), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i13 (.D(n22288), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i12 (.D(n22300), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i11 (.D(n22301), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i10 (.D(n22297), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i9 (.D(n22307), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i8 (.D(n22298), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i7 (.D(n22303), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i6 (.D(n22293), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i5 (.D(n22292), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i4 (.D(n22299), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i3 (.D(n22295), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i2 (.D(n22296), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_delay_i0_i1 (.D(n22294), .SP(clk_c_enable_62), .CK(clk_c), 
            .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_delay_i0_i1.GSR = "ENABLED";
    FD1P3AX temperature_i0_i15 (.D(temperature_buffer[7]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(temperature[15])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i15.GSR = "ENABLED";
    FD1P3AX temperature_buffer_i0_i4 (.D(one_wire_out), .SP(clk_c_enable_64), 
            .CK(clk_c), .Q(temperature_buffer[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_buffer_i0_i4.GSR = "DISABLED";
    FD1P3AX temperature_i0_i14 (.D(temperature_buffer[6]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(temperature[14])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i14.GSR = "ENABLED";
    FD1P3AX temperature_i0_i13 (.D(temperature_buffer[5]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(temperature[13])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i13.GSR = "ENABLED";
    FD1P3AX temperature_i0_i12 (.D(temperature_buffer[4]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(temperature[12])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i12.GSR = "ENABLED";
    FD1P3AX temperature_i0_i11 (.D(temperature_buffer[3]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(temperature[11])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i11.GSR = "ENABLED";
    FD1P3AX temperature_i0_i10 (.D(temperature_buffer[2]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(temperature[10])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i10.GSR = "ENABLED";
    FD1P3AX temperature_i0_i9 (.D(temperature_buffer[1]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(temperature[9])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i9.GSR = "ENABLED";
    FD1P3AX temperature_i0_i8 (.D(temperature_buffer[0]), .SP(clk_c_enable_71), 
            .CK(clk_c), .Q(temperature[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i8.GSR = "ENABLED";
    FD1P3AX temperature_i0_i7 (.D(temperature_buffer[7]), .SP(clk_c_enable_78), 
            .CK(clk_c), .Q(temperature[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i7.GSR = "ENABLED";
    PFUMX i48 (.BLUT(n22367), .ALUT(n28), .C0(\state_back_2__N_737[2] ), 
          .Z(n43));
    CCU2D add_76_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n20729), .S1(n338[0]));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(181[29:45])
    defparam add_76_1.INIT0 = 16'hF000;
    defparam add_76_1.INIT1 = 16'h5555;
    defparam add_76_1.INJECT1_0 = "NO";
    defparam add_76_1.INJECT1_1 = "NO";
    FD1P3AX temperature_i0_i6 (.D(temperature_buffer[6]), .SP(clk_c_enable_78), 
            .CK(clk_c), .Q(temperature[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i6.GSR = "ENABLED";
    FD1P3AX temperature_i0_i5 (.D(temperature_buffer[5]), .SP(clk_c_enable_78), 
            .CK(clk_c), .Q(temperature[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i5.GSR = "ENABLED";
    FD1P3AX temperature_i0_i4 (.D(temperature_buffer[4]), .SP(clk_c_enable_78), 
            .CK(clk_c), .Q(temperature[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i4.GSR = "ENABLED";
    FD1P3AX temperature_i0_i3 (.D(temperature_buffer[3]), .SP(clk_c_enable_78), 
            .CK(clk_c), .Q(temperature[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i3.GSR = "ENABLED";
    FD1P3AX temperature_i0_i2 (.D(temperature_buffer[2]), .SP(clk_c_enable_78), 
            .CK(clk_c), .Q(temperature[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i2.GSR = "ENABLED";
    FD1P3AX temperature_i0_i1 (.D(temperature_buffer[1]), .SP(clk_c_enable_78), 
            .CK(clk_c), .Q(temperature[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_i0_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_79 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[17]), .Z(n22305)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_79.init = 16'h2020;
    CCU2D sub_1596_add_2_21 (.A0(cnt_delay[19]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n20761), .S1(n336));
    defparam sub_1596_add_2_21.INIT0 = 16'h5999;
    defparam sub_1596_add_2_21.INIT1 = 16'h0000;
    defparam sub_1596_add_2_21.INJECT1_0 = "NO";
    defparam sub_1596_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_1596_add_2_19 (.A0(cnt_delay[17]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20760), .COUT(n20761));
    defparam sub_1596_add_2_19.INIT0 = 16'h5999;
    defparam sub_1596_add_2_19.INIT1 = 16'h5555;
    defparam sub_1596_add_2_19.INJECT1_0 = "NO";
    defparam sub_1596_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_1596_add_2_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[16]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n20759), .COUT(n20760));
    defparam sub_1596_add_2_17.INIT0 = 16'h5555;
    defparam sub_1596_add_2_17.INIT1 = 16'h5999;
    defparam sub_1596_add_2_17.INJECT1_0 = "NO";
    defparam sub_1596_add_2_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_80 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[16]), .Z(n22302)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_80.init = 16'h2020;
    PFUMX i32 (.BLUT(n22658), .ALUT(n29), .C0(\state_back_2__N_737[2] ), 
          .Z(n15));
    FD1P3AX data_wr_i0_i7 (.D(n7), .SP(clk_c_enable_84), .CK(clk_c), .Q(data_wr[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_wr_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i6 (.D(n11395), .SP(clk_c_enable_84), .CK(clk_c), 
            .Q(data_wr[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_wr_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_i0_i1 (.D(n23945), .SP(clk_c_enable_84), .CK(clk_c), 
            .Q(data_wr[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_wr_i0_i1.GSR = "DISABLED";
    FD1P3AX data_out_i0_i15 (.D(temperature[15]), .SP(clk_c_enable_99), 
            .CK(clk_c), .Q(data_out[15])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i15.GSR = "DISABLED";
    FD1P3AX data_out_i0_i14 (.D(temperature[14]), .SP(clk_c_enable_99), 
            .CK(clk_c), .Q(data_out[14])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i14.GSR = "DISABLED";
    FD1P3AX data_out_i0_i13 (.D(temperature[13]), .SP(clk_c_enable_99), 
            .CK(clk_c), .Q(data_out[13])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i13.GSR = "DISABLED";
    FD1P3AX data_out_i0_i12 (.D(temperature[12]), .SP(clk_c_enable_99), 
            .CK(clk_c), .Q(data_out[12])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i12.GSR = "DISABLED";
    FD1P3AX data_out_i0_i11 (.D(temperature[11]), .SP(clk_c_enable_99), 
            .CK(clk_c), .Q(data_out[11])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i11.GSR = "DISABLED";
    CCU2D sub_1596_add_2_15 (.A0(cnt_delay[13]), .B0(num_delay[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n20758), .COUT(n20759));
    defparam sub_1596_add_2_15.INIT0 = 16'h5999;
    defparam sub_1596_add_2_15.INIT1 = 16'h5999;
    defparam sub_1596_add_2_15.INJECT1_0 = "NO";
    defparam sub_1596_add_2_15.INJECT1_1 = "NO";
    FD1P3AX data_out_i0_i10 (.D(temperature[10]), .SP(clk_c_enable_99), 
            .CK(clk_c), .Q(data_out[10])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i10.GSR = "DISABLED";
    CCU2D sub_1596_add_2_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(num_delay[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n20757), .COUT(n20758));
    defparam sub_1596_add_2_13.INIT0 = 16'h5555;
    defparam sub_1596_add_2_13.INIT1 = 16'h5999;
    defparam sub_1596_add_2_13.INJECT1_0 = "NO";
    defparam sub_1596_add_2_13.INJECT1_1 = "NO";
    FD1P3AX data_out_i0_i9 (.D(temperature[9]), .SP(clk_c_enable_99), .CK(clk_c), 
            .Q(data_out[9])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i9.GSR = "DISABLED";
    FD1P3AX data_out_i0_i8 (.D(temperature[8]), .SP(clk_c_enable_99), .CK(clk_c), 
            .Q(data_out[8])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i8.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_81 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[5]), .Z(n22292)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_81.init = 16'h2020;
    FD1P3AX data_out_i0_i7 (.D(temperature[7]), .SP(clk_c_enable_99), .CK(clk_c), 
            .Q(data_out[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i7.GSR = "DISABLED";
    FD1P3AX data_out_i0_i6 (.D(temperature[6]), .SP(clk_c_enable_99), .CK(clk_c), 
            .Q(data_out[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i6.GSR = "DISABLED";
    FD1P3AX data_out_i0_i5 (.D(temperature[5]), .SP(clk_c_enable_99), .CK(clk_c), 
            .Q(data_out[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i5.GSR = "DISABLED";
    FD1P3AX data_out_i0_i4 (.D(temperature[4]), .SP(clk_c_enable_99), .CK(clk_c), 
            .Q(data_out[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i4.GSR = "DISABLED";
    FD1P3AX data_out_i0_i3 (.D(temperature[3]), .SP(clk_c_enable_99), .CK(clk_c), 
            .Q(data_out[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i3.GSR = "DISABLED";
    FD1P3AX data_out_i0_i2 (.D(temperature[2]), .SP(clk_c_enable_99), .CK(clk_c), 
            .Q(data_out[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i2.GSR = "DISABLED";
    FD1P3AX data_out_i0_i1 (.D(temperature[1]), .SP(clk_c_enable_99), .CK(clk_c), 
            .Q(data_out[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_out_i0_i1.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i7 (.D(data_wr[7]), .SP(clk_c_enable_102), 
            .CK(clk_c), .Q(data_wr_buffer[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_wr_buffer_i0_i7.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i6 (.D(data_wr[6]), .SP(clk_c_enable_102), 
            .CK(clk_c), .Q(data_wr_buffer[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_wr_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX data_wr_buffer_i0_i4 (.D(data_wr[1]), .SP(clk_c_enable_102), 
            .CK(clk_c), .Q(data_wr_buffer[4])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam data_wr_buffer_i0_i4.GSR = "DISABLED";
    CCU2D sub_1596_add_2_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n20756), .COUT(n20757));
    defparam sub_1596_add_2_11.INIT0 = 16'h5555;
    defparam sub_1596_add_2_11.INIT1 = 16'h5555;
    defparam sub_1596_add_2_11.INJECT1_0 = "NO";
    defparam sub_1596_add_2_11.INJECT1_1 = "NO";
    FD1P3AX temperature_buffer_i0_i5 (.D(one_wire_out), .SP(clk_c_enable_104), 
            .CK(clk_c), .Q(temperature_buffer[5])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_buffer_i0_i5.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_82 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[4]), .Z(n22299)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_82.init = 16'h2020;
    CCU2D sub_1596_add_2_9 (.A0(cnt_delay[7]), .B0(num_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[8]), .B1(num_delay[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n20755), .COUT(n20756));
    defparam sub_1596_add_2_9.INIT0 = 16'h5999;
    defparam sub_1596_add_2_9.INIT1 = 16'h5999;
    defparam sub_1596_add_2_9.INJECT1_0 = "NO";
    defparam sub_1596_add_2_9.INJECT1_1 = "NO";
    FD1P3AX temperature_buffer_i0_i6 (.D(one_wire_out), .SP(clk_c_enable_105), 
            .CK(clk_c), .Q(temperature_buffer[6])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_buffer_i0_i6.GSR = "DISABLED";
    FD1P3AX temperature_buffer_i0_i7 (.D(one_wire_out), .SP(clk_c_enable_106), 
            .CK(clk_c), .Q(temperature_buffer[7])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_buffer_i0_i7.GSR = "DISABLED";
    FD1P3AX cnt_i0_i1 (.D(cnt_2__N_637[1]), .SP(clk_c_enable_108), .CK(clk_c), 
            .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_i0_i1.GSR = "ENABLED";
    FD1P3AX cnt_i0_i2 (.D(cnt_2__N_637[2]), .SP(clk_c_enable_108), .CK(clk_c), 
            .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i1 (.D(n23943), .SP(clk_c_enable_132), .CD(n11522), 
            .CK(clk_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_init_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_init_i0_i2 (.D(n109[2]), .SP(clk_c_enable_132), .CD(n11522), 
            .CK(clk_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_init_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i1 (.D(n23946), .SP(clk_c_enable_131), .CD(n11519), 
            .CK(clk_c), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_main_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i2 (.D(n15292), .SP(clk_c_enable_131), .CD(n11519), 
            .CK(clk_c), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_main_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_main_i0_i3 (.D(n1[3]), .SP(clk_c_enable_131), .CD(n11519), 
            .CK(clk_c), .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_main_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i1 (.D(cnt_write_3__N_800[1]), .SP(clk_c_enable_130), 
            .CD(n11516), .CK(clk_c), .Q(cnt_write_c[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_write_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i2 (.D(cnt_write_3__N_800[2]), .SP(clk_c_enable_130), 
            .CD(n11516), .CK(clk_c), .Q(cnt_write_c[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_write_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_write_i0_i3 (.D(cnt_write_3__N_800[3]), .SP(clk_c_enable_130), 
            .CD(n11516), .CK(clk_c), .Q(cnt_write_c[3])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_write_i0_i3.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i1 (.D(n260[1]), .SP(clk_c_enable_129), .CD(n11511), 
            .CK(clk_c), .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_read_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_read_i0_i2 (.D(n260[2]), .SP(clk_c_enable_129), .CD(n11511), 
            .CK(clk_c), .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_read_i0_i2.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(state_2__N_734[1]), .SP(clk_c_enable_121), .CK(clk_c), 
            .Q(\state[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3AX state_i0_i2 (.D(state_2__N_734[2]), .SP(clk_c_enable_122), .CK(clk_c), 
            .Q(\state_back_2__N_737[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1P3AX num_delay_i0_i2 (.D(num_delay_19__N_827[2]), .SP(clk_c_enable_126), 
            .CK(clk_c), .Q(num_delay[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam num_delay_i0_i2.GSR = "DISABLED";
    FD1P3AX i137_159 (.D(one_wire_N_901), .SP(one_wire_N_896), .CK(clk_1mhz), 
            .Q(one_wire_N_888));   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i137_159.GSR = "ENABLED";
    CCU2D sub_1596_add_2_7 (.A0(cnt_delay[5]), .B0(num_delay[5]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[6]), .B1(num_delay[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n20754), .COUT(n20755));
    defparam sub_1596_add_2_7.INIT0 = 16'h5999;
    defparam sub_1596_add_2_7.INIT1 = 16'h5999;
    defparam sub_1596_add_2_7.INJECT1_0 = "NO";
    defparam sub_1596_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_1596_add_2_5 (.A0(cnt_delay[3]), .B0(num_delay[3]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[4]), .B1(num_delay[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n20753), .COUT(n20754));
    defparam sub_1596_add_2_5.INIT0 = 16'h5999;
    defparam sub_1596_add_2_5.INIT1 = 16'h5999;
    defparam sub_1596_add_2_5.INJECT1_0 = "NO";
    defparam sub_1596_add_2_5.INJECT1_1 = "NO";
    PFUMX i40 (.BLUT(n20_adj_1497), .ALUT(n22379), .C0(\state_back_2__N_737[2] ), 
          .Z(n22));
    FD1P3AX state_i0_i0 (.D(state_2__N_734[0]), .SP(clk_c_enable_128), .CK(clk_c), 
            .Q(\state[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3AX cnt_read_i0_i0 (.D(n22400), .SP(clk_c_enable_129), .CK(clk_c), 
            .Q(cnt_read[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_read_i0_i0.GSR = "ENABLED";
    PFUMX state_2__I_0_163_Mux_0_i7 (.BLUT(n3_adj_1498), .ALUT(n4_adj_1499), 
          .C0(\state_back_2__N_737[2] ), .Z(state_2__N_734[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;
    FD1P3IX cnt_write_i0_i0 (.D(cnt_write_3__N_800[0]), .SP(clk_c_enable_130), 
            .CD(n11516), .CK(clk_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_write_i0_i0.GSR = "ENABLED";
    CCU2D sub_1596_add_2_3 (.A0(cnt_delay[1]), .B0(num_delay[1]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[2]), .B1(num_delay[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n20752), .COUT(n20753));
    defparam sub_1596_add_2_3.INIT0 = 16'h5999;
    defparam sub_1596_add_2_3.INIT1 = 16'h5999;
    defparam sub_1596_add_2_3.INJECT1_0 = "NO";
    defparam sub_1596_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_1596_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[0]), .B1(num_delay[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n20752));
    defparam sub_1596_add_2_1.INIT0 = 16'h0000;
    defparam sub_1596_add_2_1.INIT1 = 16'h5999;
    defparam sub_1596_add_2_1.INJECT1_0 = "NO";
    defparam sub_1596_add_2_1.INJECT1_1 = "NO";
    FD1P3IX cnt_main_i0_i0 (.D(n1[0]), .SP(clk_c_enable_131), .CD(n11519), 
            .CK(clk_c), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_main_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_83 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[3]), .Z(n22295)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_83.init = 16'h2020;
    LUT4 state_2__I_0_176_i7_then_4_lut (.A(\state[1] ), .B(cnt_write[0]), 
         .C(n152), .D(\state_back_2__N_737[2] ), .Z(n24006)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam state_2__I_0_176_i7_then_4_lut.init = 16'h0008;
    LUT4 state_2__I_0_176_i7_else_4_lut (.A(n23940), .B(n15826), .C(\state[1] ), 
         .D(\state_back_2__N_737[2] ), .Z(n24005)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (D)+!B (C (D))))) */ ;
    defparam state_2__I_0_176_i7_else_4_lut.init = 16'h035f;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt[2]), .B(n23846), .C(n23891), .D(cnt[1]), 
         .Z(clk_c_enable_44)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_84 (.A(cnt[2]), .B(n23846), .C(n23890), 
         .D(cnt[1]), .Z(clk_c_enable_43)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_84.init = 16'h0100;
    LUT4 i2_3_lut (.A(\state[1] ), .B(\state_back_2__N_737[2] ), .C(n23875), 
         .Z(n20923)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut (.A(\state[0] ), .B(cnt_main[3]), .Z(n22311)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i4759_1_lut (.A(one_wire_N_888), .Z(n6328)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(69[2] 185[5])
    defparam i4759_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_4_lut (.A(n23857), .B(n23868), .C(n23850), .D(n20923), 
         .Z(clk_c_enable_26)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i14358_2_lut_rep_652 (.A(cnt_read[1]), .B(cnt_read[2]), .Z(n24779)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(164[7] 175[14])
    defparam i14358_2_lut_rep_652.init = 16'heeee;
    LUT4 n319_bdd_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(\state_back_2__N_737[2] ), 
         .D(n23993), .Z(num_delay_19__N_827[2])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(164[7] 175[14])
    defparam n319_bdd_3_lut_4_lut.init = 16'hefe0;
    LUT4 i1_4_lut_adj_85 (.A(\state_back_2__N_737[2] ), .B(\state[1] ), 
         .C(\state[0] ), .D(n23978), .Z(num_delay_19__N_827[7])) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(66[15:20])
    defparam i1_4_lut_adj_85.init = 16'h1511;
    LUT4 i2_3_lut_4_lut_adj_86 (.A(n23858), .B(\state_back_2__N_737[2] ), 
         .C(n23868), .D(n23857), .Z(n22395)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_86.init = 16'hb000;
    LUT4 i1_4_lut_adj_87 (.A(n23977), .B(cnt_init[2]), .C(n25), .D(\state[0] ), 
         .Z(num_delay_19__N_827[6])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_4_lut_adj_87.init = 16'ha022;
    LUT4 i1_3_lut (.A(cnt_write_c[2]), .B(cnt_write[0]), .C(cnt_write_c[1]), 
         .Z(n25)) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_3_lut.init = 16'h8a8a;
    LUT4 i2_3_lut_rep_513_4_lut (.A(n23868), .B(\state_back_2__N_737[2] ), 
         .C(cnt_read[2]), .D(n23962), .Z(n23846)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_3_lut_rep_513_4_lut.init = 16'hff7f;
    LUT4 i34_4_lut (.A(n23922), .B(cnt_write_c[3]), .C(\state[0] ), .D(n38), 
         .Z(n30)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i34_4_lut.init = 16'h3a0a;
    LUT4 i2_4_lut (.A(n28_adj_1501), .B(n23848), .C(\state_back_2__N_737[2] ), 
         .D(n37), .Z(clk_c_enable_31)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut.init = 16'h8c88;
    LUT4 mux_83_Mux_5_i7_4_lut (.A(n11351), .B(cnt_read[2]), .C(\state_back_2__N_737[2] ), 
         .D(\state[1] ), .Z(num_delay_19__N_827[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam mux_83_Mux_5_i7_4_lut.init = 16'hc5cf;
    LUT4 i9584_2_lut (.A(cnt_init[2]), .B(\state[0] ), .Z(n11351)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i9584_2_lut.init = 16'heeee;
    LUT4 i2_4_lut_adj_88 (.A(\state[1] ), .B(cnt_read[0]), .C(\state[0] ), 
         .D(n23981), .Z(n28_adj_1501)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_4_lut_adj_88.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_4_lut_adj_89 (.A(n23962), .B(n23877), .C(n23893), 
         .D(\state_back_2__N_737[2] ), .Z(n22374)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C)+!B (C+(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_89.init = 16'h040f;
    LUT4 i2_4_lut_adj_90 (.A(n28_adj_1501), .B(n23848), .C(\state_back_2__N_737[2] ), 
         .D(n33), .Z(clk_c_enable_32)) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_90.init = 16'h8c88;
    LUT4 i1_2_lut_adj_91 (.A(\state[1] ), .B(n30), .Z(n33)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_91.init = 16'hdddd;
    LUT4 i31_4_lut (.A(\state[1] ), .B(cnt_read[2]), .C(\state_back_2__N_737[2] ), 
         .D(n22742), .Z(num_delay_19__N_827[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(66[15:20])
    defparam i31_4_lut.init = 16'hcfc5;
    LUT4 i1_4_lut_adj_92 (.A(n23868), .B(n9977), .C(n23858), .D(\state_back_2__N_737[2] ), 
         .Z(clk_c_enable_134)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_92.init = 16'ha088;
    LUT4 i1_2_lut_adj_93 (.A(\state_back_2__N_737[2] ), .B(cnt_read[2]), 
         .Z(num_delay_19__N_827[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_adj_93.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_94 (.A(cnt_main[3]), .B(n23894), .C(\state[1] ), 
         .D(\state[0] ), .Z(n27)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C)+!B (C+(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_3_lut_4_lut_adj_94.init = 16'h040f;
    LUT4 i2_4_lut_adj_95 (.A(\state[0] ), .B(n23848), .C(n34), .D(n27_adj_1502), 
         .Z(clk_c_enable_34)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_95.init = 16'hc4c0;
    LUT4 i1_4_lut_adj_96 (.A(\state_back_2__N_737[2] ), .B(\state[1] ), 
         .C(n38), .D(n22415), .Z(n34)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_96.init = 16'h5111;
    LUT4 i1_4_lut_adj_97 (.A(cnt_init[0]), .B(n23874), .C(n23980), .D(\state_back_2__N_737[2] ), 
         .Z(n27_adj_1502)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_97.init = 16'hccce;
    LUT4 i21_4_lut (.A(n9), .B(n24779), .C(\state_back_2__N_737[2] ), 
         .D(n23954), .Z(num_delay_19__N_827[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i21_4_lut.init = 16'h3a30;
    LUT4 i1_3_lut_adj_98 (.A(cnt_write[0]), .B(cnt_write_c[2]), .C(cnt_write_c[1]), 
         .Z(n9)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i1_3_lut_adj_98.init = 16'h7373;
    LUT4 i1_2_lut_3_lut_4_lut_adj_99 (.A(cnt_main[3]), .B(n23894), .C(\state[1] ), 
         .D(\state[0] ), .Z(n4_adj_1503)) /* synthesis lut_function=(A (C+!(D))+!A (B+(C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_3_lut_4_lut_adj_99.init = 16'hf4ff;
    LUT4 i2_4_lut_rep_528 (.A(n23893), .B(\state_back_2__N_737[2] ), .C(\state[1] ), 
         .D(\state[0] ), .Z(clk_c_enable_130)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i2_4_lut_rep_528.init = 16'h1001;
    LUT4 i18704_1_lut (.A(cnt_1mhz[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(50[16:31])
    defparam i18704_1_lut.init = 16'h5555;
    LUT4 i9749_2_lut_4_lut (.A(n23893), .B(\state_back_2__N_737[2] ), .C(\state[1] ), 
         .D(\state[0] ), .Z(n11516)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9749_2_lut_4_lut.init = 16'h0001;
    FD1P3IX cnt_init_i0_i0 (.D(n23937), .SP(clk_c_enable_132), .CD(n11522), 
            .CK(clk_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam cnt_init_i0_i0.GSR = "ENABLED";
    LUT4 i18713_3_lut (.A(cnt_1mhz[2]), .B(cnt_1mhz[1]), .C(cnt_1mhz[0]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(50[16:31])
    defparam i18713_3_lut.init = 16'h6a6a;
    LUT4 i18706_2_lut (.A(cnt_1mhz[1]), .B(cnt_1mhz[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(50[16:31])
    defparam i18706_2_lut.init = 16'h6666;
    FD1P3AX temperature_buffer_i0_i0 (.D(one_wire_out), .SP(clk_c_enable_133), 
            .CK(clk_c), .Q(temperature_buffer[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam temperature_buffer_i0_i0.GSR = "DISABLED";
    LUT4 i38_3_lut_4_lut (.A(\state[0] ), .B(n23887), .C(\state[1] ), 
         .D(n13), .Z(n16_adj_1504)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i38_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_100 (.A(cnt[1]), .B(n23890), .C(n23846), 
         .D(cnt[2]), .Z(clk_c_enable_64)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_100.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_101 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[2]), .Z(n22296)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_101.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_102 (.A(n23891), .B(cnt[1]), .C(n23846), 
         .D(cnt[2]), .Z(clk_c_enable_104)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_102.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_adj_103 (.A(n23891), .B(cnt[1]), .C(n23846), 
         .D(cnt[2]), .Z(clk_c_enable_41)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_103.init = 16'h0002;
    FD1P3AX num_delay_i0_i0 (.D(num_delay_19__N_827[0]), .SP(clk_c_enable_134), 
            .CK(clk_c), .Q(num_delay[0])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam num_delay_i0_i0.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_104 (.A(n23856), .B(n22374), .C(n27), .D(\state_back_2__N_737[2] ), 
         .Z(clk_c_enable_38)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_104.init = 16'hccc8;
    LUT4 i4_4_lut (.A(n7_adj_1505), .B(n22380), .C(cnt_main[3]), .D(\state_back_2__N_737[2] ), 
         .Z(clk_c_enable_99)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i2_4_lut_adj_105 (.A(n22374), .B(\state_back_2__N_737[2] ), .C(n20923), 
         .D(n4_adj_1503), .Z(clk_c_enable_40)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_105.init = 16'ha080;
    LUT4 i1_2_lut_rep_523_4_lut (.A(n23922), .B(n23921), .C(\state[0] ), 
         .D(\state[1] ), .Z(n23856)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(66[15:20])
    defparam i1_2_lut_rep_523_4_lut.init = 16'h3a00;
    LUT4 i1_2_lut_4_lut (.A(n23922), .B(n23921), .C(\state[0] ), .D(\state[1] ), 
         .Z(n37)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(66[15:20])
    defparam i1_2_lut_4_lut.init = 16'h3aff;
    LUT4 i1_3_lut_3_lut_4_lut (.A(n23894), .B(n22311), .C(n23875), .D(\state[1] ), 
         .Z(n9977)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'hf088;
    LUT4 i1_2_lut_rep_517_3_lut_4_lut (.A(cnt_read[0]), .B(n23981), .C(\state_back_2__N_737[2] ), 
         .D(n23962), .Z(n23850)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (C))) */ ;
    defparam i1_2_lut_rep_517_3_lut_4_lut.init = 16'h0f2f;
    LUT4 data_wr_buffer_7__bdd_4_lut (.A(data_wr_buffer[7]), .B(cnt[2]), 
         .C(data_wr_buffer[6]), .D(cnt[0]), .Z(n23513)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B ((D)+!C)+!B (D))) */ ;
    defparam data_wr_buffer_7__bdd_4_lut.init = 16'haaf3;
    LUT4 state_2__I_0_163_Mux_2_i4_3_lut_4_lut (.A(cnt_read[0]), .B(n23981), 
         .C(\state[0] ), .D(state_back[2]), .Z(n4_adj_1506)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam state_2__I_0_163_Mux_2_i4_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_3_lut_4_lut_adj_106 (.A(cnt_read[0]), .B(n23981), .C(\state[0] ), 
         .D(\state[1] ), .Z(n22379)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_106.init = 16'h0002;
    LUT4 i1_4_lut_adj_107 (.A(cnt[0]), .B(n22363), .C(n5), .D(\state_back_2__N_737[2] ), 
         .Z(cnt_2__N_637[0])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_4_lut_adj_107.init = 16'h5044;
    LUT4 data_wr_buffer_7__bdd_3_lut (.A(data_wr_buffer[4]), .B(cnt[2]), 
         .C(cnt[0]), .Z(n23514)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam data_wr_buffer_7__bdd_3_lut.init = 16'ha8a8;
    LUT4 i1616_1_lut_rep_604 (.A(cnt_init[0]), .Z(n23937)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(120[7] 129[14])
    defparam i1616_1_lut_rep_604.init = 16'h5555;
    LUT4 i1_4_lut_adj_108 (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[0]), 
         .D(n23892), .Z(n53)) /* synthesis lut_function=(A (B)+!A !(((D)+!C)+!B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_4_lut_adj_108.init = 16'h88c8;
    LUT4 i1_4_lut_adj_109 (.A(n152), .B(\state[1] ), .C(n3320), .D(\state[0] ), 
         .Z(n22363)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_4_lut_adj_109.init = 16'h8000;
    LUT4 i9743_3_lut_4_lut_4_lut (.A(n23962), .B(\state_back_2__N_737[2] ), 
         .C(n53), .D(n23893), .Z(n11511)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i9743_3_lut_4_lut_4_lut.init = 16'h0051;
    LUT4 i1_3_lut_4_lut (.A(n23960), .B(n23961), .C(n23846), .D(cnt[0]), 
         .Z(clk_c_enable_105)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_3_lut_4_lut.init = 16'h0002;
    LUT4 one_wire_I_0_4_lut (.A(one_wire_out), .B(n9_adj_1507), .C(one_wire_N_896), 
         .D(n10), .Z(one_wire_N_890)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam one_wire_I_0_4_lut.init = 16'hca0a;
    PFUMX i21063 (.BLUT(n23514), .ALUT(n23513), .C0(cnt[1]), .Z(one_wire_N_894));
    LUT4 i1_2_lut_3_lut_4_lut_adj_110 (.A(cnt_main[3]), .B(n23952), .C(\state[1] ), 
         .D(\state[0] ), .Z(n22367)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_110.init = 16'h0200;
    LUT4 i4_4_lut_adj_111 (.A(one_wire_N_894), .B(cnt_write_c[2]), .C(cnt_write_c[3]), 
         .D(\state_back_2__N_737[2] ), .Z(n10)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i4_4_lut_adj_111.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_112 (.A(n23961), .B(cnt[0]), .C(\state_back_2__N_737[2] ), 
         .D(cnt[1]), .Z(n6_c)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_112.init = 16'h0010;
    LUT4 i2_3_lut_3_lut (.A(cnt_init[0]), .B(cnt_init[2]), .C(cnt_init[1]), 
         .Z(n21168)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(120[7] 129[14])
    defparam i2_3_lut_3_lut.init = 16'h1010;
    LUT4 i5118_3_lut_4_lut (.A(cnt[0]), .B(n23960), .C(n23959), .D(cnt_write_c[3]), 
         .Z(n3320)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i5118_3_lut_4_lut.init = 16'hff70;
    LUT4 i20804_3_lut_4_lut (.A(clk_1mhz), .B(n23964), .C(n16_adj_1504), 
         .D(\state_back_2__N_737[2] ), .Z(clk_c_enable_121)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i20804_3_lut_4_lut.init = 16'h4404;
    LUT4 i14231_2_lut_rep_521_3_lut_4_lut (.A(clk_1mhz), .B(n23964), .C(\state_back_2__N_737[2] ), 
         .D(rst_c), .Z(n23854)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i14231_2_lut_rep_521_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_113 (.A(clk_1mhz), .B(n23964), .C(\state[1] ), 
         .D(rst_c), .Z(n22380)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_3_lut_4_lut_adj_113.init = 16'h0400;
    LUT4 i20778_3_lut_4_lut (.A(clk_1mhz), .B(n23964), .C(\state[0] ), 
         .D(\state_back_2__N_737[2] ), .Z(clk_c_enable_132)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i20778_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_4_lut_adj_114 (.A(clk_1mhz), .B(n23964), .C(n22), 
         .D(rst_c), .Z(clk_c_enable_126)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_3_lut_4_lut_adj_114.init = 16'h4000;
    LUT4 i1_2_lut_rep_535_3_lut (.A(clk_1mhz), .B(n23964), .C(rst_c), 
         .Z(n23868)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_rep_535_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_adj_115 (.A(cnt_main[1]), .B(n22389), .Z(clk_c_enable_78)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_adj_115.init = 16'h4444;
    LUT4 i1_2_lut_adj_116 (.A(cnt_main[1]), .B(n22389), .Z(clk_c_enable_71)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_adj_116.init = 16'h8888;
    LUT4 i1_4_lut_adj_117 (.A(cnt_main[3]), .B(n23952), .C(\state[0] ), 
         .D(clk_c_enable_131), .Z(n22389)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_4_lut_adj_117.init = 16'h2000;
    LUT4 i1_4_lut_adj_118 (.A(\state[1] ), .B(n23888), .C(n336), .D(\state[0] ), 
         .Z(n28)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_118.init = 16'hafbb;
    LUT4 i2_4_lut_adj_119 (.A(n23893), .B(\state[1] ), .C(\state_back_2__N_737[2] ), 
         .D(\state[0] ), .Z(clk_c_enable_62)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i2_4_lut_adj_119.init = 16'h1001;
    LUT4 i1_2_lut_adj_120 (.A(n336), .B(state_back[1]), .Z(n29)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_120.init = 16'h8888;
    LUT4 i3_4_lut (.A(n23868), .B(n23946), .C(n23951), .D(n22311), .Z(clk_c_enable_84)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_121 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n7)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_adj_121.init = 16'hdddd;
    LUT4 i20829_4_lut (.A(n23977), .B(n22427), .C(cnt_write_c[2]), .D(n6), 
         .Z(clk_c_enable_102)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i20829_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_adj_122 (.A(cnt_write_c[1]), .B(cnt_write_c[3]), .Z(n22427)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_122.init = 16'heeee;
    PFUMX state_2__I_0_163_Mux_0_i2 (.BLUT(state_2__N_773[0]), .ALUT(state_2__N_770[0]), 
          .C0(\state[0] ), .Z(n2)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;
    LUT4 i3_4_lut_adj_123 (.A(cnt[0]), .B(n6_adj_1509), .C(\state[1] ), 
         .D(n23854), .Z(clk_c_enable_106)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i3_4_lut_adj_123.init = 16'h0800;
    LUT4 i1_3_lut_adj_124 (.A(n11488), .B(cnt[1]), .C(cnt[0]), .Z(cnt_2__N_637[1])) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(67[15:25])
    defparam i1_3_lut_adj_124.init = 16'h2828;
    LUT4 i1_2_lut_3_lut_adj_125 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[1]), .Z(n22294)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_125.init = 16'h2020;
    LUT4 i1_4_lut_adj_126 (.A(n23892), .B(n22363), .C(n5), .D(\state_back_2__N_737[2] ), 
         .Z(n11488)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_126.init = 16'h5044;
    LUT4 i1_4_lut_adj_127 (.A(cnt[2]), .B(n11488), .C(cnt[1]), .D(cnt[0]), 
         .Z(cnt_2__N_637[2])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(54[14:17])
    defparam i1_4_lut_adj_127.init = 16'h4888;
    LUT4 i2420_3_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(cnt_init[1]), 
         .Z(n109[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(119[24:39])
    defparam i2420_3_lut.init = 16'h6a6a;
    LUT4 i9752_4_lut (.A(clk_c_enable_131), .B(n6_adj_1510), .C(\state[0] ), 
         .D(cnt_main[3]), .Z(n11519)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i9752_4_lut.init = 16'h8a0a;
    LUT4 i13537_3_lut (.A(cnt_main[2]), .B(cnt_main[0]), .C(cnt_main[1]), 
         .Z(n15292)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(56[14:22])
    defparam i13537_3_lut.init = 16'h6a6a;
    LUT4 i14692_3_lut (.A(n3320), .B(cnt_write_c[1]), .C(cnt_write[0]), 
         .Z(cnt_write_3__N_800[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(135[16] 138[10])
    defparam i14692_3_lut.init = 16'h1414;
    LUT4 i2457_2_lut (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n260[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(162[31:46])
    defparam i2457_2_lut.init = 16'h6666;
    LUT4 i39_4_lut (.A(n23940), .B(cnt_write_c[3]), .C(\state[0] ), .D(n22_adj_1511), 
         .Z(n13)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i39_4_lut.init = 16'h3505;
    LUT4 i1_4_lut_adj_128 (.A(\state[0] ), .B(\state[1] ), .C(n15), .D(n18_adj_1512), 
         .Z(state_2__N_734[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(66[15:20])
    defparam i1_4_lut_adj_128.init = 16'heca0;
    LUT4 i1_4_lut_adj_129 (.A(\state_back_2__N_737[2] ), .B(\state[0] ), 
         .C(n6_adj_1513), .D(cnt_init[0]), .Z(n18_adj_1512)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(66[15:20])
    defparam i1_4_lut_adj_129.init = 16'haaba;
    LUT4 i2_3_lut_adj_130 (.A(cnt_init[1]), .B(one_wire_out), .C(cnt_init[2]), 
         .Z(n6_adj_1513)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(66[15:20])
    defparam i2_3_lut_adj_130.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_131 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[15]), .Z(n22290)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_131.init = 16'h2020;
    LUT4 i20801_4_lut (.A(n23893), .B(\state[1] ), .C(n46), .D(n33_adj_1514), 
         .Z(clk_c_enable_122)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C)))) */ ;
    defparam i20801_4_lut.init = 16'h0105;
    LUT4 i50_4_lut (.A(n22400), .B(n28_adj_1515), .C(\state[0] ), .D(n48), 
         .Z(n46)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i50_4_lut.init = 16'hfaca;
    LUT4 i2_3_lut_adj_132 (.A(n23924), .B(cnt_write_c[3]), .C(\state[1] ), 
         .Z(n28_adj_1515)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i2_3_lut_adj_132.init = 16'h2020;
    LUT4 i52_4_lut (.A(\state[1] ), .B(n336), .C(\state_back_2__N_737[2] ), 
         .D(n23887), .Z(n48)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i52_4_lut.init = 16'h3530;
    PFUMX state_2__I_0_163_Mux_2_i7 (.BLUT(n3_adj_1516), .ALUT(n4_adj_1506), 
          .C0(\state_back_2__N_737[2] ), .Z(state_2__N_734[2])) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;
    LUT4 i1_4_lut_adj_133 (.A(n22668), .B(n23876), .C(\state[1] ), .D(n24), 
         .Z(n20_adj_1497)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_133.init = 16'h5444;
    LUT4 i20781_4_lut (.A(n23893), .B(n43), .C(\state[1] ), .D(n31), 
         .Z(clk_c_enable_128)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i20781_4_lut.init = 16'h0111;
    LUT4 i13950_3_lut_rep_542_4_lut (.A(n23924), .B(cnt_write_c[3]), .C(\state[0] ), 
         .D(n23922), .Z(n23875)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(140[7] 154[14])
    defparam i13950_3_lut_rep_542_4_lut.init = 16'h1f10;
    LUT4 i50_4_lut_adj_134 (.A(n23940), .B(n23924), .C(\state[0] ), .D(cnt_write_c[3]), 
         .Z(n31)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam i50_4_lut_adj_134.init = 16'h05c5;
    LUT4 state_2__I_0_163_Mux_0_i3_4_lut (.A(state_2__N_776[0]), .B(n2), 
         .C(\state[1] ), .D(\state[0] ), .Z(n3_adj_1498)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam state_2__I_0_163_Mux_0_i3_4_lut.init = 16'hcacf;
    LUT4 state_2__I_0_163_Mux_0_i4_4_lut (.A(cnt_read[2]), .B(state_back[0]), 
         .C(\state[0] ), .D(n23941), .Z(n4_adj_1499)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam state_2__I_0_163_Mux_0_i4_4_lut.init = 16'hc5cf;
    LUT4 i9135_4_lut (.A(cnt_write[0]), .B(n23892), .C(n3320), .D(n152), 
         .Z(cnt_write_3__N_800[0])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i9135_4_lut.init = 16'h3505;
    LUT4 i2382_1_lut (.A(cnt_main[0]), .Z(n1[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(96[24:39])
    defparam i2382_1_lut.init = 16'h5555;
    LUT4 i2_2_lut_rep_524_3_lut_4_lut_4_lut (.A(n23951), .B(n22311), .C(n23963), 
         .D(cnt_main[1]), .Z(n23857)) /* synthesis lut_function=((B (C (D)))+!A) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i2_2_lut_rep_524_3_lut_4_lut_4_lut.init = 16'hd555;
    LUT4 i1_2_lut_rep_515_3_lut_4_lut_4_lut (.A(n23951), .B(n23876), .C(rst_c), 
         .D(n23893), .Z(n23848)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i1_2_lut_rep_515_3_lut_4_lut_4_lut.init = 16'h00d0;
    LUT4 i4_4_lut_adj_135 (.A(cnt[2]), .B(n23944), .C(n22380), .D(n6_c), 
         .Z(clk_c_enable_133)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i4_4_lut_adj_135.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_136 (.A(n23980), .B(cnt_init[0]), .C(\state[1] ), 
         .D(\state[0] ), .Z(n16)) /* synthesis lut_function=(!(A (C+(D))+!A (B (D)+!B (C+(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(59[14:22])
    defparam i1_3_lut_4_lut_adj_136.init = 16'h004f;
    LUT4 i2_3_lut_adj_137 (.A(\state_back_2__N_737[2] ), .B(cnt_read[1]), 
         .C(cnt_read[2]), .Z(num_delay_19__N_827[0])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_137.init = 16'h0808;
    LUT4 state_2__I_0_163_Mux_2_i2_3_lut_4_lut (.A(n23980), .B(cnt_init[0]), 
         .C(\state[0] ), .D(cnt_write_c[3]), .Z(n2_adj_1517)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(59[14:22])
    defparam state_2__I_0_163_Mux_2_i2_3_lut_4_lut.init = 16'h04f4;
    LUT4 i20815_2_lut_3_lut (.A(\state[0] ), .B(\state[1] ), .C(\state_back_2__N_737[2] ), 
         .Z(state_back_2__N_737[0])) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;
    defparam i20815_2_lut_3_lut.init = 16'h0b0b;
    LUT4 i6472_3_lut_rep_591 (.A(cnt_write[0]), .B(cnt_write_c[1]), .C(cnt_write_c[2]), 
         .Z(n23924)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(140[7] 154[14])
    defparam i6472_3_lut_rep_591.init = 16'h2b2b;
    LUT4 i6410_2_lut_rep_588_4_lut (.A(cnt_write[0]), .B(cnt_write_c[1]), 
         .C(cnt_write_c[2]), .D(cnt_write_c[3]), .Z(n23921)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(140[7] 154[14])
    defparam i6410_2_lut_rep_588_4_lut.init = 16'hff2b;
    LUT4 i20867_2_lut (.A(\state_back_2__N_737[2] ), .B(\state[1] ), .Z(n22801)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i20867_2_lut.init = 16'hbbbb;
    LUT4 i14079_2_lut (.A(cnt_read[2]), .B(cnt_read[0]), .Z(n15826)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14079_2_lut.init = 16'heeee;
    LUT4 mux_83_Mux_2_i7_4_lut_else_1_lut (.A(\state[0] ), .B(cnt_init[2]), 
         .C(cnt_init[0]), .D(\state[1] ), .Z(n23993)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam mux_83_Mux_2_i7_4_lut_else_1_lut.init = 16'h1000;
    LUT4 i20714_4_lut (.A(state_2__N_776[2]), .B(n2_adj_1517), .C(\state[1] ), 
         .D(\state[0] ), .Z(n3_adj_1516)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i20714_4_lut.init = 16'hcac0;
    LUT4 i20717_4_lut (.A(n21168), .B(n22427), .C(\state[0] ), .D(n22508), 
         .Z(n2_adj_1518)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B+!(C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i20717_4_lut.init = 16'hc5f5;
    LUT4 i1_2_lut_rep_607 (.A(cnt_init[2]), .B(cnt_init[0]), .Z(n23940)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_607.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_138 (.A(cnt_init[2]), .B(cnt_init[0]), .C(\state[0] ), 
         .D(\state_back_2__N_737[2] ), .Z(n33_adj_1514)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_138.init = 16'hff01;
    LUT4 i2459_2_lut_rep_608 (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n23941)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(162[31:46])
    defparam i2459_2_lut_rep_608.init = 16'h8888;
    LUT4 i2464_2_lut_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt_read[2]), 
         .Z(n260[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(162[31:46])
    defparam i2464_2_lut_3_lut.init = 16'h7878;
    LUT4 i19_2_lut_rep_610 (.A(cnt_init[1]), .B(cnt_init[0]), .Z(n23943)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(59[14:22])
    defparam i19_2_lut_rep_610.init = 16'h6666;
    LUT4 i14242_2_lut_3_lut (.A(cnt_init[1]), .B(cnt_init[0]), .C(cnt_init[2]), 
         .Z(state_2__N_773[0])) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(59[14:22])
    defparam i14242_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i1_2_lut_rep_611 (.A(\state[0] ), .B(cnt_read[2]), .Z(n23944)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_rep_611.init = 16'h4444;
    LUT4 i2_2_lut_3_lut_4_lut (.A(\state[0] ), .B(cnt_read[2]), .C(n23961), 
         .D(n23960), .Z(n6_adj_1509)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_612 (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n23945)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_612.init = 16'h8888;
    LUT4 i14883_1_lut_2_lut (.A(cnt_main[1]), .B(cnt_main[2]), .Z(n11395)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i14883_1_lut_2_lut.init = 16'h7777;
    LUT4 i26_2_lut_rep_613 (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n23946)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(56[14:22])
    defparam i26_2_lut_rep_613.init = 16'h6666;
    LUT4 i20860_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .D(\state[1] ), .Z(n22658)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i20860_3_lut_4_lut.init = 16'h0007;
    LUT4 i1_2_lut_3_lut_adj_139 (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .Z(n6_adj_1510)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_3_lut_adj_139.init = 16'hf8f8;
    LUT4 i2398_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n1[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i2398_3_lut_4_lut.init = 16'h7f80;
    LUT4 mux_17_Mux_2_i15_4_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(cnt_main[2]), .D(cnt_main[3]), .Z(state_2__N_776[2])) /* synthesis lut_function=(!(A ((D)+!B)+!A (C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam mux_17_Mux_2_i15_4_lut_4_lut.init = 16'h0588;
    LUT4 i20820_2_lut_rep_618 (.A(\state_back_2__N_737[2] ), .B(\state[1] ), 
         .Z(n23951)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i20820_2_lut_rep_618.init = 16'h1111;
    LUT4 i20775_2_lut_2_lut_3_lut_4_lut (.A(\state_back_2__N_737[2] ), .B(\state[1] ), 
         .C(n23964), .D(clk_1mhz), .Z(clk_c_enable_131)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(82[4] 183[11])
    defparam i20775_2_lut_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_619 (.A(cnt_main[2]), .B(cnt_main[0]), .Z(n23952)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_619.init = 16'heeee;
    LUT4 i1_2_lut_rep_554_3_lut (.A(cnt_main[2]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .Z(n23887)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_554_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_621 (.A(\state[0] ), .B(\state[1] ), .Z(n23954)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_621.init = 16'h8888;
    LUT4 i20559_2_lut_3_lut_4_lut (.A(\state[0] ), .B(\state[1] ), .C(cnt_write_c[3]), 
         .D(n23924), .Z(n22668)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i20559_2_lut_3_lut_4_lut.init = 16'h8880;
    LUT4 i3_2_lut_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write_c[1]), .C(\state[1] ), 
         .D(\state[0] ), .Z(n9_adj_1507)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(135[16] 138[10])
    defparam i3_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i20411_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write_c[1]), .C(cnt_write_c[2]), 
         .D(n3320), .Z(cnt_write_3__N_800[2])) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(135[16] 138[10])
    defparam i20411_3_lut_4_lut.init = 16'h0078;
    LUT4 i3797_3_lut_4_lut (.A(cnt_write[0]), .B(cnt_write_c[1]), .C(n3320), 
         .D(cnt_write_c[2]), .Z(cnt_write_3__N_800[3])) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(135[16] 138[10])
    defparam i3797_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_adj_140 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[14]), .Z(n22289)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_140.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_141 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[13]), .Z(n22288)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_141.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_142 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[12]), .Z(n22300)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_142.init = 16'h2020;
    LUT4 i1_2_lut_adj_143 (.A(\state[0] ), .B(cnt_write_c[3]), .Z(n22415)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_143.init = 16'h2222;
    LUT4 i20490_2_lut_rep_626 (.A(cnt_write_c[1]), .B(cnt_write_c[2]), .Z(n23959)) /* synthesis lut_function=(A (B)) */ ;
    defparam i20490_2_lut_rep_626.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_144 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[11]), .Z(n22301)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_144.init = 16'h2020;
    LUT4 i2117_2_lut_3_lut (.A(cnt_write_c[1]), .B(cnt_write_c[2]), .C(cnt_write_c[3]), 
         .Z(n152)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i2117_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_3_lut_adj_145 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[10]), .Z(n22297)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_145.init = 16'h2020;
    LUT4 i1_2_lut_rep_627 (.A(cnt[1]), .B(cnt[2]), .Z(n23960)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_627.init = 16'h8888;
    LUT4 i1_2_lut_rep_559_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .Z(n23892)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_559_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_628 (.A(cnt_read[1]), .B(cnt_read[0]), .Z(n23961)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_628.init = 16'heeee;
    LUT4 i112_2_lut_rep_557_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt[0]), 
         .Z(n23890)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i112_2_lut_rep_557_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_146 (.A(cnt_read[1]), .B(cnt_read[0]), .C(n53), 
         .D(n23962), .Z(n5)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_146.init = 16'h00e0;
    LUT4 i1_2_lut_rep_558_3_lut (.A(cnt_read[1]), .B(cnt_read[0]), .C(cnt[0]), 
         .Z(n23891)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_558_3_lut.init = 16'h1010;
    LUT4 i14454_2_lut_rep_629 (.A(\state[1] ), .B(\state[0] ), .Z(n23962)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i14454_2_lut_rep_629.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_147 (.A(\state[1] ), .B(\state[0] ), .C(cnt_read[1]), 
         .Z(n4)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_147.init = 16'hefef;
    LUT4 i1_2_lut_rep_525_3_lut_4_lut (.A(\state[1] ), .B(\state[0] ), .C(n23981), 
         .D(cnt_read[0]), .Z(n23858)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_525_3_lut_4_lut.init = 16'h0100;
    LUT4 i20752_2_lut_rep_527_2_lut_3_lut_4_lut (.A(\state[1] ), .B(\state[0] ), 
         .C(n23964), .D(clk_1mhz), .Z(clk_c_enable_129)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i20752_2_lut_rep_527_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_630 (.A(cnt_main[2]), .B(cnt_main[0]), .Z(n23963)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_rep_630.init = 16'h4444;
    LUT4 i1_2_lut_rep_561_3_lut (.A(cnt_main[2]), .B(cnt_main[0]), .C(cnt_main[1]), 
         .Z(n23894)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_rep_561_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_526_3_lut_4_lut (.A(cnt_main[2]), .B(cnt_main[0]), 
         .C(cnt_main[3]), .D(cnt_main[1]), .Z(n23859)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_rep_526_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_543_3_lut_4_lut (.A(cnt_main[2]), .B(cnt_main[0]), 
         .C(n22311), .D(cnt_main[1]), .Z(n23876)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_rep_543_3_lut_4_lut.init = 16'h4000;
    LUT4 i2_2_lut_3_lut_4_lut_adj_148 (.A(cnt_main[2]), .B(cnt_main[0]), 
         .C(\state[0] ), .D(cnt_main[1]), .Z(n7_adj_1505)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i2_2_lut_3_lut_4_lut_adj_148.init = 16'h4000;
    LUT4 i14331_3_lut_4_lut_4_lut (.A(cnt_main[2]), .B(cnt_main[0]), .C(cnt_main[3]), 
         .D(cnt_main[1]), .Z(state_2__N_776[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i14331_3_lut_4_lut_4_lut.init = 16'h070c;
    LUT4 i2126_3_lut_rep_631 (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .Z(n23964)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i2126_3_lut_rep_631.init = 16'hc8c8;
    LUT4 i47_2_lut_rep_560_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(n23893)) /* synthesis lut_function=(A ((D)+!B)+!A (((D)+!C)+!B)) */ ;
    defparam i47_2_lut_rep_560_4_lut.init = 16'hff37;
    LUT4 clk_1mhz_I_0_2_lut_4_lut (.A(cnt_1mhz[0]), .B(cnt_1mhz[2]), .C(cnt_1mhz[1]), 
         .D(clk_1mhz), .Z(clk_1mhz_N_889)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam clk_1mhz_I_0_2_lut_4_lut.init = 16'h37c8;
    LUT4 i1_3_lut_4_lut_3_lut (.A(cnt_write_c[1]), .B(cnt_write_c[2]), .C(cnt_write[0]), 
         .Z(n38)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i1_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i1_3_lut_4_lut_3_lut_adj_149 (.A(cnt_write_c[1]), .B(cnt_write_c[2]), 
         .C(cnt_write[0]), .Z(n22_adj_1511)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam i1_3_lut_4_lut_3_lut_adj_149.init = 16'h7171;
    LUT4 i20791_3_lut_4_lut (.A(cnt_write_c[1]), .B(cnt_write_c[2]), .C(cnt_write_c[3]), 
         .D(cnt_write[0]), .Z(state_2__N_770[0])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;
    defparam i20791_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i1_2_lut_3_lut_adj_150 (.A(\state_back_2__N_737[2] ), .B(n336), 
         .C(n338[9]), .Z(n22307)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_150.init = 16'h2020;
    PFUMX state_2__I_0_i7 (.BLUT(n2_adj_1518), .ALUT(n3), .C0(n22801), 
          .Z(one_wire_N_901)) /* synthesis LSE_LINE_FILE_ID=1, LSE_LCOL=20, LSE_RCOL=4, LSE_LLINE=97, LSE_RLINE=102 */ ;
    LUT4 i20834_2_lut_rep_644 (.A(\state_back_2__N_737[2] ), .B(\state[1] ), 
         .Z(n23977)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i20834_2_lut_rep_644.init = 16'h4444;
    LUT4 i1_3_lut_3_lut_4_lut_adj_151 (.A(\state_back_2__N_737[2] ), .B(\state[1] ), 
         .C(n22395), .D(n23875), .Z(clk_c_enable_29)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_3_lut_3_lut_4_lut_adj_151.init = 16'hf0b0;
    LUT4 i1_3_lut_3_lut_4_lut_adj_152 (.A(\state_back_2__N_737[2] ), .B(\state[1] ), 
         .C(n30), .D(n22395), .Z(clk_c_enable_30)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_3_lut_3_lut_4_lut_adj_152.init = 16'hfb00;
    LUT4 i1_2_lut_rep_645 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n23978)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(66[15:20])
    defparam i1_2_lut_rep_645.init = 16'hdddd;
    LUT4 i32_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(\state[0] ), 
         .D(n25), .Z(n22742)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(66[15:20])
    defparam i32_3_lut_4_lut.init = 16'hfd0d;
    LUT4 i1_2_lut_rep_647 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n23980)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_rep_647.init = 16'h8888;
    LUT4 i1_2_lut_rep_589_3_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(cnt_init[0]), 
         .Z(n23922)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_rep_589_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_3_lut_4_lut_adj_153 (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(\state[0] ), .D(cnt_init[0]), .Z(n24)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i1_2_lut_3_lut_4_lut_adj_153.init = 16'hf7f0;
    LUT4 i9754_3_lut_4_lut (.A(cnt_init[2]), .B(cnt_init[1]), .C(\state[1] ), 
         .D(clk_c_enable_132), .Z(n11522)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(81[12] 184[6])
    defparam i9754_3_lut_4_lut.init = 16'h8f00;
    LUT4 i9607_2_lut_rep_648 (.A(cnt_read[1]), .B(cnt_read[2]), .Z(n23981)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(164[7] 175[14])
    defparam i9607_2_lut_rep_648.init = 16'h8888;
    LUT4 i14355_2_lut_rep_544_3_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[0]), 
         .Z(n23877)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(164[7] 175[14])
    defparam i14355_2_lut_rep_544_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_rep_541_3_lut_4_lut (.A(cnt_read[1]), .B(cnt_read[2]), 
         .C(\state[1] ), .D(cnt_read[0]), .Z(n23874)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(164[7] 175[14])
    defparam i1_2_lut_rep_541_3_lut_4_lut.init = 16'h0700;
    LUT4 i20603_2_lut_rep_555_3_lut (.A(cnt_read[1]), .B(cnt_read[2]), .C(cnt_read[0]), 
         .Z(n23888)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(164[7] 175[14])
    defparam i20603_2_lut_rep_555_3_lut.init = 16'hf8f8;
    LUT4 i1_2_lut_3_lut_4_lut_adj_154 (.A(cnt_read[1]), .B(cnt_read[2]), 
         .C(\state_back_2__N_737[2] ), .D(cnt_read[0]), .Z(n22400)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/22822/desktop/sensor_board/ds18b20_interface.v(164[7] 175[14])
    defparam i1_2_lut_3_lut_4_lut_adj_154.init = 16'h0070;
    PFUMX i21142 (.BLUT(n24005), .ALUT(n24006), .C0(\state[0] ), .Z(one_wire_N_896));
    
endmodule
