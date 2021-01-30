`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:11:50 01/04/2018 
// Design Name: 
// Module Name:    mux32_2 
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
module mux32_2(
	 input [4:0] a,
    input [4:0] b,
    input sel,
    output [4:0] c
    );
	 assign c = (sel)?a:b;
    
   


endmodule
