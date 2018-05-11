// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : ds18b20_dataprocess.v
// Module name  : ds18b20_dataprocess
// Author       : STEP
// Description  : This module processes the data which was outputed by 
// 				  ds18b20z, there are 15 bits data we have to process. 
//				  the [15:11] is uesd to indicates the temperature,and 
//				  the rest is temperature.
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/010  |Initial ver
// --------------------------------------------------------------------
// Module Function:对DS18B20采集到的数据进行处理，包括了处理符号位，正负数的处理
//				   二进制转化为十进制，最后对要显示的数据进行按位输出。
	module ds18b20_dataprocess(	clk,
							rst,
							data_out,
							num_unit,
							num_decade,
							num_hundred,
							num_dec,
							num_dec2,
							num_dec3,
							num_dec4,
							tem_flag
							);
	
	input 			clk;			//输入时钟=12M
	input 			rst;			//输入复位信号，低电平有效；
	input 	[15:0]	data_out;		//输入来自ds18b20z_interface module采集到的DS18B20的16位数据
	output	[3:0]	num_unit;		//输出显示的个位数据
	output	[3:0]	num_decade;		//输出显示的十位数据
	output	[3:0]	num_hundred;	//输出显示的百位数据
	output	[3:0]	num_dec;		//输出显示的小数点后一位	
	output	[3:0]	num_dec2;		//输出显示的小数点后两位
	output	[3:0]	num_dec3;		//输出显示的小数点后三位
	output	[3:0]	num_dec4;		//输出显示的小数点后四位
	output 			tem_flag;		//输出符号标志位			


	wire 	[10:0] 	tem_code;		//对采集回来的数据（data_out[10:0]）进行正负号处理后得到的数据
	wire 	[20:0] 	tem_data;		//对做好正负号处理的11位显示数据（tem_code）乘以625后得到的数据
	reg 	[27:0] 	bcd_code;		//定义28位寄存器型变量，用于存储转换后的二进制数据

	assign	tem_flag=data_out[15:11]?1'b0:1'b1;							//根据采集到的数据的高5位，判定温度正负
	assign 	tem_code=tem_flag?data_out[10:0]:(~data_out[10:0])+1'b1; 	//若为正，取原数据，若为负，则取反加1
	assign	tem_data=tem_code*625;										//处理好正负之后乘以625
			
	assign	num_hundred	=	bcd_code[27:24];		//将对应位分配至要显示的寄存器。
	assign	num_decade	=	bcd_code[23:20];
	assign	num_unit	=	bcd_code[19:16];
	assign	num_dec		=	bcd_code[15:12];
	assign	num_dec2	= 	bcd_code[11:8];
	assign	num_dec3	=  	bcd_code[7:4];
	assign	num_dec4	=  	bcd_code[3:0];
	
	reg	[48:0] shift_reg;   						//用于Bin转化为BCD的寄存器。
	always@(posedge clk or negedge rst) begin       //对二进制数据进行处理，转化为BCD码
		shift_reg= {28'h0,tem_data}; 				
		if(!rst) bcd_code = 0;      
		else 
			begin         
			repeat(21)//repeat B_SIZE times
				begin                                
					if (shift_reg[24:21] >= 5) shift_reg[24:21] = shift_reg[24:21] + 2'b11;
					if (shift_reg[28:25] >= 5) shift_reg[28:25] = shift_reg[28:25] + 2'b11;
					if (shift_reg[32:29] >= 5) shift_reg[32:29] = shift_reg[32:29] + 2'b11;
					if (shift_reg[36:33] >= 5) shift_reg[36:33] = shift_reg[36:33] + 2'b11;
					if (shift_reg[40:37] >= 5) shift_reg[40:37] = shift_reg[40:37] + 2'b11;
					if (shift_reg[44:41] >= 5) shift_reg[44:41] = shift_reg[44:41] + 2'b11;
					if (shift_reg[48:45] >= 5) shift_reg[48:45] = shift_reg[48:45] + 2'b11;
					shift_reg = shift_reg << 1; 
				end         
					bcd_code=shift_reg[48:21];   		
		end  
	end

endmodule
