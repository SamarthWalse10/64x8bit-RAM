`timescale 1ns / 1ps


module ram64_8bit(en,clk,read,write,address,in,out);
input en,clk,read,write;
input [2:0]address;
input [63:0]in;
output [59:0]out;
reg [63:0]temp;
reg [63:0]memory[0:7];

initial begin
    memory[0] = 5; 
    memory[1] = 23; 
    memory[2] = 79; 
    memory[3] = 28; 
    memory[4] = 39; 
    memory[5] = 78; 
    memory[6] = 198; 
    memory[7] = 74;
end

always @(posedge clk) begin
    if (en & write & ~read) 
        memory[address] <= in;
    else if (en & ~write & read)
        temp <= memory[address];
    else
        temp <= 64'bx; 
end

assign out = temp[59:0];
endmodule
