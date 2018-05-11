// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : clk_div.v
// Module name  : clk_div
// Author       : STEP
// Description  : ʱ�ӷ�Ƶģ��
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/10   |Initial ver
// --------------------------------------------------------------------
// Module Function:ʱ�ӷ�Ƶģ��
module clk_div #(parameter	COUNTER_NUM = 3464)
(
	input		clk,						//����ʱ��=12M
	input		rst,						//���븴λ���͵�ƽ��Ч
	output	reg	invert						//���ʱ���ź�
);
	reg		[31:0]		cnt;				//ʱ�Ӽ�����
										
	always @ (posedge clk or negedge rst)	//����ʱ�ӷ�Ƶ�ź� 
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