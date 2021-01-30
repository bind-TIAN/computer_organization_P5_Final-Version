`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:09 01/01/2018 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] data1_E,
    input [31:0] data2_E,
    input [3:0] aluop,
	 input [4:0] s_alu,
    output reg [31:0] data_alu_E
    );
	 always @ * begin
		case(aluop)
		4'b0000:begin
			data_alu_E = data1_E + data2_E;
		end
		4'b0001:begin
			data_alu_E = data1_E - data2_E;
		end
		4'b0010:begin
			data_alu_E = data1_E & data2_E;
		end
		4'b0011:begin
			data_alu_E = data1_E | data2_E;
		end
		4'b0101:begin
			data_alu_E = {data2_E[15:0],16'b0000000000000000};
		end
		4'b0110:begin	//xor
			data_alu_E = data1_E ^ data2_E;
		end
		4'b0111:begin	//nor
			data_alu_E = ~(data1_E | data2_E);
		end
		4'b1000:begin	//sll
			data_alu_E = data2_E << s_alu;
		end
		4'b1001:begin	//sllv
			data_alu_E = data2_E << data1_E[4:0];
		end
		4'b1010:begin	//srl
			data_alu_E = data2_E >> s_alu;
		end
		4'b1011:begin	//srlv
			data_alu_E = data2_E >> data1_E[4:0];
		end
		4'b1100:begin	
			data_alu_E = ($signed(data1_E) < $signed(data2_E))?1:0;
		end
		4'b1101:begin	
			data_alu_E = ($unsigned(data1_E) < $unsigned(data2_E))?1:0;
		end
		4'b1110:begin	//sra
			data_alu_E = data2_E >>> s_alu;
		end
		4'b1111:begin
			data_alu_E = (data2_E == 0)? data1_E:0;
		end
		default:begin
			data_alu_E = 0;
		end
		endcase
	 end


endmodule
