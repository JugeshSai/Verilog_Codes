module Structural(
  input a,b,
  output out_and,out_or,out_not,out_nand,out_nor,out_xor,out_xnor
);
  and G1(out_and,a,b);
  or G2(out_or,a,b);
  not G3(out_not,a);
  nand G4(out_nand,a,b);
  nor G5(out_nor,a,b);
  xor G6(out_xor,a,b);
  xnor G7(out_xnor,a,b);
  
endmodule
