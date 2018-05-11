// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Display
// 
// Author: Step
// 
// Description: 数码管显示模块
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module display
(
input		 rst_n_in,
input  [7:0] sensor_data_1,  //seg_data input
input  [7:0] sensor_data_2,  //seg_data input
output [8:0] segment_led_1,  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
output [8:0] segment_led_2   //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

reg[8:0] seg [9:0]; 
initial 
	begin
		seg[0] = 9'h3f;   //  0
		seg[1] = 9'h06;   //  1
		seg[2] = 9'h5b;   //  2
		seg[3] = 9'h4f;   //  3
		seg[4] = 9'h66;   //  4
		seg[5] = 9'h6d;   //  5
		seg[6] = 9'h7d;   //  6
		seg[7] = 9'h07;   //  7
		seg[8] = 9'h7f;   //  8
		seg[9] = 9'h6f;   //  9
	end
	
reg [3:0] seg_data1,seg_data2;	
always@(sensor_data_1 or sensor_data_2 or rst_n_in)//0000_0000
begin
	if(!rst_n_in) begin
		seg_data1<=0;
		seg_data2<=0;
	end else begin
		case(sensor_data_1)
			8'h00:seg_data1<=0;//2'b0000_0000
			8'h01:seg_data1<=1;//2'b0000_0001
			8'h02:seg_data1<=2;//2'b0000_0010
			8'h04:seg_data1<=3;//2'b0000_0100
			8'h08:seg_data1<=4;//2'b0000_1000
			8'h10:seg_data1<=5;//2'b0001_0000
			8'h20:seg_data1<=6;//2'b0010_0000
			8'h40:seg_data1<=7;//2'b0100_0000
			8'h80:seg_data1<=8;//2'b1000_0000		
			default:seg_data1<=0;
		endcase
			case(sensor_data_2)
			8'h00:seg_data2<=0;//2'b0000_0000
			8'h01:seg_data2<=1;//2'b0000_0001
			8'h02:seg_data2<=2;//2'b0000_0010
			8'h04:seg_data2<=3;//2'b0000_0100
			8'h08:seg_data2<=4;//2'b0000_1000
			8'h10:seg_data2<=5;//2'b0001_0000
			8'h20:seg_data2<=6;//2'b0010_0000
			8'h40:seg_data2<=7;//2'b0100_0000
			8'h80:seg_data2<=8;//2'b1000_0000		
			default:seg_data2<=0;
		endcase
	end
end 

assign segment_led_1 = seg[seg_data1];
assign segment_led_2 = seg[seg_data2];

endmodule
