// Code your design here
// Code your design here
/*constraint mode same as the randomization 
syntax constraint_mode.properties(0)

*/

class cons;
  
  rand byte addr;
  
  constraint addr_range { addr inside{[3:9]};};
  
endclass


module des;
  
  cons handle1;
  
  initial 
    begin
      
      handle1 = new();
      
      /*repeat(2) 
        begin
          
          handle1.randomize();
          $display("addr is print before mode 0 is %0d", handle1.addr);
          
          $display("-----------------------------");
          
        end*/
      
      repeat(2)
        begin
          handle1.randomize();
          handle1.addr_range.constraint_mode(0);
          
          $display("Adr is print after mode 0 is %0d", handle1.addr);
          
          $display("constraint mode is %0d",  handle1.addr_range.constraint_mode());
        end
      
    end
  
endmodule
