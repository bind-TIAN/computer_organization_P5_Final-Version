`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:36:39 01/01/2018 
// Design Name: 
// Module Name:    pc_1 
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
module pc_1(
    input clk,
    input reset,
    input en,
    input [31:0] pc,
    output reg [31:0] pcout
    );
	 initial begin
		pcout = 32'h00003000;
	 end
	 always @(posedge clk)begin
		if(reset)begin
		
			pcout <=32'h00003000; 
		end
		else begin
			if(en)begin
				pcout <= pc;
			
			end
			else begin
				pcout<=pcout;
			end
		end
	 end


endmodule
