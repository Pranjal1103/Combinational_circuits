//design
module hs(x,y,d,b);
  input x,y;
  output reg d,b;
  always@(*)
    assign d=x^y;
 assign b=((~x)&y);
endmodule

//testbench
module hstb();
  reg x,y;
  wire d,b;
  hs dut(.x(x),.y(y),.d(d),.b(b));
  initial 
    begin
      $dumpfile("dump.vcd");             
      $dumpvars(0,hstb);
    end
  initial begin
    x=0;
    y=0;
    #10
    x=0;
    y=1;
    #20;
    x=1;
    y=0;
    #30
    x=1;
    y=1;
    #40
    $finish;
    end
  
endmodule

//eda playgroung link
https://www.edaplayground.com/x/ifpX

