//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Jul 16 20:46:34 2024
//Host        : DESKTOP-TP558OF running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (lr_clk_adc,
    lr_clk_dac,
    m_clk_adc,
    m_clk_dac,
    rst,
    rx_i2s_data,
    s_clk_adc,
    s_clk_dac,
    sys_clock,
    tx_i2s_data);
  output lr_clk_adc;
  output lr_clk_dac;
  output m_clk_adc;
  output m_clk_dac;
  input rst;
  input rx_i2s_data;
  output s_clk_adc;
  output s_clk_dac;
  input sys_clock;
  output tx_i2s_data;

  wire lr_clk_adc;
  wire lr_clk_dac;
  wire m_clk_adc;
  wire m_clk_dac;
  wire rst;
  wire rx_i2s_data;
  wire s_clk_adc;
  wire s_clk_dac;
  wire sys_clock;
  wire tx_i2s_data;

  design_1 design_1_i
       (.lr_clk_adc(lr_clk_adc),
        .lr_clk_dac(lr_clk_dac),
        .m_clk_adc(m_clk_adc),
        .m_clk_dac(m_clk_dac),
        .rst(rst),
        .rx_i2s_data(rx_i2s_data),
        .s_clk_adc(s_clk_adc),
        .s_clk_dac(s_clk_dac),
        .sys_clock(sys_clock),
        .tx_i2s_data(tx_i2s_data));
endmodule
