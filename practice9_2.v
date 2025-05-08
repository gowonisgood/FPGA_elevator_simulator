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
// CREATED		"Sun Dec 22 14:13:00 2024"

module practice9_2(
	clk,
	rst_n,
	up,
	Din,
	com5,
	com6,
	com7,
	com8,
	com1,
	com2,
	com3,
	com4,
	RW,
	EN,
	RS,
	piezo,
	LCDDATA,
	result,
	single_result33
);


input wire	clk;
input wire	rst_n;
input wire	up;
input wire	[9:0] Din;
output wire	com5;
output wire	com6;
output wire	com7;
output wire	com8;
output wire	com1;
output wire	com2;
output wire	com3;
output wire	com4;
output wire	RW;
output wire	EN;
output wire	RS;
output wire	piezo;
output wire	[7:0] LCDDATA;
output wire	[6:0] result;
output wire	[6:0] single_result33;

wire	[3:0] afterIn;
wire	b0;
wire	b00;
wire	b01;
wire	b02;
wire	b03;
wire	b1;
wire	b10;
wire	b11;
wire	b12;
wire	b13;
wire	b2;
wire	b20;
wire	b21;
wire	b22;
wire	b23;
wire	b3;
wire	b30;
wire	b31;
wire	b32;
wire	b33;
wire	[3:0] b4;
wire	[3:0] beforeIn;
wire	[1:0] DDout;
wire	[1:0] dout;
wire	[3:0] s0;
wire	[3:0] s1;
wire	[6:0] single_result;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_92;
wire	SYNTHESIZED_WIRE_93;
wire	[3:0] SYNTHESIZED_WIRE_94;
wire	SYNTHESIZED_WIRE_95;
wire	SYNTHESIZED_WIRE_96;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_97;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_98;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_99;
wire	SYNTHESIZED_WIRE_100;
wire	SYNTHESIZED_WIRE_101;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_102;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_103;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_104;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_70;
wire	SYNTHESIZED_WIRE_71;
wire	SYNTHESIZED_WIRE_72;
wire	SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_74;
wire	SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_76;
wire	SYNTHESIZED_WIRE_77;
wire	SYNTHESIZED_WIRE_78;
wire	SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_84;
wire	SYNTHESIZED_WIRE_85;
wire	[3:0] SYNTHESIZED_WIRE_86;
wire	[3:0] SYNTHESIZED_WIRE_87;
wire	SYNTHESIZED_WIRE_105;
wire	SYNTHESIZED_WIRE_106;

assign	com1 = 1;
assign	com2 = 1;
assign	com3 = 1;
assign	com4 = 1;
assign	com6 = SYNTHESIZED_WIRE_22;
assign	com7 = SYNTHESIZED_WIRE_43;
assign	com8 = SYNTHESIZED_WIRE_99;
assign	SYNTHESIZED_WIRE_97 = 1;
assign	SYNTHESIZED_WIRE_98 = 0;
assign	SYNTHESIZED_WIRE_102 = 1;
assign	SYNTHESIZED_WIRE_103 = 0;
wire	[3:0] GDFX_TEMP_SIGNAL_3;
wire	[3:0] GDFX_TEMP_SIGNAL_4;
wire	[3:0] GDFX_TEMP_SIGNAL_2;
wire	[3:0] GDFX_TEMP_SIGNAL_5;
wire	[3:0] GDFX_TEMP_SIGNAL_6;
wire	[3:0] GDFX_TEMP_SIGNAL_14;
wire	[3:0] GDFX_TEMP_SIGNAL_1;
wire	[3:0] GDFX_TEMP_SIGNAL_7;
wire	[3:0] GDFX_TEMP_SIGNAL_12;
wire	[3:0] GDFX_TEMP_SIGNAL_13;
wire	[3:0] GDFX_TEMP_SIGNAL_0;
wire	[3:0] GDFX_TEMP_SIGNAL_8;
wire	[3:0] GDFX_TEMP_SIGNAL_10;
wire	[3:0] GDFX_TEMP_SIGNAL_11;
wire	[3:0] GDFX_TEMP_SIGNAL_9;


assign	b3 = GDFX_TEMP_SIGNAL_3[3];
assign	b2 = GDFX_TEMP_SIGNAL_3[2];
assign	b1 = GDFX_TEMP_SIGNAL_3[1];
assign	b0 = GDFX_TEMP_SIGNAL_3[0];

assign	GDFX_TEMP_SIGNAL_4 = {b3,b2,b1,b0};
assign	GDFX_TEMP_SIGNAL_2 = {b33,b32,b31,b30};
assign	GDFX_TEMP_SIGNAL_5 = {b33,b32,b31,b30};
assign	GDFX_TEMP_SIGNAL_6 = {b33,b32,b31,b30};
assign	b33 = GDFX_TEMP_SIGNAL_14[3];
assign	b32 = GDFX_TEMP_SIGNAL_14[2];
assign	b31 = GDFX_TEMP_SIGNAL_14[1];
assign	b30 = GDFX_TEMP_SIGNAL_14[0];

assign	GDFX_TEMP_SIGNAL_1 = {b23,b22,b21,b20};
assign	GDFX_TEMP_SIGNAL_7 = {b23,b22,b21,b20};
assign	b23 = GDFX_TEMP_SIGNAL_12[3];
assign	b22 = GDFX_TEMP_SIGNAL_12[2];
assign	b21 = GDFX_TEMP_SIGNAL_12[1];
assign	b20 = GDFX_TEMP_SIGNAL_12[0];

assign	GDFX_TEMP_SIGNAL_13 = {b23,b22,b21,b20};
assign	GDFX_TEMP_SIGNAL_0 = {b13,b12,b11,b10};
assign	GDFX_TEMP_SIGNAL_8 = {b13,b12,b11,b10};
assign	b13 = GDFX_TEMP_SIGNAL_10[3];
assign	b12 = GDFX_TEMP_SIGNAL_10[2];
assign	b11 = GDFX_TEMP_SIGNAL_10[1];
assign	b10 = GDFX_TEMP_SIGNAL_10[0];

assign	GDFX_TEMP_SIGNAL_11 = {b13,b12,b11,b10};
assign	GDFX_TEMP_SIGNAL_9 = {b03,b02,b01,b00};


assign	SYNTHESIZED_WIRE_46 =  ~SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_41 =  ~SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_104 =  ~SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_101 =  ~rst_n;

assign	SYNTHESIZED_WIRE_13 = Din[8] | Din[9] | Din[7];


mx_4bit_2x1	b2v_inst10(
	.ce(SYNTHESIZED_WIRE_3),
	.s0(GDFX_TEMP_SIGNAL_0),
	.s1(GDFX_TEMP_SIGNAL_1),
	.m_out(s0));


mx_4bit_2x1	b2v_inst11(
	.ce(SYNTHESIZED_WIRE_4),
	.s0(GDFX_TEMP_SIGNAL_2),
	.s1(b4),
	.m_out(s1));


mx_4bit_2x1	b2v_inst12(
	.ce(SYNTHESIZED_WIRE_5),
	.s0(s0),
	.s1(s1),
	.m_out(GDFX_TEMP_SIGNAL_3));

assign	SYNTHESIZED_WIRE_95 =  ~dout[0];

assign	SYNTHESIZED_WIRE_96 =  ~dout[1];

assign	SYNTHESIZED_WIRE_14 = dout[0] & dout[1];


reg4	b2v_inst15(
	.CLK(clk),
	.RST(SYNTHESIZED_WIRE_92),
	.CE(SYNTHESIZED_WIRE_93),
	.Din(SYNTHESIZED_WIRE_94),
	.Dout(beforeIn));

assign	SYNTHESIZED_WIRE_15 = dout[1] & SYNTHESIZED_WIRE_95;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_96 & dout[0];

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_96 & SYNTHESIZED_WIRE_95;


assign	SYNTHESIZED_WIRE_51 = Din[0] | Din[2] | Din[1] | Din[3] | Din[5] | Din[4] | Din[6] | SYNTHESIZED_WIRE_13;


b2seg	b2v_inst20(
	.b(GDFX_TEMP_SIGNAL_4),
	.Seg(result));

assign	com5 =  ~SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_22 =  ~SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_43 =  ~SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_99 =  ~SYNTHESIZED_WIRE_17;


mx_2x1	b2v_inst25(
	.s_1(SYNTHESIZED_WIRE_97),
	.sel(SYNTHESIZED_WIRE_19),
	.s_0(SYNTHESIZED_WIRE_98),
	.m_out(SYNTHESIZED_WIRE_5));


mx_2x1	b2v_inst26(
	.s_1(SYNTHESIZED_WIRE_97),
	.sel(SYNTHESIZED_WIRE_22),
	.s_0(SYNTHESIZED_WIRE_98),
	.m_out(SYNTHESIZED_WIRE_4));


mx_2x1	b2v_inst27(
	.s_1(SYNTHESIZED_WIRE_97),
	.sel(SYNTHESIZED_WIRE_99),
	.s_0(SYNTHESIZED_WIRE_98),
	.m_out(SYNTHESIZED_WIRE_3));


reg4	b2v_inst28(
	.CLK(clk),
	.RST(SYNTHESIZED_WIRE_92),
	.CE(SYNTHESIZED_WIRE_100),
	.Din(GDFX_TEMP_SIGNAL_5),
	.Dout(b4));

assign	SYNTHESIZED_WIRE_92 =  ~SYNTHESIZED_WIRE_101;


d2b	b2v_inst3(
	.d0(Din[0]),
	.d1(Din[1]),
	.d2(Din[2]),
	.d3(Din[3]),
	.d4(Din[4]),
	.d5(Din[5]),
	.d6(Din[6]),
	.d7(Din[7]),
	.d8(Din[8]),
	.d9(Din[9]),
	.b3(b03),
	.b2(b02),
	.b1(b01),
	.b0(b00));

assign	SYNTHESIZED_WIRE_84 =  ~SYNTHESIZED_WIRE_92;



reg4	b2v_inst32(
	.CLK(clk),
	.RST(SYNTHESIZED_WIRE_92),
	.CE(SYNTHESIZED_WIRE_93),
	.Din(beforeIn),
	.Dout(afterIn));


mx_4bit_2x1	b2v_inst321(
	.ce(SYNTHESIZED_WIRE_33),
	.s0(b4),
	.s1(GDFX_TEMP_SIGNAL_6),
	.m_out(SYNTHESIZED_WIRE_86));


count4_en	b2v_inst322(
	.ENABLE(SYNTHESIZED_WIRE_93),
	.clk(clk),
	.RST(SYNTHESIZED_WIRE_35),
	.Dout(DDout));



mx_4bit_2x1	b2v_inst333(
	.ce(SYNTHESIZED_WIRE_36),
	.s0(GDFX_TEMP_SIGNAL_7),
	.s1(GDFX_TEMP_SIGNAL_8),
	.m_out(SYNTHESIZED_WIRE_87));


mx_2x1	b2v_inst333434(
	.s_1(SYNTHESIZED_WIRE_102),
	.sel(SYNTHESIZED_WIRE_38),
	.s_0(SYNTHESIZED_WIRE_103),
	.m_out(SYNTHESIZED_WIRE_85));


mx_2x1	b2v_inst3343435(
	.s_1(SYNTHESIZED_WIRE_102),
	.sel(SYNTHESIZED_WIRE_41),
	.s_0(SYNTHESIZED_WIRE_103),
	.m_out(SYNTHESIZED_WIRE_36));

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_43 ~^ SYNTHESIZED_WIRE_99;


b2seg	b2v_inst35(
	.b(SYNTHESIZED_WIRE_94),
	.Seg(single_result));

assign	SYNTHESIZED_WIRE_38 = SYNTHESIZED_WIRE_46 ~^ SYNTHESIZED_WIRE_104;

assign	SYNTHESIZED_WIRE_35 =  ~SYNTHESIZED_WIRE_92;


up_down_comparator	b2v_inst38(
	.clock(clk),
	.reset(SYNTHESIZED_WIRE_49),
	.afterIn(afterIn),
	.beforeIn(beforeIn),
	.isUp(SYNTHESIZED_WIRE_54));

assign	SYNTHESIZED_WIRE_49 =  ~SYNTHESIZED_WIRE_92;


trigger	b2v_inst4(
	.Din(SYNTHESIZED_WIRE_51),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.Dout(SYNTHESIZED_WIRE_100));


clcd_up_display	b2v_inst40(
	.iCLK(clk),
	.reset(SYNTHESIZED_WIRE_92),
	.textlcdCe(SYNTHESIZED_WIRE_54),
	.LCD_RW(RW),
	.LCD_EN(EN),
	.LCD_RS(RS),
	.LCD_DATA(LCDDATA));
	defparam	b2v_inst40.LCD_INTIAL = 0;
	defparam	b2v_inst40.LUT_SIZE = 8;


PNU_CLK_DIV	b2v_inst42(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.en(Din[0]),
	.div_clk(SYNTHESIZED_WIRE_70));
	defparam	b2v_inst42.cnt_num = 1516;


PNU_CLK_DIV	b2v_inst43(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.en(Din[1]),
	.div_clk(SYNTHESIZED_WIRE_72));
	defparam	b2v_inst43.cnt_num = 3822;


PNU_CLK_DIV	b2v_inst44(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.en(Din[2]),
	.div_clk(SYNTHESIZED_WIRE_71));
	defparam	b2v_inst44.cnt_num = 3405;


PNU_CLK_DIV	b2v_inst45(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.en(Din[3]),
	.div_clk(SYNTHESIZED_WIRE_73));
	defparam	b2v_inst45.cnt_num = 3033;


PNU_CLK_DIV	b2v_inst46(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.en(Din[4]),
	.div_clk(SYNTHESIZED_WIRE_75));
	defparam	b2v_inst46.cnt_num = 2863;


PNU_CLK_DIV	b2v_inst47(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.en(Din[5]),
	.div_clk(SYNTHESIZED_WIRE_74));
	defparam	b2v_inst47.cnt_num = 2551;


PNU_CLK_DIV	b2v_inst48(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.en(Din[6]),
	.div_clk(SYNTHESIZED_WIRE_76));
	defparam	b2v_inst48.cnt_num = 2272;


PNU_CLK_DIV	b2v_inst49(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.en(Din[7]),
	.div_clk(SYNTHESIZED_WIRE_77));
	defparam	b2v_inst49.cnt_num = 2024;


trigger	b2v_inst5(
	.Din(up),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.Dout(SYNTHESIZED_WIRE_93));


PNU_CLK_DIV	b2v_inst50(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_101),
	.en(Din[8]),
	.div_clk(SYNTHESIZED_WIRE_78));
	defparam	b2v_inst50.cnt_num = 1911;


reg4	b2v_inst6(
	.CLK(clk),
	.RST(SYNTHESIZED_WIRE_92),
	.CE(SYNTHESIZED_WIRE_100),
	.Din(GDFX_TEMP_SIGNAL_9),
	.Dout(GDFX_TEMP_SIGNAL_10));


mx_2x1	b2v_inst64633(
	.s_1(SYNTHESIZED_WIRE_102),
	.sel(SYNTHESIZED_WIRE_104),
	.s_0(SYNTHESIZED_WIRE_103),
	.m_out(SYNTHESIZED_WIRE_33));

assign	SYNTHESIZED_WIRE_79 = SYNTHESIZED_WIRE_70 | SYNTHESIZED_WIRE_71 | SYNTHESIZED_WIRE_72 | SYNTHESIZED_WIRE_73 | SYNTHESIZED_WIRE_74 | SYNTHESIZED_WIRE_75 | SYNTHESIZED_WIRE_76 | SYNTHESIZED_WIRE_77;

assign	piezo = SYNTHESIZED_WIRE_78 | SYNTHESIZED_WIRE_79;


reg4	b2v_inst7(
	.CLK(clk),
	.RST(SYNTHESIZED_WIRE_92),
	.CE(SYNTHESIZED_WIRE_100),
	.Din(GDFX_TEMP_SIGNAL_11),
	.Dout(GDFX_TEMP_SIGNAL_12));


reg4	b2v_inst8(
	.CLK(clk),
	.RST(SYNTHESIZED_WIRE_92),
	.CE(SYNTHESIZED_WIRE_100),
	.Din(GDFX_TEMP_SIGNAL_13),
	.Dout(GDFX_TEMP_SIGNAL_14));


count4	b2v_inst9(
	.clk(clk),
	.RST(SYNTHESIZED_WIRE_84),
	.Dout(dout));



mx_4bit_2x1	b2v_instb(
	.ce(SYNTHESIZED_WIRE_85),
	.s0(SYNTHESIZED_WIRE_86),
	.s1(SYNTHESIZED_WIRE_87),
	.m_out(SYNTHESIZED_WIRE_94));

assign	SYNTHESIZED_WIRE_105 =  ~DDout[0];

assign	SYNTHESIZED_WIRE_106 =  ~DDout[1];

assign	SYNTHESIZED_WIRE_1 = DDout[1] & SYNTHESIZED_WIRE_105;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_106 & SYNTHESIZED_WIRE_105;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_106 & DDout[0];

assign	single_result33 = single_result;

endmodule
