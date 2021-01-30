`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:21:32 01/01/2018 
// Design Name: 
// Module Name:    yimaqi_E 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module yimaqi_E(
    input [31:0] instr_E,
    output reg regdst_E,
    output reg alusrc_E,
    output reg [3:0] aluop,
	 output reg regwrite_E,
	 output reg memtoreg_E,
	 output reg jal_E,
	 output reg jalr_E,
	 output reg bgezal_E,
	 output reg lb_memtoreg_E,
	 output reg bltzal_E,
	 output reg movz_E
	 //output reg jr
	 //output reg memwrite_E
	 
	 
    );
	 always @ * begin
		case(instr_E[31:26])
		6'b000000:begin
			if(instr_E[5:0]==6'b100001)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 0;//////////////addu
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			
			else if(instr_E[5:0]==6'b001010)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 15;
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 1;
			end
			
			else if(instr_E[5:0]==6'b000011)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 14;
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
			end
			
			else if(instr_E[5:0]==6'b000000)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 8;//////////////sll
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
			end
			
			else if(instr_E[5:0]==6'b000100)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 9;//////////////sllv
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
			end
			
			else if(instr_E[5:0]==6'b000010)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 10;//////////////srl
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
			end
			
			else if(instr_E[5:0]==6'b000110)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 11;//////////////srlv
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
			end
			
			else if(instr_E[5:0]==6'b101010)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 12;//////////////slt
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
			end
			
			else if(instr_E[5:0]==6'b100100)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 2;//////////////and
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
			end
			
			else if(instr_E[5:0]==6'b100110)begin	//xor
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 6;//////////////xor
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
			end
			
			else if(instr_E[5:0]==6'b100111)begin	//nor
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 7;//////////////nor
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
			end
			
			else if(instr_E[5:0]==6'b100000)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 0;//////////////add
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b100011)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 1;/////////////subu
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
				//jr = 0;			

				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b100010)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 1;/////////////sub
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
				//jr = 0;			

				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b100101)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 3;//////////////or
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else if(instr_E[5:0]==6'b001001)begin
				regdst_E = 1;
				alusrc_E = 0;
				aluop = 0;//////////////jalr
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 1;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
			else begin
				regdst_E = 0;
				alusrc_E = 0;
				aluop = 0;
				regwrite_E = 0;
				memtoreg_E = 0;
				jal_E = 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
				//jr = 0;
				//memwrite_E = 0;
			end
		end
		
		6'b000001:begin
			if(instr_E[20:16]==5'b10001)begin
				regdst_E = 0;
				alusrc_E = 0;
				aluop = 0;//////////bgez|bgtz（在用不到aluop的情况下是否将aluop置为0，因为这样的话相当于进行了加法运算）
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E= 0;
				jalr_E = 0;
				bgezal_E = 1;
				lb_memtoreg_E = 0;
				bltzal_E = 0;
				movz_E = 0;
			end
			else if(instr_E[20:16]==5'b10000)begin
				regdst_E = 0;
				alusrc_E = 0;
				aluop = 0;
				regwrite_E = 1;
				memtoreg_E = 0;
				jal_E= 0;
				jalr_E = 0;
				bgezal_E = 0;
				lb_memtoreg_E = 0;
				bltzal_E = 1;
				movz_E = 0;
			end
		end
		
		6'b001011:begin	//sltiu
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 13;//////////slti
			regwrite_E = 1;
			memtoreg_E = 0;
			jal_E = 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
		end
		
		6'b001010:begin	//slti
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 12;//////////slti
			regwrite_E = 1;
			memtoreg_E = 0;
			jal_E = 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
		end
		
		6'b001100:begin	//andi
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 2;//////////andi
			regwrite_E = 1;
			memtoreg_E = 0;
			jal_E = 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
		end
		
		6'b001110:begin	//xori
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 6;//////////xori
			regwrite_E = 1;
			memtoreg_E = 0;
			jal_E = 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
		end
		
		6'b001101:begin
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 3;//////////ori
			regwrite_E = 1;
			memtoreg_E = 0;
			jal_E = 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
				//memwrite_E = 0;
		end
		6'b001111:begin
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 5;//////////lui
			regwrite_E = 1;
			memtoreg_E = 0;
			jal_E = 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
				//memwrite_E = 0;
		end
		6'b100011:begin
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 0;//////////lw
			regwrite_E = 1;
			memtoreg_E = 1;
			jal_E = 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
				//memwrite_E = 0;
		end
		6'b101011:begin
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 0;//////////sw
			regwrite_E = 0;
			memtoreg_E = 0;
			jal_E = 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
				//memwrite_E = 1;
		end
		6'b000011:begin
			regdst_E = 0;
			alusrc_E = 0;
			aluop = 0;//////////jal
			regwrite_E = 1;
			memtoreg_E = 0;
			jal_E = 1;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
		end
		6'b001000:begin
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 0;//////////addi（在用不到aluop的情况下是否将aluop置为0，因为这样的话相当于进行了加法运算）
			regwrite_E = 1;
			memtoreg_E = 0;
			jal_E = 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
		end
		
		6'b100000:begin
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 0;
			regwrite_E = 1;
			memtoreg_E = 0;
			jal_E= 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 1;
			bltzal_E = 0;
			movz_E = 0;
		end
		
		6'b101000:begin
			regdst_E = 0;
			alusrc_E = 1;
			aluop = 0;
			regwrite_E = 0;
			memtoreg_E = 0;
			jal_E= 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
		end
		
		default:begin
			regdst_E = 0;
			alusrc_E = 0;
			aluop = 0;//////////xx
			regwrite_E = 0;
			memtoreg_E = 0;
			jal_E = 0;
			jalr_E = 0;
			bgezal_E = 0;
			lb_memtoreg_E = 0;
			bltzal_E = 0;
			movz_E = 0;
				//memwrite_E = 0;
		end
		endcase
	 end


endmodule
