module half_adder_tb;
  wire sum,carry;
  reg a,b;
  half_adder dut(.a(a),.b(b),.sum(sum),.carry(carry));

  initial
    begin
      $monitor ("Time= %0t | Inputs: A=%b B=%b | Outputs: Sum=%b Carry=%b", $time, a,b,sum,carry);
      $dumpfile("half_adder.vcd");
      $dumpvars(0,half_adder_tb);
      a=1'b0;b=1'b0;
      #10 a=1'b0;b=1'b1;
      #10 a=1'b1;b=1'b0;
      #10 a=1'b1;b=1'b1;
      #20 $finish;
    end
endmodule
  
