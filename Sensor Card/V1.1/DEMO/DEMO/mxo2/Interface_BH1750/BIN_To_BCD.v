// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : BIN_To_BCD.v
// Module name  : BIN_To_BCD
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
// Module Function:��Binת��ΪBCD�롣
module BIN_To_BCD(number, tens, ones);
   // I/O Signal Definitions
   input  		[7:0]	number;		//�������ݴ���֮�������
   output	reg	[3:0]	tens;		//���ʮλҪ��ʾ������
   output	reg	[3:0]	ones;		//�����λҪ��ʾ������
   
   // Internal variable for storing bits
   reg 			[19:0]	shift;		//����Ĵ�����������λ��ʾ
   integer 				i;			
   
   always@(number)					//ת��ģ��
   begin
      // Clear previous number and store new number in shift register
      shift[19:8] = 0;
	  shift[7:0] = number[7:0];
      // Loop eight times
      for (i=0; i<8; i=i+1) begin
         if (shift[11:8] >= 5)
            shift[11:8] = shift[11:8] + 3;
            
         if (shift[15:12] >= 5)
            shift[15:12] = shift[15:12] + 3;
            
         if (shift[19:16] >= 5)
            shift[19:16] = shift[19:16] + 3;
         
         // Shift entire register left once
         shift = shift << 1;
      end
      
      // Push decimal numbers to output
      tens     = shift[15:12];		//��ת�������ݷֱ������ʮλ���λ
      ones     = shift[11:8];		
   end
 
endmodule

	