module mpu6050_iic(
					clk,
					scl,
					sda,
					rst_n,
					x_axis,
					z_axis,
					y_axis,
					x_gyro,
					y_gyro,
					z_gyro
					);
					
	input 			clk;						//����ʱ��=12M
	input			rst_n;						//���븴λ���͵�ƽ��Ч
	output 			scl;						//I2Cʱ�ӹܽ�
	output 	[15:0] 	x_axis;						//���x����ٶȼƲ�������
	output 	[15:0] 	z_axis;						//���z����ٶȼƲ�������
	output 	[15:0] 	y_axis;						//���y����ٶȼƲ�������
	output 	[15:0] 	x_gyro;						//���z�������ǲ�������		
	output 	[15:0] 	y_gyro;						//���y�������ǲ�������														
	output 	[15:0] 	z_gyro;						//���x�������ǲ�������																
	inout 			sda;						//I2C���ݹܽ�																			

	wire 	[15:0] 	x_axis;
	wire 	[15:0] 	z_axis;
	wire 	[15:0] 	y_axis;
	wire 	[15:0] 	x_gyro;
	wire 	[15:0] 	y_gyro;
	wire 	[15:0] 	z_gyro;

	assign x_axis = {ACC_XH_READ,ACC_XL_READ};
	assign z_axis = {ACC_ZH_READ,ACC_ZL_READ};
	assign y_axis = {ACC_YH_READ,ACC_YL_READ};		
	assign x_gyro = {GYRO_XH_READ,GYRO_XL_READ};
	assign y_gyro = {GYRO_YH_READ,GYRO_YL_READ};
	assign z_gyro = {GYRO_ZH_READ,GYRO_ZL_READ};
	
	reg 	[2:0]	cnt;			//cnt=0��scl�����أ�cnt=1��scl�ߵ�ƽ�м䣻cnt=2��scl�½��أ�cnt=3��scl�͵�ƽ�м�
	reg 	[8:0]	cnt_sum;		//����IIC����Ҫ��ʱ��
	reg 			scl_r;			//������ʱ������

	reg [15:0]cnt_10ms;

	always@(posedge clk or negedge rst_n)
		if(!rst_n) 
			cnt_10ms <= 20'd0;
		else
			cnt_10ms <= cnt_10ms+1'b1;

	always@(posedge clk or negedge rst_n) begin
		if(!rst_n) 
			cnt_sum <= 0;
		else if(cnt_sum ==9'd119)    
			cnt_sum <= 0;
		else
			cnt_sum <= cnt_sum+1'b1;
		end

	always@(posedge clk or negedge rst_n) begin
		if(!rst_n)
			cnt <= 3'd5;    
		else begin
			case(cnt_sum)
				9'd29	: 	cnt<=3'd1;				//�ߵ�ƽ
				9'd59	: 	cnt<=3'd2;				//�½���
				9'd89	: 	cnt<=3'd3;				//�͵�ƽ
				9'd119	: 	cnt<=3'd0;				//������
			default: cnt<=3'd5;
			endcase end
		end

	`define SCL_POS (cnt==3'd0)
	`define SCL_HIG (cnt==3'd1)
	`define SCL_NEG (cnt==3'd2)
	`define SCL_LOW (cnt==3'd3)

	always@(posedge clk or negedge rst_n) begin
		if(!rst_n)
			scl_r <= 1'b0;
		else if(cnt==3'd0)
			scl_r <= 1'b1;
		else if(cnt==3'd2)
			scl_r <= 1'b0;
		end

	assign scl = scl_r;					//sclʱ���ź�

	`define DEVICE_READ 	8'hD1		//Ѱַ������������
	`define DEVICE_WRITE 	8'hD0		//Ѱַ������д����
	`define ACC_XH 			8'h3B		//���ٶ�x���λ��ַ
	`define ACC_XL 			8'h3C		//���ٶ�x���λ��ַ
	`define ACC_YH 			8'h3D		//���ٶ�y���λ��ַ
	`define ACC_YL 			8'h3E		//���ٶ�y���λ��ַ
	`define ACC_ZH 			8'h3F		//���ٶ�z���λ��ַ
	`define ACC_ZL		 	8'h40		//���ٶ�z���λ��ַ
	`define GYRO_XH 		8'h43		//������x���λ��ַ
	`define GYRO_XL 		8'h44		//������x���λ��ַ
	`define GYRO_YH 		8'h45		//������y���λ��ַ
	`define GYRO_YL 		8'h46		//������y���λ��ַ
	`define GYRO_ZH 		8'h47		//������z���λ��ַ
	`define GYRO_ZL 		8'h48		//������z���λ��ַ	

	//�����ǳ�ʼ���Ĵ���
	`define PWR_MGMT_1 		8'h6B
	`define SMPLRT_DIV 		8'h19
	`define CONFIG1			8'h1A
	`define GYRO_CONFIG 	8'h1B
	`define ACC_CONFIG 		8'h1C
	//�����ǳ�ʼ����Ӧ�Ĵ���ֵ����
	`define PWR_MGMT_1_VAL 	8'h00
	`define SMPLRT_DIV_VAL 	8'h07
	`define CONFIG1_VAL 	8'h06
	`define GYRO_CONFIG_VAL 8'h18
	`define ACC_CONFIG_VAL 	8'h01		//2G AccSensitive16384

	parameter IDLE = 4'd0;
	parameter START1 = 4'd1; 
	parameter ADD1 = 4'd2;
	parameter ACK1 = 4'd3;
	parameter ADD2 = 4'd4;
	parameter ACK2 = 4'd5;
	parameter START2 = 4'd6;
	parameter ADD3 =4'd7;
	parameter ACK3 = 4'd8;
	parameter DATA = 4'd9;
	parameter ACK4 = 4'd10;
	parameter STOP1 = 4'd11;
	parameter STOP2 = 4'd12;
	parameter ADD_EXT = 4'd13;
	parameter ACK_EXT = 4'd14;

	reg [3:0]	state;			//״̬�Ĵ���
	reg 		sda_r;			//���
	reg 		sda_link;		//sda_link=1,sda���;sda_link=0,sda����̬
	reg [3:0]	num;
	reg [7:0]	db_r;
	reg [7:0]	ACC_XH_READ;	//�洢���ٶ�X��߰�λ
	reg [7:0]	ACC_XL_READ;	//�洢���ٶ�X��Ͱ�λ
	reg [7:0]	ACC_YH_READ;	//�洢���ٶ�Y��߰�λ
	reg [7:0]	ACC_YL_READ;	//�洢���ٶ�Y��Ͱ�λ
	reg [7:0]	ACC_ZH_READ;	//�洢���ٶ�Z��߰�λ
	reg [7:0]	ACC_ZL_READ;	//�洢���ٶ�Z��Ͱ�λ
	reg [7:0]	GYRO_XH_READ;	//�洢������X��߰�λ
	reg [7:0]	GYRO_XL_READ;	//�洢������X��Ͱ�λ
	reg [7:0]	GYRO_YH_READ;	//�洢������Y��߰�λ
	reg [7:0]	GYRO_YL_READ;	//�洢������Y��Ͱ�λ
	reg [7:0]	GYRO_ZH_READ;	//�洢������Z��߰�λ
	reg [7:0]	GYRO_ZL_READ;	//�洢������Z��Ͱ�λ
	reg [4:0]	times;			//��¼�ѳ�ʼ�����õļĴ�������

	always@(posedge clk or negedge rst_n) begin
		if(!rst_n) begin
			state <= IDLE;
			sda_r <= 1'b1;//����������
			sda_link <= 1'b0;//����̬
			num <= 4'd0;
			//��ʼ���Ĵ���
			ACC_XH_READ <= 8'h00;
			ACC_XL_READ <= 8'h00;
			ACC_YH_READ <= 8'h00;
			ACC_YL_READ <= 8'h00;
			ACC_ZH_READ <= 8'h00;
			ACC_ZL_READ <= 8'h00;
			GYRO_XH_READ <= 8'h00;
			GYRO_XL_READ <= 8'h00;
			GYRO_YH_READ <= 8'h00;
			GYRO_YL_READ <= 8'h00;
			GYRO_ZH_READ <= 8'h00;
			GYRO_ZL_READ <= 8'h00;
			times <= 5'b0; end
		else
			case(state)
				IDLE: begin
						times <= times+1'b1;
						sda_link <= 1'b1;					//sdaΪ���
						sda_r <= 1'b1;						//����sda
						db_r <= `DEVICE_WRITE;				//��ӻ�д�����ݵ�ַ
						state <= START1; end
				START1:begin								//IIC start
						if(`SCL_HIG) begin					//sclΪ�ߵ�ƽ
							sda_link <= 1'b1;				//sda���
							sda_r <= 1'b0;					//����sda������start�ź�
							state <= ADD1;
							num <= 4'd0; end
						else
							state <= START1;
						end
				ADD1: begin									//����д��
						if(`SCL_LOW) begin					//sclΪ�͵�ƽ
							if(num == 4'd8)	begin			//��8λȫ�����	
								num <= 4'd0;				//��������
								sda_r <= 1'b1;
								sda_link <= 1'b0;			//sda����̬
								state <= ACK1; end
							else begin
								state <= ADD1;
								num <= num+1'b1;
								sda_r <= db_r[4'd7-num];end	//��λ���
							end
						else
							state <= ADD1;
					  end
				ACK1: begin//Ӧ��
						if(`SCL_NEG)
					begin
						state <= ADD2;
						case(times)//ѡ����һ��д��Ĵ�����ַ
							5'd1: db_r <= `PWR_MGMT_1;
							5'd2: db_r <= `SMPLRT_DIV;
							5'd3: db_r <= `CONFIG1;
							5'd4: db_r <= `GYRO_CONFIG;
							5'd5: db_r <= `ACC_CONFIG;
							5'd6: db_r <= `ACC_XH;
							5'd7: db_r <= `ACC_XL;
							5'd8: db_r <= `ACC_YH;
							5'd9: db_r <= `ACC_YL;
							5'd10: db_r <= `ACC_ZH;
							5'd11: db_r <= `ACC_ZL;
							5'd12: db_r <= `GYRO_XH;
							5'd13: db_r <= `GYRO_XL;
							5'd14: db_r <= `GYRO_YH;
							5'd15: db_r <= `GYRO_YL;
							5'd16: db_r <= `GYRO_ZH;
							5'd17: db_r <= `GYRO_ZL;
							default: begin
								db_r <= `PWR_MGMT_1;
								times <= 5'd1;
							end
						endcase
					end
					else
						state <= ACK1;//�ȴ���Ӧ
				end
		ADD2: begin
					if(`SCL_LOW)//sclΪ��
					begin
						if(num == 4'd8)
						begin
							num <= 4'd0;
							sda_r <= 1'b1;
							sda_link <= 1'b0;
							state <= ACK2;
						end
						else
						begin
							sda_link <= 1'b1;
							state <= ADD2;
							num <= num+1'b1;
							sda_r <= db_r[4'd7-num];//��λ�ͼĴ�����ַ
						end
					end
					else
						state <= ADD2;
				end
		ACK2: begin//Ӧ��
					if(`SCL_NEG)
					begin
						case(times)//��Ӧ�Ĵ������趨ֵ
							3'd1: db_r <= `PWR_MGMT_1_VAL;
							3'd2: db_r <= `SMPLRT_DIV_VAL;
							3'd3: db_r <= `CONFIG1_VAL;
							3'd4: db_r <= `GYRO_CONFIG_VAL;
							3'd5: db_r <= `ACC_CONFIG_VAL;
							3'd6: db_r <= `DEVICE_READ;
							default: db_r <= `DEVICE_READ;
						endcase
						if(times >= 5'd6)
							state <= START2;
						else
							state <= ADD_EXT;
					end
					else
						state <= ACK2;//�ȴ���Ӧ
				end
		ADD_EXT:begin//��ʼ��һЩ�趨�Ĵ���
					if(`SCL_LOW)
					begin
						if(num == 4'd8)
						begin
							num <= 4'd0;
							sda_r <= 1'b1;
							sda_link <= 1'b0;//sda����̬
							state <= ACK_EXT;
						end
						else
						begin
							sda_link <= 1'b1;
							state <= ADD_EXT;
							num <= num+1'b1;
							sda_r <= db_r[4'd7-num];//��λ�趨�Ĵ���������ʽ
						end
					end
					else
						state <= ADD_EXT;
				end
		ACK_EXT:begin
					if(`SCL_NEG)
					begin
						sda_r <= 1'b1;//����sda
						state <= STOP1;
					end
					else
						state <= ACK_EXT;//�ȴ���Ӧ
				end
		START2:begin
					if(`SCL_LOW)//sclΪ��
					begin
						sda_link <= 1'b1;//sdaΪ���
						sda_r <= 1'b1;//����sda
						state <= START2;
					end
					else if(`SCL_HIG)//sclΪ��
					begin
						sda_r <= 1'b0;//����sda������start�ź�
						state <= ADD3;
					end
					else 
						state <= START2;
				end
		ADD3: begin
					if(`SCL_LOW)//sclλ��
					begin
						if(num == 4'd8)
						begin
							num <= 4'd0;
							sda_r <= 1'b1;//����sda
							sda_link <= 1'b0;//scl����̬
							state <= ACK3;
						end
						else
						begin
							num <= num+1'b1;
							sda_r <= db_r[4'd7-num];//��λд���ȡ�Ĵ�����ַ
							state <= ADD3;
						end
					end
					else state <= ADD3;
				end
		ACK3: begin
					if(`SCL_NEG)
					begin
						state <= DATA;
						sda_link <= 1'b0;//sda����̬
					end
					else
						state <= ACK3;//�ȴ���Ӧ
				end
		DATA: begin
					if(num <= 4'd7)
					begin
						state <= DATA;
						if(`SCL_HIG)
						begin
							num <= num+1'b1;
							case(times)
								5'd6: ACC_XH_READ[4'd7-num] <= sda;
								5'd7: ACC_XL_READ[4'd7-num] <= sda;
								5'd8: ACC_YH_READ[4'd7-num] <= sda;
								5'd9: ACC_YL_READ[4'd7-num] <= sda;
								5'd10: ACC_ZH_READ[4'd7-num] <= sda;
								5'd11: ACC_ZL_READ[4'd7-num] <= sda;
								5'd12: GYRO_XH_READ[4'd7-num] <= sda;
								5'd13: GYRO_XL_READ[4'd7-num] <= sda;
								5'd14: GYRO_YH_READ[4'd7-num] <= sda;
								5'd15: GYRO_YL_READ[4'd7-num] <= sda;
								5'd16: GYRO_ZH_READ[4'd7-num] <= sda;
								5'd17: GYRO_ZL_READ[4'd7-num] <= sda;
								default: ;//��ʱδ���ǣ�����Ӵ������ϵͳ�ȶ���
							endcase
						end
					end
					else if((`SCL_LOW)&&(num == 4'd8))
					begin
						sda_link <= 1'b1;//sdaΪ���
						num <= 4'd0;//��������
						state <= ACK4;
					end
					else
						state <= DATA;
				end
		ACK4: begin
					if(times == 5'd17)
						times <= 5'd0;
					if(`SCL_NEG)
					begin
						sda_r <= 1'b1;//����sda
						state <= STOP1;
					end
					else
						state <= ACK4;//�ȴ���Ӧ
				end
		STOP1:begin
					if(`SCL_LOW)//sclΪ��
					begin
						sda_link <= 1'b1;//sda���
						sda_r <= 1'b0;//����sda
						state <= STOP1;
					end
					else if(`SCL_HIG)//sdaΪ��
					begin
						sda_r <= 1'b1;//����sda,����stop�ź�
						state <= STOP2;
					end
					else
						state <= STOP1;
				end
		STOP2:begin
					if(`SCL_LOW)
					sda_r <= 1'b1;
					else if(cnt_10ms == 20'h7777)//Լ10ms��һ������
						state <= IDLE;
					else
						state <= STOP2;
				end
		default:state <= IDLE;
		endcase    
end

assign sda = sda_link?sda_r:1'bz;

endmodule