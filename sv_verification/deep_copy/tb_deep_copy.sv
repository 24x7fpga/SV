// class
class grade;
  string mrk;

  function new(string mrk);
    this.mrk = mrk;
  endfunction

  //deep copy function
  function grade copy();
    copy = new(this.mrk);
  endfunction

endclass

// class
class name;
  string student;
  grade mrk;                     // class handle

  function new(string student, string mrk);
    this.student = student;
    this.mrk = new(mrk);         // condstruct an object
  endfunction

  // deep copy function
  function name copy();
    copy = new(this.student, this.mrk.mrk);
  endfunction

endclass

module tb_deep_copy; 
 
  name std1, std2;	       // class handle

  initial begin
    std1 = new("John", "B");     // construct
    $display("------------------------- Display -------------------------");
    $display("STD1 => Student Name = %s; Grade = %s", std1.student, std1.mrk.mrk);
    std2 = std1.copy();          // deep copy
    $display("----------------------- Deep Copy -------------------------");
    $display("STD2 => Student Name = %s; Grade = %s", std2.student, std2.mrk.mrk);
    $display("------------------ Change Name and Grade ------------------");
    std2.student = "Noah";
    std2.mrk.mrk = "A";
    $display("STD2 => Student Name = %s; Grade = %s", std2.student, std2.mrk.mrk);
    $display("------------------ Advantage of Deep Copy -----------------");
    $display("STD1 => Student Name = %s; Grade = %s => %s's Grade is NOT changed", std1.student, std1.mrk.mrk, std1.student);
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/deep_copy/*") 
// End:
