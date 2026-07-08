//design
module btog(bin,gray);
  input [3:0] bin;
  output [3:0] gray;
  assign gray[3]=bin[3];
  assign gray[2]=bin[3]^bin[2];
  assign gray[1]=bin[2]^bin[1];
  assign gray[0]=bin[1]^bin[0];
endmodule

//testbench
module tb();
  reg [3:0] bin;
  wire [3:0] gray;
  btog dut(bin,gray);
  initial begin
    $dumpfile("dump.vcd"); 
      $dumpvars;
      
    end
  initial begin
    bin=4'b0000;#2
    bin=4'b0001;#2
    bin=4'b0010;#2
    bin=4'b0011;#2
    bin=4'b0100;#2
    bin=4'b0101;#2
    bin=4'b0110;#2
    bin=4'b0111;#2
    bin=4'b1000;#2
    bin=4'b1001;#2
    bin=4'b1010;#2
    bin=4'b1011;#2
    bin=4'b1100;#2
    bin=4'b1101;#2
    bin=4'b1110;#2
    bin=4'b1111;#2
  $finish;
  end
endmodule

//eda playgroung link
www.edaplayground.com/x/P2XP
