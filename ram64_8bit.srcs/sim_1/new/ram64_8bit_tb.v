`timescale 1ns / 1ps


module ram64_8bit_tb();
reg clk,en,read,write;
reg [63:0]in;
reg [2:0]address;
wire [59:0]out;

ram64_8bit dut(.en(en), .clk(clk), .read(read), .write(write), .address(address), .in(in), .out(out));

initial begin
    en = 1'b0; in = 64'd0;
    #50 en = 1'b1; write = 1'b0; read = 1'b0;
    #40 write = 1'b0; read = 1'b1; address = 3'b000;
    #70 write = 1'b0; read = 1'b1; address = 3'b001;
    #70 write = 1'b0; read = 1'b1; address = 3'b010;
    #70 write = 1'b0; read = 1'b1; address = 3'b011;
    #70 write = 1'b0; read = 1'b1; address = 3'b100;
    #70 write = 1'b0; read = 1'b1; address = 3'b101;
    #70 write = 1'b0; read = 1'b1; address = 3'b110;
    #70 write = 1'b0; read = 1'b1; address = 3'b111;
    #70 in = 64'd10; write = 1'b1; read = 1'b0; address = 3'b101;
    #70 write = 1'b0; read = 1'b1; address = 3'b101;
end

initial begin
    clk = 0;
    forever #15 clk = ~clk;
end

endmodule
