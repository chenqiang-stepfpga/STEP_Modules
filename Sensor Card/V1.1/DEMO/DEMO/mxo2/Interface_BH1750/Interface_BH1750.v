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
// Module Function:BH1750FVI驱动顶层模块，将各个子模块进行例化互联。
module Interface_BH1750(clk,rst,scl,sda,dvi,seg_led1,seg_led2,row,line,rgb_led1,rgb_led2);
	
	input 			clk;			//输入时钟=12M
	input 			rst;			//输入复位，低电平有效
	output 			scl;			//输出I2C时钟信号
	inout 			sda;			//双向接口I2C数据信号
	output  		dvi;			//BH1750FVI上电配置管脚
	output	[15:0]	row;			//输出16列LED点阵管脚
	output	[7:0]	line;			//输出8行LED点阵管脚
	output	[8:0]	seg_led1;  		//输出小脚丫数码管1显示管脚
	output	[8:0]	seg_led2;		//输出小脚丫数码管2显示管脚
	output	[2:0]	rgb_led1;		//输出小脚丫数码管RGB_LED1管脚
	output	[2:0]	rgb_led2;		//输出小脚丫数码管RGB_LED2管脚

	wire	[15:0]	BH1750_data_out;		
	wire 	[7:0]	BH1750_processed_data;
	wire 	[3:0]	tens;
	wire 	[3:0]	ones;

	//例化BH1750接口模块
	BH1750 u1
	(
	.clk(clk),
	.rst(rst),
	.scl(scl),
	.sda(sda),
	.dvi(dvi),
	.data_out(BH1750_data_out)
	);
	
	//例化数据处理模块
	Data_Process u2
	(
	.data_input(BH1750_data_out),
	.data_output(BH1750_processed_data)
	);
	
	//例化转码模块
	BIN_To_BCD u3
	(
	.number(BH1750_processed_data), 
	.tens(tens), 
	.ones(ones)
	);
	
	//例化数码管显示模块
	seg_led u4
	(
	.tens(tens),
	.ones(ones),
	.segment_led_1(seg_led1),  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	.segment_led_2(seg_led2)   //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	);
	
	//例化点阵显示模块
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
	
	//例化三色灯模块
	rgb_led u6
	(
	.clk(clk),
	.rst(rst),
	.pwm_duty(BH1750_processed_data),
	.led1(rgb_led1),
	.led2(rgb_led2)
	);
endmodule
