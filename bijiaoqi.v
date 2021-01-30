`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:41:59 01/01/2018 
// Design Name: 
// Module Name:    bijiaoqi 
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
module bijiaoqi(
	 input [31:0] a,
	 input [31:0] b,
	 output c
    );
	 assign c = (a==b)?1:0;


endmodule
