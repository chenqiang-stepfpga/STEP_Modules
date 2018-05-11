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
	input				clk_in,			//�ⲿʱ�����룬STEP FPGA��C1��
	input				rst_n_in,		//ϵͳ��λ����ӦSTEP FPGA�尴��L14
	output				scl_out,		//I2C SCL����STEP FPGA��C8
	inout				sda_out,		//I2C SDA����STEP FPGA��B8
	output 				beepout,		//��Ӧpianoshield���ط���������F14
	output	[7:0]		led_out,		//��ӦSTEP FPGA����8��LED��
	output 	[8:0] 		segment_led_1,  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	output 	[8:0] 		segment_led_2   //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

//����������cap1188����Ķ�Ӧ����������ֵ,ÿ��cap1188��8·��������Ӧ8�����:8'h01,8'h04,8'h10,8'h20,8'h40,8'h80��û�а�������ʱ���0
wire 	[7:0]	sensor_data1,sensor_data2;
reg 	[7:0]	tone=0;			//pianoģʽ�����ݴ�������ֵ��Ӧ����Ƶ��

//cap1188_i2cģ��ͨ��I2C������CAP1188ͨ�ţ�������ǰ������������ֵ
cap1188_i2c		cap1188_i2c_u
(
	.clk_in					(clk_in		 ),
	.rst_n_in				(rst_n_in	 ),
	.scl_out				(scl_out	 ),
	.sda_out				(sda_out	 ),
	.sensor_data1			(sensor_data1),
	.sensor_data2			(sensor_data2)
);

//pianosheld���Ҳ��������ܼ� MODE/up/down
reg 			down_button=0;	//up_button/down_button����musicbox����ģʽ���л���һ�׺���һ��
reg 			up_button=0;
reg 			mode_button=0; 	//mode_button�л�pianoģʽ������ģʽ

//���always���У����ݴ�����������ֵsensor_data1��sensor_data2����Ӧ�Ĺ���
//sensor_data1��8��ֵ��sensor_data2��ǰ5��ֵ��Ӧ13��������sensor_data2�ĺ�����ֵΪ�������ܼ�
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
				default: begin tone <= ~sensor_data2;end //��������Ƭcap1188��Ϊ��������һƬ�����ֵ�����ڶ�Ƭ��ֵ��λȡ��
			endcase
		end else begin
				tone <= 0;
				down_button <= 0;
				up_button <= 0;
				mode_button <= 0;
		end
	end
end

wire	tone_en;	//����ģʽ�·���������ģ���ʹ���źţ�1��Ч
wire	piano_out;	//������Ƶ�����
//
assign tone_en = (tone==0)?1'b0:1'b1;	//toneΪ0ʱҲ���Ǵ������������ֵ��0ʱ��ʾû�а������£��������ر�

//beeperģ��Ϊ����ģʽ�·���������ģ��
beeper 			beeper_u
(
	.clk_in					(clk_in			),
	.rst_n_in				(rst_n_in		),
	.tone_en				(tone_en		),
	.tone					(tone			),
	.piano_out				(piano_out		)
);

wire 	[7:0] 	freq_index_out;	//music box����ģʽ�µ�ǰ���ŵ�������ţ������LED�ƣ��Եÿ���
wire 	[2:0] 	button_pulse;	//�������ܼ�������źţ�����ʱ����һ��ʱ�ӵĸߵ�ƽ���壬���ư�������������
wire 	[2:0] 	button_in;		
reg 	[2:0] 	button_status_r,button_status;

//���������ܼ������ź�
assign button_in = {mode_button,up_button,down_button};

always@( posedge clk_in  or  negedge rst_n_in )
	if (!rst_n_in) begin button_status_r <= 3'b111;button_status <= 3'b111; end
    else  begin button_status <= button_in;button_status_r <= button_status;end
		
//����ʱ����һ��ʱ�ӵĸߵ�ƽ���壬���ư�������������
assign button_pulse = button_status & ( ~button_status_r);

//music boxģ�鲥��ģʽ���ڴ�ģ���������Ҫ���ŵ���������
music_box 	musicbox_u(
	.clk_in				(clk_in		   ),
	.rst_n_in			(rst_n_in      ),
	.button_status		(button_pulse  ),
	.speaker			(speaker_mb    ),
	.freq_index_out 	(freq_index_out)
	);
	
reg		mode_flag=0;	//ģʽѡ���

//����MODE���ܼ�ѡ��ǰ�Ĺ���ģʽ���ǵ��໹�ǲ���
always@(posedge clk_in or negedge rst_n_in) 
	begin
		if(!rst_n_in) begin
			mode_flag <= 0;
		end else begin
			if(button_pulse[2])
				mode_flag <= !mode_flag;
		end
	end
//����ģʽѡ�������������ź���Դ��music box����piano
assign beepout = mode_flag ? speaker_mb : piano_out;
//����ģʽѡ��LED��������Դ��music box����������piano������
assign led_out = mode_flag ? freq_index_out : tone ;	
//���������ģ����ʾ��ǰ����������ֵ
display		display_u
(	.rst_n_in(rst_n_in),
	.sensor_data_1(sensor_data1),  //seg_data input
	.sensor_data_2(sensor_data2),  //seg_data input
	.segment_led_1(segment_led_1),  //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
	.segment_led_2(segment_led_2)   //MSB~LSB = SEG,DP,G,F,E,D,C,B,A
);

endmodule
