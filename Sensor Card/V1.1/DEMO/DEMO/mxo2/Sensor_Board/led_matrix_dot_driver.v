// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : led_matrix_dot_driver.v
// Module name  : led_matrix_dot_driver
// Author       : STEP
// Description  : LED��������ģ�飬��ģ��Ϊ��������x,y���겻ͬ���ù�꣨2*2LE
//				  D����ʾ�ڲ�ͬ��λ�á�
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/11   |Initial ver
// --------------------------------------------------------------------
module led_matrix_dot_driver(clk,rst,row,col,x,y);
	
	input 			clk;		//����ʱ��=12M	
	input 			rst;		//���븴λ���͵�ƽ��Ч
	input 	[3:0] 	x;			//����x������
	input 	[3:0] 	y;			//����y������
	output 	[15:0] 	row;		//���16��LED�ܽ�
	output 	[7:0] 	col;		//���8��LED�ܽ�
	
	wire 	[7:0] coordinate;	//�γ�����
	assign coordinate={x,y};	//��x,yƴ�ӣ��γ�����
	
	reg 	[15:0] 	row;		
	reg 	[7:0] 	col;
		
	always@(posedge clk or negedge rst) begin	//������������겻ͬ�������ͬ����ʾ�����
		if(!rst) begin
			row<=1'b0;
			col<=1'b0; end
		else 
			case(coordinate)
				8'h00: begin row<=~16'b1111_1111_1111_1100; col<=8'b1111_1100; 	end
				8'h01: begin row<=~16'b1111_1111_1111_1100; col<=8'b1111_1100;	end			
				8'h02: begin row<=~16'b1111_1111_1111_1100; col<=8'b1111_1001; 	end	
				8'h03: begin row<=~16'b1111_1111_1111_1100; col<=8'b1111_0011; 	end
				8'h04: begin row<=~16'b1111_1111_1111_1100; col<=8'b1110_0111; 	end
				8'h05: begin row<=~16'b1111_1111_1111_1100; col<=8'b1100_1111;	end			
				8'h06: begin row<=~16'b1111_1111_1111_1100; col<=8'b1001_1111; 	end	
				8'h07: begin row<=~16'b1111_1111_1111_1100; col<=8'b0011_1111; 	end

				8'h10: begin row<=~16'b1111_1111_1111_1100; col<=8'b1111_1100; end
				8'h11: begin row<=~16'b1111_1111_1111_1100; col<=8'b1111_1100; end			
				8'h12: begin row<=~16'b1111_1111_1111_1100; col<=8'b1111_1001; end	
				8'h13: begin row<=~16'b1111_1111_1111_1100; col<=8'b1111_0011; end
				8'h14: begin row<=~16'b1111_1111_1111_1100; col<=8'b1110_0111; end
				8'h15: begin row<=~16'b1111_1111_1111_1100; col<=8'b1100_1111; end			
				8'h16: begin row<=~16'b1111_1111_1111_1100; col<=8'b1001_1111; end	
				8'h17: begin row<=~16'b1111_1111_1111_1100; col<=8'b0011_1111; end

				8'h20: begin row<=~16'b1111_1111_1111_1001; col<=8'b1111_1100; end
				8'h21: begin row<=~16'b1111_1111_1111_1001; col<=8'b1111_1100; end			
				8'h22: begin row<=~16'b1111_1111_1111_1001; col<=8'b1111_1001; end	
				8'h23: begin row<=~16'b1111_1111_1111_1001; col<=8'b1111_0011; end
				8'h24: begin row<=~16'b1111_1111_1111_1001; col<=8'b1110_0111; end
				8'h25: begin row<=~16'b1111_1111_1111_1001; col<=8'b1100_1111; end			
				8'h26: begin row<=~16'b1111_1111_1111_1001; col<=8'b1001_1111; end	
				8'h27: begin row<=~16'b1111_1111_1111_1001; col<=8'b0011_1111; end

				8'h30: begin row<=~16'b1111_1111_1111_0011 ; col<=8'b1111_1100; end
				8'h31: begin row<=~16'b1111_1111_1111_0011 ; col<=8'b1111_1100; end			
				8'h32: begin row<=~16'b1111_1111_1111_0011 ; col<=8'b1111_1001; end	
				8'h33: begin row<=~16'b1111_1111_1111_0011 ; col<=8'b1111_0011; end
				8'h34: begin row<=~16'b1111_1111_1111_0011 ; col<=8'b1110_0111; end
				8'h35: begin row<=~16'b1111_1111_1111_0011 ; col<=8'b1100_1111; end			
				8'h36: begin row<=~16'b1111_1111_1111_0011 ; col<=8'b1001_1111; end	
				8'h37: begin row<=~16'b1111_1111_1111_0011 ; col<=8'b0011_1111; end

				8'h40: begin row<=~16'b1111_1111_1110_0111; col<=8'b1111_1100; end
				8'h41: begin row<=~16'b1111_1111_1110_0111; col<=8'b1111_1100; end			
				8'h42: begin row<=~16'b1111_1111_1110_0111; col<=8'b1111_1001; end	
				8'h43: begin row<=~16'b1111_1111_1110_0111; col<=8'b1111_0011; end
				8'h44: begin row<=~16'b1111_1111_1110_0111; col<=8'b1110_0111; end
				8'h45: begin row<=~16'b1111_1111_1110_0111; col<=8'b1100_1111; end			
				8'h46: begin row<=~16'b1111_1111_1110_0111; col<=8'b1001_1111; end	
				8'h47: begin row<=~16'b1111_1111_1110_0111; col<=8'b0011_1111; end

				8'h50:  begin row<=~16'b1111_1111_1100_1111; col<=8'b1111_1100; end
				8'h51:  begin row<=~16'b1111_1111_1100_1111; col<=8'b1111_1100; end			
				8'h52:  begin row<=~16'b1111_1111_1100_1111; col<=8'b1111_1001; end	
				8'h53:  begin row<=~16'b1111_1111_1100_1111; col<=8'b1111_0011; end
				8'h54:  begin row<=~16'b1111_1111_1100_1111; col<=8'b1110_0111; end
				8'h55:  begin row<=~16'b1111_1111_1100_1111; col<=8'b1100_1111; end			
				8'h56:  begin row<=~16'b1111_1111_1100_1111; col<=8'b1001_1111; end	
				8'h57:  begin row<=~16'b1111_1111_1100_1111; col<=8'b0011_1111; end

				8'h60:  begin row<=~16'b1111_1111_1001_1111; col<=8'b1111_1100; end
				8'h61:  begin row<=~16'b1111_1111_1001_1111; col<=8'b1111_1100; end			
				8'h62:  begin row<=~16'b1111_1111_1001_1111; col<=8'b1111_1001; end	
				8'h63:  begin row<=~16'b1111_1111_1001_1111; col<=8'b1111_0011; end
				8'h64:  begin row<=~16'b1111_1111_1001_1111; col<=8'b1110_0111; end
				8'h65:  begin row<=~16'b1111_1111_1001_1111; col<=8'b1100_1111; end			
				8'h66:  begin row<=~16'b1111_1111_1001_1111; col<=8'b1001_1111; end	
				8'h67:  begin row<=~16'b1111_1111_1001_1111; col<=8'b0011_1111; end
					
				8'h70: begin row<=~16'b1111_1111_0011_1111; col<=8'b1111_1100; end
				8'h71: begin row<=~16'b1111_1111_0011_1111; col<=8'b1111_1100; end			
				8'h72: begin row<=~16'b1111_1111_0011_1111; col<=8'b1111_1001; end	
				8'h73: begin row<=~16'b1111_1111_0011_1111; col<=8'b1111_0011; end
				8'h74: begin row<=~16'b1111_1111_0011_1111; col<=8'b1110_0111; end
				8'h75: begin row<=~16'b1111_1111_0011_1111; col<=8'b1100_1111; end			
				8'h76: begin row<=~16'b1111_1111_0011_1111; col<=8'b1001_1111; end	
				8'h77: begin row<=~16'b1111_1111_0011_1111; col<=8'b0011_1111; end	
					
				8'h80: begin row<=~16'b1111_1110_0111_1111; col<=8'b1111_1100; end
				8'h81: begin row<=~16'b1111_1110_0111_1111; col<=8'b1111_1100;	end			
				8'h82: begin row<=~16'b1111_1110_0111_1111; col<=8'b1111_1001; end	
				8'h83: begin row<=~16'b1111_1110_0111_1111; col<=8'b1111_0011; end
				8'h84: begin row<=~16'b1111_1110_0111_1111; col<=8'b1110_0111; end
				8'h85: begin row<=~16'b1111_1110_0111_1111; col<=8'b1100_1111;	end			
				8'h86: begin row<=~16'b1111_1110_0111_1111; col<=8'b1001_1111; end	
				8'h87: begin row<=~16'b1111_1110_0111_1111; col<=8'b0011_1111; end
                
				8'h90: begin row<=~16'b1111_1100_1111_1111; col<=8'b1111_1100; end
				8'h91: begin row<=~16'b1111_1100_1111_1111; col<=8'b1111_1100; end			
				8'h92: begin row<=~16'b1111_1100_1111_1111; col<=8'b1111_1001; end	
				8'h93: begin row<=~16'b1111_1100_1111_1111; col<=8'b1111_0011; end
				8'h94: begin row<=~16'b1111_1100_1111_1111; col<=8'b1110_0111; end
				8'h95: begin row<=~16'b1111_1100_1111_1111; col<=8'b1100_1111; end			
				8'h96: begin row<=~16'b1111_1100_1111_1111; col<=8'b1001_1111; end	
				8'h97: begin row<=~16'b1111_1100_1111_1111; col<=8'b0011_1111; end
                
				8'hA0: begin row<=~16'b1111_1001_1111_1111; col<=8'b1111_1100; end
				8'hA1: begin row<=~16'b1111_1001_1111_1111; col<=8'b1111_1100; end			
				8'hA2: begin row<=~16'b1111_1001_1111_1111; col<=8'b1111_1001; end	
				8'hA3: begin row<=~16'b1111_1001_1111_1111; col<=8'b1111_0011; end
				8'hA4: begin row<=~16'b1111_1001_1111_1111; col<=8'b1110_0111; end
				8'hA5: begin row<=~16'b1111_1001_1111_1111; col<=8'b1100_1111; end			
				8'hA6: begin row<=~16'b1111_1001_1111_1111; col<=8'b1001_1111; end	
				8'hA7: begin row<=~16'b1111_1001_1111_1111; col<=8'b0011_1111; end
                
				8'hB0: begin row<=~16'b1111_0011_1111_1111 ; col<=8'b1111_1100; end
				8'hB1: begin row<=~16'b1111_0011_1111_1111 ; col<=8'b1111_1100; end			
				8'hB2: begin row<=~16'b1111_0011_1111_1111 ; col<=8'b1111_1001; end	
				8'hB3: begin row<=~16'b1111_0011_1111_1111 ; col<=8'b1111_0011; end
				8'hB4: begin row<=~16'b1111_0011_1111_1111 ; col<=8'b1110_0111; end
				8'hB5: begin row<=~16'b1111_0011_1111_1111 ; col<=8'b1100_1111; end			
				8'hB6: begin row<=~16'b1111_0011_1111_1111 ; col<=8'b1001_1111; end	
				8'hB7: begin row<=~16'b1111_0011_1111_1111 ; col<=8'b0011_1111; end
                
				8'hC0: begin row<=~16'b1110_0111_1111_1111; col<=8'b1111_1100; end
				8'hC1: begin row<=~16'b1110_0111_1111_1111; col<=8'b1111_1100; end			
				8'hC2: begin row<=~16'b1110_0111_1111_1111; col<=8'b1111_1001; end	
				8'hC3: begin row<=~16'b1110_0111_1111_1111; col<=8'b1111_0011; end
				8'hC4: begin row<=~16'b1110_0111_1111_1111; col<=8'b1110_0111; end
				8'hC5: begin row<=~16'b1110_0111_1111_1111; col<=8'b1100_1111; end			
				8'hC6: begin row<=~16'b1110_0111_1111_1111; col<=8'b1001_1111; end	
				8'hC7: begin row<=~16'b1110_0111_1111_1111; col<=8'b0011_1111; end

				8'hD0: begin row<=~16'b1100_1111_1111_1111; col<=8'b1111_1100; end
				8'hD1: begin row<=~16'b1100_1111_1111_1111; col<=8'b1111_1100; end			
				8'hD2: begin row<=~16'b1100_1111_1111_1111; col<=8'b1111_1001; end	
				8'hD3: begin row<=~16'b1100_1111_1111_1111; col<=8'b1111_0011; end
				8'hD4: begin row<=~16'b1100_1111_1111_1111; col<=8'b1110_0111; end
				8'hD5: begin row<=~16'b1100_1111_1111_1111; col<=8'b1100_1111; end			
				8'hD6: begin row<=~16'b1100_1111_1111_1111; col<=8'b1001_1111; end	
				8'hD7: begin row<=~16'b1100_1111_1111_1111; col<=8'b0011_1111; end
                
				8'hE0: begin row<=~16'b1001_1111_1111_1111; col<=8'b1111_1100; end
				8'hE1: begin row<=~16'b1001_1111_1111_1111; col<=8'b1111_1100; end			
				8'hE2: begin row<=~16'b1001_1111_1111_1111; col<=8'b1111_1001; end	
				8'hE3: begin row<=~16'b1001_1111_1111_1111; col<=8'b1111_0011; end
				8'hE4: begin row<=~16'b1001_1111_1111_1111; col<=8'b1110_0111; end
				8'hE5: begin row<=~16'b1001_1111_1111_1111; col<=8'b1100_1111; end			
				8'hE6: begin row<=~16'b1001_1111_1111_1111; col<=8'b1001_1111; end	
				8'hE7: begin row<=~16'b1001_1111_1111_1111; col<=8'b0011_1111; end
				
				8'hF0: begin row<=~16'b0011_1111_1111_1111; col<=8'b1111_1100; end
				8'hF1: begin row<=~16'b0011_1111_1111_1111; col<=8'b1111_1100; end			
				8'hF2: begin row<=~16'b0011_1111_1111_1111; col<=8'b1111_1001; end	
				8'hF3: begin row<=~16'b0011_1111_1111_1111; col<=8'b1111_0011; end
				8'hF4: begin row<=~16'b0011_1111_1111_1111; col<=8'b1110_0111; end
				8'hF5: begin row<=~16'b0011_1111_1111_1111; col<=8'b1100_1111; end			
				8'hF6: begin row<=~16'b0011_1111_1111_1111; col<=8'b1001_1111; end	
				8'hF7: begin row<=~16'b0011_1111_1111_1111; col<=8'b0011_1111; end
			default	 : begin row<=row; col<=col; end
			endcase
		end
endmodule

		