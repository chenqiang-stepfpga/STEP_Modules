// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: pwm
// 
// Author: Step
// 
// Description:  播放模式下蜂鸣器驱动模块
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/05   |Initial ver
//---------------------------------------------------------------------
module pwm(
	input wire clk_in,rst_n_in,pwm_en,
	input wire [31:0]freq,
	output pwm_out
);

	reg pwm;
	reg [31:0]counter;
	wire [31:0]counter_max;
	wire [31:0]counter_half;
	assign counter_max = freq;
	assign counter_half = freq / 2;
	
	
	always@(posedge clk_in or negedge rst_n_in)begin
		if(!rst_n_in)begin
			counter <= 0;
		end
		else begin
			if(counter < counter_max)begin
				counter <= counter + 1'b1;
			end
			else begin
				counter <= 0;
			end
		end
	end

	always@(posedge clk_in or negedge rst_n_in)begin
		if(!rst_n_in)begin
			pwm <= 0;
		end
		else begin
			if(counter < counter_half)begin
				pwm <= 1'b0;
			end
			else begin
				pwm <= 1'b1;
			end
		end
	end
	
	assign pwm_out = pwm_en ? pwm : 0;

endmodule
