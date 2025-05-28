module full_adder_tb;
  wire sum,carry;
  reg a,b,c;
  full_adder dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

  initial
    begin
      $monitor ("Time= %0t | Inputs: A=%b B=%b C=%b | Outputs: Sum=%b Carry=%b", $time, a,b,c,sum,carry);
      $dumpfile("full_adder.vcd");
      $dumpvars(0,full_adder_tb);
      a=1'b0;b=1'b0;c=1'b0;
      #10 a=1'b0;b=1'b0;c=1'b1;
      #10 a=1'b0;b=1'b1;c=1'b0;
      #10 a=1'b0;b=1'b1;c=1'b1;
      #10 a=1'b1;b=1'b0;c=1'b0;
      #10 a=1'b1;b=1'b0;c=1'b1;
      #10 a=1'b1;b=1'b1;c=1'b0;
      #10 a=1'b1;b=1'b1;c=1'b1;
      #20 $finish;
    end
endmodule
  
