/* Random variable weighted distrubution by using two keywords 

keywod is dist

value := weight
here the range of values has been assigned to equal weights

value :/ weight 
here the range of values has been equally distrubuted  */

class dist_keyword;
  
  rand bit [3:0] data;
  
  constraint data_wighted { data dist{ 5:=30, [11:20]:= 10 };};
  
endclass

// :/ keyword

class dist_keyword1;
  
  rand bit [3:0] data;
  
  constraint data_weighted {data dist{5:/3, [11:20]:/10};};
  
endclass

module des;
  
  dist_keyword handle1;
  dist_keyword handle2;
  
  initial
    begin
      
      handle1 = new();
      handle2 = new();
      
      repeat(3) 
        begin
          
          handle1.randomize();
          handle2.randomize();
          
          $display("Data in := %0d", handle1.data);
          $display("Data in :/ %0d", handle2.data);
          
        end
    end
  
endmodule
