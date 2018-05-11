// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : seg_led.v
// Module name  : seg_led
// Author       : STEP
// Description  : �������ʾģ��
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/10   |Initial ver
// --------------------------------------------------------------------
// Module Function:�������ʾģ�飬������ʾ����1-9.
module seg_led(tens,ones,segment_led_1,segment_led_2);

	input	[3:0]	tens;			//����ʮλҪ��ʾ������
	input	[3:0]	ones;			//�����λҪ���ƺ�������
	output	[8:0]	segment_led_1;  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	output	[8:0]	segment_led_2;  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	
	reg		[8:0]	seg	[9:0];		//����һ��ROM���洢��ʾ����
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

	assign segment_led_1 = seg[tens];	//��Ҫ��ʾ�����ݷ��䵽��Ӧ�������
	assign segment_led_2 = seg[ones];
endmodule