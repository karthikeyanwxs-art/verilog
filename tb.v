module tb;
reg A,B;
wire Y;
andgate gate(.a(A),.b(B),.y(Y));
initial begin

    $monitor("time=@ %t \t the input values \t A=%b,B=%b and the output is Y=%b",$time,A,B,Y);
  
     A=1'b0;B=1'b0;
    #10 A=1'b0;B=1'b1;
    #10 A=1'b1;B=1'b0;
    #10 A=1'b1;B=1'b1;
  #10 $finish;

end
  
initial begin 
  $dumpfile("andgate.vcd");
    $dumpvars;
end
endmodule