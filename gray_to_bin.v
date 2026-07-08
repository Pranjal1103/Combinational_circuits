//design
module gtob(gray, bin);
  input [3:0] gray;
  input [3:0] bin;
  assign bin[3]=gray[3];
  assign bin[2]=bin[3]^gray[2];
  assign bin[1]=bin[2]^gray[1];
  assign bin[0]=bin[1]^gray[0];
endmodule

//testbench
module tb();
  reg [3:0] gray;
  wire [3:0] bin;
  gtob dut (gray,bin);
  initial begin
    $dumpfile("dump.vcd"); 
      $dumpvars;
  end
  initial
    begin
       gray=4'b0000;#2
    gray=4'b0001;#2
    gray=4'b0010;#2
    gray=4'b0011;#2
    gray=4'b0100;#2
    gray=4'b0101;#2
    gray=4'b0110;#2
    gray=4'b0111;#2
    gray=4'b1000;#2
    gray=4'b1001;#2
    gray=4'b1010;#2
    gray=4'b1011;#2
    gray=4'b1100;#2
    gray=4'b1101;#2
    gray=4'b1110;#2
    gray=4'b1111;#2
  $finish;
  end
endmodule

//eda playground link
www.edaplayground.com/x/EP5D
