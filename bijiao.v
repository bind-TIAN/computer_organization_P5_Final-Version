`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:51 01/11/2018 
// Design Name: 
// Module Name:    bijiao 
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
module bijiao(
	 input [31:0] datatwo,
	 output dataone
    );
	 assign dataone = ($signed(datatwo) >= 0)?1:0;


endmodule
