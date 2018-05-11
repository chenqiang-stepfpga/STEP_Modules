// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module:Sensor_Board 
// 
// Author: Step
// 
// Description: Sensor_Board����ģ��
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/6/11    |Initial ver
// --------------------------------------------------------------------
module Sensor_Board(	
					clk,
					rst,
					ir,
					scl,
					sda,
					seg_led_1,
					seg_led_2,
					row,
					col,
					led,
					one_wire
					);

	input 			clk;						//����ʱ��=12M
	input 			rst;						//���븴λ���͵�ƽ��Ч
	input 			ir;							//�������Թܿ����ź�
	output 			scl;						//���I2Cʱ����
	output [8:0] 	seg_led_1;					//�����ʾ�����1
	output [8:0] 	seg_led_2;					//�����ʾ�����2
	output [15:0] 	row;						//���16��LED��ʾ����
	output [7:0] 	col;						//���8��LED��ʾ����
	output [7:0]	led;						//�����ʾ��LED
	inout 			sda;						//I2C���ݽӿ�
	inout			one_wire;					//ds18b20����ͨ�Žӿ�
	
	assign led=(ir==0) ? 8'hff:8'h00 ;			//����Թܿ���LED
	
	wire [15:0] x_axis;							//��ȡ����x����ٶȼƲɼ���������
	wire [15:0] x_axis_jiaozhun;				//����У׼
	assign x_axis_jiaozhun=x_axis+16'b00000001_11100000;
	
	wire [15:0] z_axis;							//��ȡ����z����ٶȼƲɼ���������
	wire [15:0] y_axis;							//��ȡ����y����ٶȼƲɼ���������
	wire [15:0] x_gyro;							//��ȡ����x���������ٶ�����
	wire [15:0] y_gyro;							//��ȡ����y���������ٶ�����
	wire [15:0] z_gyro;							//��ȡ����z���������ٶ�����
	mpu6050_iic mpu6050_iic_u1(					//����mpu6050����ͨ��ģ��
		.clk(clk),
		.scl(scl),
		.sda(sda),
		.rst_n(rst),
		.x_axis(x_axis),
		.z_axis(z_axis),
		.y_axis(y_axis),
		.x_gyro(x_gyro),
		.y_gyro(y_gyro),
		.z_gyro(z_gyro)
		);
	
	segment_LED segment_LED_u1(					//�����������ʾģ��
		.seg_data_1(num_decade),
		.seg_data_2(num_unit),
		.seg_led_1(seg_led_1),
		.seg_led_2(seg_led_2)
		);
		
	wire [7:0] coordinate;						//����ʵʱλ���ź�
	led_matrix_dot_driver led_matrix_dot_driver_u1(
		.clk(clk),
		.rst(rst),
		.row(row),
		.col(col),
		.x(x),
		.y(y)
		);
	
	wire [4:0] x;								//���ݴ�����x����ٶ��ź�
	wire [4:0] y;								//���ݴ�����y����ٶ��ź�
	coordinate_process coordinate_process_u1(
		.clk(clk),
		.rst(rst),
		.x_axis(x_axis_jiaozhun),
		.y_axis(y_axis),
		.x(x),
		.y(y)
	);

	wire		[15:0]	data_out;		//����ģ���DS18B20�ɼ��ĳ�ʼ������ȡ�����㣬���ݸ�����ģ��
	ds18b20_interface ds18b20_interface_u1(
		.clk_in(clk),					// system clock
		.rst_n_in(rst),					// system reset, active low
		.one_wire(one_wire),			// ds18b20z one-wire-bus
		.data_out(data_out)				// ds18b20z data_out
		); 
	wire		[3:0]	num_unit;		//��ȡ��ģ�鴦���������ʾ�ĸ�λ����
	wire		[3:0]	num_decade;     //��ȡ��ģ�鴦���������ʾ��ʮλ����
	wire		[3:0]	num_hundred;    //��ȡ��ģ�鴦���������ʾ�İ�λ����
	wire		[3:0]	num_dec;        //��ȡ��ģ�鴦���������ʾ��С�����һλ	
	wire		[3:0]	num_dec2;       //��ȡ��ģ�鴦���������ʾ��С�������λ
	wire		[3:0]	num_dec3;       //��ȡ��ģ�鴦���������ʾ��С�������λ
	wire		[3:0]	num_dec4;	    //��ȡ��ģ�鴦���������ʾ��С�������λ
										//����DS18B20�����ݴ���ģ��
	ds18b20_dataprocess ds18b20_dataprocess_u1(	
		.clk(clk),
		.rst(rst),
		.data_out(data_out),
		.num_unit(num_unit),
		.num_decade(num_decade),
		.num_hundred(num_hundred),
		.num_dec(num_dec),
		.num_dec2(num_dec2),
		.num_dec3(num_dec3),
		.num_dec4(num_dec4),
		.tem_flag(tem_flag)
		);

endmodule


		
		
		
		
		
		
	