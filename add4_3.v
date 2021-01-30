`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:52:09 01/05/2018 
// Design Name: 
// Module Name:    add4_3 
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
module add4_3(
	 input [31:0] pcchuD,
	 output [31:0] pcchu_D_D
    );
	 assign pcchu_D_D = pcchuD + 4;


endmodule
