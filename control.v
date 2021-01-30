`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:50 01/01/2018 
// Design Name: 
// Module Name:    control 
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
module control(
    input [31:0] instr_D,
	 output reg bltz,
	 output reg blez,
	 output reg bgez,
	 output reg bgtz,
	 output reg bne,
    output reg beq,
	 output reg jr,
	 output reg extop,
	 output reg j,
	 output reg jal_D,
	 output reg bgezal_D,
	 output reg jalr_D,
	 output reg bltzal_D,
	 output reg movz_D
    );
	 always @ * begin
		case(instr_D[31:26])
		6'b000000:begin
			if(instr_D[5:0]==6'b100001)begin		//addu
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			
			else if(instr_D[5:0]==6'b001010)begin
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 1;
			end
			
			else if(instr_D[5:0]==6'b000011)begin	//sra
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			
			else if(instr_D[5:0]==6'b000000)begin	//sll
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			
			else if(instr_D[5:0]==6'b000100)begin	//sllv
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			
			else if(instr_D[5:0]==6'b000010)begin	//srl
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			
			else if(instr_D[5:0]==6'b000110)begin	//srlv
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			
			else if(instr_D[5:0]==6'b101010)begin	//slt
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			
			else if(instr_D[5:0]==6'b100100)begin	//and
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			
			else if(instr_D[5:0]==6'b100110)begin	//xor
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			
			else if(instr_D[5:0]==6'b100111)begin	//nor
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			
			else if(instr_D[5:0]==6'b100000)begin	//add
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			else if(instr_D[5:0]==6'b100011)begin		//subu
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			else if(instr_D[5:0]==6'b100010)begin		//sub
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			else if(instr_D[5:0]==6'b100101)begin		//or
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			else if(instr_D[5:0]==6'b001000)begin	//jr	
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 1;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			else if(instr_D[5:0]==6'b001001)begin	//jalr
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 1;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			else begin
				bltz = 0;
				blez = 0;
				bgez = 0;
				bgtz = 0;
				bne = 0;
				beq = 0;
				extop = 0;
				jr = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
		end
		6'b000001:begin	
			if(instr_D[20:16]==5'b00001)begin
				bltz = 0;
				bgez = 1;
				blez = 0;
				bgtz = 0;
				bne = 0;
				extop = 1;
				jr = 0;
				beq = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			else if(instr_D[20:16]==5'b00000)begin
				bltz = 1;
				bgez = 0;
				blez = 0;
				bgtz = 0;
				bne = 0;
				extop = 1;
				jr = 0;
				beq = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 0;
				movz_D = 0;
			end
			else if(instr_D[20:16]==5'b10001)begin
				bltz = 0;
				bgez = 0;
				blez = 0;
				bgtz = 0;
				bne = 0;
				extop = 1;
				jr = 0;
				beq = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 1;
				bltzal_D = 0;
				movz_D = 0;
			end
			else if(instr_D[20:16]==5'b10000)begin
				bltz = 0;
				bgez = 0;
				blez = 0;
				bgtz = 0;
				bne = 0;
				extop = 1;
				jr = 0;
				beq = 0;
				j = 0;
				jal_D = 0;
				jalr_D = 0;
				bgezal_D = 0;
				bltzal_D = 1;
				movz_D = 0;
			end
		end
		
		6'b001011:begin	//sltiu
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 1;
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		
		6'b001010:begin	//slti
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 1;
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		
		6'b001100:begin	//xori
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 0;
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		
		6'b001110:begin	//xori
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 0;
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		
		6'b001101:begin	//ori
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 0;
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		6'b001111:begin	//lui
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 0;
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		6'b100011:begin	//lw
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 1;
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		6'b100000:begin	//lb
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 1;
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		
		6'b101000:begin	//lb
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 1;
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		
		6'b101011:begin	//sw
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 1;
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		6'b000100:begin	//beq
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 1;
			extop = 1;/////（原来过弱强测是0）
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		6'b000101:begin	//bne
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 1;
			beq = 0;
			extop = 1;/////（原来过弱强测是0）
			jr = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		6'b000011:begin	//jal
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			beq = 0;
			extop = 0;
			jr = 0;
			j = 0;
			jal_D = 1;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		6'b000010:begin	//j
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			extop = 0;
			jr = 0;
			beq = 0;
			j = 1;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		6'b001000:begin	//addi
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			extop = 1;
			jr = 0;
			beq = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		
		6'b000111:begin	
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 1;
			bne = 0;
			extop = 1;
			jr = 0;
			beq = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		6'b000110:begin	
			bltz = 0;
			blez = 1;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			extop = 1;
			jr = 0;
			beq = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		default:begin
			bltz = 0;
			blez = 0;
			bgez = 0;
			bgtz = 0;
			bne = 0;
			extop = 0;
			jr = 0;
			beq = 0;
			j = 0;
			jal_D = 0;
			jalr_D = 0;
			bgezal_D = 0;
			bltzal_D = 0;
			movz_D = 0;
		end
		endcase
	 end
	 
//assign jr=(op==6'b0&&func==6'b001000);

endmodule
