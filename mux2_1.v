`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:28:15 01/01/2018 
// Design Name: 
// Module Name:    mux2_1 
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
module mux2_1(
    input [31:0] yia,
    input [31:0] yib,
    input yisel,
    output [31:0] yiout
    );
	 assign yiout = yisel?yia:yib;


endmodule
