`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 19:48:26
// Design Name: 
// Module Name: TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TB;
    reg clk;
    reg rst;
    reg rx;
    wire m_clk;
    wire s_clk;
    wire lr_clk;
    
    i2s_transceiver TB(
    .clk_main(clk),
    .rst(rst),
//    .tx_i2s_data(),
    .m_clk(m_clk),   //master clock
    .s_clk(s_clk),   //serial data clock
    .lr_clk(lr_clk), //left-right channel clock
    .rx_i2s_data(rx)
    );
    
    initial begin
        rx <= 0;
        clk <= 0;
        rst <= 1;
        #10;
        rst <= 0;
        #10000;
//        $finish;
    end
    
    always begin
        #1 clk <= ~clk;
    end
    always @(posedge s_clk) begin
        rx <= $random % 2;
    end
endmodule
