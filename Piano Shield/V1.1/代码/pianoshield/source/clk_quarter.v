// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: clk_quarter
// 
// Author: Step
// 
// Description:  产生4HZ的频率信号
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/05   |Initial ver
//---------------------------------------------------------------------
module clk_quarter(
	input wire clk_in,rst_n_in,
	output reg clk_out
);

	localparam counter_max = 32'd3000000;   // 25MHz*0.25s = 6250000
	reg [31:0]counter;
	
	always@(posedge clk_in or negedge rst_n_in)begin
		if(!rst_n_in)begin
			counter <= 0;
			clk_out <= 1'b0;
		end
		else begin
			if(counter >= counter_max)begin
				counter <= 0;
				clk_out <= 1'b1;
			end
			else begin
				counter <= counter + 1'b1;
				clk_out <= 1'b0;
			end
		end
	end
	
endmodule
