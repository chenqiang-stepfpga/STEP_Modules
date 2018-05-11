// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : coordinate_process.v
// Module name  : coordinate_process
// Author       : STEP
// Description  : 通过mpu6050测量出的数据确定LED点阵光标坐标位置的数据处理模块。
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/11   |Initial ver
// --------------------------------------------------------------------

module coordinate_process(clk,rst,x_axis,y_axis,x,y);

	input 			clk;						//输入时钟=12M
	input 			rst;						//输入复位
	input 	[15:0]	x_axis;						//输入x轴加速度数据
	input 	[15:0]	y_axis;						//输入y轴加速度数据
	output	[3:0]	x;							//输出光标的x坐标
	output  [3:0]	y;							//输出光标的y坐标
	
	reg 	[3:0]	x;							//将输出定义为寄存器型
	reg 	[3:0]	y;
	
	reg 	[23:0] 	cnt_shift;					//该寄存器是用于产生确定移动频率的时钟
	reg 			clk_shift;					//控制光标移动速度的时钟
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
	
	always@(posedge clk_shift or negedge rst) begin		//根据采集回的加速度值，控制坐标移动
		if(!rst) begin 									//给定初始显示位置，x轴初始位置为8（中心）
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
	always@(posedge clk_shift or negedge rst) begin	//根据采集回的加速度值，控制坐标移动
		if(!rst) begin 	                            //给定初始显示位置，y轴初始位置为4（中心）
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
