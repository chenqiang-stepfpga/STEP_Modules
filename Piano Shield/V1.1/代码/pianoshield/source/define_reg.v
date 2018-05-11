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

//两个CAP1188地址分别为28h,2bh；写地址时需要DEVICE_ADDR<<1|R/W
`define		DEVICE1_READ 	8'h57//Device address for reading
`define 	DEVICE1_WRITE 	8'h56//Device address for writing
`define 	DEVICE2_READ 	8'h51//Device address for reading
`define 	DEVICE2_WRITE 	8'h50//Device address for writing

//要读写的寄存器地址
`define 	GENERAL_STATUS	8'h02//触摸传感器输入的状态，触摸时对应位会被置1
`define 	SENIN_STATUS	8'h03//触摸传感器输入的状态，触摸时对应位会被置1
//需要初始化的寄存器地址 
`define 	MAIN_CTRL 		8'h00  
`define 	SEN_LED_LINK 	8'h72  
 

//初始化时写入对应寄存器值配置  
`define 	MAIN_CTRL_VALUE 	8'h00  
`define 	SEN_LED_LINK_VALUE 	8'hFF  

