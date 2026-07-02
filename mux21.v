//design
module mux(input a,b,sel,output out);
  assign out=sel?a:b;
endmodule

//testbench
module tb;
  reg a,b,sel;
  wire out;
  mux dut(.a(a),.b(b),.sel(sel),.out(out));
  initial begin
    $dumpfile("mux.vcd");
$dumpvars(0,tb);
    
  end
  initial
  begin
   a=0; b=0; sel=0; #10;
    a=0; b=1; sel=0; #10;
    a=1; b=0; sel=0; #10;
    a=1; b=1; sel=0; #10;

    a=0; b=0; sel=1; #10;
    a=0; b=1; sel=1; #10;
    a=1; b=0; sel=1; #10;
    a=1; b=1; sel=1; #10;
    $finish;
  end
endmodule

//eda playgroundlink
www.edaplayground.com/x/8in3
