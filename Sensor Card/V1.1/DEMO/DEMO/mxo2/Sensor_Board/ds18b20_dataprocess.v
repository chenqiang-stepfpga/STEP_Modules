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
// Module Function:��DS18B20�ɼ��������ݽ��д��������˴������λ���������Ĵ���
//				   ������ת��Ϊʮ���ƣ�����Ҫ��ʾ�����ݽ��а�λ�����
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
	
	input 			clk;			//����ʱ��=12M
	input 			rst;			//���븴λ�źţ��͵�ƽ��Ч��
	input 	[15:0]	data_out;		//��������ds18b20z_interface module�ɼ�����DS18B20��16λ����
	output	[3:0]	num_unit;		//�����ʾ�ĸ�λ����
	output	[3:0]	num_decade;		//�����ʾ��ʮλ����
	output	[3:0]	num_hundred;	//�����ʾ�İ�λ����
	output	[3:0]	num_dec;		//�����ʾ��С�����һλ	
	output	[3:0]	num_dec2;		//�����ʾ��С�������λ
	output	[3:0]	num_dec3;		//�����ʾ��С�������λ
	output	[3:0]	num_dec4;		//�����ʾ��С�������λ
	output 			tem_flag;		//������ű�־λ			


	wire 	[10:0] 	tem_code;		//�Բɼ����������ݣ�data_out[10:0]�����������Ŵ����õ�������
	wire 	[20:0] 	tem_data;		//�����������Ŵ����11λ��ʾ���ݣ�tem_code������625��õ�������
	reg 	[27:0] 	bcd_code;		//����28λ�Ĵ����ͱ��������ڴ洢ת����Ķ���������

	assign	tem_flag=data_out[15:11]?1'b0:1'b1;							//���ݲɼ��������ݵĸ�5λ���ж��¶�����
	assign 	tem_code=tem_flag?data_out[10:0]:(~data_out[10:0])+1'b1; 	//��Ϊ����ȡԭ���ݣ���Ϊ������ȡ����1
	assign	tem_data=tem_code*625;										//���������֮�����625
			
	assign	num_hundred	=	bcd_code[27:24];		//����Ӧλ������Ҫ��ʾ�ļĴ�����
	assign	num_decade	=	bcd_code[23:20];
	assign	num_unit	=	bcd_code[19:16];
	assign	num_dec		=	bcd_code[15:12];
	assign	num_dec2	= 	bcd_code[11:8];
	assign	num_dec3	=  	bcd_code[7:4];
	assign	num_dec4	=  	bcd_code[3:0];
	
	reg	[48:0] shift_reg;   						//����Binת��ΪBCD�ļĴ�����
	always@(posedge clk or negedge rst) begin       //�Զ��������ݽ��д���ת��ΪBCD��
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
