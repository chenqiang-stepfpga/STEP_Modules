// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module:Sensor_Board 
// 
// Author: Step
// 
// Description: Sensor_Board顶层模块
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

	input 			clk;						//输入时钟=12M
	input 			rst;						//输入复位，低电平有效
	input 			ir;							//输入红外对管控制信号
	output 			scl;						//输出I2C时钟线
	output [8:0] 	seg_led_1;					//输出显示数码管1
	output [8:0] 	seg_led_2;					//输出显示数码管2
	output [15:0] 	row;						//输出16列LED显示数据
	output [7:0] 	col;						//输出8行LED显示数据
	output [7:0]	led;						//输出显示的LED
	inout 			sda;						//I2C数据接口
	inout			one_wire;					//ds18b20数据通信接口
	
	assign led=(ir==0) ? 8'hff:8'h00 ;			//红外对管控制LED
	
	wire [15:0] x_axis;							//读取到的x轴加速度计采集到的数据
	wire [15:0] x_axis_jiaozhun;				//数据校准
	assign x_axis_jiaozhun=x_axis+16'b00000001_11100000;
	
	wire [15:0] z_axis;							//读取到的z轴加速度计采集到的数据
	wire [15:0] y_axis;							//读取到的y轴加速度计采集到的数据
	wire [15:0] x_gyro;							//读取到的x轴重力加速度数据
	wire [15:0] y_gyro;							//读取到的y轴重力加速度数据
	wire [15:0] z_gyro;							//读取到的z轴重力加速度数据
	mpu6050_iic mpu6050_iic_u1(					//例化mpu6050数据通信模块
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
	
	segment_LED segment_LED_u1(					//例化数码管显示模块
		.seg_data_1(num_decade),
		.seg_data_2(num_unit),
		.seg_led_1(seg_led_1),
		.seg_led_2(seg_led_2)
		);
		
	wire [7:0] coordinate;						//坐标实时位置信号
	led_matrix_dot_driver led_matrix_dot_driver_u1(
		.clk(clk),
		.rst(rst),
		.row(row),
		.col(col),
		.x(x),
		.y(y)
		);
	
	wire [4:0] x;								//数据处理后的x轴加速度信号
	wire [4:0] y;								//数据处理后的y轴加速度信号
	coordinate_process coordinate_process_u1(
		.clk(clk),
		.rst(rst),
		.x_axis(x_axis_jiaozhun),
		.y_axis(y_axis),
		.x(x),
		.y(y)
	);

	wire		[15:0]	data_out;		//将子模块的DS18B20采集的初始数据拉取至顶层，传递给其他模块
	ds18b20_interface ds18b20_interface_u1(
		.clk_in(clk),					// system clock
		.rst_n_in(rst),					// system reset, active low
		.one_wire(one_wire),			// ds18b20z one-wire-bus
		.data_out(data_out)				// ds18b20z data_out
		); 
	wire		[3:0]	num_unit;		//拉取子模块处理后用于显示的个位数据
	wire		[3:0]	num_decade;     //拉取子模块处理后用于显示的十位数据
	wire		[3:0]	num_hundred;    //拉取子模块处理后用于显示的百位数据
	wire		[3:0]	num_dec;        //拉取子模块处理后用于显示的小数点后一位	
	wire		[3:0]	num_dec2;       //拉取子模块处理后用于显示的小数点后两位
	wire		[3:0]	num_dec3;       //拉取子模块处理后用于显示的小数点后三位
	wire		[3:0]	num_dec4;	    //拉取子模块处理后用于显示的小数点后四位
										//例化DS18B20的数据处理模块
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


		
		
		
		
		
		
	