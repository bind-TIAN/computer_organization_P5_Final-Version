`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:11:09 01/03/2018 
// Design Name: 
// Module Name:    dmgai 
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
module dmgai(

    input clk,
    input reset,
    input  memwrite_M,
    input [31:0] data_alu_M,
    input [31:0] writedata_M,
	 input [31:0] pcout_M,
    output [31:0] data_dm_M
    );
	 reg [31:0] ram [1023:0];
	 integer i = 0;
	 initial begin
		for(i=0;i<1024;i=i+1)begin
			ram[i] = 0;
		end
	 end
	 always @(posedge clk)begin
		if(reset)begin
			for(i=0;i<1024;i=i+1)begin
			ram[i] <= 0;
		end
		end
		else begin
			if(memwrite_M)begin
				$display("%d@%h:*%h <= %h", $time, pcout_M,data_alu_M ,writedata_M);
				ram[data_alu_M[11:2]]<=writedata_M;
			end
		end
	 end
	 assign data_dm_M = ram[data_alu_M[11:2]];




   


endmodule
