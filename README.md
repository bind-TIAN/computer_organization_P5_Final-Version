# computer_organization_and_design_P5P5
---

## Project explanation
---

This project is designed based on a previous project [https://github.com/bind-TIAN/computer_organization_P5_Alpha-Version].

## The introduction of .v files
---

*    `add_`: These files aim to execute "Additive" operations in digital circuit design. These different kinds of "Additive" operations include: `PC+4`, `PC+8`, `Immediately add the numbers` and so on.
*    `alu`: A computing logic unit in a `CPU storage unit`.
*    `control`: Control unit in CPU logic circuit design.
*    `dm` and `dmgai`: The design of "memory" in digital circuit design.
*    The file named `feimen_` contain the design scheme of `non-gate` in the design of digital circuit components.
*    `fenweiqi_`: These files contain the `Quantifier design` operation which divide a `32-bit` data into multiple signals of different bit lengths for subsequent processing.
*    `hush_`: These files contain the design scheme of `pause unit` in digital circuit design.
*    `im`: Instruction storage unit. This unit loads the instructions from an external `.txt` file and then parses the instructions step by step according to the transition law of the `clock cycle`.
*    `jicunqi_`: These register files are responsible for storing some "instructions" and "data" and are their staging place. There are many different types of registers divided: `E-level registers`, `M-level registers`, and `W-level registers`.
*    `signext`: This file contain the design of `Immediate Number Expansion Unit`.
*    `zuoyi`: Represents a `shift left` unit in digital circuit design.
*    `regfile`: The design of the `register` file.
*    `yimaqi_`: Decode the information in the `instruction set`, and pass the decoded information between the various components in the circuit design.

## Design of the core code
---

### The design of instruction memory(im) unit
---
```Verilog
module im(
    input [31:0] pc,////
    output [31:0] code
    );
	 reg [31:0] rom [1023:0];
	 integer i = 0;
	 initial begin
		for(i=0;i<1024;i=i+1)begin
			rom[i] = 0;
		end
		$readmemh("code.txt",rom);
	 end
	 assign code = rom[pc[11:2]];


endmodule
```
In the above line of code, the initialized register bits are `32bit`, and the maximum number of instructions(`1024`) can be stored. The memory is initialized to `0`, and instructions are loaded from the `.txt` file where the instruction set is stored, and these instructions are stored in this `im` memory.

### The design of Register file(regfile) unit
---
```Verilog
initial begin
    for(i=0;i<32;i=i+1)begin
        cun[i] = 0;
    end
end
```
The above code shows the `initialization process` of registers.
