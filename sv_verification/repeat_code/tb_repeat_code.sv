module tb_repeat_code; 
 
  initial begin
    int i = 0;
    $display("---------- 3 times table ----------");
    repeat(11)begin
      $display("3 x %0d = %0d", i, i*3);
      i = i + 1;
    end
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/repeat_code/*") 
// End:
