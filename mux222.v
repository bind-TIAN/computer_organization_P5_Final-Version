`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:25:22 01/04/2018 
// Design Name: 
// Module Name:    mux222 
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
module mux222(
	 input [31:0] a,
    input [31:0] b,
    input sel,
    output [31:0] c
    );
	 assign c = (sel)?a:b;
    


endmodule
