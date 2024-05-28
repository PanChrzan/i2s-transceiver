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
    inout [7:0] pmoda_rpi_gpio_tri_io
    );

    i2s_transceiver i2s_rx_tx (
        .clk_main(CLK_IN),
        .rst(btns_4bits_tri_i[0]),
        .rx_i2s_data(pmoda_rpi_gpio_tri_io[7]),
        .tx_i2s_data(pmoda_rpi_gpio_tri_io[3]),
        .m_clk(pmoda_rpi_gpio_tri_io[0]),
        .lr_clk(pmoda_rpi_gpio_tri_io[1]),
        .s_clk(pmoda_rpi_gpio_tri_io[2])
    );

    assign pmoda_rpi_gpio_tri_io[4] = pmoda_rpi_gpio_tri_io[0];
    assign pmoda_rpi_gpio_tri_io[5] = pmoda_rpi_gpio_tri_io[1];
    assign pmoda_rpi_gpio_tri_io[6] = pmoda_rpi_gpio_tri_io[2];
endmodule
