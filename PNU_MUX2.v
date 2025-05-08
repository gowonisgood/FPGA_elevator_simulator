/***********************
*
* Jong-gyu Park
* pjk5401@gmail.com
* 2016/09/02
*
***********************/

module PNU_MUX2(i1, i2, e1, o1);
    input i1, i2, e1;
    output o1;
    assign o1 = e1 ? i2 : i1;
endmodule