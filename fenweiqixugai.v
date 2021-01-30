`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:37:52 01/04/2018 
// Design Name: 
// Module Name:    fenweiqixugai 
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
module fenweiqixugai(
	 input [31:0] instr,
    //output [31:0] instr_D,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rs_D,
    output [4:0] rt_D,
    output [4:0] rd_D,
    output [15:0] imm16
    );
	 assign instr_D = instr;
	 assign rs = instr[25:21];
	 assign rt = instr[20:16];
	 assign rs_D = instr[25:21];
	 assign rt_D = instr[20:16];
	 assign rd_D = instr[15:11];
	 assign imm16 = instr[15:0];
   


endmodule
