`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:20 01/04/2018 
// Design Name: 
// Module Name:    pinjie 
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
module pinjie(
	 input [31:0] pc,
	 input [25:0] imm26,
	 output [31:0] c
    );
	 assign c = {pc[31:28],imm26,2'b00};


endmodule
