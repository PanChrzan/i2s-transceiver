-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sat Jul  6 15:37:36 2024
-- Host        : DESKTOP-TP558OF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/AMD/vivdoWS/i2s_transceiver/i2s_transceiver.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_top_0_0 is
  Port ( 
    CLK_IN : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx_i2s_data : in STD_LOGIC;
    tx_i2s_data : out STD_LOGIC;
    s_clk_adc : out STD_LOGIC;
    s_clk_dac : out STD_LOGIC;
    m_clk_adc : out STD_LOGIC;
    m_clk_dac : out STD_LOGIC;
    lr_clk_adc : out STD_LOGIC;
    lr_clk_dac : out STD_LOGIC
  );

end design_1_top_0_0;

architecture stub of design_1_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK_IN,rst,rx_i2s_data,tx_i2s_data,s_clk_adc,s_clk_dac,m_clk_adc,m_clk_dac,lr_clk_adc,lr_clk_dac";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top,Vivado 2023.2";
begin
end;
