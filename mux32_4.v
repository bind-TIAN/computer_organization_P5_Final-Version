`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:05 01/11/2018 
// Design Name: 
// Module Name:    mux32_4 
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
module mux32_4(
	 input [4:0] a,
    input [4:0] b,
    input sel,
    output [4:0] c
    );
	 assign c = (sel)?a:b;
    


endmodule
