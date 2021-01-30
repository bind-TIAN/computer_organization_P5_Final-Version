`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:14:15 01/04/2018 
// Design Name: 
// Module Name:    jicunqigai 
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
module jicunqigai(
	 input  clk,
    input  clr,
    input en,
    input [31:0] code,
	 input [31:0] pcchu,
	 input [31:0] pcout,
    output reg [31:0] instr,
	 output reg [31:0] instr_D,
	 output reg [31:0] pcchu_D,
	 output reg [31:0] pcout_D
    );
	 initial begin
		instr = 0;
		pcchu_D = 0;
		pcout_D = 0;
		instr_D = 0;
	 end
	 always @(posedge clk)begin
		if(clr)begin
			pcchu_D <= 0;
			pcout_D <= 0;
			instr <= 0;
			instr_D <= 0;
		end
		else begin
			if(en)begin
				instr <= code;
				pcchu_D <= pcchu;
				pcout_D <= pcout;
				instr_D <= code;
			end
			else begin
				instr <= instr;
				pcchu_D <= pcchu_D;
				pcout_D <= pcout_D;
				instr_D <= instr_D;
			end
		end
	 end
    


endmodule
