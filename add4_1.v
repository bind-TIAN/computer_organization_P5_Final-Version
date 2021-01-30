`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:49:38 01/01/2018 
// Design Name: 
// Module Name:    add4_1 
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
module add4_1(
    input [31:0] pcout,
    output [31:0] pcchu
    );
	 assign pcchu = pcout + 4;


endmodule
