module half_adder(a,b,s,c);
  input  a,b;
  output s,c;
  
  xor X1 (s,a,b);
  and A1 (c,a,b);
  
endmodule
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/half_adder" ".") 
// End:
