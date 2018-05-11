// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: Beeper
// 
// Author: Step
// 
// Description: Beeper
// 
// Web: www.stepfapga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2016/04/20   |Initial ver
// --------------------------------------------------------------------
module beeper
(
input					clk_in,
input					rst_n_in,
input					tone_en,
input			[7:0]	tone,
output	reg				piano_out
);

reg [15:0] time_end;
//transfer tone to time_end
/** 02   08        40   FE   FB
*	#C	 #D		   #F   #G	 #A 
* C	   D	E    F    G    A    B   C
* 01   02   10   20   80   FD   F7  EF
*/

always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin
		time_end <=	16'd65535;	
	end else begin
		case(tone)		//cap1188触摸传感器的值对应不同的频率
			8'h01:	time_end <=	16'd22930;	//M1,C
			8'h02:	time_end <=	16'd21661;	//H1,#C	
							 
			8'h04:	time_end <=	16'd20430;	//M2,D
			8'h08:	time_end <=	16'd19293;	//H2,#D	
							 
			8'h10:	time_end <=	16'd18200;	//M3,E
							 
			8'h20:	time_end <=	16'd17180;	//M4,F
			8'h40:	time_end <=	16'd16216;	//H4,#F
							 
			8'h80:	time_end <=	16'd15305;	//M5,G
			8'hFE:	time_end <=	16'd14440;	//H5,#G
							 
			8'hFD:	time_end <=	16'd13635;	//M6,A
			8'hFB:	time_end <=	16'd12876;	//H6,#A
							 
			8'hF7:	time_end <=	16'd12148;	//M7,B
							 
			8'hEF:	time_end <=	16'd11477;	//HIGH_C
			default:time_end <=	16'd65535;	
		endcase
	end
end

reg [15:0] time_cnt;
//count for different tone
always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin
		time_cnt <= 1'b0;
	end else if(!tone_en) begin
		time_cnt <= 1'b0;
	end else if(time_cnt>=time_end) begin
		time_cnt <= 1'b0;
	end else begin
		time_cnt <= time_cnt + 1'b1;
	end
end
	
//generate piano signal
always@(posedge clk_in or negedge rst_n_in) begin
	if(!rst_n_in) begin
		piano_out <= 1'b1;
	end else if(time_cnt==time_end) begin
		piano_out <= ~piano_out;
	end else begin
		piano_out <= piano_out;
	end
end
	
endmodule
