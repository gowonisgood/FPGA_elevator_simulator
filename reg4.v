module reg4(Dout,Din,CLK,RST,CE);

output [3:0] Dout;
input [3:0] Din;
input CLK;
input RST;
input CE;

wire [3:0] b0;
wire [3:0] b1;
wire  w4;
wire  w9;
wire  w16;
wire  w17;
wire  w18;
wire  w22;
wire  w25;
wire  b1_3_w10;
wire  b1_2_w19;
wire  b1_1_w20;
wire  b1_0_w21;
wire  b0_3;
wire  b0_3_w23;
wire  b0_2;
wire  b0_2_w24;
wire  b0_1;
wire  b0_1_w26;
wire  b0_0;
wire  b0_0_w27;

assign Dout = b0;
assign b1 = Din;
assign w4 = CLK;
assign w25 = RST;
assign w22 = CE;

assign b0[3] = b0_3;
assign b0[2] = b0_2;
assign b0[1] = b0_1;
assign b0[0] = b0_0;

assign b1_3_w10 = {b1[3]};
assign b1_2_w19 = {b1[2]};
assign b1_1_w20 = {b1[1]};
assign b1_0_w21 = {b1[0]};
assign b0_3_w23 = {b0[3]};
assign b0_2_w24 = {b0[2]};
assign b0_1_w26 = {b0[1]};
assign b0_0_w27 = {b0[0]};

PNU_DFF
     s0 (
      .clock(w4),
      .D(w9),
      .Q(b0_3),
      .reset(w25));

PNU_DFF
     s1 (
      .clock(w4),
      .D(w18),
      .Q(b0_2),
      .reset(w25));

PNU_DFF
     s3 (
      .clock(w4),
      .D(w16),
      .reset(w25),
      .Q(b0_0));

PNU_MUX2
     s4 (
      .o1(w9),
      .i2(b1_3_w10),
      .e1(w22),
      .i1(b0_3_w23));

PNU_DFF
     s2 (
      .clock(w4),
      .D(w17),
      .reset(w25),
      .Q(b0_1));

PNU_MUX2
     s5 (
      .o1(w18),
      .i2(b1_2_w19),
      .e1(w22),
      .i1(b0_2_w24));

PNU_MUX2
     s6 (
      .o1(w17),
      .i2(b1_1_w20),
      .e1(w22),
      .i1(b0_1_w26));

PNU_MUX2
     s7 (
      .o1(w16),
      .i2(b1_0_w21),
      .e1(w22),
      .i1(b0_0_w27));

endmodule

