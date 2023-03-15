// Code your design here
// Code your design here
// Code your design here
/* Implict constraint which is used constraint the rando value from the expression
Syntax is expression -> constraint 
Whenever the expression is satisifies then only the constraint only executred

There are some other impicit i.e is if and else

*/

class implicit1;
  
  rand bit [7:0] addr;
  randc bit [2:0] cond;
  
  constraint imp{ cond == 2 -> addr<10; };
  
endclass

class if_else;
  
  rand bit [7:0] addr;
  randc bit [1:0] cond;
  
  constraint imp1{ if(cond inside{[2:5]})
    					addr < 5;
                  else 
                    addr >5; }; 
  
endclass

module des;
  
  implicit1 handle1;
  if_else handle2;
  
  initial
    begin
      
      handle1 = new();
      handle2 = new();
      
      repeat(10) 
        begin
          
          handle1.randomize();
          handle2.randomize();

          $display("addr = %0d, cond = %0d",  handle1.addr, handle1.cond,);
          $display("addr = %0d, cond = %0d",  handle2.addr, handle2.cond,);
        end
    end
endmodule
