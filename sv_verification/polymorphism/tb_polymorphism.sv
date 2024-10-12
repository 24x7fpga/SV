// Parent class
class parent_class;
   // class properties or variables
  int a, b, s;

   // task method
  task func1 (int a, b);
    s      = a + b;
    $display("Non-Virtual: Parent Class => a = %0d , b = %0d, sum s = %0d", a, b, s);
  endtask

  virtual task func2 (int a, b);
    s      = a + b;
    $display("Virtual:     Parent Class => a = %0d , b = %0d, sum s = %0d", a, b, s);
  endtask

endclass

// Child Class
class child_class extends parent_class;
  // class properties or variables
  int a, b, m;

  // task method
  task func1 (int a, b);
    m      = a * b;
    $display("Non-Virtual: Child Class  => a = %0d , b = %0d, mul m = %0d", a, b, m);
  endtask

  virtual task func2 (int a, b); // good practice to declare a class method as virtual
    m      = a * b;
    $display("Virtual:     Child Class  => a = %0d , b = %0d, mul m = %0d", a, b, m);
  endtask

endclass

module tb_polymorphism; 
 
  parent_class pr_obj;          // declare a handle for parent class
  child_class cl_obj;           // declare a handle for child class

  task run(parent_class arg, int a, b);
    arg.func1(a, b);            // commented and uncomment to
    arg.func2(a, b);            // see the effects
  endtask

   initial begin
     cl_obj = new( );           // construct an object

     pr_obj = new( );           // WHEN THE CHILD CLASS HANDLE POINTS TO THE PARENT CLASS HANDLE

     $display("---------------------- Polymorphism ----------------------");
     run(pr_obj, 30, 10);
     run(cl_obj, 30, 10);

   end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/polymorphism/*") 
// End:
