`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:17:06 01/01/2018 
// Design Name: 
// Module Name:    add4_2 
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
module add4_2(
    input [31:0] yi32,
	 input [31:0] pcout_D,
    output [31:0] addimm
    );
	 
	 assign addimm = yi32 + pcout_D;


endmodule
