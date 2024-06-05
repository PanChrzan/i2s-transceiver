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
    reg CLK_IN;
    reg rst;
    reg rx_i2s_data;
    wire tx_i2s_data;
    wire s_clk_adc;
    wire s_clk_dac;
    wire m_clk_adc;
    wire m_clk_dac;
    wire lr_clk_adc;
    wire lr_clk_dac;
    
    top TB(
    .CLK_IN(CLK_IN),
    .rst(rst),
    .rx_i2s_data(rx_i2s_data),
    .tx_i2s_data(tx_i2s_data),
    .s_clk_adc(s_clk_adc),
    .s_clk_dac(s_clk_dac),
    .m_clk_adc(m_clk_adc),
    .m_clk_dac(m_clk_dac),
    .lr_clk_adc(lr_clk_adc),
    .lr_clk_dac(lr_clk_dac)
    );
    
    initial begin
        rx_i2s_data <= 0;
        CLK_IN <= 0;
        rst <= 1;
        #10;
        rst <= 0;
        #10000;
//        $finish;
    end
    
    always begin
        #1 CLK_IN <= ~CLK_IN;
    end
    always @(posedge s_clk_adc) begin
        rx_i2s_data <= $random % 2;
    end
endmodule
