// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : Data_Process.v
// Module name  : Data_Process
// Author       : STEP
// Description  : This module is used to process the data of light.
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/10   |Initial ver
// --------------------------------------------------------------------
// Module Function:对BH1750FVI采集的数据进行处理。

module Data_Process(data_input,data_output);

	input		[15:0]	data_input;
	output	reg	[7:0]	data_output;

	always@(data_input)
		begin
			data_output<=(data_input>>10);
		end
endmodule
