`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:14:30 01/15/2018 
// Design Name: 
// Module Name:    add_3 
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
module add_3(
	 input [31:0] yiwei,
	 input [31:0] pc,
    output [31:0] yp
    );
	 
	 assign yp = yiwei + pc;
    


endmodule
