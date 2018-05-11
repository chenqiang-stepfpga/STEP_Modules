// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : clk_div.v
// Module name  : clk_div
// Author       : STEP
// Description  : 时钟分频模块
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/10   |Initial ver
// --------------------------------------------------------------------
// Module Function:时钟分频模块
module clk_div #(parameter	COUNTER_NUM = 3464)
(
	input		clk,						//输入时钟=12M
	input		rst,						//输入复位，低电平有效
	output	reg	invert						//输出时钟信号
);
	reg		[31:0]		cnt;				//时钟计数器
										
	always @ (posedge clk or negedge rst)	//产生时钟分频信号 
		begin 
			if(!rst == 1)
				begin
					cnt <= 32'd0;
					invert <= 0;
				end
			else          
				begin
					if(cnt >= COUNTER_NUM - 1)
						begin
							invert <= ~invert;
							cnt <= 1'b0;
						end
					else
						begin
							cnt <= cnt + 1'b1;
						end
				end
		end
endmodule