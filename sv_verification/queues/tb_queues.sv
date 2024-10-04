module tb_queues; 

  int q[$] = {1,2,3,4,5};
  int k;
  
  initial begin
   
    
    $display("------------------  Queue  ------------------");
    foreach(q[i])$display("\t q[%0d]=%0d",i, q[i]);
    
    k = q.pop_front();
    $display("-----------------  Pop Front -----------------");
    $display("\t k=%0d", k);
    
    k = q.pop_back();
    $display("-----------------  Pop Back  -----------------");
    $display("\t k=%0d", k);
    
    
    q.push_front(9);
    $display("--------------  Insert @ Front  --------------");
    foreach(q[i])$display("\t q[%0d]=%0d",i, q[i]);
    
    
    q.push_back(0);
    $display("--------------  Insert @ Back  ---------------");
    foreach(q[i])$display("\t q[%0d]=%0d",i, q[i]);
    
    q.delete(1); 
    $display("--------------  Delete Element  --------------");
    foreach(q[i])$display("\t q[%0d]=%0d",i, q[i]);
   
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/Verification/sv_verification/queues/*") 
// End:
