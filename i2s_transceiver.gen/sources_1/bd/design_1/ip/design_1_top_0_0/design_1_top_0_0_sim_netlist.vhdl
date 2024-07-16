-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sat Jul  6 15:37:36 2024
-- Host        : DESKTOP-TP558OF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/AMD/vivdoWS/i2s_transceiver/i2s_transceiver.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_clk_divider is
  port (
    m_clk_dac : out STD_LOGIC;
    CLK_IN : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_clk_divider : entity is "clk_divider";
end design_1_top_0_0_clk_divider;

architecture STRUCTURE of design_1_top_0_0_clk_divider is
  signal counter : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal counter_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_reg[11]_i_2__0_n_2\ : STD_LOGIC;
  signal \counter_reg[11]_i_2__0_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_2__0_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_2__0_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_2__0_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_2__0_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_2__0_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_2__0_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \^m_clk_dac\ : STD_LOGIC;
  signal \out_buf_i_1__1_n_0\ : STD_LOGIC;
  signal \out_buf_i_2__1_n_0\ : STD_LOGIC;
  signal \out_buf_i_3__1_n_0\ : STD_LOGIC;
  signal \out_buf_i_4__1_n_0\ : STD_LOGIC;
  signal \NLW_counter_reg[11]_i_2__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[11]_i_2__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[10]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[11]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[1]_i_1__2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[2]_i_1__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[3]_i_1__2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[4]_i_1__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[5]_i_1__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[6]_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[7]_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[8]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[9]_i_1__1\ : label is "soft_lutpair12";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[11]_i_2__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_2__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_2__0\ : label is 35;
  attribute SOFT_HLUTNM of \out_buf_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_buf_i_4__1\ : label is "soft_lutpair7";
begin
  m_clk_dac <= \^m_clk_dac\;
\counter[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_0(0)
    );
\counter[10]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(10),
      O => counter_0(10)
    );
\counter[11]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(11),
      O => counter_0(11)
    );
\counter[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(1),
      O => counter_0(1)
    );
\counter[2]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(2),
      O => counter_0(2)
    );
\counter[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(3),
      O => counter_0(3)
    );
\counter[4]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(4),
      O => counter_0(4)
    );
\counter[5]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(5),
      O => counter_0(5)
    );
\counter[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(6),
      O => counter_0(6)
    );
\counter[7]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(7),
      O => counter_0(7)
    );
\counter[8]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(8),
      O => counter_0(8)
    );
\counter[9]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => data0(9),
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[11]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_2__0_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[11]_i_2__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[11]_i_2__0_n_2\,
      CO(0) => \counter_reg[11]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[11]_i_2__0_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => counter(11 downto 9)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[4]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_2__0_n_0\,
      CO(2) => \counter_reg[4]_i_2__0_n_1\,
      CO(1) => \counter_reg[4]_i_2__0_n_2\,
      CO(0) => \counter_reg[4]_i_2__0_n_3\,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[8]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_2__0_n_0\,
      CO(3) => \counter_reg[8]_i_2__0_n_0\,
      CO(2) => \counter_reg[8]_i_2__0_n_1\,
      CO(1) => \counter_reg[8]_i_2__0_n_2\,
      CO(0) => \counter_reg[8]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter_0(9),
      Q => counter(9)
    );
\out_buf_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \out_buf_i_2__1_n_0\,
      I1 => \^m_clk_dac\,
      O => \out_buf_i_1__1_n_0\
    );
\out_buf_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \out_buf_i_3__1_n_0\,
      I1 => counter(5),
      I2 => counter(4),
      I3 => counter(7),
      I4 => counter(6),
      I5 => \out_buf_i_4__1_n_0\,
      O => \out_buf_i_2__1_n_0\
    );
\out_buf_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(9),
      I1 => counter(8),
      I2 => counter(11),
      I3 => counter(10),
      O => \out_buf_i_3__1_n_0\
    );
\out_buf_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(3),
      I3 => counter(2),
      O => \out_buf_i_4__1_n_0\
    );
out_buf_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => \out_buf_i_1__1_n_0\,
      Q => \^m_clk_dac\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_clk_divider__parameterized0\ is
  port (
    out_buf_reg_0 : out STD_LOGIC;
    CLK_IN : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_clk_divider__parameterized0\ : entity is "clk_divider";
end \design_1_top_0_0_clk_divider__parameterized0\;

architecture STRUCTURE of \design_1_top_0_0_clk_divider__parameterized0\ is
  signal counter : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal out_buf_i_1_n_0 : STD_LOGIC;
  signal out_buf_i_2_n_0 : STD_LOGIC;
  signal out_buf_i_3_n_0 : STD_LOGIC;
  signal out_buf_i_4_n_0 : STD_LOGIC;
  signal \^out_buf_reg_0\ : STD_LOGIC;
  signal \NLW_counter_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[11]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[2]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[3]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of out_buf_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of out_buf_i_4 : label is "soft_lutpair14";
begin
  out_buf_reg_0 <= \^out_buf_reg_0\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => counter(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[11]_i_2_n_6\,
      O => counter(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[11]_i_2_n_5\,
      O => counter(11)
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[4]_i_2_n_7\,
      O => counter(1)
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[4]_i_2_n_6\,
      O => counter(2)
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[4]_i_2_n_5\,
      O => counter(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[4]_i_2_n_4\,
      O => counter(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[8]_i_2_n_7\,
      O => counter(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[8]_i_2_n_6\,
      O => counter(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[8]_i_2_n_5\,
      O => counter(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[8]_i_2_n_4\,
      O => counter(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter_reg[11]_i_2_n_7\,
      O => counter(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(0),
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(10),
      Q => \counter_reg_n_0_[10]\
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(11),
      Q => \counter_reg_n_0_[11]\
    );
\counter_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[11]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[11]_i_2_n_2\,
      CO(0) => \counter_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[11]_i_2_O_UNCONNECTED\(3),
      O(2) => \counter_reg[11]_i_2_n_5\,
      O(1) => \counter_reg[11]_i_2_n_6\,
      O(0) => \counter_reg[11]_i_2_n_7\,
      S(3) => '0',
      S(2) => \counter_reg_n_0_[11]\,
      S(1) => \counter_reg_n_0_[10]\,
      S(0) => \counter_reg_n_0_[9]\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(1),
      Q => \counter_reg_n_0_[1]\
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(2),
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(3),
      Q => \counter_reg_n_0_[3]\
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(4),
      Q => \counter_reg_n_0_[4]\
    );
\counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_2_n_0\,
      CO(2) => \counter_reg[4]_i_2_n_1\,
      CO(1) => \counter_reg[4]_i_2_n_2\,
      CO(0) => \counter_reg[4]_i_2_n_3\,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_2_n_4\,
      O(2) => \counter_reg[4]_i_2_n_5\,
      O(1) => \counter_reg[4]_i_2_n_6\,
      O(0) => \counter_reg[4]_i_2_n_7\,
      S(3) => \counter_reg_n_0_[4]\,
      S(2) => \counter_reg_n_0_[3]\,
      S(1) => \counter_reg_n_0_[2]\,
      S(0) => \counter_reg_n_0_[1]\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(5),
      Q => \counter_reg_n_0_[5]\
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(6),
      Q => \counter_reg_n_0_[6]\
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(7),
      Q => \counter_reg_n_0_[7]\
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(8),
      Q => \counter_reg_n_0_[8]\
    );
\counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_2_n_0\,
      CO(3) => \counter_reg[8]_i_2_n_0\,
      CO(2) => \counter_reg[8]_i_2_n_1\,
      CO(1) => \counter_reg[8]_i_2_n_2\,
      CO(0) => \counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_2_n_4\,
      O(2) => \counter_reg[8]_i_2_n_5\,
      O(1) => \counter_reg[8]_i_2_n_6\,
      O(0) => \counter_reg[8]_i_2_n_7\,
      S(3) => \counter_reg_n_0_[8]\,
      S(2) => \counter_reg_n_0_[7]\,
      S(1) => \counter_reg_n_0_[6]\,
      S(0) => \counter_reg_n_0_[5]\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(9),
      Q => \counter_reg_n_0_[9]\
    );
out_buf_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \^out_buf_reg_0\,
      O => out_buf_i_1_n_0
    );
out_buf_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => out_buf_i_3_n_0,
      I1 => \counter_reg_n_0_[5]\,
      I2 => \counter_reg_n_0_[4]\,
      I3 => \counter_reg_n_0_[7]\,
      I4 => \counter_reg_n_0_[6]\,
      I5 => out_buf_i_4_n_0,
      O => out_buf_i_2_n_0
    );
out_buf_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      I1 => \counter_reg_n_0_[8]\,
      I2 => \counter_reg_n_0_[11]\,
      I3 => \counter_reg_n_0_[10]\,
      O => out_buf_i_3_n_0
    );
out_buf_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[3]\,
      I3 => \counter_reg_n_0_[2]\,
      O => out_buf_i_4_n_0
    );
out_buf_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => out_buf_i_1_n_0,
      Q => \^out_buf_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_clk_divider__parameterized1\ is
  port (
    out_buf_reg_0 : out STD_LOGIC;
    CLK_IN : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_clk_divider__parameterized1\ : entity is "clk_divider";
end \design_1_top_0_0_clk_divider__parameterized1\;

architecture STRUCTURE of \design_1_top_0_0_clk_divider__parameterized1\ is
  signal counter : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__0_n_4\ : STD_LOGIC;
  signal \counter0_carry__0_n_5\ : STD_LOGIC;
  signal \counter0_carry__0_n_6\ : STD_LOGIC;
  signal \counter0_carry__0_n_7\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_5\ : STD_LOGIC;
  signal \counter0_carry__1_n_6\ : STD_LOGIC;
  signal \counter0_carry__1_n_7\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter0_carry_n_4 : STD_LOGIC;
  signal counter0_carry_n_5 : STD_LOGIC;
  signal counter0_carry_n_6 : STD_LOGIC;
  signal counter0_carry_n_7 : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \out_buf_i_1__0_n_0\ : STD_LOGIC;
  signal \out_buf_i_2__0_n_0\ : STD_LOGIC;
  signal \out_buf_i_3__0_n_0\ : STD_LOGIC;
  signal \out_buf_i_4__0_n_0\ : STD_LOGIC;
  signal \^out_buf_reg_0\ : STD_LOGIC;
  signal \NLW_counter0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[10]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[11]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[1]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[2]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[3]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[4]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[5]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[6]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[7]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[8]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[9]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \out_buf_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \out_buf_i_4__0\ : label is "soft_lutpair0";
begin
  out_buf_reg_0 <= \^out_buf_reg_0\;
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => counter0_carry_n_4,
      O(2) => counter0_carry_n_5,
      O(1) => counter0_carry_n_6,
      O(0) => counter0_carry_n_7,
      S(3) => \counter_reg_n_0_[4]\,
      S(2) => \counter_reg_n_0_[3]\,
      S(1) => \counter_reg_n_0_[2]\,
      S(0) => \counter_reg_n_0_[1]\
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__0_n_4\,
      O(2) => \counter0_carry__0_n_5\,
      O(1) => \counter0_carry__0_n_6\,
      O(0) => \counter0_carry__0_n_7\,
      S(3) => \counter_reg_n_0_[8]\,
      S(2) => \counter_reg_n_0_[7]\,
      S(1) => \counter_reg_n_0_[6]\,
      S(0) => \counter_reg_n_0_[5]\
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_counter0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter0_carry__1_O_UNCONNECTED\(3),
      O(2) => \counter0_carry__1_n_5\,
      O(1) => \counter0_carry__1_n_6\,
      O(0) => \counter0_carry__1_n_7\,
      S(3) => '0',
      S(2) => \counter_reg_n_0_[11]\,
      S(1) => \counter_reg_n_0_[10]\,
      S(0) => \counter_reg_n_0_[9]\
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => counter(0)
    );
\counter[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => \counter0_carry__1_n_6\,
      O => counter(10)
    );
\counter[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => \counter0_carry__1_n_5\,
      O => counter(11)
    );
\counter[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => counter0_carry_n_7,
      O => counter(1)
    );
\counter[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => counter0_carry_n_6,
      O => counter(2)
    );
\counter[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => counter0_carry_n_5,
      O => counter(3)
    );
\counter[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => counter0_carry_n_4,
      O => counter(4)
    );
\counter[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => \counter0_carry__0_n_7\,
      O => counter(5)
    );
\counter[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => \counter0_carry__0_n_6\,
      O => counter(6)
    );
\counter[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => \counter0_carry__0_n_5\,
      O => counter(7)
    );
\counter[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => \counter0_carry__0_n_4\,
      O => counter(8)
    );
\counter[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => \counter0_carry__1_n_7\,
      O => counter(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(0),
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(10),
      Q => \counter_reg_n_0_[10]\
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(11),
      Q => \counter_reg_n_0_[11]\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(1),
      Q => \counter_reg_n_0_[1]\
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(2),
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(3),
      Q => \counter_reg_n_0_[3]\
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(4),
      Q => \counter_reg_n_0_[4]\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(5),
      Q => \counter_reg_n_0_[5]\
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(6),
      Q => \counter_reg_n_0_[6]\
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(7),
      Q => \counter_reg_n_0_[7]\
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(8),
      Q => \counter_reg_n_0_[8]\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => counter(9),
      Q => \counter_reg_n_0_[9]\
    );
\out_buf_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => \^out_buf_reg_0\,
      O => \out_buf_i_1__0_n_0\
    );
\out_buf_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg_n_0_[5]\,
      I2 => \counter_reg_n_0_[4]\,
      I3 => \counter_reg_n_0_[7]\,
      I4 => \counter_reg_n_0_[6]\,
      I5 => \out_buf_i_4__0_n_0\,
      O => \out_buf_i_2__0_n_0\
    );
\out_buf_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      I1 => \counter_reg_n_0_[8]\,
      I2 => \counter_reg_n_0_[11]\,
      I3 => \counter_reg_n_0_[10]\,
      O => \out_buf_i_3__0_n_0\
    );
\out_buf_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[3]\,
      I3 => \counter_reg_n_0_[2]\,
      O => \out_buf_i_4__0_n_0\
    );
out_buf_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK_IN,
      CE => '1',
      CLR => rst,
      D => \out_buf_i_1__0_n_0\,
      Q => \^out_buf_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_i2s_transceiver is
  port (
    tx_i2s_data : out STD_LOGIC;
    \output_data_reg_reg[23]_0\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    \output_data_reg_reg[23]_1\ : in STD_LOGIC;
    rx_i2s_data : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_i2s_transceiver : entity is "i2s_transceiver";
end design_1_top_0_0_i2s_transceiver;

architecture STRUCTURE of design_1_top_0_0_i2s_transceiver is
  signal \counter1__2\ : STD_LOGIC;
  signal \counter[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1__2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal input_left_channel : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \input_left_channel[0]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[10]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[11]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[12]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[13]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[14]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[15]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[16]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[16]_i_2_n_0\ : STD_LOGIC;
  signal \input_left_channel[17]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[17]_i_2_n_0\ : STD_LOGIC;
  signal \input_left_channel[18]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[18]_i_2_n_0\ : STD_LOGIC;
  signal \input_left_channel[19]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[19]_i_2_n_0\ : STD_LOGIC;
  signal \input_left_channel[1]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[20]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[20]_i_2_n_0\ : STD_LOGIC;
  signal \input_left_channel[21]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[21]_i_2_n_0\ : STD_LOGIC;
  signal \input_left_channel[22]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[22]_i_2_n_0\ : STD_LOGIC;
  signal \input_left_channel[23]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[23]_i_2_n_0\ : STD_LOGIC;
  signal \input_left_channel[2]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[3]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[4]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[5]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[6]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[7]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[8]_i_1_n_0\ : STD_LOGIC;
  signal \input_left_channel[9]_i_1_n_0\ : STD_LOGIC;
  signal input_right_channel : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \input_right_channel[0]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[10]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[11]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[12]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[13]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[14]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[15]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[16]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[17]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[18]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[19]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[1]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[20]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[21]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[22]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[23]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[2]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[3]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[4]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[5]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[6]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[7]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[8]_i_1_n_0\ : STD_LOGIC;
  signal \input_right_channel[9]_i_1_n_0\ : STD_LOGIC;
  signal last_lr_state : STD_LOGIC;
  signal last_lr_state_i_1_n_0 : STD_LOGIC;
  signal output_data_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \output_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \output_data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \output_data_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal tx_i2s_data_INST_0_i_1_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_2_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_3_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_4_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_5_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_6_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_7_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_8_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_9_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \input_left_channel[16]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \input_left_channel[17]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \input_left_channel[18]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \input_left_channel[19]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \input_left_channel[20]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \input_left_channel[21]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \input_left_channel[22]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \input_left_channel[23]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \output_data_reg[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \output_data_reg[10]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \output_data_reg[11]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \output_data_reg[12]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \output_data_reg[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \output_data_reg[14]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \output_data_reg[15]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \output_data_reg[16]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \output_data_reg[17]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \output_data_reg[18]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \output_data_reg[19]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \output_data_reg[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \output_data_reg[20]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \output_data_reg[21]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \output_data_reg[22]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \output_data_reg[23]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \output_data_reg[23]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \output_data_reg[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \output_data_reg[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \output_data_reg[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \output_data_reg[5]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \output_data_reg[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \output_data_reg[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \output_data_reg[8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \output_data_reg[9]_i_1\ : label is "soft_lutpair31";
begin
\counter[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_1__2_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(2),
      I2 => counter_reg(1),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(3),
      I2 => counter_reg(2),
      I3 => counter_reg(1),
      O => p_0_in(3)
    );
\counter[4]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F6"
    )
        port map (
      I0 => \output_data_reg_reg[23]_1\,
      I1 => last_lr_state,
      I2 => \counter1__2\,
      I3 => \output_data_reg_reg[23]_0\,
      O => \counter[4]_i_1__2_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(4),
      I2 => counter_reg(3),
      I3 => counter_reg(2),
      I4 => counter_reg(1),
      O => p_0_in(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \counter[4]_i_1__2_n_0\,
      CLR => rst,
      D => \counter[0]_i_1__2_n_0\,
      Q => counter_reg(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \counter[4]_i_1__2_n_0\,
      CLR => rst,
      D => p_0_in(1),
      Q => counter_reg(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \counter[4]_i_1__2_n_0\,
      CLR => rst,
      D => p_0_in(2),
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \counter[4]_i_1__2_n_0\,
      CLR => rst,
      D => p_0_in(3),
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \counter[4]_i_1__2_n_0\,
      CLR => rst,
      D => p_0_in(4),
      Q => counter_reg(4)
    );
\input_left_channel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[16]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(0),
      O => \input_left_channel[0]_i_1_n_0\
    );
\input_left_channel[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[18]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(10),
      O => \input_left_channel[10]_i_1_n_0\
    );
\input_left_channel[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[19]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(11),
      O => \input_left_channel[11]_i_1_n_0\
    );
\input_left_channel[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[20]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(12),
      O => \input_left_channel[12]_i_1_n_0\
    );
\input_left_channel[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[21]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(13),
      O => \input_left_channel[13]_i_1_n_0\
    );
\input_left_channel[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[22]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(14),
      O => \input_left_channel[14]_i_1_n_0\
    );
\input_left_channel[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[23]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(15),
      O => \input_left_channel[15]_i_1_n_0\
    );
\input_left_channel[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[16]_i_2_n_0\,
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(16),
      O => \input_left_channel[16]_i_1_n_0\
    );
\input_left_channel[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      O => \input_left_channel[16]_i_2_n_0\
    );
\input_left_channel[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[17]_i_2_n_0\,
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(17),
      O => \input_left_channel[17]_i_1_n_0\
    );
\input_left_channel[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(1),
      I2 => counter_reg(0),
      O => \input_left_channel[17]_i_2_n_0\
    );
\input_left_channel[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[18]_i_2_n_0\,
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(18),
      O => \input_left_channel[18]_i_1_n_0\
    );
\input_left_channel[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      O => \input_left_channel[18]_i_2_n_0\
    );
\input_left_channel[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[19]_i_2_n_0\,
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(19),
      O => \input_left_channel[19]_i_1_n_0\
    );
\input_left_channel[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      O => \input_left_channel[19]_i_2_n_0\
    );
\input_left_channel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[17]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(1),
      O => \input_left_channel[1]_i_1_n_0\
    );
\input_left_channel[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[20]_i_2_n_0\,
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(20),
      O => \input_left_channel[20]_i_1_n_0\
    );
\input_left_channel[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      O => \input_left_channel[20]_i_2_n_0\
    );
\input_left_channel[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[21]_i_2_n_0\,
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(21),
      O => \input_left_channel[21]_i_1_n_0\
    );
\input_left_channel[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(1),
      I2 => counter_reg(0),
      O => \input_left_channel[21]_i_2_n_0\
    );
\input_left_channel[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[22]_i_2_n_0\,
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(22),
      O => \input_left_channel[22]_i_1_n_0\
    );
\input_left_channel[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      O => \input_left_channel[22]_i_2_n_0\
    );
\input_left_channel[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[23]_i_2_n_0\,
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(23),
      O => \input_left_channel[23]_i_1_n_0\
    );
\input_left_channel[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      O => \input_left_channel[23]_i_2_n_0\
    );
\input_left_channel[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[18]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(2),
      O => \input_left_channel[2]_i_1_n_0\
    );
\input_left_channel[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[19]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(3),
      O => \input_left_channel[3]_i_1_n_0\
    );
\input_left_channel[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[20]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(4),
      O => \input_left_channel[4]_i_1_n_0\
    );
\input_left_channel[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[21]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(5),
      O => \input_left_channel[5]_i_1_n_0\
    );
\input_left_channel[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[22]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(6),
      O => \input_left_channel[6]_i_1_n_0\
    );
\input_left_channel[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[23]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(7),
      O => \input_left_channel[7]_i_1_n_0\
    );
\input_left_channel[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[16]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(8),
      O => \input_left_channel[8]_i_1_n_0\
    );
\input_left_channel[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_left_channel[17]_i_2_n_0\,
      I2 => counter_reg(4),
      I3 => counter_reg(3),
      I4 => \output_data_reg_reg[23]_1\,
      I5 => input_left_channel(9),
      O => \input_left_channel[9]_i_1_n_0\
    );
\input_left_channel_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[0]_i_1_n_0\,
      Q => input_left_channel(0)
    );
\input_left_channel_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[10]_i_1_n_0\,
      Q => input_left_channel(10)
    );
\input_left_channel_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[11]_i_1_n_0\,
      Q => input_left_channel(11)
    );
\input_left_channel_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[12]_i_1_n_0\,
      Q => input_left_channel(12)
    );
\input_left_channel_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[13]_i_1_n_0\,
      Q => input_left_channel(13)
    );
\input_left_channel_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[14]_i_1_n_0\,
      Q => input_left_channel(14)
    );
\input_left_channel_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[15]_i_1_n_0\,
      Q => input_left_channel(15)
    );
\input_left_channel_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[16]_i_1_n_0\,
      Q => input_left_channel(16)
    );
\input_left_channel_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[17]_i_1_n_0\,
      Q => input_left_channel(17)
    );
\input_left_channel_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[18]_i_1_n_0\,
      Q => input_left_channel(18)
    );
\input_left_channel_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[19]_i_1_n_0\,
      Q => input_left_channel(19)
    );
\input_left_channel_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[1]_i_1_n_0\,
      Q => input_left_channel(1)
    );
\input_left_channel_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[20]_i_1_n_0\,
      Q => input_left_channel(20)
    );
\input_left_channel_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[21]_i_1_n_0\,
      Q => input_left_channel(21)
    );
\input_left_channel_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[22]_i_1_n_0\,
      Q => input_left_channel(22)
    );
\input_left_channel_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[23]_i_1_n_0\,
      Q => input_left_channel(23)
    );
\input_left_channel_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[2]_i_1_n_0\,
      Q => input_left_channel(2)
    );
\input_left_channel_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[3]_i_1_n_0\,
      Q => input_left_channel(3)
    );
\input_left_channel_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[4]_i_1_n_0\,
      Q => input_left_channel(4)
    );
\input_left_channel_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[5]_i_1_n_0\,
      Q => input_left_channel(5)
    );
\input_left_channel_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[6]_i_1_n_0\,
      Q => input_left_channel(6)
    );
\input_left_channel_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[7]_i_1_n_0\,
      Q => input_left_channel(7)
    );
\input_left_channel_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[8]_i_1_n_0\,
      Q => input_left_channel(8)
    );
\input_left_channel_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_left_channel[9]_i_1_n_0\,
      Q => input_left_channel(9)
    );
\input_right_channel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[16]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(0),
      O => \input_right_channel[0]_i_1_n_0\
    );
\input_right_channel[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[18]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(10),
      O => \input_right_channel[10]_i_1_n_0\
    );
\input_right_channel[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[19]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(11),
      O => \input_right_channel[11]_i_1_n_0\
    );
\input_right_channel[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[20]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(12),
      O => \input_right_channel[12]_i_1_n_0\
    );
\input_right_channel[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[21]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(13),
      O => \input_right_channel[13]_i_1_n_0\
    );
\input_right_channel[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[22]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(14),
      O => \input_right_channel[14]_i_1_n_0\
    );
\input_right_channel[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[23]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(15),
      O => \input_right_channel[15]_i_1_n_0\
    );
\input_right_channel[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[16]_i_2_n_0\,
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      I5 => input_right_channel(16),
      O => \input_right_channel[16]_i_1_n_0\
    );
\input_right_channel[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[17]_i_2_n_0\,
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      I5 => input_right_channel(17),
      O => \input_right_channel[17]_i_1_n_0\
    );
\input_right_channel[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[18]_i_2_n_0\,
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      I5 => input_right_channel(18),
      O => \input_right_channel[18]_i_1_n_0\
    );
\input_right_channel[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[19]_i_2_n_0\,
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      I5 => input_right_channel(19),
      O => \input_right_channel[19]_i_1_n_0\
    );
\input_right_channel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[17]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(1),
      O => \input_right_channel[1]_i_1_n_0\
    );
\input_right_channel[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[20]_i_2_n_0\,
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      I5 => input_right_channel(20),
      O => \input_right_channel[20]_i_1_n_0\
    );
\input_right_channel[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[21]_i_2_n_0\,
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      I5 => input_right_channel(21),
      O => \input_right_channel[21]_i_1_n_0\
    );
\input_right_channel[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[22]_i_2_n_0\,
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      I5 => input_right_channel(22),
      O => \input_right_channel[22]_i_1_n_0\
    );
\input_right_channel[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[23]_i_2_n_0\,
      I3 => counter_reg(3),
      I4 => counter_reg(4),
      I5 => input_right_channel(23),
      O => \input_right_channel[23]_i_1_n_0\
    );
\input_right_channel[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[18]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(2),
      O => \input_right_channel[2]_i_1_n_0\
    );
\input_right_channel[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[19]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(3),
      O => \input_right_channel[3]_i_1_n_0\
    );
\input_right_channel[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[20]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(4),
      O => \input_right_channel[4]_i_1_n_0\
    );
\input_right_channel[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[21]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(5),
      O => \input_right_channel[5]_i_1_n_0\
    );
\input_right_channel[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[22]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(6),
      O => \input_right_channel[6]_i_1_n_0\
    );
\input_right_channel[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000080"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[23]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(7),
      O => \input_right_channel[7]_i_1_n_0\
    );
\input_right_channel[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[16]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(8),
      O => \input_right_channel[8]_i_1_n_0\
    );
\input_right_channel[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => \input_left_channel[17]_i_2_n_0\,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      I5 => input_right_channel(9),
      O => \input_right_channel[9]_i_1_n_0\
    );
\input_right_channel_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[0]_i_1_n_0\,
      Q => input_right_channel(0)
    );
\input_right_channel_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[10]_i_1_n_0\,
      Q => input_right_channel(10)
    );
\input_right_channel_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[11]_i_1_n_0\,
      Q => input_right_channel(11)
    );
\input_right_channel_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[12]_i_1_n_0\,
      Q => input_right_channel(12)
    );
\input_right_channel_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[13]_i_1_n_0\,
      Q => input_right_channel(13)
    );
\input_right_channel_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[14]_i_1_n_0\,
      Q => input_right_channel(14)
    );
\input_right_channel_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[15]_i_1_n_0\,
      Q => input_right_channel(15)
    );
\input_right_channel_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[16]_i_1_n_0\,
      Q => input_right_channel(16)
    );
\input_right_channel_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[17]_i_1_n_0\,
      Q => input_right_channel(17)
    );
\input_right_channel_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[18]_i_1_n_0\,
      Q => input_right_channel(18)
    );
\input_right_channel_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[19]_i_1_n_0\,
      Q => input_right_channel(19)
    );
\input_right_channel_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[1]_i_1_n_0\,
      Q => input_right_channel(1)
    );
\input_right_channel_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[20]_i_1_n_0\,
      Q => input_right_channel(20)
    );
\input_right_channel_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[21]_i_1_n_0\,
      Q => input_right_channel(21)
    );
\input_right_channel_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[22]_i_1_n_0\,
      Q => input_right_channel(22)
    );
\input_right_channel_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[23]_i_1_n_0\,
      Q => input_right_channel(23)
    );
\input_right_channel_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[2]_i_1_n_0\,
      Q => input_right_channel(2)
    );
\input_right_channel_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[3]_i_1_n_0\,
      Q => input_right_channel(3)
    );
\input_right_channel_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[4]_i_1_n_0\,
      Q => input_right_channel(4)
    );
\input_right_channel_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[5]_i_1_n_0\,
      Q => input_right_channel(5)
    );
\input_right_channel_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[6]_i_1_n_0\,
      Q => input_right_channel(6)
    );
\input_right_channel_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[7]_i_1_n_0\,
      Q => input_right_channel(7)
    );
\input_right_channel_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[8]_i_1_n_0\,
      Q => input_right_channel(8)
    );
\input_right_channel_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => \input_right_channel[9]_i_1_n_0\,
      Q => input_right_channel(9)
    );
last_lr_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \output_data_reg_reg[23]_1\,
      I1 => \counter1__2\,
      I2 => \output_data_reg_reg[23]_0\,
      I3 => last_lr_state,
      O => last_lr_state_i_1_n_0
    );
last_lr_state_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => '1',
      CLR => rst,
      D => last_lr_state_i_1_n_0,
      Q => last_lr_state
    );
\output_data_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(0),
      I1 => input_right_channel(0),
      I2 => last_lr_state,
      O => \output_data_reg[0]_i_1_n_0\
    );
\output_data_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(10),
      I1 => input_right_channel(10),
      I2 => last_lr_state,
      O => \output_data_reg[10]_i_1_n_0\
    );
\output_data_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(11),
      I1 => input_right_channel(11),
      I2 => last_lr_state,
      O => \output_data_reg[11]_i_1_n_0\
    );
\output_data_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(12),
      I1 => input_right_channel(12),
      I2 => last_lr_state,
      O => \output_data_reg[12]_i_1_n_0\
    );
\output_data_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(13),
      I1 => input_right_channel(13),
      I2 => last_lr_state,
      O => \output_data_reg[13]_i_1_n_0\
    );
\output_data_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(14),
      I1 => input_right_channel(14),
      I2 => last_lr_state,
      O => \output_data_reg[14]_i_1_n_0\
    );
\output_data_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(15),
      I1 => input_right_channel(15),
      I2 => last_lr_state,
      O => \output_data_reg[15]_i_1_n_0\
    );
\output_data_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(16),
      I1 => input_right_channel(16),
      I2 => last_lr_state,
      O => \output_data_reg[16]_i_1_n_0\
    );
\output_data_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(17),
      I1 => input_right_channel(17),
      I2 => last_lr_state,
      O => \output_data_reg[17]_i_1_n_0\
    );
\output_data_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(18),
      I1 => input_right_channel(18),
      I2 => last_lr_state,
      O => \output_data_reg[18]_i_1_n_0\
    );
\output_data_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(19),
      I1 => input_right_channel(19),
      I2 => last_lr_state,
      O => \output_data_reg[19]_i_1_n_0\
    );
\output_data_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(1),
      I1 => input_right_channel(1),
      I2 => last_lr_state,
      O => \output_data_reg[1]_i_1_n_0\
    );
\output_data_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(20),
      I1 => input_right_channel(20),
      I2 => last_lr_state,
      O => \output_data_reg[20]_i_1_n_0\
    );
\output_data_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(21),
      I1 => input_right_channel(21),
      I2 => last_lr_state,
      O => \output_data_reg[21]_i_1_n_0\
    );
\output_data_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(22),
      I1 => input_right_channel(22),
      I2 => last_lr_state,
      O => \output_data_reg[22]_i_1_n_0\
    );
\output_data_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => \counter1__2\,
      I1 => \output_data_reg_reg[23]_1\,
      I2 => last_lr_state,
      I3 => \output_data_reg_reg[23]_0\,
      O => \output_data_reg[23]_i_1_n_0\
    );
\output_data_reg[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(23),
      I1 => input_right_channel(23),
      I2 => last_lr_state,
      O => \output_data_reg[23]_i_2_n_0\
    );
\output_data_reg[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(2),
      I2 => counter_reg(3),
      I3 => counter_reg(4),
      I4 => counter_reg(0),
      O => \counter1__2\
    );
\output_data_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(2),
      I1 => input_right_channel(2),
      I2 => last_lr_state,
      O => \output_data_reg[2]_i_1_n_0\
    );
\output_data_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(3),
      I1 => input_right_channel(3),
      I2 => last_lr_state,
      O => \output_data_reg[3]_i_1_n_0\
    );
\output_data_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(4),
      I1 => input_right_channel(4),
      I2 => last_lr_state,
      O => \output_data_reg[4]_i_1_n_0\
    );
\output_data_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(5),
      I1 => input_right_channel(5),
      I2 => last_lr_state,
      O => \output_data_reg[5]_i_1_n_0\
    );
\output_data_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(6),
      I1 => input_right_channel(6),
      I2 => last_lr_state,
      O => \output_data_reg[6]_i_1_n_0\
    );
\output_data_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(7),
      I1 => input_right_channel(7),
      I2 => last_lr_state,
      O => \output_data_reg[7]_i_1_n_0\
    );
\output_data_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(8),
      I1 => input_right_channel(8),
      I2 => last_lr_state,
      O => \output_data_reg[8]_i_1_n_0\
    );
\output_data_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => input_left_channel(9),
      I1 => input_right_channel(9),
      I2 => last_lr_state,
      O => \output_data_reg[9]_i_1_n_0\
    );
\output_data_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[0]_i_1_n_0\,
      Q => output_data_reg(0)
    );
\output_data_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[10]_i_1_n_0\,
      Q => output_data_reg(10)
    );
\output_data_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[11]_i_1_n_0\,
      Q => output_data_reg(11)
    );
\output_data_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[12]_i_1_n_0\,
      Q => output_data_reg(12)
    );
\output_data_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[13]_i_1_n_0\,
      Q => output_data_reg(13)
    );
\output_data_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[14]_i_1_n_0\,
      Q => output_data_reg(14)
    );
\output_data_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[15]_i_1_n_0\,
      Q => output_data_reg(15)
    );
\output_data_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[16]_i_1_n_0\,
      Q => output_data_reg(16)
    );
\output_data_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[17]_i_1_n_0\,
      Q => output_data_reg(17)
    );
\output_data_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[18]_i_1_n_0\,
      Q => output_data_reg(18)
    );
\output_data_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[19]_i_1_n_0\,
      Q => output_data_reg(19)
    );
\output_data_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[1]_i_1_n_0\,
      Q => output_data_reg(1)
    );
\output_data_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[20]_i_1_n_0\,
      Q => output_data_reg(20)
    );
\output_data_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[21]_i_1_n_0\,
      Q => output_data_reg(21)
    );
\output_data_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[22]_i_1_n_0\,
      Q => output_data_reg(22)
    );
\output_data_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[23]_i_2_n_0\,
      Q => output_data_reg(23)
    );
\output_data_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[2]_i_1_n_0\,
      Q => output_data_reg(2)
    );
\output_data_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[3]_i_1_n_0\,
      Q => output_data_reg(3)
    );
\output_data_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[4]_i_1_n_0\,
      Q => output_data_reg(4)
    );
\output_data_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[5]_i_1_n_0\,
      Q => output_data_reg(5)
    );
\output_data_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[6]_i_1_n_0\,
      Q => output_data_reg(6)
    );
\output_data_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[7]_i_1_n_0\,
      Q => output_data_reg(7)
    );
\output_data_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[8]_i_1_n_0\,
      Q => output_data_reg(8)
    );
\output_data_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \output_data_reg_reg[23]_0\,
      CE => \output_data_reg[23]_i_1_n_0\,
      CLR => rst,
      D => \output_data_reg[9]_i_1_n_0\,
      Q => output_data_reg(9)
    );
tx_i2s_data_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => tx_i2s_data_INST_0_i_1_n_0,
      I1 => tx_i2s_data_INST_0_i_2_n_0,
      I2 => tx_i2s_data_INST_0_i_3_n_0,
      I3 => counter_reg(4),
      I4 => counter_reg(3),
      O => tx_i2s_data
    );
tx_i2s_data_INST_0_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => tx_i2s_data_INST_0_i_4_n_0,
      I1 => tx_i2s_data_INST_0_i_5_n_0,
      O => tx_i2s_data_INST_0_i_1_n_0,
      S => counter_reg(2)
    );
tx_i2s_data_INST_0_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => tx_i2s_data_INST_0_i_6_n_0,
      I1 => tx_i2s_data_INST_0_i_7_n_0,
      O => tx_i2s_data_INST_0_i_2_n_0,
      S => counter_reg(2)
    );
tx_i2s_data_INST_0_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => tx_i2s_data_INST_0_i_8_n_0,
      I1 => tx_i2s_data_INST_0_i_9_n_0,
      O => tx_i2s_data_INST_0_i_3_n_0,
      S => counter_reg(2)
    );
tx_i2s_data_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_data_reg(3),
      I1 => output_data_reg(2),
      I2 => counter_reg(1),
      I3 => output_data_reg(1),
      I4 => counter_reg(0),
      I5 => output_data_reg(0),
      O => tx_i2s_data_INST_0_i_4_n_0
    );
tx_i2s_data_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_data_reg(7),
      I1 => output_data_reg(6),
      I2 => counter_reg(1),
      I3 => output_data_reg(5),
      I4 => counter_reg(0),
      I5 => output_data_reg(4),
      O => tx_i2s_data_INST_0_i_5_n_0
    );
tx_i2s_data_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_data_reg(11),
      I1 => output_data_reg(10),
      I2 => counter_reg(1),
      I3 => output_data_reg(9),
      I4 => counter_reg(0),
      I5 => output_data_reg(8),
      O => tx_i2s_data_INST_0_i_6_n_0
    );
tx_i2s_data_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_data_reg(15),
      I1 => output_data_reg(14),
      I2 => counter_reg(1),
      I3 => output_data_reg(13),
      I4 => counter_reg(0),
      I5 => output_data_reg(12),
      O => tx_i2s_data_INST_0_i_7_n_0
    );
tx_i2s_data_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_data_reg(19),
      I1 => output_data_reg(18),
      I2 => counter_reg(1),
      I3 => output_data_reg(17),
      I4 => counter_reg(0),
      I5 => output_data_reg(16),
      O => tx_i2s_data_INST_0_i_8_n_0
    );
tx_i2s_data_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_data_reg(23),
      I1 => output_data_reg(22),
      I2 => counter_reg(1),
      I3 => output_data_reg(21),
      I4 => counter_reg(0),
      I5 => output_data_reg(20),
      O => tx_i2s_data_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    out_buf_reg : out STD_LOGIC;
    out_buf_reg_0 : out STD_LOGIC;
    m_clk_dac : out STD_LOGIC;
    tx_i2s_data : out STD_LOGIC;
    CLK_IN : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx_i2s_data : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal \^out_buf_reg\ : STD_LOGIC;
  signal \^out_buf_reg_0\ : STD_LOGIC;
begin
  out_buf_reg <= \^out_buf_reg\;
  out_buf_reg_0 <= \^out_buf_reg_0\;
LRCLK: entity work.\design_1_top_0_0_clk_divider__parameterized1\
     port map (
      CLK_IN => CLK_IN,
      out_buf_reg_0 => \^out_buf_reg\,
      rst => rst
    );
MCLK: entity work.design_1_top_0_0_clk_divider
     port map (
      CLK_IN => CLK_IN,
      m_clk_dac => m_clk_dac,
      rst => rst
    );
SCLK: entity work.\design_1_top_0_0_clk_divider__parameterized0\
     port map (
      CLK_IN => CLK_IN,
      out_buf_reg_0 => \^out_buf_reg_0\,
      rst => rst
    );
i2s_rx_tx: entity work.design_1_top_0_0_i2s_transceiver
     port map (
      \output_data_reg_reg[23]_0\ => \^out_buf_reg_0\,
      \output_data_reg_reg[23]_1\ => \^out_buf_reg\,
      rst => rst,
      rx_i2s_data => rx_i2s_data,
      tx_i2s_data => tx_i2s_data
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_0_0 : entity is "top,Vivado 2023.2";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  signal \^lr_clk_dac\ : STD_LOGIC;
  signal \^m_clk_dac\ : STD_LOGIC;
  signal \^s_clk_adc\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  lr_clk_adc <= \^lr_clk_dac\;
  lr_clk_dac <= \^lr_clk_dac\;
  m_clk_adc <= \^m_clk_dac\;
  m_clk_dac <= \^m_clk_dac\;
  s_clk_adc <= \^s_clk_adc\;
  s_clk_dac <= \^s_clk_adc\;
inst: entity work.design_1_top_0_0_top
     port map (
      CLK_IN => CLK_IN,
      m_clk_dac => \^m_clk_dac\,
      out_buf_reg => \^lr_clk_dac\,
      out_buf_reg_0 => \^s_clk_adc\,
      rst => rst,
      rx_i2s_data => rx_i2s_data,
      tx_i2s_data => tx_i2s_data
    );
end STRUCTURE;
