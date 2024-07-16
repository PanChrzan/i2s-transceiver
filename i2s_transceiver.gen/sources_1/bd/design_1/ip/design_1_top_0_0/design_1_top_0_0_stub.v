// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Jul  6 15:37:36 2024
// Host        : DESKTOP-TP558OF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/AMD/vivdoWS/i2s_transceiver/i2s_transceiver.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.v
// Design      : design_1_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2023.2" *)
module design_1_top_0_0(CLK_IN, rst, rx_i2s_data, tx_i2s_data, s_clk_adc, 
  s_clk_dac, m_clk_adc, m_clk_dac, lr_clk_adc, lr_clk_dac)
/* synthesis syn_black_box black_box_pad_pin="rst,rx_i2s_data,tx_i2s_data,m_clk_adc,m_clk_dac,lr_clk_adc,lr_clk_dac" */
/* synthesis syn_force_seq_prim="CLK_IN" */
/* synthesis syn_force_seq_prim="s_clk_adc" */
/* synthesis syn_force_seq_prim="s_clk_dac" */;
  input CLK_IN /* synthesis syn_isclock = 1 */;
  input rst;
  input rx_i2s_data;
  output tx_i2s_data;
  output s_clk_adc /* synthesis syn_isclock = 1 */;
  output s_clk_dac /* synthesis syn_isclock = 1 */;
  output m_clk_adc;
  output m_clk_dac;
  output lr_clk_adc;
  output lr_clk_dac;
endmodule
