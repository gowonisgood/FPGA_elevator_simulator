module clcd_up_display(
    input wire iCLK,          // Clock
    input wire reset,         // Reset signal (active high)
    input wire textlcdCe,     // Control signal: 1 for UP, 0 for DOWN
    output wire [7:0] LCD_DATA, // LCD Data
    output wire LCD_RW,       // LCD Read/Write
    output wire LCD_EN,       // LCD Enable
    output wire LCD_RS        // LCD Register Select
);

    // Internal Wires/Registers
    reg [5:0] LUT_INDEX;
    reg [8:0] LUT_DATA;
    reg [5:0] mLCD_ST;
    reg [17:0] mDLY;
    reg mLCD_Start;
    reg [7:0] mLCD_DATA;
    reg mLCD_RS;
    wire mLCD_Done;

    reg old_textlcdCe; // 이전 사이클의 textlcdCe 값을 저장

    // Parameters
    parameter LUT_SIZE = 8; // Initialization + 4 chars
    parameter LCD_INTIAL = 0;

    // 이전 textlcdCe 저장
    always @(posedge iCLK or posedge reset) begin
        if (reset) begin
            old_textlcdCe <= textlcdCe;
        end else begin
            old_textlcdCe <= textlcdCe;
        end
    end

    always @(posedge iCLK or posedge reset) begin
        if (reset) begin
            // Reset all internal registers
            LUT_INDEX <= 0;
            mLCD_ST <= 0;
            mDLY <= 0;
            mLCD_Start <= 0;
            mLCD_DATA <= 0;
            mLCD_RS <= 0;
        end else begin
            // textlcdCe가 변경되었을 때 언제든지 다시 시작
            if (textlcdCe != old_textlcdCe) begin
                LUT_INDEX <= 0;
                mLCD_ST <= 0;
                mDLY <= 0;
                mLCD_Start <= 0;
                mLCD_DATA <= 0;
                mLCD_RS <= 0;
            end else begin
                if (LUT_INDEX < LUT_SIZE) begin
                    case (mLCD_ST)
                        0: begin
                            mLCD_DATA <= LUT_DATA[7:0]; // Set LCD Data
                            mLCD_RS <= LUT_DATA[8];     // Set RS (Register Select)
                            mLCD_Start <= 1;
                            mLCD_ST <= 1;
                        end
                        1: begin
                            if (mLCD_Done) begin
                                mLCD_Start <= 0;
                                mLCD_ST <= 2;
                            end
                        end
                        2: begin
                            // Some delay after each instruction/character
                            if (mDLY < 18'h3FFFE) begin
                                mDLY <= mDLY + 1;
                            end else begin
                                mDLY <= 0;
                                mLCD_ST <= 3;
                            end
                        end
                        3: begin
                            LUT_INDEX <= LUT_INDEX + 1;
                            mLCD_ST <= 0;
                        end
                    endcase
                end else begin
                    // Once done printing all, just wait for textlcdCe to change
                    mLCD_Start <= 0;
                end
            end
        end
    end

    // LUT Data (Lookup Table)
    // Indices:
    // 0: Function set (8-bit, 2 line, 5x7 matrix)
    // 1: Display ON (display on, cursor off, blink off)
    // 2: Clear display
    // 3: Set cursor at Line 1, position 0
    // 4-7: Depending on textlcdCe, print either "UP  " or "DOWN"
    always @(*) begin
        case (LUT_INDEX)
            0: LUT_DATA <= 9'h038; // Function set: RS=0, Data=0x38
            1: LUT_DATA <= 9'h00C; // Display on: RS=0, Data=0x0C
            2: LUT_DATA <= 9'h001; // Clear display: RS=0, Data=0x01
            3: LUT_DATA <= 9'h080; // Set cursor at line 1: RS=0, Data=0x80

            4: begin
                if (textlcdCe)
                    LUT_DATA <= 9'h155; // 'U' (0x55) with RS=1
                else
                    LUT_DATA <= 9'h144; // 'D' (0x44) with RS=1
            end
            5: begin
                if (textlcdCe)
                    LUT_DATA <= 9'h150; // 'P' (0x50) with RS=1
                else
                    LUT_DATA <= 9'h14F; // 'O' (0x4F) with RS=1
            end
            6: begin
                if (textlcdCe)
                    LUT_DATA <= 9'h120; // ' ' (0x20) with RS=1
                else
                    LUT_DATA <= 9'h157; // 'W' (0x57) with RS=1
            end
            7: begin
                if (textlcdCe)
                    LUT_DATA <= 9'h120; // ' ' (0x20) with RS=1 (second space for UP)
                else
                    LUT_DATA <= 9'h14E; // 'N' (0x4E) with RS=1
            end
            
            default: LUT_DATA <= 9'h000; // Default no operation
        endcase
    end

    // LCD Controller Instance
    LCD_Controller u0 (
        .iDATA(mLCD_DATA),
        .iRS(mLCD_RS),
        .iStart(mLCD_Start),
        .oDone(mLCD_Done),
        .iCLK(iCLK),
        .iRST_N(!reset), // Active low reset
        .LCD_DATA(LCD_DATA),
        .LCD_RW(LCD_RW),
        .LCD_EN(LCD_EN),
        .LCD_RS(LCD_RS)
    );
endmodule
