// ********************************************************************
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ********************************************************************
// File name    : led_scan.v
// Module name  : led_scan
// Author       : STEP
// Description  : 数码管显示模块
// Web          : www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History : 
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/10   |Initial ver
// --------------------------------------------------------------------
// Module Function:LED扫描显示模块

module led_scan(clk,rst,number,tens,ones,row,line);
	
	input				clk;	//输入时钟=12M
	input				rst;	//输入复位，低电平有效
	input		[7:0]	number;	//输入8位数据，该数据由数据处理模块产生后得到
    input   	[3:0]	tens;	//输入要显示的十位数据
    input   	[3:0]	ones;	//输入要显示的个位数据
	output	reg	[15:0]	row;	//输出16列LED点阵管脚
	output	reg	[7:0]	line;	//输出8行LED点阵管脚

	wire	clk16Hz;			//例化时钟模块，产生16Hz的时钟，用于LED扫描显示
	clk_div #
	(
	.COUNTER_NUM (100000)
	)
	clk16Hz_uut
	(
	.clk(clk),		
	.rst(rst),		
	.invert(clk16Hz)		
	);
	
	reg		[3:0] temp_num;
	reg		[3:0] temp_cnt=0;
	reg			  get_num_flag =1;
	always@(posedge clk16Hz)
		begin
			if (get_num_flag == 1)
				begin
					temp_num <= number[5:2];
					get_num_flag <= 0;
				end
			else if (temp_num == 15)
				begin
					temp_num <= 0;
					get_num_flag <= 1;
					temp_cnt <= temp_cnt + 1;
				end
			else
				temp_num <= temp_num + 1;
		end
	
	wire	clk10KHz;
	clk_div #
	(
	.COUNTER_NUM (1200)		
	)
	clk10KHz_uut
	(
	.clk(clk),		//system clk
	.rst(rst),		//system rst
	.invert(clk10KHz)	//invert signal
	);
				
	always@(posedge clk10KHz)							//通过移位操作，让要显示的列“移动”
		begin
			if (!rst == 1)
				row <= 16'h0001;
			else	
				row <= {row[14:0],row[15]};
		end
		
	
	reg		[31:0]	mem   	[18:0];						//生成ROM，存储想要显示的数据
	reg		[7:0]	cache  	[15:0];						
	initial    
		begin
			mem[0] 	= {~8'h3E,~8'h41,~8'h41,~8'h3E};	// 0
			mem[1] 	= {~8'h11,~8'h31,~8'h7f,~8'h01};	// 1
			mem[2] 	= {~8'h23,~8'h45,~8'h49,~8'h31};	// 2
			mem[3] 	= {~8'h22,~8'h49,~8'h49,~8'h36};	// 3
			mem[4] 	= {~8'h0C,~8'h14,~8'h24,~8'h7f};	// 4
			mem[5] 	= {~8'h7A,~8'h49,~8'h49,~8'h46};	// 5
			mem[6] 	= {~8'h3E,~8'h49,~8'h49,~8'h26};	// 6
			mem[7] 	= {~8'h40,~8'h45,~8'h49,~8'h70};	// 7
			mem[8] 	= {~8'h36,~8'h49,~8'h49,~8'h36};	// 8
			mem[9] 	= {~8'h32,~8'h49,~8'h49,~8'h3E};	// 9
			mem[10] = {~8'h00,~8'h00,~8'h00,~8'h00};	// 全灭
			mem[11] = {~8'h08,~8'h08,~8'h08,~8'h08};	// 负号
			mem[12] = {~8'hC0,~8'hDE,~8'h21,~8'h21};	// 摄氏度符号
			mem[13] = {~8'h38,~8'h7C,~8'hC7,~8'hD7};	// 灯泡左边4列
			mem[14] = {~8'hC7,~8'h7C,~8'h38,~8'h00};	// 灯泡右边4列
			mem[15] = {~8'h00,~8'h18,~8'h3C,~8'h7E};	// 箭头左边4列
			mem[16] = {~8'hDB,~8'h99,~8'h18,~8'h18};	// 箭头右边4列
			
			cache[0]<=mem[15][31:24];
			cache[1]<=mem[15][23:16];
			cache[2]<=mem[15][15:8];
			cache[3]<=mem[15][7:0];	
			cache[4]<=mem[16][31:24];
			cache[5]<=mem[16][23:16];
			cache[6]<=mem[16][15:8];
			cache[7]<=mem[16][7:0];
			cache[8]<=mem[15][31:24];
			cache[9]<=mem[15][23:16];
			cache[10]<=mem[15][15:8];
			cache[11]<=mem[15][7:0];
			cache[12]<=mem[16][31:24];
			cache[13]<=mem[16][23:16];
			cache[14]<=mem[16][15:8];
			cache[15]<=mem[16][7:0];
		end
		
	always @ (row)										//进行显示
		begin
			case (row)
				16'h0001 : line <= cache[temp_cnt+0];
				16'h0002 : line <= cache[temp_cnt+1];
				16'h0004 : line <= cache[temp_cnt+2];
				16'h0008 : line <= cache[temp_cnt+3];
				16'h0010 : line <= cache[temp_cnt+4];
				16'h0020 : line <= cache[temp_cnt+5];
				16'h0040 : line <= cache[temp_cnt+6];
				16'h0080 : line <= cache[temp_cnt+7];
				16'h0100 : line <= cache[temp_cnt+8];
				16'h0200 : line <= cache[temp_cnt+9];
				16'h0400 : line <= cache[temp_cnt+10];
				16'h0800 : line <= cache[temp_cnt+11];
				16'h1000 : line <= cache[temp_cnt+12];
				16'h2000 : line <= cache[temp_cnt+13];
				16'h4000 : line <= cache[temp_cnt+14];
				16'h8000 : line <= cache[temp_cnt+15];
			endcase
		end

endmodule
	