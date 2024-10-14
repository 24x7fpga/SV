module tb_static_task; 
 
  logic [3:0] data = 0;
  logic [3:0] arry[16];

  task incr;
    data++;
  endtask

  initial begin
    $display("--------- Task: Increment ---------");
    for(int i=0; i<15; i++)begin
      incr();
      $display("data = %0d", data);
      #1;
    end
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/static_task/*") 
// End:
