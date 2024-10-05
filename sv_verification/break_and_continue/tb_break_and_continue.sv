module tb_break_and_continue; 
 
  initial begin
    int i = 0;
    $display("---------- Even Number ----------");
    forever begin
      if(i % 2 == 0) begin
        $display("%0d is an Even Number", i);
        i = i + 1;
        continue;
      end else begin
        if(i > 20)
          break;
      end
      i = i + 1;
      #1;
    end
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/break_and_continue/*") 
// End:
