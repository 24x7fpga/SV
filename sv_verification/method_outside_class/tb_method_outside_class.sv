class ex_class;
   // class properties or variables
   int a, b, s;
   extern task sum (int a,b);
endclass

// task method outside the class
task ex_class::sum (int a,b);
        s = a + b;
        $display("a = %0d , b = %0d, sum s = %0d", a, b ,s);
endtask



module tb_method_outside_class; 
 
   ex_class cl_obj;      // declare a class handle of type cl_obj

   initial begin
     cl_obj = new( );   // construct an object
     cl_obj.sum(30,10); // access a method
     repeat(10)
        cl_obj.sum($urandom_range(1,50),$urandom_range(1,50));
   end 
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/method_outside_class/*") 
// End:
