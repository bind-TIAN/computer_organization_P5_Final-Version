`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:25 01/11/2018 
// Design Name: 
// Module Name:    jiafaqi2 
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
module jiafaqi2(
	 input [31:0] yiwei,
	 input [31:0] pcpc,
    output [31:0] pcp
    );
	 
	 assign pcp = yiwei + pcpc;
    


endmodule
