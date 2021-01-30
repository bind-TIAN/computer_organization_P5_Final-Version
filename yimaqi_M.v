`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:02 01/01/2018 
// Design Name: 
// Module Name:    yimaqi_M 
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
module yimaqi_M(
    input [31:0] instr_E,
	 output reg jal_M,
	 output reg jalr_M,
	 output reg bgezal_M,
    output reg memwrite_M,
	 output reg regwrite_M,
	 output reg memtoreg_M,
	 output reg lb_memtoreg_M,
	 output reg bltzal_M,
	 output reg sb
    );
	 always @ * begin
		case(instr_E[31:26])
		6'b000000:begin
			if(instr_E[5:0]==6'b100001)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b001010)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b000011)begin	//sra
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b000000)begin	//sll
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b000100)begin	//sllv
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b000010)begin	//srl
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b000110)begin	//srlv
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b101010)begin	//srlv
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b100100)begin	//and
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b100110)begin	//xor
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b100111)begin	//nor
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			
			else if(instr_E[5:0]==6'b100000)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			else if(instr_E[5:0]==6'b100011)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			else if(instr_E[5:0]==6'b100010)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			else if(instr_E[5:0]==6'b100101)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			else if(instr_E[5:0]==6'b001001)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 1;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			else begin
				memwrite_M = 0;
				regwrite_M = 0;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
		end
		
		6'b000001:begin
			if(instr_E[20:16]==5'b10001)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 1;
				lb_memtoreg_M = 0;
				bltzal_M = 0;
				sb = 0;
			end
			else if(instr_E[20:16]==5'b10000)begin
				memwrite_M = 0;
				regwrite_M = 1;
				memtoreg_M = 0;
				jal_M = 0;
				jalr_M = 0;
				bgezal_M = 0;
				lb_memtoreg_M = 0;
				bltzal_M = 1;
				sb = 0;
			end
		end
		
		6'b001011:begin	//slti
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		
		6'b001010:begin	//slti
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		
		6'b001100:begin	//andi
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		
		6'b001110:begin	//xori
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		
		6'b001101:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		6'b001111:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		6'b100011:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 1;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		6'b101011:begin
			memwrite_M = 1;
			regwrite_M = 0;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		6'b001000:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		6'b000011:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 1;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		

		6'b100000:begin
			memwrite_M = 0;
			regwrite_M = 1;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 1;
			bltzal_M = 0;
			sb = 0;
		end

		6'b101000:begin
			memwrite_M = 1;
			regwrite_M = 0;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 1;
		end

		default:begin
			memwrite_M = 0;
			regwrite_M = 0;
			memtoreg_M = 0;
			jal_M = 0;
			jalr_M = 0;
			bgezal_M = 0;
			lb_memtoreg_M = 0;
			bltzal_M = 0;
			sb = 0;
		end
		endcase
	 end
 	 


endmodule
