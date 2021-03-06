`include "./simple_softCPU.v"
module softCPU_testbench;

reg clock;
reg [25:0] instruction;
wire [15:0] instructionPointer;
reg [15:0] addressIn;
reg [7:0] valueIn;
wire [15:0] addressOut;
wire [7:0] valueOut;

always begin
	#1 clock = !clock;
end

//00010000000000000000000000
//00010000101000000000000001
//00010000000000000000000010
//00011000000000000001010000
//00011000000100000000010010
//00111000000001000000010011
//01010011000000000000000100

task IPtoCommand;
input [15:0] ip;
output [25:0] isentence;
begin
	if (ip == 0)
		isentence = 26'b00010000000000000000000000;
	else if (ip == 1)
		isentence = 26'b00010000101000000000000001;
	else if (ip == 2)
		isentence = 26'b00010000000000000000000010;
	else if (ip == 3)
		isentence = 26'b00011000000000000001010000;
	else if (ip == 4)
		isentence = 26'b00011000000100000000010010;
	else if (ip == 5)
		isentence = 26'b00111000000001000000010011;
	else if (ip == 6)
		isentence = 26'b01010011000000000000000100;
end
endtask

initial begin
	addressIn <= 0;
	valueIn <= 0;
	clock = 0;

	instruction = 26'b00010000000000000000000000;
	$display("Instruction\t\t\tInstruction Pointer\tRegisterA\tRegisterB\tRegisterC\tRegisterD");
	$monitor("%b\t%b\t%b\t%b\t%b\t%b", instruction, instructionPointer, softCPU.registerA, softCPU.registerB, softCPU.registerC, softCPU.registerD);
	IPtoCommand(instructionPointer,instruction);	
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	#1 IPtoCommand(instructionPointer,instruction);
	$display("%b", softCPU.registerA);

	$finish();
end

control_matrix softCPU(clock, instruction, instructionPointer, addressIn, valueIn, addressOut, valueOut);

endmodule	
