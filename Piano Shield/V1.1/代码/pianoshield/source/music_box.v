// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: music_box
// 
// Author: Step
// 
// Description: music box
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/05   |Initial ver
// --------------------------------------------------------------------
module music_box(
	input    		clk_in,
	input    		rst_n_in,
	input   [2:0] 	button_status,
	output  		speaker,
	output  [7:0] 	freq_index_out
);
	parameter STATE_IDLE = 2'b00,
			  STATE_QUA  = 2'b01,
			  STATE_QUB  = 2'b10;
			
	wire 		 clk_4Hz;
	reg  [1:0]   state;
	reg 		 pwm_en;

	reg  [7:0]	 counter,pucounter_max;
	reg  [4:0]	 freq_index;
	
	reg  [31:0]	 freq [0:21]; //do re mi fa so la si do 低音、中音、高音，共21个
	reg  [7:0]	 PUA  [0:136];//存放曲1的简谱，一个寄存器放半拍
	reg  [7:0]	 PUB  [0:128];//存放曲2的简谱
	//...					  //更改或增加自己的曲子简谱音符
	
	initial begin
			freq[0]=0;
			freq[1]=45802;
			freq[2]=40816;
			freq[3]=36363;
			freq[4]=34384;
			freq[5]=30612;
			freq[6]=27273;
			freq[7]=24291;
			freq[8]=22945;
			freq[9]=20443;
			freq[10]=18209;
			freq[11]=17192;
			freq[12]=15306;
			freq[13]=13636;
			freq[14]=12146;
			freq[15]=11461;
			freq[16]=10212;
			freq[17]=9098;
			freq[18]=8590;
			freq[19]=7653;
			freq[20]=6818;
			freq[21]=6101;
	end
	//梁祝化蝶部分的简谱，一个寄存器存半拍
	//|3 - 5. 6 | //第一个为例，“低音3 - ”即四拍四个低音mi，“低音5.”即1.5拍，三个so，以此类推
 	//|.   .  . |
	initial begin
		PUA[0]  = 3;  PUA[01] = 3;  PUA[02] = 3;  PUA[03] =3;  PUA[04] =5;  PUA[05] =5;  PUA[06] =5;  PUA[07] =6;
		PUA[08] = 8;  PUA[09] = 8;  PUA[10] = 8;  PUA[11] =9;  PUA[12] =6;  PUA[13] =8;  PUA[14] =5;  PUA[15] =5;
		PUA[16] = 12; PUA[17] = 12; PUA[18] = 15; PUA[19] =15; PUA[20] =13; PUA[21] =12; PUA[22] =10; PUA[23] =12;
		PUA[24] = 9;  PUA[25] = 9;  PUA[26] = 9;  PUA[27] =9;  PUA[28] =9;  PUA[29] =9;  PUA[30] =9;  PUA[31] =0;
		PUA[32] = 9;  PUA[33] = 9;  PUA[34] = 9;  PUA[35] =10; PUA[36] =7;  PUA[37] =7;  PUA[38] =6;  PUA[39] =6;
		PUA[40] = 5;  PUA[41] = 5;  PUA[42] = 5;  PUA[43] =6;  PUA[44] =8;  PUA[45] =8;  PUA[46] =9;  PUA[47] =9;
		PUA[48] = 3;  PUA[49] = 3;  PUA[50] = 8;  PUA[51] =8;  PUA[52] =6;  PUA[53] =5;  PUA[54] =6;  PUA[55] =8;
		PUA[56] = 5;  PUA[57] = 5;  PUA[58] = 5;  PUA[59] =5;  PUA[60] =5;  PUA[61] =5;  PUA[62] =5;  PUA[63] =0;
		PUA[64] = 10; PUA[65] = 10; PUA[66] = 10; PUA[67] =12; PUA[68] =7;  PUA[69] =7;  PUA[70] =9;  PUA[71] =9;
		PUA[72] = 6;  PUA[73] = 8;  PUA[74] = 5;  PUA[75] =5;  PUA[76] =5;  PUA[77] =5;  PUA[78] =5;  PUA[79] =5;
		PUA[80] = 3;  PUA[81] = 5;  PUA[82] = 3;  PUA[83] =3;  PUA[84] =5;  PUA[85] =6;  PUA[86] =7;  PUA[87] =9;
		PUA[88] = 6;  PUA[89] = 6;  PUA[90] = 6;  PUA[91] =6;  PUA[92] =6;  PUA[93] =6;  PUA[94] =5;  PUA[95] =6;
		PUA[96] = 8;  PUA[97] = 8;  PUA[98] = 8;  PUA[99] =9;  PUA[100]=12; PUA[101]=12; PUA[102]=12; PUA[103]=10;
		PUA[104]= 9;  PUA[105]= 9;  PUA[106]= 10; PUA[107]=9;  PUA[108]=8;  PUA[109]=8;  PUA[110]=6;  PUA[111]=5;
		PUA[112]= 3;  PUA[113]= 3;  PUA[114]= 3;  PUA[115]=3;  PUA[116]=8;  PUA[117]=8;  PUA[118]=8;  PUA[119]=8;
		PUA[120]= 6;  PUA[121]= 8;  PUA[122]= 6;  PUA[123]=5;  PUA[124]=3;  PUA[125]=5;  PUA[126]=6;  PUA[127]=8;
		PUA[128]= 5;  PUA[129]= 5;  PUA[130]= 5;  PUA[131]=5;  PUA[132]=5;  PUA[133]=5;  PUA[134]=5;  PUA[135]=5;
	end
	//欢乐颂简谱
	initial begin	                                               
		PUB[0]  =10;  PUB[01] =10; PUB[02] =10; PUB[03] =10;  PUB[04] =11;  PUB[05] =11;  PUB[06] =12;  PUB[07] =12;
		PUB[08] =12;  PUB[09] =12; PUB[10] =11; PUB[11] =11;  PUB[12] =10;  PUB[13] =10;  PUB[14] =9;   PUB[15] =9;  
		PUB[16] =8;   PUB[17] =8;  PUB[18] =8;  PUB[19] =8;   PUB[20] =9;   PUB[21] =9;   PUB[22] =10;  PUB[23] =10;
		PUB[24] =10;  PUB[25] =10; PUB[26] =10; PUB[27] =9;   PUB[28] =9;   PUB[29] =9;   PUB[30] =9;   PUB[31] =9;
		PUB[32] =10;  PUB[33] =10; PUB[34] =10; PUB[35] =10;  PUB[36] =11;  PUB[37] =11;  PUB[38] =12;  PUB[39] =12; 
		PUB[40] =12;  PUB[41] =12; PUB[42] =11; PUB[43] =11;  PUB[44] =10;  PUB[45] =10;  PUB[46] =9;   PUB[47] =9;
		PUB[48] =8;   PUB[49] =8;  PUB[50] =8;  PUB[51] =8;   PUB[52] =9;   PUB[53] =9;   PUB[54] =10;  PUB[55] =10;
		PUB[56] =9;   PUB[57] =9;  PUB[58] =9;  PUB[59] =8;   PUB[60] =8;   PUB[61] =8;   PUB[62] =8;   PUB[63] =8;  
		PUB[64] =9;   PUB[65] =9;  PUB[66] =9;  PUB[67] =9;   PUB[68] =10;  PUB[69] =10;  PUB[70] =8;   PUB[71] =8;
		PUB[72] =9;   PUB[73] =9;  PUB[74] =10; PUB[75] =11;  PUB[76] =10;  PUB[77] =10;  PUB[78] =8;   PUB[79] =8;
		PUB[80] =9;   PUB[81] =9;  PUB[82] =10; PUB[83] =11;  PUB[84] =10;  PUB[85] =10;  PUB[86] =8;   PUB[87] =8;  
		PUB[88] =8;   PUB[89] =8;  PUB[90] =9;  PUB[91] =9;   PUB[92] =5;   PUB[93] =5;   PUB[94] =10;  PUB[95] =10;
		PUB[96] =10;  PUB[97] =10; PUB[98] =10; PUB[99] =10;  PUB[100]=11;  PUB[101]=11;  PUB[102]=12;  PUB[103]=12;
		PUB[104]=12;  PUB[105]=12; PUB[106]=11; PUB[107]=11;  PUB[108]=10;  PUB[109]=10;  PUB[110]=9;   PUB[111]=9;  
		PUB[112]=8;   PUB[113]=8;  PUB[114]=8;  PUB[115]=8;   PUB[116]=9;   PUB[117]=9;   PUB[118]=10;  PUB[119]=10;
		PUB[120]=9;   PUB[121]=9;  PUB[122]=9;  PUB[124]=8;   PUB[124]=8;   PUB[125]=8;   PUB[126]=8;   PUB[127]=8;
	end                                                                                          
	
	//梁祝片段最短的音符为四分音符，如果将全音符的持续时间设为1s，则需要提供一个4Hz的时钟频率信号即可产生四分音符的时长
	clk_quarter clk_inst(
		.clk_in(clk_in),
		.rst_n_in(rst_n_in),
		.clk_out(clk_4Hz)
	);
	//状态切换，根据功能键UP/DOWN来切换曲目
	always@(posedge clk_in or negedge rst_n_in)
	begin
		if(!rst_n_in) begin
			state <= STATE_IDLE;
		end else begin
			case(state)
				STATE_IDLE : begin
						freq_index <= PUA[counter];
						state <= STATE_QUA;
						pucounter_max <= 136;
					end				
				STATE_QUA : begin 
						freq_index <= PUA[counter];
						if(button_status==3'b001 | button_status==3'b010) begin
							pucounter_max <= 128;
							state <= STATE_QUB;
						end else begin pucounter_max <= 136; state <= STATE_QUA; end
					 end
				STATE_QUB : begin 
						freq_index <= PUB[counter];
						if(button_status==3'b001 | button_status==3'b010) begin
							pucounter_max <= 136;
							state <= STATE_QUA;
						end else begin pucounter_max <= 128; state <= STATE_QUB; end
					 end
				default : begin state <= STATE_IDLE; pucounter_max <= 136; freq_index <= PUA[counter];end
			endcase 
		end
	end
	always@(posedge clk_4Hz or negedge rst_n_in)
	begin
		if(!rst_n_in) begin
			counter <= 1'b0;
		end else begin		
			if(pwm_en) begin
				if((counter >= pucounter_max) | (button_status==3'b001) | (button_status==3'b010))
					counter <= 1'b0;
				else 
					counter <= counter + 1'b1;
			end else
				counter <= 1'b0;
		end
	end
	//根据MODE键切换播放模式还是弹奏模式，播放模式时使能pwm驱动蜂鸣器
	always@(posedge clk_in or negedge rst_n_in) 
	begin
		if(!rst_n_in) begin
			pwm_en  <= 1'b0;
		end else begin
			if(button_status[2]) begin  
				pwm_en <= ~pwm_en;
				end
		end
	end
	//蜂鸣器驱动模块，根据当前的音符输出相应的频率
	pwm pwm_inst(
		.clk_in(clk_in),
		.rst_n_in(rst_n_in),
		.pwm_en(pwm_en),
		.freq(freq[freq_index]),
		.pwm_out(speaker)
	);
	
	assign freq_index_out = freq_index;	

endmodule
