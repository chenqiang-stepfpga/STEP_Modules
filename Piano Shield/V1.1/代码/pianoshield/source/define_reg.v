// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: define reg
// 
// Author: Step
// 
// Description: define device and register address
// 				details refer to the CAP1188 datasheet from microchip website
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/05   |Initial ver
// --------------------------------------------------------------------
// --------------------------------------------------------------------

//����CAP1188��ַ�ֱ�Ϊ28h,2bh��д��ַʱ��ҪDEVICE_ADDR<<1|R/W
`define		DEVICE1_READ 	8'h57//Device address for reading
`define 	DEVICE1_WRITE 	8'h56//Device address for writing
`define 	DEVICE2_READ 	8'h51//Device address for reading
`define 	DEVICE2_WRITE 	8'h50//Device address for writing

//Ҫ��д�ļĴ�����ַ
`define 	GENERAL_STATUS	8'h02//���������������״̬������ʱ��Ӧλ�ᱻ��1
`define 	SENIN_STATUS	8'h03//���������������״̬������ʱ��Ӧλ�ᱻ��1
//��Ҫ��ʼ���ļĴ�����ַ 
`define 	MAIN_CTRL 		8'h00  
`define 	SEN_LED_LINK 	8'h72  
 

//��ʼ��ʱд���Ӧ�Ĵ���ֵ����  
`define 	MAIN_CTRL_VALUE 	8'h00  
`define 	SEN_LED_LINK_VALUE 	8'hFF  

