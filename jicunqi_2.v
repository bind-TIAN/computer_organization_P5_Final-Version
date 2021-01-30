`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:01:32 01/01/2018 
// Design Name: 
// Module Name:    jicunqi_2 
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
module jicunqi_2(
    input  clk,
    input  clr,
    input en,
    input [31:0] code,
	 input [31:0] pcchu,
	 input [31:0] pcout,
    output reg [31:0] instr,
	 output reg [31:0] pcchu_D,
	 output reg [31:0] pcout_D
    );
	 initial begin
		instr = 0;
		pcchu_D = 0;
		pcout_D = 0;
	 end
	 always @(posedge clk)begin
		if(clr)begin
			pcchu_D <= 0;
			pcout_D <= 0;
			instr <= 0;
		end
		else begin
			if(en)begin
				instr <= code;
				pcchu_D <= pcchu;
				pcout_D <= pcout;
			end
		end
	 end


endmodule
