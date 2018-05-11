// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : Interface_BH1750.v
// Module name  : Interface_BH1750
// Author       : STEP
// Description  : The Communication Interface between BH1750FVI and the 		
//				  STEP fpga board.
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/10   |Initial ver
// --------------------------------------------------------------------
// Module Function:BH1750FVI��������ģ�飬��������ģ���������������
module Interface_BH1750(clk,rst,scl,sda,dvi,seg_led1,seg_led2,row,line,rgb_led1,rgb_led2);
	
	input 			clk;			//����ʱ��=12M
	input 			rst;			//���븴λ���͵�ƽ��Ч
	output 			scl;			//���I2Cʱ���ź�
	inout 			sda;			//˫��ӿ�I2C�����ź�
	output  		dvi;			//BH1750FVI�ϵ����ùܽ�
	output	[15:0]	row;			//���16��LED����ܽ�
	output	[7:0]	line;			//���8��LED����ܽ�
	output	[8:0]	seg_led1;  		//���С��Ѿ�����1��ʾ�ܽ�
	output	[8:0]	seg_led2;		//���С��Ѿ�����2��ʾ�ܽ�
	output	[2:0]	rgb_led1;		//���С��Ѿ�����RGB_LED1�ܽ�
	output	[2:0]	rgb_led2;		//���С��Ѿ�����RGB_LED2�ܽ�

	wire	[15:0]	BH1750_data_out;		
	wire 	[7:0]	BH1750_processed_data;
	wire 	[3:0]	tens;
	wire 	[3:0]	ones;

	//����BH1750�ӿ�ģ��
	BH1750 u1
	(
	.clk(clk),
	.rst(rst),
	.scl(scl),
	.sda(sda),
	.dvi(dvi),
	.data_out(BH1750_data_out)
	);
	
	//�������ݴ���ģ��
	Data_Process u2
	(
	.data_input(BH1750_data_out),
	.data_output(BH1750_processed_data)
	);
	
	//����ת��ģ��
	BIN_To_BCD u3
	(
	.number(BH1750_processed_data), 
	.tens(tens), 
	.ones(ones)
	);
	
	//�����������ʾģ��
	seg_led u4
	(
	.tens(tens),
	.ones(ones),
	.segment_led_1(seg_led1),  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	.segment_led_2(seg_led2)   //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	);
	
	//����������ʾģ��
	led_scan u5
	(
	.clk(clk),
	.rst(rst),
	.number(BH1750_processed_data),
	.tens(tens),
	.ones(ones),
	.row(row),
	.line(line)	
	);
	
	//������ɫ��ģ��
	rgb_led u6
	(
	.clk(clk),
	.rst(rst),
	.pwm_duty(BH1750_processed_data),
	.led1(rgb_led1),
	.led2(rgb_led2)
	);
endmodule
