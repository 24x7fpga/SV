module tb_task_ex; 
 
  logic [3:0] data;
  logic [3:0] arry[16];

  task incr([3:0] in, output logic [3:0] out);
    out = in + 1;
  endtask

  initial begin
    data = 0;
    $display("--------- Task: Increment ---------");
    //$display("data = %0d", data);
    arry[0]= data;
    for(int i=0; i<15; i++)begin
      incr(arry[i], arry[i+1]);
      $display("data = %0d", arry[i+1]);
      #1;
    end
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/task_ex/*") 
// End:
