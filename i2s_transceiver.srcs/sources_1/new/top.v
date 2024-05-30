`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 13:35:40
// Design Name: 
// Module Name: top
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


module top(
    input CLK_IN,
    input [3:0] btns_4bits_tri_i,
    input rx_i2s_data,
    output tx_i2s_data,
    output s_clk_adc,
    output s_clk_dac,
    output m_clk_adc,
    output m_clk_dac,
    output lr_clk_adc,
    output lr_clk_dac
    );

    i2s_transceiver i2s_rx_tx (
        .clk_main(CLK_IN),
        .rst(btns_4bits_tri_i[0]),
        .rx_i2s_data(rx_i2s_data),
        .tx_i2s_data(tx_i2s_data),
        .m_clk(m_clk_dac),
        .lr_clk(lr_clk_dac),
        .s_clk(s_clk_dac)
    );

    assign lr_clk_adc = lr_clk_dac;
    assign m_clk_adc = m_clk_dac;
    assign s_clk_adc = s_clk_dac;
endmodule
