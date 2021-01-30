`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:51 01/01/2018 
// Design Name: 
// Module Name:    mux32_2_2 
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
module mux32_2_2(
    input [31:0] a,
    input [31:0] b,
    input sel,
    output [31:0] c
    );
	 assign c = (sel)?a:b;


endmodule
