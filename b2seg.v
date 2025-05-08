// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Wed Nov 01 19:24:17 2023"

module b2seg(
	b,
	Seg
);


input wire	[3:0] b;
output wire	[6:0] Seg;

wire	[6:0] Seg_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_34;




assign	SYNTHESIZED_WIRE_37 =  ~b[3];

assign	SYNTHESIZED_WIRE_35 =  ~b[2];

assign	SYNTHESIZED_WIRE_34 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_35 & SYNTHESIZED_WIRE_36 & b[0];

assign	SYNTHESIZED_WIRE_0 = b[2] & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_4 = b[1] ~^ b[0];

assign	SYNTHESIZED_WIRE_24 = SYNTHESIZED_WIRE_5 | b[0];

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_37 & b[2] & SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_7 = b[1] ~^ b[0];

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_9 = b[1] & b[0];

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_35 & SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_36 =  ~b[1];

assign	SYNTHESIZED_WIRE_12 = b[0] | b[1];

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_15 = b[3] ~^ b[2];

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_17 & b[1] & b[0];

assign	SYNTHESIZED_WIRE_17 = b[2] | b[3];

assign	Seg_ALTERA_SYNTHESIZED[0] =  ~SYNTHESIZED_WIRE_18;

assign	Seg_ALTERA_SYNTHESIZED[6] =  ~SYNTHESIZED_WIRE_19;

assign	Seg_ALTERA_SYNTHESIZED[1] =  ~SYNTHESIZED_WIRE_20;

assign	Seg_ALTERA_SYNTHESIZED[2] =  ~SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_32 =  ~b[0];

assign	Seg_ALTERA_SYNTHESIZED[3] =  ~SYNTHESIZED_WIRE_22;

assign	Seg_ALTERA_SYNTHESIZED[5] =  ~SYNTHESIZED_WIRE_23;

assign	Seg_ALTERA_SYNTHESIZED[4] =  ~SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_36 & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_27 = b[2] ^ b[0];

assign	SYNTHESIZED_WIRE_29 = b[1] ^ b[0];

assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_37 & b[2] & SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_35 & b[1] & SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_37 & SYNTHESIZED_WIRE_34;

assign	Seg = Seg_ALTERA_SYNTHESIZED;

endmodule
