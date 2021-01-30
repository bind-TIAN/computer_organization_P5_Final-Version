`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:41 01/01/2018 
// Design Name: 
// Module Name:    yimaqi_W 
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
module yimaqi_W( 
    input [31:0] instr_W,
    output reg memtoreg_W,
	 output reg regwrite_W,
	 output reg jal_W,
	 output reg jalr_W,
	 output reg bgezal_W,
	 output reg lb_memtoreg_W,
	 output reg bltzal_W,
	 output reg movz_W
	 //output reg jr
    );
	 always @ * begin
		case(instr_W[31:26])
			6'b000000:begin
				if(instr_W[5:0]==6'b100001)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				
				else if(instr_W[5:0]==6'b001010)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 1;
				end
				
				else if(instr_W[5:0]==6'b000011)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				
				else if(instr_W[5:0]==6'b000000)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				
				else if(instr_W[5:0]==6'b000010)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				
				else if(instr_W[5:0]==6'b000110)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				
				else if(instr_W[5:0]==6'b101010)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				
				else if(instr_W[5:0]==6'b000100)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				
				else if(instr_W[5:0]==6'b100100)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				
				else if(instr_W[5:0]==6'b100110)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				
				else if(instr_W[5:0]==6'b100111)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				
				else if(instr_W[5:0]==6'b100000)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				else if(instr_W[5:0]==6'b100011)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				else if(instr_W[5:0]==6'b100010)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				else if(instr_W[5:0]==6'b100101)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				else if(instr_W[5:0]==6'b001000)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				else if(instr_W[5:0]==6'b001001)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 1;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				else begin
					memtoreg_W = 0;
					regwrite_W = 0;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
			end
			6'b000001:begin
				if(instr_W[20:16]==5'b10001)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 1;
					lb_memtoreg_W = 0;
					bltzal_W = 0;
					movz_W = 0;
				end
				else if(instr_W[20:16]==5'b10000)begin
					memtoreg_W = 0;
					regwrite_W = 1;
					jal_W = 0;
					jalr_W = 0;
					bgezal_W = 0;
					lb_memtoreg_W = 0;
					bltzal_W = 1;
					movz_W = 0;
				end
			end
			6'b001011:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			
			6'b001010:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			
			6'b001100:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			
			6'b001110:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			
			6'b001101:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			6'b001111:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			6'b100011:begin
				memtoreg_W = 1;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			6'b101011:begin
				memtoreg_W = 0;
				regwrite_W = 0;
				jal_W = 0;//////////
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			6'b000011:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 1;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			6'b001000:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			
			6'b100000:begin
				memtoreg_W = 0;
				regwrite_W = 1;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 1;
				bltzal_W = 0;
				movz_W = 0;
			end
			
			6'b101000:begin
				memtoreg_W = 0;
				regwrite_W = 0;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
			
			default: begin
				memtoreg_W = 0;
				regwrite_W = 0;
				jal_W = 0;
				jalr_W = 0;
				bgezal_W = 0;
				lb_memtoreg_W = 0;
				bltzal_W = 0;
				movz_W = 0;
			end
		endcase
	 end


endmodule
