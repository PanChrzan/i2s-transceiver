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


module top
    #(
        /* 125 MHz input clock and MCLK_DIVISION = 5 gives:
        MCLK = 12.5 MHz 
        SCLK = 3.125 MHz
        LRCLK = 48.8 kHz */
        parameter MCLK_DIVISION = 5
    )
    (
        input CLK_IN,
        input rst,
        input rx_i2s_data,
        output tx_i2s_data,

        output wire [31:0] axis_m_tdata_int,
        output wire axis_m_tvalid_int,
        output wire axis_m_tlast_int,

        output s_clk_adc,
        output s_clk_dac,
        output m_clk_adc,
        output m_clk_dac,
        output lr_clk_adc,
        output lr_clk_dac
    );

    wire m_clk;     //master clock
    wire s_clk;     //serial data clock
    wire lr_clk;    //left-right clock

    //gives 12.5 MHz
    clk_divider #(MCLK_DIVISION) MCLK ( 
        .clk_main(CLK_IN),
        .rst(rst),
        .clk_divide(m_clk)
    );
    //gives 3.125 MHz
    clk_divider #(MCLK_DIVISION*4) SCLK (
        .clk_main(CLK_IN),
        .rst(rst),
        .clk_divide(s_clk)
    );
    //gives arround 48 kHz
    clk_divider #(MCLK_DIVISION*256) LRCLK (
        .clk_main(CLK_IN),
        .rst(rst),
        .clk_divide(lr_clk)
    );

    wire data_valid;
    wire [31:0] tx_i2s_data_reg;
    wire [31:0] rx_i2s_data_reg;

    transceiver i2s_rx_tx (
        .CLK_IN(CLK_IN),
        .rst(rst),
        .rx_i2s_data(rx_i2s_data),
        .tx_i2s_data(tx_i2s_data),
        .s_clk(s_clk),
        .lr_clk(lr_clk),
        .tx_i2s_data_reg(tx_i2s_data_reg),
        .data_valid(data_valid),
        .rx_i2s_data_reg(rx_i2s_data_reg)
    );
    
    i2s_mem #(
        .MEM_DEPTH(20)
    )
    mem(
        .CLK_IN(CLK_IN),
        .rst(rst),

        .axis_m_tdata(axis_m_tdata_int),
		.axis_m_tvalid(axis_m_tvalid_int),
        .axis_m_tlast(axis_m_tlast_int),

        .data_valid(data_valid),
        .i2s_rx_data(rx_i2s_data_reg),
        .i2s_tx_data(tx_i2s_data_reg)
    );

    assign lr_clk_dac = lr_clk;
    assign m_clk_dac = m_clk;
    assign s_clk_dac = s_clk;

    assign lr_clk_adc = lr_clk;
    assign m_clk_adc = m_clk;
    assign s_clk_adc = s_clk;
endmodule
