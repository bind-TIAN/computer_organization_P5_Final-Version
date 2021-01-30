`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:46 01/01/2018 
// Design Name: 
// Module Name:    jicunqi_W 
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
module jicunqi_W(
	 input movz_W,
	 input [31:0] W_E_O,
    input [31:0] instr_M,
    input [31:0] data_dm_M,
    input [31:0] data_alu_M,
	 input [31:0] pcchu_M,
    input [4:0] writereg_M,
	 input [31:0] pcout_M,
	 input clk,
	 input reset,
	 output reg [31:0] instr_W,
    output reg [31:0] data_dm_W,
    output reg [31:0] data_alu_W,
    output reg [4:0] writereg_W,
	 output reg [31:0] pcout_W,
	 output reg [31:0] pcchu_W,
	 output reg [31:0] W_extpt,
	 output reg movz_W_output
    );
	 initial begin
		 data_dm_W = 0;
		 data_alu_W = 0;
		 writereg_W = 0;
		 instr_W = 0;
		 pcout_W = 0;
		 pcchu_W = 0;
		 W_extpt = 0;
		 movz_W_output = 0;
	 end
	 always @(posedge clk)begin
		if(reset)begin
		 data_dm_W <= 0;
		 data_alu_W <= 0;
		 writereg_W <= 0;
		 instr_W <=0;
		 pcout_W <= 0;
		 pcchu_W <= 0;
		 W_extpt <= 0;
		 movz_W_output <= 0;
		end
		else begin
		   data_dm_W <= data_dm_M;
		   data_alu_W <=data_alu_M ;
		   writereg_W <= writereg_M;
			instr_W <=instr_M;
			pcout_W <= pcout_M;
			pcchu_W <= pcchu_M;
			W_extpt <= W_E_O;
			movz_W_output <= movz_W;
		end
	 end


endmodule
