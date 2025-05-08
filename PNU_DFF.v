/***********************
*
* Jong-gyu Park
* pjk5401@gmail.com
* 2016/09/02
*
***********************/

module PNU_DFF(D, clock, reset, Q);
    input D, clock, reset;
    output Q;
    reg Q;
    
    always@(posedge clock or posedge reset)
        if( reset ) begin
            Q <= 1'b0;
        end else begin
            Q <= D;
        end
endmodule