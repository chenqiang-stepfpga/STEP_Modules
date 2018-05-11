// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Module: cap1188_i2c
// 
// Author: Step
// 
// Description: cap1188_i2c
// 
// Web: www.stepfpga.com
// 
// --------------------------------------------------------------------
// Code Revision History :
// --------------------------------------------------------------------
// Version: |Mod. Date:   |Changes Made:
// V1.0     |2017/06/05   |Initial ver
// --------------------------------------------------------------------
`include "define_reg.v"

module cap1188_i2c
(
	input				clk_in,
	input				rst_n_in,
	output				scl_out,
	inout				sda_out,
	output		[7:0]	sensor_data1,sensor_data2
);
	
	parameter	CNT_NUM	=	60;
	
	localparam	IDLE	=	4'd0;
	localparam	MAIN	=	4'd1;
	localparam	INIT	=	4'd2;
	localparam	WORK	=	4'd3;
	localparam	START	=	4'd4;
	localparam	WRITE	=	4'd5;
	localparam	READ	=	4'd6;
	localparam	ACK_R	=	4'd7;
	localparam	ACK_T	=	4'd8;
	localparam	STOP	=	4'd9;
		
	//cap1188 初始化寄存器及对应初始化数据
	reg	[7:0]	init_reg [2:0];
	reg	[7:0]	init_dat [2:0];
	initial begin
		init_reg[0] = `MAIN_CTRL;		init_dat[0] = `MAIN_CTRL_VALUE; 
		init_reg[1] = `SEN_LED_LINK;	init_dat[1] = `SEN_LED_LINK_VALUE;
	end
	
	//需要读的cap1188 状态寄存器
	reg	[7:0]	work_reg [1:0];
	initial begin
		work_reg[0] = `SENIN_STATUS;	//Sensor Input Status，有按键按下时该寄存器对应位会被置1，需要清除Main Control的中断位才能清零
		work_reg[1] = `GENERAL_STATUS;	//General Status，暂时没用，具体功能可以阅读cap1188的数据手册
	end
	
	reg		[7:0]	cap_dat1[1:0];
	reg		[7:0]	cap_dat2[1:0];
	assign	sensor_data1 = cap_dat1[0];
	assign	sensor_data2 = cap_dat2[0];

	
	//分频产生I2C通信时序节拍
	//generate clk_200khz clock
	reg					clk_200khz;
	reg		[5:0]		cnt_200khz;
	always@(posedge clk_in or negedge rst_n_in) begin
		if(!rst_n_in) begin
			cnt_200khz <= 5'd0;
			clk_200khz <= 1'b0;
		end else if(cnt_200khz >= CNT_NUM-1) begin
			cnt_200khz <= 5'd0;
			clk_200khz <= ~clk_200khz;
		end else begin
			cnt_200khz <= cnt_200khz + 1'b1;
		end
	end
	

	reg					scl_out_r;
	reg					sda_out_r;
	reg		[1:0]		cnt_main;
	reg		[7:0]		data_wr;
	reg		[4:0]		cnt_init;
	reg		[2:0]		init_num;
	reg		[4:0]		cnt_work;
	reg		[3:0]		work_num;
	reg		[1:0]		cnt_start;
	reg		[1:0]		cnt_write;
	reg		[2:0]		write_num;
	reg		[1:0]		cnt_read;
	reg		[2:0]		read_num;
	reg		[7:0]		work_dat;
	reg		[1:0]		cnt_ack_r;
	reg		[1:0]		cnt_ack_t;
	reg		[1:0]		cnt_stop;
	reg		[3:0] 		state = IDLE;
	reg		[3:0] 		state_back = IDLE;
	
	always@(posedge clk_200khz or negedge rst_n_in) begin
		if(!rst_n_in) begin
			scl_out_r <= 1'd1;
			sda_out_r <= 1'd1;
			cnt_main <= 1'd0;
			cnt_init <= 1'd0;
			init_num <= 1'd0;
			cnt_work <= 1'd0;
			work_num <= 1'd0;
			cnt_start <= 2'd0;
			cnt_write <= 1'd0;
			write_num <= 3'd7;
			cnt_read <= 1'd0;
			read_num <= 3'd7;
			cnt_ack_r <= 2'd0;
			cnt_ack_t <= 2'd0;
			cnt_stop <= 2'd0;
			state <= IDLE;
			state_back <= IDLE;
		end else begin
			case(state)
				IDLE:begin	//idle状态需要初始化所有状态和寄存器
						scl_out_r <= 1'd1;
						sda_out_r <= 1'd1;
						cnt_main <= 1'd0;
						cnt_init <= 1'd0;
						init_num <= 1'd0;
						cnt_work <= 1'd0;
						work_num <= 1'd0;
						cnt_start <= 2'd0;
						cnt_write <= 1'd0;
						write_num <= 3'd7;
						cnt_read <= 1'd0;
						read_num <= 3'd7;
						cnt_ack_r <= 2'd0;
						cnt_ack_t <= 2'd0;
						cnt_stop <= 2'd0;
						state <= MAIN;
						state_back <= MAIN;
					end
				MAIN:begin	//MAIN状态来觉得整个工作流程:IDLE--MAIN--INIT--WORK--IDLE
						if(cnt_main >= 2'd2) cnt_main <= 1'b0;
						else cnt_main <= cnt_main + 1'b1;
						case(cnt_main)
							2'd0:	begin state <= INIT; end
							2'd1:	begin state <= WORK; end
							2'd2:	begin state <= IDLE; end
							default: state <= IDLE;
						endcase
					end
				INIT:begin
						if(init_num >= 3'd2) begin
							if(cnt_init >= 5'd16) begin cnt_init <= 1'b0; init_num <= 1'b0; end
							else cnt_init <= cnt_init + 1'b1;
						end else begin
							if(cnt_init >= 5'd15) begin cnt_init <= 1'b0; init_num <= init_num + 1'b1; end
							else cnt_init <= cnt_init + 1'b1;
						end
						state_back <= INIT;
						case(cnt_init)
							5'd0:	begin state 	<= 	START; 	end
							5'd1:	begin data_wr 	<= 	`DEVICE1_WRITE; state <= WRITE; 	end
							5'd2:	begin state 	<= 	ACK_R; 	end
							5'd3:	begin data_wr 	<= 	init_reg[init_num]; state <= WRITE; end
							5'd4:	begin state 	<= 	ACK_R; 	end
							5'd5:	begin data_wr 	<= 	init_dat[init_num]; state <= WRITE; end
							5'd6:	begin state 	<= 	ACK_R; 	end
							5'd7:	begin state 	<= 	STOP; 	end
							5'd8:	begin state 	<= 	START;  end
							5'd9:	begin data_wr 	<= 	`DEVICE2_WRITE; state <= WRITE; 	end
							5'd10:	begin state 	<= 	ACK_R;  end
							5'd11:	begin data_wr	<= 	init_reg[init_num]; state <= WRITE; end
							5'd12:	begin state 	<= 	ACK_R;  end
							5'd13:	begin data_wr 	<= 	init_dat[init_num]; state <= WRITE; end
							5'd14:	begin state 	<= 	ACK_R;  end
							5'd15:	begin state 	<= 	STOP;   end							
							5'd16:	begin state 	<= 	MAIN;   end
							default: state <= IDLE;
						endcase
					end
				WORK:begin
						if(cnt_work >= 5'd24) begin
							cnt_work <= 1'b0;
							if(work_num >= 4'd1) work_num <= 1'b0;
							else work_num <= work_num + 1'b1;
						end else begin
							cnt_work <= cnt_work + 1'b1;
						end
						state_back <= WORK;
						case(cnt_work)
							5'd0:	begin state <= START; end
							5'd1:	begin data_wr <= `DEVICE1_WRITE; state <= WRITE; end
							5'd2:	begin state <= ACK_R; end
							5'd3:	begin data_wr <= work_reg[work_num]; state <= WRITE; end
							5'd4:	begin state <= ACK_R; end
							5'd5:	begin state <= STOP; end
							5'd6:	begin state <= START; end
							5'd7:	begin data_wr <= `DEVICE1_READ; state <= WRITE; end
							5'd8:	begin state <= ACK_R; end
							5'd9:	begin state <= READ; end
							5'd10:	begin cap_dat1[work_num] <= work_dat; state <= ACK_T; end
							5'd11:	begin state <= STOP; end
							5'd12:	begin state <= START; end
							5'd13:	begin data_wr <= `DEVICE2_WRITE; state <= WRITE; end
							5'd14:	begin state <= ACK_R; end
							5'd15:	begin data_wr <= work_reg[work_num]; state <= WRITE; end
							5'd16:	begin state <= ACK_R; end
							5'd17:	begin state <= STOP; end
							5'd18:	begin state <= START; end
							5'd19:	begin data_wr <= `DEVICE2_READ; state <= WRITE; end
							5'd20:	begin state <= ACK_R; end
							5'd21:	begin state <= READ; end
							5'd22:	begin cap_dat2[work_num] <= work_dat; state <= ACK_T; end
							5'd23:	begin state <= STOP; end
														
							5'd24:	begin state <= MAIN; end
							default: state <= IDLE;
						endcase
					end
				
				START:begin
						if(cnt_start >= 2'd2) cnt_start <= 1'b0;
						else cnt_start <= cnt_start + 1'b1;
						case(cnt_start)
							2'd0:	begin sda_out_r <= 1'b1; scl_out_r <= 1'b1; end
							2'd1:	begin sda_out_r <= 1'b0; end
							2'd2:	begin scl_out_r <= 1'b0; state <= state_back; end
							default: state <= IDLE;
						endcase
					end
				WRITE:begin
						if(cnt_write >= 2'd3) begin
							cnt_write <= 1'b0;
							if(write_num == 3'd0) begin write_num <= 3'd7; state <= state_back; end
							else write_num <= write_num - 1'b1;
						end else begin
							cnt_write <= cnt_write + 1'b1;
						end
						case(cnt_write)
							//transfer data with i2c
							2'd0:	begin sda_out_r <= data_wr[write_num]; end
							2'd1:	begin scl_out_r <= 1'b1; end
							2'd2:	begin scl_out_r <= 1'b1; end
							2'd3:	begin scl_out_r <= 1'b0; end
							default: state <= IDLE;
						endcase
					end
				READ:begin
						if(cnt_read >= 2'd3) begin
							cnt_read <= 1'b0;
							if(read_num == 3'd0) begin 
								read_num <= 3'd7; 
								state <= state_back; 
							end else 
								read_num <= read_num - 1'b1;
						end else begin
							cnt_read <= cnt_read + 1'b1;
						end
						sda_out_r <= 1'bz;
						case(cnt_read)
							//receive data with i2c
							5'd0:	begin scl_out_r <= 1'b1; end
							5'd1:	begin work_dat[read_num] <= sda_out; end
							5'd2:	begin scl_out_r <= 1'b0; end
							5'd3:	begin scl_out_r <= 1'b0; end
							default: state <= IDLE;
						endcase
					end
				ACK_R:begin
						if(cnt_ack_r >= 2'd3) cnt_ack_r <= 1'b0;
						else cnt_ack_r <= cnt_ack_r + 1'b1;
						case(cnt_ack_r)
							//receive ack
							2'd0:	begin sda_out_r <= 1'bz; end
							2'd1:	begin scl_out_r <= 1'b1; end
							2'd2:	begin if(sda_out) state <= IDLE; else state <= state; end
							2'd3:	begin scl_out_r <= 1'b0; state <= state_back; end
							default: state <= IDLE;
						endcase
					end
				ACK_T:begin
						if(cnt_ack_t >= 2'd2) cnt_ack_t <= 1'b0;
						else cnt_ack_t <= cnt_ack_t + 1'b1;
						case(cnt_ack_t)
							//transfer ack
							2'd0:	begin sda_out_r <= 1'b1; end
							2'd1:	begin scl_out_r <= 1'b1; end
							2'd2:	begin scl_out_r <= 1'b0; state <= state_back; end
							default: state <= IDLE;
						endcase
					end
				STOP:begin
						if(cnt_stop >= 2'd2) cnt_stop <= 1'b0;
						else cnt_stop <= cnt_stop + 1'b1;
						case(cnt_stop)
							2'd0:	begin sda_out_r <= 1'b0; end
							2'd1:	begin scl_out_r <= 1'b1; end
							2'd2:	begin sda_out_r <= 1'b1; state <= state_back; end
							default: state <= IDLE;
						endcase
					end
			endcase
		end
	end
	
	assign	scl_out = scl_out_r;
	assign	sda_out = sda_out_r;
	
endmodule

