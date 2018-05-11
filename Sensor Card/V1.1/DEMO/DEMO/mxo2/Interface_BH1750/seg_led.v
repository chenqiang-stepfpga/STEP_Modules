// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : seg_led.v
// Module name  : seg_led
// Author       : STEP
// Description  : 数码管显示模块
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/10   |Initial ver
// --------------------------------------------------------------------
// Module Function:数码管显示模块，用于显示数字1-9.
module seg_led(tens,ones,segment_led_1,segment_led_2);

	input	[3:0]	tens;			//输入十位要显示的数据
	input	[3:0]	ones;			//输入个位要先似乎的数据
	output	[8:0]	segment_led_1;  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	output	[8:0]	segment_led_2;  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	
	reg		[8:0]	seg	[9:0];		//定义一个ROM，存储显示数据
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

	assign segment_led_1 = seg[tens];	//将要显示的数据分配到对应数码管上
	assign segment_led_2 = seg[ones];
endmodule