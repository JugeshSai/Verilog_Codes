module Basic_Gates_tb;
  wire out_and,out_or,out_not,out_nand,out_nor,out_xor,out_xnor;
  reg a,b;
  Dataflow dut(.a(a),.b(b),.out_and(out_and),.out_or(out_or),.out_not(out_not),.out_nand(out_nand),
               .out_nor(out_nor),.out_xor(out_xor),.out_xnor(out_xnor));
  initial
    begin
      a=1'b0; b=1'b0;
      #10 a=1'b0; b=1'b1;
      #10 a=1'b1; b=1'b0;
      #10 a=1'b1; b=1'b1;
      #50 $finish;
    end
  always @(*)
    begin
      $display(" Inputs: a=%b b=%b Outputs: AND=%b OR=%b NOT=%b NAND=%b NOR=%B XOR=%b XNOR=%b" , a,b,out_and,out_or,
               out_not,out_nand,out_nor,out_xor,out_xnor);
    end
endmodule
