// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : clk_div.v
// Module name  : clk_div
// Author       : STEP
// Description  : 三色灯显示模块
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/10   |Initial ver
// --------------------------------------------------------------------
module rgb_led(clk,rst,pwm_duty,led1,led2);

	input				clk;			//输入时钟信号
	input				rst;			//输入复位信号
	input		[7:0]	pwm_duty;		//输入PWM占空比以调整RGB_LED显示亮度
	output	reg	[2:0]	led1;			//RGB_LED1
	output	reg	[2:0]	led2;			//RGB_LED2
	
	reg		[5:0]	count;				//产生PWM
	localparam	cycle=6'd63;
		always@(posedge clk)
			if (!rst)
				count<=0;
			else if(count==cycle-1)
				count<=0;
			else
				count<=count+1;			
		always@(*)
			begin
			if(count<pwm_duty)
				begin
					led1<=3'b000;
					led2<=3'b000;
				end
			else
				begin
					led1<=3'b111;
					led2<=3'b111;
				end
			end	
	
endmodule