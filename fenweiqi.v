`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:23:57 01/01/2018 
// Design Name: 
// Module Name:    fenweiqi 
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
module fenweiqi(
    input [31:0] instr,
    output [5:0] op,
    output [5:0] func,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd,
    output [15:0] imm16,
    output [25:0] imm26
    );
	 assign op = instr[31:26];
	 assign func = instr[5:0];
	 assign rs = instr[25:21];
	 assign rt = instr[20:16];
	 assign rd = instr[15:11];
	 assign imm16 = instr[15:0];
	 assign imm26 = instr[25:0];
	 


endmodule
