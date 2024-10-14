// class
class grade;
  string mrk;

  function new (string mrk);
    this.mrk = mrk;
  endfunction

endclass

// class
class name;
  string student;
  grade mrk;                  // class handle

  function new (string student, string mrk);
    this.student = student;
    this.mrk = new(mrk);      // condstruct an object
  endfunction

endclass

module tb_shallow_copy; 
 

  name std1, std2, std3;	  // class handle

  initial begin
    std1 = new("John", "B"); // construct
    $display("------------------------- Display -------------------------");
    $display("STD1 => Student Name = %s; Grade = %s", std1.student, std1.mrk.mrk);
    std2 = new std1;         // shallow copy
    $display("---------------------- Shallow Copy -----------------------");
    $display("STD2 => Student Name = %s; Grade = %s", std2.student, std2.mrk.mrk);
    $display("------------------ Change Name and Grade ------------------");
    std2.student = "Noah";
    std2.mrk.mrk = "A";
    $display("STD2 => Student Name = %s; Grade = %s", std2.student, std2.mrk.mrk);
    $display("---------------- Limitation of Shallow Copy ---------------");
    $display("STD1 => Student Name = %s; Grade = %s => %s's Grade is also changed", std1.student, std1.mrk.mrk, std1.student);
    std3 = std1;
    $display("--------------------- Class assignment --------------------");
    $display("STD3 => Student Name = %s; Grade = %s", std3.student, std3.mrk.mrk);
    std3.student = "Theo";
    std3.mrk.mrk = "C";
    $display("------------------ Change Name and Grade ------------------");
    $display("STD3 => Student Name = %s; Grade = %s", std3.student, std3.mrk.mrk);
    $display("--------------------- Class assignment --------------------");
    $display("----------------- Points to the same memory ---------------");
    $display("----------------- Original is also changed ----------------");
    $display("STD1 => Student Name = %s; Grade = %s", std1.student, std1.mrk.mrk);

  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/shallow_copy/*") 
// End:
