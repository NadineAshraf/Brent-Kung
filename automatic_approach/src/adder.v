module Adder(
      input[7:0] A,
      input[7:0] B,
      input cin,
      output[7:0] S,
      output cout );
      
    assign {cout,S}={0,A}+{0,B}+cin ;

endmodule ;
