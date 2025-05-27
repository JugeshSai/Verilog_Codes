module Behavioral(
  input a,b,
  output  reg out_and,out_or,out_not,out_nand,out_nor,out_xor,out_xnor
);
  always @(*)
    begin
  out_and=a&b;
  out_or=a|b;
  out_not=~a;
  out_nand=~(a&b);
  out_nor=~(a|b);
  out_xor=a^b;
  out_xnor=~(a^b);
    end
  
endmodule
