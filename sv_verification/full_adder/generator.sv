//Generator class

//1. Randomize the inputs
//2. Put them in the mailbox

class generator;

  //Create an handle of the transaction class
  transaction trans;
  
  //Create a mailbox: sending info from Generator to Driver
  mailbox gen2drv;
  
  event ev;
  
  function new(mailbox gen2drv);
    this.gen2drv=gen2drv;
  endfunction
  
  task main();
    repeat(32)
    begin
      trans = new();
      trans.randomize();
      trans.display("GEN");
      gen2drv.put(trans);
      @(ev);
    end
  endtask
  
endclass
