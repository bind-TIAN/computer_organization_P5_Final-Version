`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:35 01/01/2018 
// Design Name: 
// Module Name:    jicunqi_M 
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
module jicunqi_M(
	 input movz_M,
    input [31:0] instr_E,
    input [31:0] data_alu_E,
    input [31:0] writedata_E,
	 input [31:0] pcout_E,
	 input [31:0] pcchu_E,
    input [4:0] writereg_E,
	 input clk,
	 input reset,
    output reg [31:0] instr_M,
    output reg [31:0] data_alu_M,
    output reg [31:0] writedata_M,
    output reg [4:0] writereg_M,
	 output reg [31:0] pcout_M,
	 output reg [31:0] pcchu_M,
	 output reg movz_M_output
    );
	 initial begin
			instr_M = 0;
			data_alu_M = 0;
			writedata_M = 0;
			writereg_M = 0;
			pcout_M = 0;
			pcchu_M = 0;
			movz_M_output = 0;
	 end
	 always @(posedge clk)begin
		if(reset)begin
			instr_M <= 0;
			data_alu_M <= 0;
			writedata_M <= 0;
			writereg_M <= 0;
			pcout_M <=0;
			pcchu_M <= 0;
			movz_M_output <= 0;
		end
		else begin
			instr_M <= instr_E;
			data_alu_M <= data_alu_E;
			writedata_M <= writedata_E;
			writereg_M <= writereg_E;
			pcout_M <= pcout_E;
			pcchu_M <= pcchu_E;
			movz_M_output <= movz_M;
		end
	 end


endmodule
