module testbench;
  reg b2,b1,b0;
  wire g2,g1,g0;
  comparator CUT(.B2(b2), .B1(b1), .B0(b0), .G2(g2), .G1(g1), .G0(g0));
  initial
    begin
      $dumpfile("comparator.vcd");
      $dumpvars(0,testbench);
      $monitor($time ," B2=%b, B1=%b, B0=%b, G2=%b, G1=%b, G0=%b",b2,b1,b0,g2,g1,g0);
               
      #5 b2=0; b1=0; b0=0;
      #5 b0=1;
      #5 b2=0; b1=1; b0=0;
      #5 b0=1;
      #5 b2=1; b1=0; b0=0;
      #5 b0=1;
      #5 b1=1; b0=0;
      #5 b0=1;
      #5 $finish;
    end
endmodule
      
