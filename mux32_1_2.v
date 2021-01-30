`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:40 01/01/2018 
// Design Name: 
// Module Name:    mux32_1_2 
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
module mux32_1_2(
	 input [31:0] a,
    input [31:0] b,
	 input [31:0] pcjr,
	 input [31:0] pcjal,
	 input [31:0] pcj,
	 input [31:0] pcbgezal,
	 input [31:0] pcjalr,
	 input j,
    input sel,
	 input jr,
	 input jal,
	 input jalr,
	 input bgezal_mux,
	 input bltzal_mux,
    output [31:0] c
    );
	 assign c = (sel)? a:(jr)? pcjr:(jal)? pcjal:(j)? pcj:(bgezal_mux)? pcbgezal:(bltzal_mux)? pcbgezal:(jalr)? pcjalr:b;

endmodule
