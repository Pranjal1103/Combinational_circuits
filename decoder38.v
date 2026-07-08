//design
module decoder3_8(input [2:0] a,output reg [7:0] y);
  always@(*)
   begin
     case(a)
        3'b000:y=8'b00000001;
        3'b001:y=8'b00000010;
        3'b010:y=8'b00000100;
        3'b011:y=8'b00001000;
        3'b100:y=8'b00010000;
        3'b101:y=8'b00100000;
        3'b110:y=8'b01000000;
        3'b111:y=8'b10000000;
       default:y=8'bxxxxxxxx;
     endcase
   end
endmodule

//testbench
module tb();
  reg [2:0] a;
  wire [7:0] y;
  decoder3_8 dut(a,y);
  initial
    begin
      $dumpfile("dump.vcd"); 
      $dumpvars;
      
    end
  initial begin
    a=3'bxxx;#5
    a=3'b000;#5
     a=3'b001;#5
     a=3'b010;#5
     a=3'b011;#5
     a=3'b100;#5
     a=3'b101;#5
     a=3'b110;#5
     a=3'b111;#5
    $finish;
  end
endmodule

//eda playground link
www.edaplayground.com/x/Xbv8
