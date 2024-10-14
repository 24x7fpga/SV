module tb_while_loop; 
 
  initial begin

    int i;

    $display("---------- While Loop ----------");
    while (i<16) begin
      $display("I = %0d", i);
      i = i + 1;
    end

  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/while_loop/*") 
// End:
