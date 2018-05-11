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
// Module Function:将Bin转化为BCD码。
module BIN_To_BCD(number, tens, ones);
   // I/O Signal Definitions
   input  		[7:0]	number;		//输入数据处理之后的数据
   output	reg	[3:0]	tens;		//输出十位要显示的数据
   output	reg	[3:0]	ones;		//输出个位要显示的数据
   
   // Internal variable for storing bits
   reg 			[19:0]	shift;		//定义寄存器，用于移位显示
   integer 				i;			
   
   always@(number)					//转码模块
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
      tens     = shift[15:12];		//将转码后的数据分别分配至十位与个位
      ones     = shift[11:8];		
   end
 
endmodule

	