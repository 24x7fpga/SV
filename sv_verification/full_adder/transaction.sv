//Transcation or Packet class

class transaction;
  
//Stimulus for input
//Declare input with rand keyword
  rand bit a;
  rand bit b;
  rand bit c;
  
  bit s;
  bit co;
  
//Function to Display values  
  function void display(string name);
    $display(" %s: a=%0d , b=%0d , c=%0d => s=%0d , co=%0d ",name,a,b,c,s,co);
  endfunction
  
endclass
