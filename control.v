/*-----------------------------------------------------------------------------

4190.308-002 Computer Architecture

Instructor: Prof. Jae W. Lee (jaewlee@snu.ac.kr)

Homework #3: RISC-V Pipeline in Verilog

Description:
	Pipeline control signal generator

-----------------------------------------------------------------------------*/

module pipeline_ctl
(
	//From ID unit: opcode and register
	input [6:0] opcode,
	input [2:0] funct3,
	input [6:0] funct7,
	input hazarded, // for control hazard mux

	//To others-
	output reg alu_src,
	output reg mem_to_reg,
	output reg reg_write,
	output reg mem_read,
	output reg mem_write,
	output reg [2:0] alu_operation,
	output reg halt
);
	//Operator
	parameter R_FORMAT	= 7'b0110011;
	parameter I_FORMAT	= 7'b0010011;
	parameter LOAD		= 7'b0000011;
	parameter STORE		= 7'b0100011;
	parameter SB 			= 7'b1100011;

	// TODO (PA2): complete control signal generation logic for other opcodes
	always @(opcode, funct3, funct7)
	begin
		if(opcode == 7'h0)	//NOP
		begin
			alu_src <= 1'b0;
			mem_to_reg <= 1'b0;
			reg_write <= 1'b0;
			mem_read <= 1'b0;
			mem_write <= 1'b0;
			halt <= 1'b0;
			alu_operation <= alu.ALU_NOP;

		end
		else	//HALT
		begin
			halt <= 1'b1;
			mem_write <= 1'b0;
		end
	end

endmodule
