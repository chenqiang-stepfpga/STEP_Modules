// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: pianoshield_top
// 
// Author: Step
// 
// Description: pianoshield top module
//	
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/5   |Initial ver
// --------------------------------------------------------------------
module pianoshield_top(
	input				clk_in,			//外部时钟输入，STEP FPGA板C1脚
	input				rst_n_in,		//系统复位，对应STEP FPGA板按键L14
	output				scl_out,		//I2C SCL引脚STEP FPGA板C8
	inout				sda_out,		//I2C SDA引脚STEP FPGA板B8
	output 				beepout,		//对应pianoshield板载蜂鸣器引脚F14
	output	[7:0]		led_out,		//对应STEP FPGA板载8个LED灯
	output 	[8:0] 		segment_led_1,  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	output 	[8:0] 		segment_led_2   //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

//触摸传感器cap1188输出的对应触摸按键的值,每个cap1188有8路按键，对应8个输出:8'h01,8'h04,8'h10,8'h20,8'h40,8'h80，没有按键按下时输出0
wire 	[7:0]	sensor_data1,sensor_data2;
reg 	[7:0]	tone=0;			//piano模式，根据触摸按键值对应音符频率

//cap1188_i2c模块通过I2C总线与CAP1188通信，读出当前触摸传感器的值
cap1188_i2c		cap1188_i2c_u
(
	.clk_in					(clk_in		 ),
	.rst_n_in				(rst_n_in	 ),
	.scl_out				(scl_out	 ),
	.sda_out				(sda_out	 ),
	.sensor_data1			(sensor_data1),
	.sensor_data2			(sensor_data2)
);

//pianosheld板右侧三个功能键 MODE/up/down
reg 			down_button=0;	//up_button/down_button用于musicbox播放模式下切换上一首和下一首
reg 			up_button=0;
reg 			mode_button=0; 	//mode_button切换piano模式即弹奏模式

//这个always块中，根据触摸传感器的值sensor_data1，sensor_data2做对应的工作
//sensor_data1的8个值和sensor_data2的前5个值对应13个音符，sensor_data2的后三个值为三个功能键
always@(posedge clk_in or negedge rst_n_in) 
begin
	if(!rst_n_in) begin
		tone <= 0;
		down_button <= 0;
		up_button <= 0;
		mode_button <= 0;
	end else begin	
		if(sensor_data1) begin
			tone <= sensor_data1;
		end else if(sensor_data2)begin
			case(sensor_data2)
				8'h20 :  down_button <= 1;
				8'h40 :  up_button <= 1;	
				8'h80 :  mode_button <= 1;		
				default: begin tone <= ~sensor_data2;end //由于有两片cap1188，为了区分是一片输出的值，将第二片的值按位取反
			endcase
		end else begin
				tone <= 0;
				down_button <= 0;
				up_button <= 0;
				mode_button <= 0;
		end
	end
end

wire	tone_en;	//弹奏模式下蜂鸣器发生模块的使能信号，1有效
wire	piano_out;	//蜂鸣器频率输出
//
assign tone_en = (tone==0)?1'b0:1'b1;	//tone为0时也就是触摸传感器输出值是0时表示没有按键按下，蜂鸣器关闭

//beeper模块为弹奏模式下蜂鸣器发生模块
beeper 			beeper_u
(
	.clk_in					(clk_in			),
	.rst_n_in				(rst_n_in		),
	.tone_en				(tone_en		),
	.tone					(tone			),
	.piano_out				(piano_out		)
);

wire 	[7:0] 	freq_index_out;	//music box播放模式下当前播放的音符序号，输出到LED灯，显得酷炫
wire 	[2:0] 	button_pulse;	//三个功能键的输出信号，按下时产生一个时钟的高电平脉冲，类似按键消抖的作用
wire 	[2:0] 	button_in;		
reg 	[2:0] 	button_status_r,button_status;

//把三个功能键输入信号
assign button_in = {mode_button,up_button,down_button};

always@( posedge clk_in  or  negedge rst_n_in )
	if (!rst_n_in) begin button_status_r <= 3'b111;button_status <= 3'b111; end
    else  begin button_status <= button_in;button_status_r <= button_status;end
		
//按下时产生一个时钟的高电平脉冲，类似按键消抖的作用
assign button_pulse = button_status & ( ~button_status_r);

//music box模块播放模式，在此模块内添加需要播放的音乐乐谱
music_box 	musicbox_u(
	.clk_in				(clk_in		   ),
	.rst_n_in			(rst_n_in      ),
	.button_status		(button_pulse  ),
	.speaker			(speaker_mb    ),
	.freq_index_out 	(freq_index_out)
	);
	
reg		mode_flag=0;	//模式选择键

//根据MODE功能键选择当前的工作模式，是弹奏还是播放
always@(posedge clk_in or negedge rst_n_in) 
	begin
		if(!rst_n_in) begin
			mode_flag <= 0;
		end else begin
			if(button_pulse[2])
				mode_flag <= !mode_flag;
		end
	end
//根据模式选择蜂鸣器的输出信号来源是music box还是piano
assign beepout = mode_flag ? speaker_mb : piano_out;
//根据模式选择LED的驱动来源是music box的音符还是piano的音符
assign led_out = mode_flag ? freq_index_out : tone ;	
//数码管驱动模块显示当前触摸按键的值
display		display_u
(	.rst_n_in(rst_n_in),
	.sensor_data_1(sensor_data1),  //seg_data input
	.sensor_data_2(sensor_data2),  //seg_data input
	.segment_led_1(segment_led_1),  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	.segment_led_2(segment_led_2)   //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

endmodule
