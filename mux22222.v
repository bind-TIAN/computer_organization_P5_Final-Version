`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:04 01/11/2018 
// Design Name: 
// Module Name:    mux22222 
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
module mux22222(
	 input [31:0] a,
    input [31:0] b,
    input sel,
    output [31:0] c
    );
	 assign c = (sel)?a:b;
  


endmodule
