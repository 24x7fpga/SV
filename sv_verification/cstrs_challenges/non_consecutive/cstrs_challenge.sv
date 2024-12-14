class cstrs_challenge;
   bit z = 0;
   // class properties
   rand bit [31:0] a;
   // constraints
   constraint c1 {foreach(a[i]){
      if(a[i] == z && i < 31)
	 a[i+1] != z;}
		  }
   // display function
   function void disp();
      $display("a = %b", a);
   endfunction // disp

endclass // cstrs_challenge
