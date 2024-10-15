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
    trans = new();
    this.gen2drv=gen2drv;
  endfunction
  
  task main();
    repeat(32)
    begin
      assert(trans.randomize) 
          else 
        $error("GEN: Randomization Failed");  //randomize the transaction and verify if it is randomized
      trans.display("GEN");
      gen2drv.put(trans);
      @(ev);
    end
  endtask
  
endclass
