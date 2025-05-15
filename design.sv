module bin_to_gray(B2,B1,B0,G2,G1,G0);
  input B2,B1,B0;
  output reg G2,G1,G0;
  
  always @(*)
    begin
      G2=0; G1=0; G0=0;
      G0 = B1 ^ B0;
      G1 = B2 ^ B1;
      G2 = B2;
    end
endmodule
