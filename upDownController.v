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

// Generated by Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition
// Created on Sat Dec 07 10:31:32 2024

// synthesis message_off 10175

`timescale 1ns/1ns

module upDownController (
    reset,clock,beforeIn,afterIn,
    up);

    input reset;
    input clock;
    input [3:0] beforeIn;
    input [3:0] afterIn;
    tri0 reset;
    tri0 [3:0] beforeIn;
    tri0 [3:0] afterIn;
    output up;
    reg up;
    reg [2:0] fstate;
    reg [2:0] reg_fstate;
    parameter state1=0,state2=1,state3=2;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or beforeIn or afterIn)
    begin
        if (~reset) begin
            reg_fstate <= state1;
            up <= 1'b0;
        end
        else begin
            up <= 1'b0;
            case (fstate)
                state1: begin
                    if ((beforeIn[3:0] != 4'b0000))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    up <= 1'b1;
                end
                state2: begin
                    if ((afterIn[3:0] < beforeIn[3:0]))
                        reg_fstate <= state3;
                    else if ((afterIn[3:0] == beforeIn[3:0]))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    up <= 1'b1;
                end
                state3: begin
                    if ((afterIn[3:0] > beforeIn[3:0]))
                        reg_fstate <= state2;
                    else if ((beforeIn[3:0] == afterIn[3:0]))
                        reg_fstate <= state3;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state3;

                    up <= 1'b0;
                end
                default: begin
                    up <= 1'bx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // upDownController
