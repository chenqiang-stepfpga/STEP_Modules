// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : coordinate_process.v
// Module name  : coordinate_process
// Author       : STEP
// Description  : ͨ��mpu6050������������ȷ��LED����������λ�õ����ݴ���ģ�顣
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/11   |Initial ver
// --------------------------------------------------------------------

module coordinate_process(clk,rst,x_axis,y_axis,x,y);

	input 			clk;						//����ʱ��=12M
	input 			rst;						//���븴λ
	input 	[15:0]	x_axis;						//����x����ٶ�����
	input 	[15:0]	y_axis;						//����y����ٶ�����
	output	[3:0]	x;							//�������x����
	output  [3:0]	y;							//�������y����
	
	reg 	[3:0]	x;							//���������Ϊ�Ĵ�����
	reg 	[3:0]	y;
	
	reg 	[23:0] 	cnt_shift;					//�üĴ��������ڲ���ȷ���ƶ�Ƶ�ʵ�ʱ��
	reg 			clk_shift;					//���ƹ���ƶ��ٶȵ�ʱ��
	always@(posedge clk or negedge rst)
		begin
			if(!rst) begin 
				cnt_shift <= 0;
				clk_shift <= 0; end
			else if(cnt_shift ==23'd1999999) begin
				cnt_shift <= 0;
				clk_shift <= ~clk_shift;	end
			else begin 
				cnt_shift <= cnt_shift+1'b1;
				clk_shift <= clk_shift; end
		end
	
	always@(posedge clk_shift or negedge rst) begin		//���ݲɼ��صļ��ٶ�ֵ�����������ƶ�
		if(!rst) begin 									//������ʼ��ʾλ�ã�x���ʼλ��Ϊ8�����ģ�
			x<=8;end									
		else if((y_axis[15:9]>=8'b1100000)&&(y_axis[15:9]<=8'b1111111)) begin 
				if(x>4'he) x<=4'hf; else
				x<=x+4'h1;end		
		else if((y_axis[15:9]>8'b0000000)&&(y_axis[15:9]<=8'b0011111)) begin 
				if(x<=4'h0) x<=4'h0; else
				x<=x-4'h1;end
		else if(y_axis[15:9]==8'b0000000) begin 
				if(x>4'h8)		x<=x-4'h1;
				else if(x<4'h8)	x<=x+4'h1;
				else if(x==4'h8) x<=4'h8; 
				else 			 x<=x;end
		else 
				x<=x;
		end
	always@(posedge clk_shift or negedge rst) begin	//���ݲɼ��صļ��ٶ�ֵ�����������ƶ�
		if(!rst) begin 	                            //������ʼ��ʾλ�ã�y���ʼλ��Ϊ4�����ģ�
			y<=4;end
		else if ((x_axis[15:9]>=8'b1100000)&&(x_axis[15:9]<=8'b1111111)) 	begin 
				if(y<=4'h0) y<=4'h0; else 
					y<=y-4'h1; end
		else if((x_axis[15:9]>8'b0000000) && (x_axis[15:9]<=8'b0011111)) begin 
				if(y>4'h6) y<=4'h7; else
				y<=y+4'h1;end	
		else if(x_axis[15:9]==8'b0000000) begin 
				if(y<4'h4) 		y<=y+4'h1;
				else if(y>4'h4)	y<=y-4'h1;
				else if(y==4'h4) y<=4'h4;
				else 			y<=y; end
		else 
				y<=y;
		end


endmodule
