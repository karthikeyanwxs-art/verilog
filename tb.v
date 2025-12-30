module tb;

reg A,B;
wire Y;

andgate gg(.a(A),,b(B),.y(Y));

initial begin
    A=1'b0,B=1'b0;
    #10 A=1'b0,B=1'b1;
    #10 A=1'b1,B=1'b0;
    #10 A=1'b1,B=1'b1;
    $finish;
end

always(*)begin
    display("time=@ %t \t the input values \t A=%b,B=%b and the output is Y=%b",$time,A,B,Y);
end

initial begin 
    $dumpfile(andgate.vcd);
    $dumpars();
end

endmodule