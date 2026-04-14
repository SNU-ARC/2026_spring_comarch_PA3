/*-----------------------------------------------------------------------------

4190.308-002 Computer Architecture

Instructor: Prof. Jae W. Lee (jaewlee@snu.ac.kr)

Homework #3: RISC-V Pipeline in Verilog

Description:
	This module is basic ALU with simple arithmetic/logic operation.
	It also provides two types of flag: zero and sign.

-----------------------------------------------------------------------------*/

module alu
(
	input [2:0] op,
	input [63:0] lhs,
	input [63:0] rhs,
	output [63:0] result,

			//Assume signed input only.
	output zero,	//Set 1 if result == 0
	output sign	//Set 1 if result < 0
);
	parameter ALU_NOP	= 3'b000;
	parameter BIT_AND	= 3'b001;
	parameter BIT_OR	= 3'b010;
	parameter BIT_XOR	= 3'b011;

	parameter ADD_64	= 3'b110;
	parameter SUB_64	= 3'b111;

	// TODO (PA2): implement correct outputs
	assign zero = 0;
	assign sign = 0;
	assign result = 64'h0;

endmodule
