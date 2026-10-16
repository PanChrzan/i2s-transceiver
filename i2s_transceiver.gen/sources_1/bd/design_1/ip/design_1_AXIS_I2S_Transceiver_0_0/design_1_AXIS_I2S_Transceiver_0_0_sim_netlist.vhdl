-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Aug 24 17:13:42 2026
-- Host        : DESKTOP-TP558OF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/AMD/vivdoWS/i2s-transceiver/i2s_transceiver.gen/sources_1/bd/design_1/ip/design_1_AXIS_I2S_Transceiver_0_0/design_1_AXIS_I2S_Transceiver_0_0_sim_netlist.vhdl
-- Design      : design_1_AXIS_I2S_Transceiver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_M00_AXIS is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    axis_m_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_aclk : in STD_LOGIC;
    axis_tlast_delay_reg_0 : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    axis_m_tvalid_int : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_M00_AXIS : entity is "AXIS_I2S_Transceiver_v1_0_M00_AXIS";
end design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_M00_AXIS;

architecture STRUCTURE of design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_M00_AXIS is
  signal \FSM_sequential_mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal axis_tvalid_delay_i_1_n_0 : STD_LOGIC;
  signal count : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal read_pointer_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \stream_data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal tx_done : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_i_2_n_0 : STD_LOGIC;
  signal tx_done_reg_n_0 : STD_LOGIC;
  signal tx_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_pointer[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_pointer[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_pointer[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_pointer[3]_i_2\ : label is "soft_lutpair3";
begin
\FSM_sequential_mst_exec_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B900"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I3 => m00_axis_aresetn,
      O => \FSM_sequential_mst_exec_state[0]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8CAE0000"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => tx_done_reg_n_0,
      I3 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I4 => m00_axis_aresetn,
      O => \FSM_sequential_mst_exec_state[1]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      I4 => count_reg(4),
      O => \FSM_sequential_mst_exec_state[1]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[0]_i_1_n_0\,
      Q => mst_exec_state(0),
      R => '0'
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[1]_i_1_n_0\,
      Q => mst_exec_state(1),
      R => '0'
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tlast_delay_reg_0,
      Q => m00_axis_tlast,
      R => '0'
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => axis_m_tvalid_int,
      I3 => m00_axis_aresetn,
      O => axis_tvalid_delay_i_1_n_0
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid_delay_i_1_n_0,
      Q => m00_axis_tvalid,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(2),
      O => p_0_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      O => count
    );
\count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(2),
      I2 => count_reg(0),
      I3 => count_reg(1),
      I4 => count_reg(3),
      O => p_0_in(4)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(0),
      Q => count_reg(0),
      R => \stream_data_out[0]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(1),
      Q => count_reg(1),
      R => \stream_data_out[0]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(2),
      Q => count_reg(2),
      R => \stream_data_out[0]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(3),
      Q => count_reg(3),
      R => \stream_data_out[0]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(4),
      Q => count_reg(4),
      R => \stream_data_out[0]_i_1_n_0\
    );
\read_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_pointer_reg(0),
      O => \p_0_in__0\(0)
    );
\read_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => read_pointer_reg(1),
      O => \p_0_in__0\(1)
    );
\read_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => read_pointer_reg(2),
      I1 => read_pointer_reg(1),
      I2 => read_pointer_reg(0),
      O => \p_0_in__0\(2)
    );
\read_pointer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => axis_m_tvalid_int,
      I1 => mst_exec_state(1),
      I2 => mst_exec_state(0),
      I3 => m00_axis_tready,
      I4 => read_pointer_reg(3),
      O => tx_done
    );
\read_pointer[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => read_pointer_reg(1),
      I2 => read_pointer_reg(2),
      O => \p_0_in__0\(3)
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_done,
      D => \p_0_in__0\(0),
      Q => read_pointer_reg(0),
      R => \stream_data_out[0]_i_1_n_0\
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_done,
      D => \p_0_in__0\(1),
      Q => read_pointer_reg(1),
      R => \stream_data_out[0]_i_1_n_0\
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_done,
      D => \p_0_in__0\(2),
      Q => read_pointer_reg(2),
      R => \stream_data_out[0]_i_1_n_0\
    );
\read_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_done,
      D => \p_0_in__0\(3),
      Q => read_pointer_reg(3),
      R => \stream_data_out[0]_i_1_n_0\
    );
\stream_data_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_aresetn,
      O => \stream_data_out[0]_i_1_n_0\
    );
\stream_data_out[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      I3 => axis_m_tvalid_int,
      O => tx_en
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => axis_m_tdata(0),
      Q => m00_axis_tdata(0),
      R => \stream_data_out[0]_i_1_n_0\
    );
tx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAAAAAAAAAAAA"
    )
        port map (
      I0 => tx_done_i_2_n_0,
      I1 => read_pointer_reg(3),
      I2 => m00_axis_tready,
      I3 => mst_exec_state(0),
      I4 => mst_exec_state(1),
      I5 => axis_m_tvalid_int,
      O => tx_done_i_1_n_0
    );
tx_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888A8888"
    )
        port map (
      I0 => m00_axis_aresetn,
      I1 => tx_done_reg_n_0,
      I2 => read_pointer_reg(1),
      I3 => read_pointer_reg(0),
      I4 => read_pointer_reg(3),
      I5 => read_pointer_reg(2),
      O => tx_done_i_2_n_0
    );
tx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => tx_done_i_1_n_0,
      Q => tx_done_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_S00_AXIS is
  port (
    mst_exec_state_reg_0 : out STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_S00_AXIS : entity is "AXIS_I2S_Transceiver_v1_0_S00_AXIS";
end design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_S00_AXIS;

architecture STRUCTURE of design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_S00_AXIS is
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \^mst_exec_state_reg_0\ : STD_LOGIC;
  signal write_pointer : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \write_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[2]_i_1_n_0\ : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done0_n_0 : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mst_exec_state_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_pointer[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair6";
begin
  mst_exec_state_reg_0 <= \^mst_exec_state_reg_0\;
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^mst_exec_state_reg_0\,
      I2 => writes_done,
      I3 => s00_axis_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => mst_exec_state_i_1_n_0,
      Q => \^mst_exec_state_reg_0\,
      R => '0'
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => write_pointer(0),
      I1 => s00_axis_tvalid,
      I2 => \^mst_exec_state_reg_0\,
      I3 => s00_axis_aresetn,
      O => \write_pointer[0]_i_1_n_0\
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => write_pointer(1),
      I1 => \^mst_exec_state_reg_0\,
      I2 => s00_axis_tvalid,
      I3 => write_pointer(0),
      I4 => s00_axis_aresetn,
      O => \write_pointer[1]_i_1_n_0\
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => write_pointer(2),
      I1 => \^mst_exec_state_reg_0\,
      I2 => s00_axis_tvalid,
      I3 => write_pointer(1),
      I4 => write_pointer(0),
      I5 => s00_axis_aresetn,
      O => \write_pointer[2]_i_1_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \write_pointer[0]_i_1_n_0\,
      Q => write_pointer(0),
      R => '0'
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \write_pointer[1]_i_1_n_0\,
      Q => write_pointer(1),
      R => '0'
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \write_pointer[2]_i_1_n_0\,
      Q => write_pointer(2),
      R => '0'
    );
writes_done0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => write_pointer(2),
      I1 => write_pointer(0),
      I2 => write_pointer(1),
      I3 => s00_axis_tlast,
      O => writes_done0_n_0
    );
writes_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A0000"
    )
        port map (
      I0 => writes_done,
      I1 => s00_axis_tvalid,
      I2 => \^mst_exec_state_reg_0\,
      I3 => writes_done0_n_0,
      I4 => s00_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXIS_I2S_Transceiver_0_0_clk_divider is
  port (
    m_clk_dac : out STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    \counter_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXIS_I2S_Transceiver_0_0_clk_divider : entity is "clk_divider";
end design_1_AXIS_I2S_Transceiver_0_0_clk_divider;

architecture STRUCTURE of design_1_AXIS_I2S_Transceiver_0_0_clk_divider is
  signal counter : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \^m_clk_dac\ : STD_LOGIC;
  signal \out_buf_i_1__1_n_0\ : STD_LOGIC;
  signal \out_buf_i_2__0_n_0\ : STD_LOGIC;
  signal \NLW_counter0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[10]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter[11]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \counter[1]_i_1__3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \counter[2]_i_1__2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[3]_i_1__3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \counter[4]_i_1__3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[5]_i_1__1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \counter[6]_i_1__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[7]_i_1__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \counter[8]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[9]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \out_buf_i_1__1\ : label is "soft_lutpair15";
begin
  m_clk_dac <= \^m_clk_dac\;
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
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
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
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
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => counter(11 downto 9)
    );
\counter[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => counter(11),
      I1 => counter(10),
      I2 => counter(1),
      I3 => \counter[0]_i_2_n_0\,
      I4 => \counter[0]_i_3_n_0\,
      I5 => counter(0),
      O => counter_0(0)
    );
\counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(7),
      I1 => counter(6),
      I2 => counter(9),
      I3 => counter(8),
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(5),
      I3 => counter(4),
      O => \counter[0]_i_3_n_0\
    );
\counter[10]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(10),
      O => counter_0(10)
    );
\counter[11]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(11),
      O => counter_0(11)
    );
\counter[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(1),
      O => counter_0(1)
    );
\counter[2]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(2),
      O => counter_0(2)
    );
\counter[3]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(3),
      O => counter_0(3)
    );
\counter[4]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(4),
      O => counter_0(4)
    );
\counter[5]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(5),
      O => counter_0(5)
    );
\counter[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(6),
      O => counter_0(6)
    );
\counter[7]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(7),
      O => counter_0(7)
    );
\counter[8]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(8),
      O => counter_0(8)
    );
\counter[9]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => data0(9),
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => counter_0(9),
      Q => counter(9)
    );
\out_buf_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \out_buf_i_2__0_n_0\,
      I1 => \^m_clk_dac\,
      O => \out_buf_i_1__1_n_0\
    );
\out_buf_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter[0]_i_3_n_0\,
      I1 => \counter[0]_i_2_n_0\,
      I2 => counter(1),
      I3 => counter(10),
      I4 => counter(11),
      I5 => counter(0),
      O => \out_buf_i_2__0_n_0\
    );
out_buf_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \counter_reg[0]_0\,
      D => \out_buf_i_1__1_n_0\,
      Q => \^m_clk_dac\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized0\ is
  port (
    out_buf_reg_0 : out STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    out_buf_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized0\ : entity is "clk_divider";
end \design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized0\;

architecture STRUCTURE of \design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized0\ is
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
  signal \out_buf_i_1__0_n_0\ : STD_LOGIC;
  signal \out_buf_i_3__0_n_0\ : STD_LOGIC;
  signal \out_buf_i_4__0_n_0\ : STD_LOGIC;
  signal out_buf_i_5_n_0 : STD_LOGIC;
  signal \^out_buf_reg_0\ : STD_LOGIC;
  signal \NLW_counter_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[11]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \counter[10]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[11]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \counter[1]_i_1__2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \counter[2]_i_1__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter[3]_i_1__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \counter[4]_i_1__2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \counter[5]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \counter[6]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter[7]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \counter[8]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[9]_i_1__0\ : label is "soft_lutpair26";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \out_buf_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of out_buf_i_5 : label is "soft_lutpair21";
begin
  out_buf_reg_0 <= \^out_buf_reg_0\;
\counter[0]_i_1__2\: unisim.vcomponents.LUT1
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
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[11]_i_2_n_6\,
      O => counter(10)
    );
\counter[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[11]_i_2_n_5\,
      O => counter(11)
    );
\counter[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[4]_i_2_n_7\,
      O => counter(1)
    );
\counter[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[4]_i_2_n_6\,
      O => counter(2)
    );
\counter[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[4]_i_2_n_5\,
      O => counter(3)
    );
\counter[4]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[4]_i_2_n_4\,
      O => counter(4)
    );
\counter[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[8]_i_2_n_7\,
      O => counter(5)
    );
\counter[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[8]_i_2_n_6\,
      O => counter(6)
    );
\counter[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[8]_i_2_n_5\,
      O => counter(7)
    );
\counter[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[8]_i_2_n_4\,
      O => counter(8)
    );
\counter[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \counter_reg[11]_i_2_n_7\,
      O => counter(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
      D => counter(0),
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
      D => counter(10),
      Q => \counter_reg_n_0_[10]\
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
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
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
      D => counter(1),
      Q => \counter_reg_n_0_[1]\
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
      D => counter(2),
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
      D => counter(3),
      Q => \counter_reg_n_0_[3]\
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
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
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
      D => counter(5),
      Q => \counter_reg_n_0_[5]\
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
      D => counter(6),
      Q => \counter_reg_n_0_[6]\
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
      D => counter(7),
      Q => \counter_reg_n_0_[7]\
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
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
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
      D => counter(9),
      Q => \counter_reg_n_0_[9]\
    );
\out_buf_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \out_buf_i_3__0_n_0\,
      I1 => \^out_buf_reg_0\,
      O => \out_buf_i_1__0_n_0\
    );
\out_buf_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \out_buf_i_4__0_n_0\,
      I1 => \counter_reg_n_0_[4]\,
      I2 => \counter_reg_n_0_[5]\,
      I3 => \counter_reg_n_0_[7]\,
      I4 => \counter_reg_n_0_[6]\,
      I5 => out_buf_i_5_n_0,
      O => \out_buf_i_3__0_n_0\
    );
\out_buf_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      I1 => \counter_reg_n_0_[8]\,
      I2 => \counter_reg_n_0_[11]\,
      I3 => \counter_reg_n_0_[10]\,
      O => \out_buf_i_4__0_n_0\
    );
out_buf_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[3]\,
      I3 => \counter_reg_n_0_[2]\,
      O => out_buf_i_5_n_0
    );
out_buf_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_1,
      D => \out_buf_i_1__0_n_0\,
      Q => \^out_buf_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized1\ is
  port (
    out_buf_reg_0 : out STD_LOGIC;
    out_buf_reg_1 : out STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    out_buf_reg_2 : in STD_LOGIC;
    last_s_clk_state : in STD_LOGIC;
    \input_right_channel_reg[23]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized1\ : entity is "clk_divider";
end \design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized1\;

architecture STRUCTURE of \design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized1\ is
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
  signal out_buf_i_1_n_0 : STD_LOGIC;
  signal out_buf_i_2_n_0 : STD_LOGIC;
  signal out_buf_i_3_n_0 : STD_LOGIC;
  signal out_buf_i_4_n_0 : STD_LOGIC;
  signal \^out_buf_reg_0\ : STD_LOGIC;
  signal \NLW_counter0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \counter[1]_i_1__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[2]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[3]_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[4]_i_1__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of data_valid_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of out_buf_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of out_buf_i_4 : label is "soft_lutpair8";
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
\counter[0]_i_1__1\: unisim.vcomponents.LUT1
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
      I1 => \counter0_carry__1_n_6\,
      O => counter(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter0_carry__1_n_5\,
      O => counter(11)
    );
\counter[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => counter0_carry_n_7,
      O => counter(1)
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => counter0_carry_n_6,
      O => counter(2)
    );
\counter[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => counter0_carry_n_5,
      O => counter(3)
    );
\counter[4]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => counter0_carry_n_4,
      O => counter(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter0_carry__0_n_7\,
      O => counter(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter0_carry__0_n_6\,
      O => counter(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter0_carry__0_n_5\,
      O => counter(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter0_carry__0_n_4\,
      O => counter(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => out_buf_i_2_n_0,
      I1 => \counter0_carry__1_n_7\,
      O => counter(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(0),
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(10),
      Q => \counter_reg_n_0_[10]\
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(11),
      Q => \counter_reg_n_0_[11]\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(1),
      Q => \counter_reg_n_0_[1]\
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(2),
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(3),
      Q => \counter_reg_n_0_[3]\
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(4),
      Q => \counter_reg_n_0_[4]\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(5),
      Q => \counter_reg_n_0_[5]\
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(6),
      Q => \counter_reg_n_0_[6]\
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(7),
      Q => \counter_reg_n_0_[7]\
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(8),
      Q => \counter_reg_n_0_[8]\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => counter(9),
      Q => \counter_reg_n_0_[9]\
    );
data_valid_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^out_buf_reg_0\,
      I1 => last_s_clk_state,
      I2 => \input_right_channel_reg[23]\,
      O => out_buf_reg_1
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
      INIT => X"FFFFFFFFBFFFFFFF"
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
      INIT => X"FFEF"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      I1 => \counter_reg_n_0_[8]\,
      I2 => \counter_reg_n_0_[10]\,
      I3 => \counter_reg_n_0_[11]\,
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
      C => m00_axis_aclk,
      CE => '1',
      CLR => out_buf_reg_2,
      D => out_buf_i_1_n_0,
      Q => \^out_buf_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXIS_I2S_Transceiver_0_0_i2s_mem is
  port (
    axis_m_tvalid_int : out STD_LOGIC;
    tx_i2s_data : out STD_LOGIC;
    \mem_counter_reg[0]_0\ : out STD_LOGIC;
    axis_m_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_counter_reg[4]_0\ : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    rst : in STD_LOGIC;
    counter_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m00_axis_aresetn : in STD_LOGIC;
    rx_i2s_data_reg : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXIS_I2S_Transceiver_0_0_i2s_mem : entity is "i2s_mem";
end design_1_AXIS_I2S_Transceiver_0_0_i2s_mem;

architecture STRUCTURE of design_1_AXIS_I2S_Transceiver_0_0_i2s_mem is
  signal \^axis_m_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axis_m_tvalid_int\ : STD_LOGIC;
  signal axis_m_tvalid_reg_i_1_n_0 : STD_LOGIC;
  signal axis_m_tvalid_reg_i_2_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1__0_n_0\ : STD_LOGIC;
  signal mem_counter : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \mem_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \mem_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \mem_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \mem_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \mem_counter__0\ : STD_LOGIC;
  signal receive_data_reg_0_31_0_5_n_0 : STD_LOGIC;
  signal receive_data_reg_0_31_0_5_n_2 : STD_LOGIC;
  signal receive_data_reg_0_31_0_5_n_3 : STD_LOGIC;
  signal receive_data_reg_0_31_0_5_n_4 : STD_LOGIC;
  signal receive_data_reg_0_31_0_5_n_5 : STD_LOGIC;
  signal receive_data_reg_0_31_12_17_n_0 : STD_LOGIC;
  signal receive_data_reg_0_31_12_17_n_1 : STD_LOGIC;
  signal receive_data_reg_0_31_12_17_n_2 : STD_LOGIC;
  signal receive_data_reg_0_31_12_17_n_3 : STD_LOGIC;
  signal receive_data_reg_0_31_12_17_n_4 : STD_LOGIC;
  signal receive_data_reg_0_31_12_17_n_5 : STD_LOGIC;
  signal receive_data_reg_0_31_18_23_n_0 : STD_LOGIC;
  signal receive_data_reg_0_31_18_23_n_1 : STD_LOGIC;
  signal receive_data_reg_0_31_18_23_n_2 : STD_LOGIC;
  signal receive_data_reg_0_31_18_23_n_3 : STD_LOGIC;
  signal receive_data_reg_0_31_18_23_n_4 : STD_LOGIC;
  signal receive_data_reg_0_31_18_23_n_5 : STD_LOGIC;
  signal receive_data_reg_0_31_6_11_n_0 : STD_LOGIC;
  signal receive_data_reg_0_31_6_11_n_1 : STD_LOGIC;
  signal receive_data_reg_0_31_6_11_n_2 : STD_LOGIC;
  signal receive_data_reg_0_31_6_11_n_3 : STD_LOGIC;
  signal receive_data_reg_0_31_6_11_n_4 : STD_LOGIC;
  signal receive_data_reg_0_31_6_11_n_5 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[1]_i_4_n_0\ : STD_LOGIC;
  signal \state[1]_i_5_n_0\ : STD_LOGIC;
  signal \state[1]_i_6_n_0\ : STD_LOGIC;
  signal \state[1]_i_7_n_0\ : STD_LOGIC;
  signal \state[1]_i_8_n_0\ : STD_LOGIC;
  signal \state[1]_i_9_n_0\ : STD_LOGIC;
  signal transmit_data : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_1_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_2_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_3_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_4_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_5_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_6_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_7_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_8_n_0 : STD_LOGIC;
  signal tx_i2s_data_INST_0_i_9_n_0 : STD_LOGIC;
  signal tx_i2s_data_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_receive_data_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_receive_data_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_receive_data_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_receive_data_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_transmit_data_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_transmit_data_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_transmit_data_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_transmit_data_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axis_m_tvalid_reg_i_2 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \counter[2]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \counter[2]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \counter[3]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \counter[4]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mem_counter[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \mem_counter[3]_i_1\ : label is "soft_lutpair52";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of receive_data_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of receive_data_reg_0_31_0_5 : label is 640;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of receive_data_reg_0_31_0_5 : label is "inst/I2S_Transceiver/mem/receive_data_reg_0_31_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of receive_data_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of receive_data_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of receive_data_reg_0_31_0_5 : label is 19;
  attribute ram_offset : integer;
  attribute ram_offset of receive_data_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of receive_data_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of receive_data_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of receive_data_reg_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of receive_data_reg_0_31_12_17 : label is 640;
  attribute RTL_RAM_NAME of receive_data_reg_0_31_12_17 : label is "inst/I2S_Transceiver/mem/receive_data_reg_0_31_12_17";
  attribute RTL_RAM_TYPE of receive_data_reg_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of receive_data_reg_0_31_12_17 : label is 0;
  attribute ram_addr_end of receive_data_reg_0_31_12_17 : label is 19;
  attribute ram_offset of receive_data_reg_0_31_12_17 : label is 0;
  attribute ram_slice_begin of receive_data_reg_0_31_12_17 : label is 12;
  attribute ram_slice_end of receive_data_reg_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of receive_data_reg_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of receive_data_reg_0_31_18_23 : label is 640;
  attribute RTL_RAM_NAME of receive_data_reg_0_31_18_23 : label is "inst/I2S_Transceiver/mem/receive_data_reg_0_31_18_23";
  attribute RTL_RAM_TYPE of receive_data_reg_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of receive_data_reg_0_31_18_23 : label is 0;
  attribute ram_addr_end of receive_data_reg_0_31_18_23 : label is 19;
  attribute ram_offset of receive_data_reg_0_31_18_23 : label is 0;
  attribute ram_slice_begin of receive_data_reg_0_31_18_23 : label is 18;
  attribute ram_slice_end of receive_data_reg_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of receive_data_reg_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of receive_data_reg_0_31_6_11 : label is 640;
  attribute RTL_RAM_NAME of receive_data_reg_0_31_6_11 : label is "inst/I2S_Transceiver/mem/receive_data_reg_0_31_6_11";
  attribute RTL_RAM_TYPE of receive_data_reg_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of receive_data_reg_0_31_6_11 : label is 0;
  attribute ram_addr_end of receive_data_reg_0_31_6_11 : label is 19;
  attribute ram_offset of receive_data_reg_0_31_6_11 : label is 0;
  attribute ram_slice_begin of receive_data_reg_0_31_6_11 : label is 6;
  attribute ram_slice_end of receive_data_reg_0_31_6_11 : label is 11;
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \state[0]_i_5\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \state[1]_i_5\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \state[1]_i_8\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \state[1]_i_9\ : label is "soft_lutpair48";
  attribute METHODOLOGY_DRC_VIOS of transmit_data_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS of transmit_data_reg_0_31_0_5 : label is 640;
  attribute RTL_RAM_NAME of transmit_data_reg_0_31_0_5 : label is "inst/I2S_Transceiver/mem/transmit_data_reg_0_31_0_5";
  attribute RTL_RAM_TYPE of transmit_data_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of transmit_data_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end of transmit_data_reg_0_31_0_5 : label is 19;
  attribute ram_offset of transmit_data_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin of transmit_data_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end of transmit_data_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of transmit_data_reg_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of transmit_data_reg_0_31_12_17 : label is 640;
  attribute RTL_RAM_NAME of transmit_data_reg_0_31_12_17 : label is "inst/I2S_Transceiver/mem/transmit_data_reg_0_31_12_17";
  attribute RTL_RAM_TYPE of transmit_data_reg_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of transmit_data_reg_0_31_12_17 : label is 0;
  attribute ram_addr_end of transmit_data_reg_0_31_12_17 : label is 19;
  attribute ram_offset of transmit_data_reg_0_31_12_17 : label is 0;
  attribute ram_slice_begin of transmit_data_reg_0_31_12_17 : label is 12;
  attribute ram_slice_end of transmit_data_reg_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of transmit_data_reg_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of transmit_data_reg_0_31_18_23 : label is 640;
  attribute RTL_RAM_NAME of transmit_data_reg_0_31_18_23 : label is "inst/I2S_Transceiver/mem/transmit_data_reg_0_31_18_23";
  attribute RTL_RAM_TYPE of transmit_data_reg_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of transmit_data_reg_0_31_18_23 : label is 0;
  attribute ram_addr_end of transmit_data_reg_0_31_18_23 : label is 19;
  attribute ram_offset of transmit_data_reg_0_31_18_23 : label is 0;
  attribute ram_slice_begin of transmit_data_reg_0_31_18_23 : label is 18;
  attribute ram_slice_end of transmit_data_reg_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of transmit_data_reg_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of transmit_data_reg_0_31_6_11 : label is 640;
  attribute RTL_RAM_NAME of transmit_data_reg_0_31_6_11 : label is "inst/I2S_Transceiver/mem/transmit_data_reg_0_31_6_11";
  attribute RTL_RAM_TYPE of transmit_data_reg_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of transmit_data_reg_0_31_6_11 : label is 0;
  attribute ram_addr_end of transmit_data_reg_0_31_6_11 : label is 19;
  attribute ram_offset of transmit_data_reg_0_31_6_11 : label is 0;
  attribute ram_slice_begin of transmit_data_reg_0_31_6_11 : label is 6;
  attribute ram_slice_end of transmit_data_reg_0_31_6_11 : label is 11;
begin
  axis_m_tdata(0) <= \^axis_m_tdata\(0);
  axis_m_tvalid_int <= \^axis_m_tvalid_int\;
axis_m_tvalid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222E0000"
    )
        port map (
      I0 => \^axis_m_tvalid_int\,
      I1 => axis_m_tvalid_reg_i_2_n_0,
      I2 => state(1),
      I3 => state(0),
      I4 => rst,
      O => axis_m_tvalid_reg_i_1_n_0
    );
axis_m_tvalid_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010D313D"
    )
        port map (
      I0 => \state[1]_i_9_n_0\,
      I1 => state(0),
      I2 => state(1),
      I3 => \state[1]_i_5_n_0\,
      I4 => \state[1]_i_8_n_0\,
      O => axis_m_tvalid_reg_i_2_n_0
    );
axis_m_tvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_m_tvalid_reg_i_1_n_0,
      Q => \^axis_m_tvalid_int\,
      R => '0'
    );
axis_tlast_delay_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008020000000000"
    )
        port map (
      I0 => mem_counter(0),
      I1 => mem_counter(1),
      I2 => mem_counter(2),
      I3 => mem_counter(3),
      I4 => mem_counter(4),
      I5 => m00_axis_aresetn,
      O => \mem_counter_reg[0]_0\
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => \counter[0]_i_1__0_n_0\
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => \counter[1]_i_1__0_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8FFFFAAA80000"
    )
        port map (
      I0 => counter(4),
      I1 => counter(2),
      I2 => \counter[2]_i_3_n_0\,
      I3 => counter(3),
      I4 => data_valid,
      I5 => rst,
      O => \counter[2]_i_1_n_0\
    );
\counter[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(0),
      O => \counter[2]_i_2_n_0\
    );
\counter[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => \counter[2]_i_3_n_0\
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => counter(3),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(2),
      O => \counter[3]_i_1__0_n_0\
    );
\counter[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => counter(2),
      I3 => counter(1),
      I4 => counter(0),
      O => \counter[4]_i_1__0_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_valid,
      D => \counter[0]_i_1__0_n_0\,
      Q => counter(0),
      R => \counter[2]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_valid,
      D => \counter[1]_i_1__0_n_0\,
      Q => counter(1),
      R => \counter[2]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_valid,
      D => \counter[2]_i_2_n_0\,
      Q => counter(2),
      R => \counter[2]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_valid,
      D => \counter[3]_i_1__0_n_0\,
      Q => counter(3),
      R => \counter[2]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => data_valid,
      D => \counter[4]_i_1__0_n_0\,
      Q => counter(4),
      R => \counter[2]_i_1_n_0\
    );
\mem_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \mem_counter__0\
    );
\mem_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mem_counter(0),
      O => \mem_counter[0]_i_2_n_0\
    );
\mem_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mem_counter(1),
      I1 => mem_counter(0),
      O => \mem_counter[1]_i_1_n_0\
    );
\mem_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFDF000000"
    )
        port map (
      I0 => mem_counter(4),
      I1 => mem_counter(3),
      I2 => state(1),
      I3 => mem_counter(1),
      I4 => mem_counter(0),
      I5 => mem_counter(2),
      O => \mem_counter[2]_i_1_n_0\
    );
\mem_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => mem_counter(3),
      I1 => mem_counter(1),
      I2 => mem_counter(0),
      I3 => mem_counter(2),
      O => \mem_counter[3]_i_1_n_0\
    );
\mem_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80F7007F80FF00"
    )
        port map (
      I0 => mem_counter(0),
      I1 => mem_counter(1),
      I2 => mem_counter(2),
      I3 => mem_counter(4),
      I4 => mem_counter(3),
      I5 => state(1),
      O => \mem_counter[4]_i_1_n_0\
    );
\mem_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \mem_counter__0\,
      D => \mem_counter[0]_i_2_n_0\,
      Q => mem_counter(0),
      R => \mem_counter_reg[4]_0\
    );
\mem_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \mem_counter__0\,
      D => \mem_counter[1]_i_1_n_0\,
      Q => mem_counter(1),
      R => \mem_counter_reg[4]_0\
    );
\mem_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \mem_counter__0\,
      D => \mem_counter[2]_i_1_n_0\,
      Q => mem_counter(2),
      R => \mem_counter_reg[4]_0\
    );
\mem_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \mem_counter__0\,
      D => \mem_counter[3]_i_1_n_0\,
      Q => mem_counter(3),
      R => \mem_counter_reg[4]_0\
    );
\mem_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \mem_counter__0\,
      D => \mem_counter[4]_i_1_n_0\,
      Q => mem_counter(4),
      R => \mem_counter_reg[4]_0\
    );
receive_data_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => mem_counter(4 downto 0),
      ADDRB(4 downto 0) => mem_counter(4 downto 0),
      ADDRC(4 downto 0) => mem_counter(4 downto 0),
      ADDRD(4 downto 0) => counter(4 downto 0),
      DIA(1 downto 0) => rx_i2s_data_reg(1 downto 0),
      DIB(1 downto 0) => rx_i2s_data_reg(3 downto 2),
      DIC(1 downto 0) => rx_i2s_data_reg(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => receive_data_reg_0_31_0_5_n_0,
      DOA(0) => \^axis_m_tdata\(0),
      DOB(1) => receive_data_reg_0_31_0_5_n_2,
      DOB(0) => receive_data_reg_0_31_0_5_n_3,
      DOC(1) => receive_data_reg_0_31_0_5_n_4,
      DOC(0) => receive_data_reg_0_31_0_5_n_5,
      DOD(1 downto 0) => NLW_receive_data_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => m00_axis_aclk,
      WE => data_valid
    );
receive_data_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => mem_counter(4 downto 0),
      ADDRB(4 downto 0) => mem_counter(4 downto 0),
      ADDRC(4 downto 0) => mem_counter(4 downto 0),
      ADDRD(4 downto 0) => counter(4 downto 0),
      DIA(1 downto 0) => rx_i2s_data_reg(13 downto 12),
      DIB(1 downto 0) => rx_i2s_data_reg(15 downto 14),
      DIC(1 downto 0) => rx_i2s_data_reg(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1) => receive_data_reg_0_31_12_17_n_0,
      DOA(0) => receive_data_reg_0_31_12_17_n_1,
      DOB(1) => receive_data_reg_0_31_12_17_n_2,
      DOB(0) => receive_data_reg_0_31_12_17_n_3,
      DOC(1) => receive_data_reg_0_31_12_17_n_4,
      DOC(0) => receive_data_reg_0_31_12_17_n_5,
      DOD(1 downto 0) => NLW_receive_data_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => m00_axis_aclk,
      WE => data_valid
    );
receive_data_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => mem_counter(4 downto 0),
      ADDRB(4 downto 0) => mem_counter(4 downto 0),
      ADDRC(4 downto 0) => mem_counter(4 downto 0),
      ADDRD(4 downto 0) => counter(4 downto 0),
      DIA(1 downto 0) => rx_i2s_data_reg(19 downto 18),
      DIB(1 downto 0) => rx_i2s_data_reg(21 downto 20),
      DIC(1 downto 0) => rx_i2s_data_reg(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1) => receive_data_reg_0_31_18_23_n_0,
      DOA(0) => receive_data_reg_0_31_18_23_n_1,
      DOB(1) => receive_data_reg_0_31_18_23_n_2,
      DOB(0) => receive_data_reg_0_31_18_23_n_3,
      DOC(1) => receive_data_reg_0_31_18_23_n_4,
      DOC(0) => receive_data_reg_0_31_18_23_n_5,
      DOD(1 downto 0) => NLW_receive_data_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => m00_axis_aclk,
      WE => data_valid
    );
receive_data_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => mem_counter(4 downto 0),
      ADDRB(4 downto 0) => mem_counter(4 downto 0),
      ADDRC(4 downto 0) => mem_counter(4 downto 0),
      ADDRD(4 downto 0) => counter(4 downto 0),
      DIA(1 downto 0) => rx_i2s_data_reg(7 downto 6),
      DIB(1 downto 0) => rx_i2s_data_reg(9 downto 8),
      DIC(1 downto 0) => rx_i2s_data_reg(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1) => receive_data_reg_0_31_6_11_n_0,
      DOA(0) => receive_data_reg_0_31_6_11_n_1,
      DOB(1) => receive_data_reg_0_31_6_11_n_2,
      DOB(0) => receive_data_reg_0_31_6_11_n_3,
      DOC(1) => receive_data_reg_0_31_6_11_n_4,
      DOC(0) => receive_data_reg_0_31_6_11_n_5,
      DOD(1 downto 0) => NLW_receive_data_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => m00_axis_aclk,
      WE => data_valid
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFA8AA0000"
    )
        port map (
      I0 => rst,
      I1 => \state[0]_i_2_n_0\,
      I2 => \state[0]_i_3_n_0\,
      I3 => \state[1]_i_3_n_0\,
      I4 => \state[1]_i_4_n_0\,
      I5 => state(0),
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3010"
    )
        port map (
      I0 => \state[1]_i_5_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => rst,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCEC8C"
    )
        port map (
      I0 => counter(3),
      I1 => rst,
      I2 => \state[0]_i_4_n_0\,
      I3 => counter(1),
      I4 => counter(0),
      I5 => \state[0]_i_5_n_0\,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(2),
      I1 => counter(4),
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => \state[0]_i_5_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AFF8A00"
    )
        port map (
      I0 => rst,
      I1 => \state[1]_i_2_n_0\,
      I2 => \state[1]_i_3_n_0\,
      I3 => \state[1]_i_4_n_0\,
      I4 => state(1),
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BB000F"
    )
        port map (
      I0 => rst,
      I1 => \state[1]_i_5_n_0\,
      I2 => \state[1]_i_6_n_0\,
      I3 => state(1),
      I4 => state(0),
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBFBB"
    )
        port map (
      I0 => \state[1]_i_7_n_0\,
      I1 => state(1),
      I2 => rst,
      I3 => \state[1]_i_8_n_0\,
      I4 => state(0),
      O => \state[1]_i_3_n_0\
    );
\state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D557D5F7DF57DFF7"
    )
        port map (
      I0 => rst,
      I1 => \state[1]_i_9_n_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => \state[1]_i_5_n_0\,
      I5 => \state[1]_i_8_n_0\,
      O => \state[1]_i_4_n_0\
    );
\state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => mem_counter(0),
      I1 => mem_counter(1),
      I2 => mem_counter(2),
      I3 => mem_counter(3),
      I4 => mem_counter(4),
      O => \state[1]_i_5_n_0\
    );
\state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000040FFFFFFFE"
    )
        port map (
      I0 => counter(4),
      I1 => counter(1),
      I2 => counter(3),
      I3 => counter(2),
      I4 => counter(0),
      I5 => rst,
      O => \state[1]_i_6_n_0\
    );
\state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AAAAAAAAA8"
    )
        port map (
      I0 => state(0),
      I1 => counter(4),
      I2 => counter(2),
      I3 => counter(1),
      I4 => counter(0),
      I5 => counter(3),
      O => \state[1]_i_7_n_0\
    );
\state[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => mem_counter(0),
      I1 => mem_counter(1),
      I2 => mem_counter(2),
      I3 => mem_counter(4),
      I4 => mem_counter(3),
      O => \state[1]_i_8_n_0\
    );
\state[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDE"
    )
        port map (
      I0 => counter(3),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(2),
      I4 => counter(4),
      O => \state[1]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
transmit_data_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => counter(4 downto 0),
      ADDRB(4 downto 0) => counter(4 downto 0),
      ADDRC(4 downto 0) => counter(4 downto 0),
      ADDRD(4 downto 0) => mem_counter(4 downto 0),
      DIA(1) => receive_data_reg_0_31_0_5_n_0,
      DIA(0) => \^axis_m_tdata\(0),
      DIB(1) => receive_data_reg_0_31_0_5_n_2,
      DIB(0) => receive_data_reg_0_31_0_5_n_3,
      DIC(1) => receive_data_reg_0_31_0_5_n_4,
      DIC(0) => receive_data_reg_0_31_0_5_n_5,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => tx_i2s_data_reg(1 downto 0),
      DOB(1 downto 0) => tx_i2s_data_reg(3 downto 2),
      DOC(1 downto 0) => tx_i2s_data_reg(5 downto 4),
      DOD(1 downto 0) => NLW_transmit_data_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => m00_axis_aclk,
      WE => transmit_data
    );
transmit_data_reg_0_31_0_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => rst,
      I1 => state(0),
      I2 => state(1),
      O => transmit_data
    );
transmit_data_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => counter(4 downto 0),
      ADDRB(4 downto 0) => counter(4 downto 0),
      ADDRC(4 downto 0) => counter(4 downto 0),
      ADDRD(4 downto 0) => mem_counter(4 downto 0),
      DIA(1) => receive_data_reg_0_31_12_17_n_0,
      DIA(0) => receive_data_reg_0_31_12_17_n_1,
      DIB(1) => receive_data_reg_0_31_12_17_n_2,
      DIB(0) => receive_data_reg_0_31_12_17_n_3,
      DIC(1) => receive_data_reg_0_31_12_17_n_4,
      DIC(0) => receive_data_reg_0_31_12_17_n_5,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => tx_i2s_data_reg(13 downto 12),
      DOB(1 downto 0) => tx_i2s_data_reg(15 downto 14),
      DOC(1 downto 0) => tx_i2s_data_reg(17 downto 16),
      DOD(1 downto 0) => NLW_transmit_data_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => m00_axis_aclk,
      WE => transmit_data
    );
transmit_data_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => counter(4 downto 0),
      ADDRB(4 downto 0) => counter(4 downto 0),
      ADDRC(4 downto 0) => counter(4 downto 0),
      ADDRD(4 downto 0) => mem_counter(4 downto 0),
      DIA(1) => receive_data_reg_0_31_18_23_n_0,
      DIA(0) => receive_data_reg_0_31_18_23_n_1,
      DIB(1) => receive_data_reg_0_31_18_23_n_2,
      DIB(0) => receive_data_reg_0_31_18_23_n_3,
      DIC(1) => receive_data_reg_0_31_18_23_n_4,
      DIC(0) => receive_data_reg_0_31_18_23_n_5,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => tx_i2s_data_reg(19 downto 18),
      DOB(1 downto 0) => tx_i2s_data_reg(21 downto 20),
      DOC(1 downto 0) => tx_i2s_data_reg(23 downto 22),
      DOD(1 downto 0) => NLW_transmit_data_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => m00_axis_aclk,
      WE => transmit_data
    );
transmit_data_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => counter(4 downto 0),
      ADDRB(4 downto 0) => counter(4 downto 0),
      ADDRC(4 downto 0) => counter(4 downto 0),
      ADDRD(4 downto 0) => mem_counter(4 downto 0),
      DIA(1) => receive_data_reg_0_31_6_11_n_0,
      DIA(0) => receive_data_reg_0_31_6_11_n_1,
      DIB(1) => receive_data_reg_0_31_6_11_n_2,
      DIB(0) => receive_data_reg_0_31_6_11_n_3,
      DIC(1) => receive_data_reg_0_31_6_11_n_4,
      DIC(0) => receive_data_reg_0_31_6_11_n_5,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => tx_i2s_data_reg(7 downto 6),
      DOB(1 downto 0) => tx_i2s_data_reg(9 downto 8),
      DOC(1 downto 0) => tx_i2s_data_reg(11 downto 10),
      DOD(1 downto 0) => NLW_transmit_data_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => m00_axis_aclk,
      WE => transmit_data
    );
tx_i2s_data_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => tx_i2s_data_INST_0_i_1_n_0,
      I1 => counter_reg(4),
      I2 => tx_i2s_data_INST_0_i_2_n_0,
      I3 => counter_reg(3),
      I4 => tx_i2s_data_INST_0_i_3_n_0,
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
      I0 => tx_i2s_data_reg(19),
      I1 => tx_i2s_data_reg(18),
      I2 => counter_reg(1),
      I3 => tx_i2s_data_reg(17),
      I4 => counter_reg(0),
      I5 => tx_i2s_data_reg(16),
      O => tx_i2s_data_INST_0_i_4_n_0
    );
tx_i2s_data_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_i2s_data_reg(23),
      I1 => tx_i2s_data_reg(22),
      I2 => counter_reg(1),
      I3 => tx_i2s_data_reg(21),
      I4 => counter_reg(0),
      I5 => tx_i2s_data_reg(20),
      O => tx_i2s_data_INST_0_i_5_n_0
    );
tx_i2s_data_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_i2s_data_reg(11),
      I1 => tx_i2s_data_reg(10),
      I2 => counter_reg(1),
      I3 => tx_i2s_data_reg(9),
      I4 => counter_reg(0),
      I5 => tx_i2s_data_reg(8),
      O => tx_i2s_data_INST_0_i_6_n_0
    );
tx_i2s_data_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_i2s_data_reg(15),
      I1 => tx_i2s_data_reg(14),
      I2 => counter_reg(1),
      I3 => tx_i2s_data_reg(13),
      I4 => counter_reg(0),
      I5 => tx_i2s_data_reg(12),
      O => tx_i2s_data_INST_0_i_7_n_0
    );
tx_i2s_data_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_i2s_data_reg(3),
      I1 => tx_i2s_data_reg(2),
      I2 => counter_reg(1),
      I3 => tx_i2s_data_reg(1),
      I4 => counter_reg(0),
      I5 => tx_i2s_data_reg(0),
      O => tx_i2s_data_INST_0_i_8_n_0
    );
tx_i2s_data_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_i2s_data_reg(7),
      I1 => tx_i2s_data_reg(6),
      I2 => counter_reg(1),
      I3 => tx_i2s_data_reg(5),
      I4 => counter_reg(0),
      I5 => tx_i2s_data_reg(4),
      O => tx_i2s_data_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXIS_I2S_Transceiver_0_0_transceiver is
  port (
    data_valid : out STD_LOGIC;
    rst_0 : out STD_LOGIC;
    last_s_clk_state : out STD_LOGIC;
    counter_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m00_axis_aclk : in STD_LOGIC;
    last_s_clk_state_reg_0 : in STD_LOGIC;
    \input_right_channel_reg[23]_0\ : in STD_LOGIC;
    last_lr_state_reg_0 : in STD_LOGIC;
    rst : in STD_LOGIC;
    rx_i2s_data : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXIS_I2S_Transceiver_0_0_transceiver : entity is "transceiver";
end design_1_AXIS_I2S_Transceiver_0_0_transceiver;

architecture STRUCTURE of design_1_AXIS_I2S_Transceiver_0_0_transceiver is
  signal counter : STD_LOGIC;
  signal \counter[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \^counter_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal data_valid2_out : STD_LOGIC;
  signal data_valid_i_2_n_0 : STD_LOGIC;
  signal data_valid_i_4_n_0 : STD_LOGIC;
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
  signal \^last_s_clk_state\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^rst_0\ : STD_LOGIC;
  signal rx_i2s_data_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \counter[2]_i_1__3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \counter[4]_i_3\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of data_valid_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \input_left_channel[16]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \input_left_channel[17]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \input_left_channel[18]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \input_left_channel[19]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \input_left_channel[20]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \input_left_channel[21]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \input_left_channel[22]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[10]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[11]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[12]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[13]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[14]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[15]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[16]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[17]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[18]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[19]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[20]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[21]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[22]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[23]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[7]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rx_i2s_data_reg[9]_i_1\ : label is "soft_lutpair41";
begin
  counter_reg(4 downto 0) <= \^counter_reg\(4 downto 0);
  last_s_clk_state <= \^last_s_clk_state\;
  rst_0 <= \^rst_0\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_reg\(0),
      O => \p_0_in__1\(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^counter_reg\(1),
      I1 => \^counter_reg\(0),
      O => \p_0_in__1\(1)
    );
\counter[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^counter_reg\(2),
      I1 => \^counter_reg\(0),
      I2 => \^counter_reg\(1),
      O => \counter[2]_i_1__3_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^counter_reg\(3),
      I1 => \^counter_reg\(0),
      I2 => \^counter_reg\(1),
      I3 => \^counter_reg\(2),
      O => \p_0_in__1\(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D000F000F000D0"
    )
        port map (
      I0 => \^counter_reg\(4),
      I1 => \counter[4]_i_3_n_0\,
      I2 => last_s_clk_state_reg_0,
      I3 => \^last_s_clk_state\,
      I4 => last_lr_state_reg_0,
      I5 => last_lr_state,
      O => counter
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^counter_reg\(4),
      I1 => \^counter_reg\(3),
      I2 => \^counter_reg\(0),
      I3 => \^counter_reg\(1),
      I4 => \^counter_reg\(2),
      O => \p_0_in__1\(4)
    );
\counter[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^counter_reg\(2),
      I1 => \^counter_reg\(1),
      I2 => \^counter_reg\(0),
      I3 => \^counter_reg\(3),
      O => \counter[4]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => counter,
      CLR => \^rst_0\,
      D => \p_0_in__1\(0),
      Q => \^counter_reg\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => counter,
      CLR => \^rst_0\,
      D => \p_0_in__1\(1),
      Q => \^counter_reg\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => counter,
      CLR => \^rst_0\,
      D => \counter[2]_i_1__3_n_0\,
      Q => \^counter_reg\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => counter,
      CLR => \^rst_0\,
      D => \p_0_in__1\(3),
      Q => \^counter_reg\(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => counter,
      CLR => \^rst_0\,
      D => \p_0_in__1\(4),
      Q => \^counter_reg\(4)
    );
data_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000004000"
    )
        port map (
      I0 => data_valid_i_2_n_0,
      I1 => \^counter_reg\(3),
      I2 => \^counter_reg\(4),
      I3 => \input_right_channel_reg[23]_0\,
      I4 => last_lr_state,
      I5 => data_valid_i_4_n_0,
      O => data_valid2_out
    );
data_valid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^counter_reg\(0),
      I1 => \^counter_reg\(1),
      I2 => \^counter_reg\(2),
      O => data_valid_i_2_n_0
    );
data_valid_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^last_s_clk_state\,
      I1 => last_s_clk_state_reg_0,
      I2 => last_lr_state_reg_0,
      O => data_valid_i_4_n_0
    );
data_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \^rst_0\,
      D => data_valid2_out,
      Q => data_valid
    );
\input_left_channel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[16]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(0),
      O => \input_left_channel[0]_i_1_n_0\
    );
\input_left_channel[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[18]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_left_channel(10),
      O => \input_left_channel[10]_i_1_n_0\
    );
\input_left_channel[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[19]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_left_channel(11),
      O => \input_left_channel[11]_i_1_n_0\
    );
\input_left_channel[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[20]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_left_channel(12),
      O => \input_left_channel[12]_i_1_n_0\
    );
\input_left_channel[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[21]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_left_channel(13),
      O => \input_left_channel[13]_i_1_n_0\
    );
\input_left_channel[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[22]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_left_channel(14),
      O => \input_left_channel[14]_i_1_n_0\
    );
\input_left_channel[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \^counter_reg\(4),
      I3 => \^counter_reg\(3),
      I4 => data_valid_i_2_n_0,
      I5 => input_left_channel(15),
      O => \input_left_channel[15]_i_1_n_0\
    );
\input_left_channel[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[16]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(16),
      O => \input_left_channel[16]_i_1_n_0\
    );
\input_left_channel[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^counter_reg\(2),
      I1 => \^counter_reg\(0),
      I2 => \^counter_reg\(1),
      O => \input_left_channel[16]_i_2_n_0\
    );
\input_left_channel[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[17]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(17),
      O => \input_left_channel[17]_i_1_n_0\
    );
\input_left_channel[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^counter_reg\(2),
      I1 => \^counter_reg\(0),
      I2 => \^counter_reg\(1),
      O => \input_left_channel[17]_i_2_n_0\
    );
\input_left_channel[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[18]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(18),
      O => \input_left_channel[18]_i_1_n_0\
    );
\input_left_channel[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^counter_reg\(2),
      I1 => \^counter_reg\(1),
      I2 => \^counter_reg\(0),
      O => \input_left_channel[18]_i_2_n_0\
    );
\input_left_channel[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \^counter_reg\(3),
      I3 => \^counter_reg\(4),
      I4 => \input_left_channel[19]_i_2_n_0\,
      I5 => input_left_channel(19),
      O => \input_left_channel[19]_i_1_n_0\
    );
\input_left_channel[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^counter_reg\(2),
      I1 => \^counter_reg\(0),
      I2 => \^counter_reg\(1),
      O => \input_left_channel[19]_i_2_n_0\
    );
\input_left_channel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[17]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(1),
      O => \input_left_channel[1]_i_1_n_0\
    );
\input_left_channel[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[20]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(20),
      O => \input_left_channel[20]_i_1_n_0\
    );
\input_left_channel[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^counter_reg\(0),
      I1 => \^counter_reg\(1),
      I2 => \^counter_reg\(2),
      O => \input_left_channel[20]_i_2_n_0\
    );
\input_left_channel[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[21]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(21),
      O => \input_left_channel[21]_i_1_n_0\
    );
\input_left_channel[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^counter_reg\(0),
      I1 => \^counter_reg\(1),
      I2 => \^counter_reg\(2),
      O => \input_left_channel[21]_i_2_n_0\
    );
\input_left_channel[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[22]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(22),
      O => \input_left_channel[22]_i_1_n_0\
    );
\input_left_channel[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^counter_reg\(1),
      I1 => \^counter_reg\(0),
      I2 => \^counter_reg\(2),
      O => \input_left_channel[22]_i_2_n_0\
    );
\input_left_channel[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \^counter_reg\(3),
      I3 => \^counter_reg\(4),
      I4 => data_valid_i_2_n_0,
      I5 => input_left_channel(23),
      O => \input_left_channel[23]_i_1_n_0\
    );
\input_left_channel[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[18]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(2),
      O => \input_left_channel[2]_i_1_n_0\
    );
\input_left_channel[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \^counter_reg\(3),
      I3 => \^counter_reg\(4),
      I4 => \input_left_channel[19]_i_2_n_0\,
      I5 => input_left_channel(3),
      O => \input_left_channel[3]_i_1_n_0\
    );
\input_left_channel[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[20]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(4),
      O => \input_left_channel[4]_i_1_n_0\
    );
\input_left_channel[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[21]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(5),
      O => \input_left_channel[5]_i_1_n_0\
    );
\input_left_channel[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[22]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_left_channel(6),
      O => \input_left_channel[6]_i_1_n_0\
    );
\input_left_channel[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \^counter_reg\(3),
      I3 => \^counter_reg\(4),
      I4 => data_valid_i_2_n_0,
      I5 => input_left_channel(7),
      O => \input_left_channel[7]_i_1_n_0\
    );
\input_left_channel[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[16]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_left_channel(8),
      O => \input_left_channel[8]_i_1_n_0\
    );
\input_left_channel[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => data_valid_i_4_n_0,
      I2 => \input_left_channel[17]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_left_channel(9),
      O => \input_left_channel[9]_i_1_n_0\
    );
\input_left_channel_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[0]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(0)
    );
\input_left_channel_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[10]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(10)
    );
\input_left_channel_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[11]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(11)
    );
\input_left_channel_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[12]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(12)
    );
\input_left_channel_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[13]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(13)
    );
\input_left_channel_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[14]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(14)
    );
\input_left_channel_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[15]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(15)
    );
\input_left_channel_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[16]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(16)
    );
\input_left_channel_reg[17]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[17]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(17)
    );
\input_left_channel_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[18]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(18)
    );
\input_left_channel_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[19]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(19)
    );
\input_left_channel_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[1]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(1)
    );
\input_left_channel_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[20]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(20)
    );
\input_left_channel_reg[21]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[21]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(21)
    );
\input_left_channel_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[22]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(22)
    );
\input_left_channel_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[23]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(23)
    );
\input_left_channel_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[2]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(2)
    );
\input_left_channel_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[3]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(3)
    );
\input_left_channel_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[4]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(4)
    );
\input_left_channel_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[5]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(5)
    );
\input_left_channel_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[6]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(6)
    );
\input_left_channel_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[7]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(7)
    );
\input_left_channel_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[8]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(8)
    );
\input_left_channel_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_left_channel[9]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_left_channel(9)
    );
\input_right_channel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[16]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(0),
      O => \input_right_channel[0]_i_1_n_0\
    );
\input_right_channel[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[18]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_right_channel(10),
      O => \input_right_channel[10]_i_1_n_0\
    );
\input_right_channel[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[19]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_right_channel(11),
      O => \input_right_channel[11]_i_1_n_0\
    );
\input_right_channel[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[20]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_right_channel(12),
      O => \input_right_channel[12]_i_1_n_0\
    );
\input_right_channel[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[21]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_right_channel(13),
      O => \input_right_channel[13]_i_1_n_0\
    );
\input_right_channel[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[22]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_right_channel(14),
      O => \input_right_channel[14]_i_1_n_0\
    );
\input_right_channel[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \^counter_reg\(4),
      I3 => \^counter_reg\(3),
      I4 => data_valid_i_2_n_0,
      I5 => input_right_channel(15),
      O => \input_right_channel[15]_i_1_n_0\
    );
\input_right_channel[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[16]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(16),
      O => \input_right_channel[16]_i_1_n_0\
    );
\input_right_channel[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[17]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(17),
      O => \input_right_channel[17]_i_1_n_0\
    );
\input_right_channel[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[18]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(18),
      O => \input_right_channel[18]_i_1_n_0\
    );
\input_right_channel[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \^counter_reg\(3),
      I3 => \^counter_reg\(4),
      I4 => \input_left_channel[19]_i_2_n_0\,
      I5 => input_right_channel(19),
      O => \input_right_channel[19]_i_1_n_0\
    );
\input_right_channel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[17]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(1),
      O => \input_right_channel[1]_i_1_n_0\
    );
\input_right_channel[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[20]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(20),
      O => \input_right_channel[20]_i_1_n_0\
    );
\input_right_channel[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[21]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(21),
      O => \input_right_channel[21]_i_1_n_0\
    );
\input_right_channel[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[22]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(22),
      O => \input_right_channel[22]_i_1_n_0\
    );
\input_right_channel[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \^counter_reg\(3),
      I3 => \^counter_reg\(4),
      I4 => data_valid_i_2_n_0,
      I5 => input_right_channel(23),
      O => \input_right_channel[23]_i_1_n_0\
    );
\input_right_channel[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[18]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(2),
      O => \input_right_channel[2]_i_1_n_0\
    );
\input_right_channel[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \^counter_reg\(3),
      I3 => \^counter_reg\(4),
      I4 => \input_left_channel[19]_i_2_n_0\,
      I5 => input_right_channel(3),
      O => \input_right_channel[3]_i_1_n_0\
    );
\input_right_channel[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[20]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(4),
      O => \input_right_channel[4]_i_1_n_0\
    );
\input_right_channel[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[21]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(5),
      O => \input_right_channel[5]_i_1_n_0\
    );
\input_right_channel[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[22]_i_2_n_0\,
      I3 => \^counter_reg\(3),
      I4 => \^counter_reg\(4),
      I5 => input_right_channel(6),
      O => \input_right_channel[6]_i_1_n_0\
    );
\input_right_channel[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \^counter_reg\(3),
      I3 => \^counter_reg\(4),
      I4 => data_valid_i_2_n_0,
      I5 => input_right_channel(7),
      O => \input_right_channel[7]_i_1_n_0\
    );
\input_right_channel[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[16]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_right_channel(8),
      O => \input_right_channel[8]_i_1_n_0\
    );
\input_right_channel[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => rx_i2s_data,
      I1 => \input_right_channel_reg[23]_0\,
      I2 => \input_left_channel[17]_i_2_n_0\,
      I3 => \^counter_reg\(4),
      I4 => \^counter_reg\(3),
      I5 => input_right_channel(9),
      O => \input_right_channel[9]_i_1_n_0\
    );
\input_right_channel_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[0]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(0)
    );
\input_right_channel_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[10]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(10)
    );
\input_right_channel_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[11]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(11)
    );
\input_right_channel_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[12]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(12)
    );
\input_right_channel_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[13]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(13)
    );
\input_right_channel_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[14]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(14)
    );
\input_right_channel_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[15]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(15)
    );
\input_right_channel_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[16]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(16)
    );
\input_right_channel_reg[17]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[17]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(17)
    );
\input_right_channel_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[18]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(18)
    );
\input_right_channel_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[19]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(19)
    );
\input_right_channel_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[1]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(1)
    );
\input_right_channel_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[20]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(20)
    );
\input_right_channel_reg[21]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[21]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(21)
    );
\input_right_channel_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[22]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(22)
    );
\input_right_channel_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[23]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(23)
    );
\input_right_channel_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[2]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(2)
    );
\input_right_channel_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[3]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(3)
    );
\input_right_channel_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[4]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(4)
    );
\input_right_channel_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[5]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(5)
    );
\input_right_channel_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[6]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(6)
    );
\input_right_channel_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[7]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(7)
    );
\input_right_channel_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[8]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(8)
    );
\input_right_channel_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \input_right_channel[9]_i_1_n_0\,
      PRE => \^rst_0\,
      Q => input_right_channel(9)
    );
last_lr_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFEF20002020"
    )
        port map (
      I0 => last_lr_state_reg_0,
      I1 => \^last_s_clk_state\,
      I2 => last_s_clk_state_reg_0,
      I3 => \counter[4]_i_3_n_0\,
      I4 => \^counter_reg\(4),
      I5 => last_lr_state,
      O => last_lr_state_i_1_n_0
    );
last_lr_state_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \^rst_0\,
      D => last_lr_state_i_1_n_0,
      Q => last_lr_state
    );
last_s_clk_state_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      CLR => \^rst_0\,
      D => last_s_clk_state_reg_0,
      Q => \^last_s_clk_state\
    );
\out_buf_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \^rst_0\
    );
\rx_i2s_data_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(0),
      I1 => last_lr_state,
      I2 => input_right_channel(0),
      O => rx_i2s_data_reg(0)
    );
\rx_i2s_data_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(10),
      I1 => last_lr_state,
      I2 => input_right_channel(10),
      O => rx_i2s_data_reg(10)
    );
\rx_i2s_data_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(11),
      I1 => last_lr_state,
      I2 => input_right_channel(11),
      O => rx_i2s_data_reg(11)
    );
\rx_i2s_data_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(12),
      I1 => last_lr_state,
      I2 => input_right_channel(12),
      O => rx_i2s_data_reg(12)
    );
\rx_i2s_data_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(13),
      I1 => last_lr_state,
      I2 => input_right_channel(13),
      O => rx_i2s_data_reg(13)
    );
\rx_i2s_data_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(14),
      I1 => last_lr_state,
      I2 => input_right_channel(14),
      O => rx_i2s_data_reg(14)
    );
\rx_i2s_data_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(15),
      I1 => last_lr_state,
      I2 => input_right_channel(15),
      O => rx_i2s_data_reg(15)
    );
\rx_i2s_data_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(16),
      I1 => last_lr_state,
      I2 => input_right_channel(16),
      O => rx_i2s_data_reg(16)
    );
\rx_i2s_data_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(17),
      I1 => last_lr_state,
      I2 => input_right_channel(17),
      O => rx_i2s_data_reg(17)
    );
\rx_i2s_data_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(18),
      I1 => last_lr_state,
      I2 => input_right_channel(18),
      O => rx_i2s_data_reg(18)
    );
\rx_i2s_data_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(19),
      I1 => last_lr_state,
      I2 => input_right_channel(19),
      O => rx_i2s_data_reg(19)
    );
\rx_i2s_data_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(1),
      I1 => last_lr_state,
      I2 => input_right_channel(1),
      O => rx_i2s_data_reg(1)
    );
\rx_i2s_data_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(20),
      I1 => last_lr_state,
      I2 => input_right_channel(20),
      O => rx_i2s_data_reg(20)
    );
\rx_i2s_data_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(21),
      I1 => last_lr_state,
      I2 => input_right_channel(21),
      O => rx_i2s_data_reg(21)
    );
\rx_i2s_data_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(22),
      I1 => last_lr_state,
      I2 => input_right_channel(22),
      O => rx_i2s_data_reg(22)
    );
\rx_i2s_data_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(23),
      I1 => last_lr_state,
      I2 => input_right_channel(23),
      O => rx_i2s_data_reg(23)
    );
\rx_i2s_data_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(2),
      I1 => last_lr_state,
      I2 => input_right_channel(2),
      O => rx_i2s_data_reg(2)
    );
\rx_i2s_data_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(3),
      I1 => last_lr_state,
      I2 => input_right_channel(3),
      O => rx_i2s_data_reg(3)
    );
\rx_i2s_data_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(4),
      I1 => last_lr_state,
      I2 => input_right_channel(4),
      O => rx_i2s_data_reg(4)
    );
\rx_i2s_data_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(5),
      I1 => last_lr_state,
      I2 => input_right_channel(5),
      O => rx_i2s_data_reg(5)
    );
\rx_i2s_data_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(6),
      I1 => last_lr_state,
      I2 => input_right_channel(6),
      O => rx_i2s_data_reg(6)
    );
\rx_i2s_data_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(7),
      I1 => last_lr_state,
      I2 => input_right_channel(7),
      O => rx_i2s_data_reg(7)
    );
\rx_i2s_data_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(8),
      I1 => last_lr_state,
      I2 => input_right_channel(8),
      O => rx_i2s_data_reg(8)
    );
\rx_i2s_data_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => input_left_channel(9),
      I1 => last_lr_state,
      I2 => input_right_channel(9),
      O => rx_i2s_data_reg(9)
    );
\rx_i2s_data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(0),
      Q => Q(0)
    );
\rx_i2s_data_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(10),
      Q => Q(10)
    );
\rx_i2s_data_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(11),
      Q => Q(11)
    );
\rx_i2s_data_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(12),
      Q => Q(12)
    );
\rx_i2s_data_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(13),
      Q => Q(13)
    );
\rx_i2s_data_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(14),
      Q => Q(14)
    );
\rx_i2s_data_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(15),
      Q => Q(15)
    );
\rx_i2s_data_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(16),
      Q => Q(16)
    );
\rx_i2s_data_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(17),
      Q => Q(17)
    );
\rx_i2s_data_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(18),
      Q => Q(18)
    );
\rx_i2s_data_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(19),
      Q => Q(19)
    );
\rx_i2s_data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(1),
      Q => Q(1)
    );
\rx_i2s_data_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(20),
      Q => Q(20)
    );
\rx_i2s_data_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(21),
      Q => Q(21)
    );
\rx_i2s_data_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(22),
      Q => Q(22)
    );
\rx_i2s_data_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(23),
      Q => Q(23)
    );
\rx_i2s_data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(2),
      Q => Q(2)
    );
\rx_i2s_data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(3),
      Q => Q(3)
    );
\rx_i2s_data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(4),
      Q => Q(4)
    );
\rx_i2s_data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(5),
      Q => Q(5)
    );
\rx_i2s_data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(6),
      Q => Q(6)
    );
\rx_i2s_data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(7),
      Q => Q(7)
    );
\rx_i2s_data_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(8),
      Q => Q(8)
    );
\rx_i2s_data_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axis_aclk,
      CE => data_valid2_out,
      CLR => \^rst_0\,
      D => rx_i2s_data_reg(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXIS_I2S_Transceiver_0_0_top is
  port (
    out_buf_reg : out STD_LOGIC;
    out_buf_reg_0 : out STD_LOGIC;
    axis_m_tvalid_int : out STD_LOGIC;
    m_clk_dac : out STD_LOGIC;
    tx_i2s_data : out STD_LOGIC;
    \mem_counter_reg[0]\ : out STD_LOGIC;
    axis_m_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_aclk : in STD_LOGIC;
    rst : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    rx_i2s_data : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXIS_I2S_Transceiver_0_0_top : entity is "top";
end design_1_AXIS_I2S_Transceiver_0_0_top;

architecture STRUCTURE of design_1_AXIS_I2S_Transceiver_0_0_top is
  signal LRCLK_n_1 : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal data_valid : STD_LOGIC;
  signal i2s_rx_tx_n_1 : STD_LOGIC;
  signal i2s_rx_tx_n_10 : STD_LOGIC;
  signal i2s_rx_tx_n_11 : STD_LOGIC;
  signal i2s_rx_tx_n_12 : STD_LOGIC;
  signal i2s_rx_tx_n_13 : STD_LOGIC;
  signal i2s_rx_tx_n_14 : STD_LOGIC;
  signal i2s_rx_tx_n_15 : STD_LOGIC;
  signal i2s_rx_tx_n_16 : STD_LOGIC;
  signal i2s_rx_tx_n_17 : STD_LOGIC;
  signal i2s_rx_tx_n_18 : STD_LOGIC;
  signal i2s_rx_tx_n_19 : STD_LOGIC;
  signal i2s_rx_tx_n_20 : STD_LOGIC;
  signal i2s_rx_tx_n_21 : STD_LOGIC;
  signal i2s_rx_tx_n_22 : STD_LOGIC;
  signal i2s_rx_tx_n_23 : STD_LOGIC;
  signal i2s_rx_tx_n_24 : STD_LOGIC;
  signal i2s_rx_tx_n_25 : STD_LOGIC;
  signal i2s_rx_tx_n_26 : STD_LOGIC;
  signal i2s_rx_tx_n_27 : STD_LOGIC;
  signal i2s_rx_tx_n_28 : STD_LOGIC;
  signal i2s_rx_tx_n_29 : STD_LOGIC;
  signal i2s_rx_tx_n_30 : STD_LOGIC;
  signal i2s_rx_tx_n_31 : STD_LOGIC;
  signal i2s_rx_tx_n_8 : STD_LOGIC;
  signal i2s_rx_tx_n_9 : STD_LOGIC;
  signal last_s_clk_state : STD_LOGIC;
  signal \^out_buf_reg\ : STD_LOGIC;
  signal \^out_buf_reg_0\ : STD_LOGIC;
begin
  out_buf_reg <= \^out_buf_reg\;
  out_buf_reg_0 <= \^out_buf_reg_0\;
LRCLK: entity work.\design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized1\
     port map (
      \input_right_channel_reg[23]\ => \^out_buf_reg\,
      last_s_clk_state => last_s_clk_state,
      m00_axis_aclk => m00_axis_aclk,
      out_buf_reg_0 => \^out_buf_reg_0\,
      out_buf_reg_1 => LRCLK_n_1,
      out_buf_reg_2 => i2s_rx_tx_n_1
    );
MCLK: entity work.design_1_AXIS_I2S_Transceiver_0_0_clk_divider
     port map (
      \counter_reg[0]_0\ => i2s_rx_tx_n_1,
      m00_axis_aclk => m00_axis_aclk,
      m_clk_dac => m_clk_dac
    );
SCLK: entity work.\design_1_AXIS_I2S_Transceiver_0_0_clk_divider__parameterized0\
     port map (
      m00_axis_aclk => m00_axis_aclk,
      out_buf_reg_0 => \^out_buf_reg\,
      out_buf_reg_1 => i2s_rx_tx_n_1
    );
i2s_rx_tx: entity work.design_1_AXIS_I2S_Transceiver_0_0_transceiver
     port map (
      Q(23) => i2s_rx_tx_n_8,
      Q(22) => i2s_rx_tx_n_9,
      Q(21) => i2s_rx_tx_n_10,
      Q(20) => i2s_rx_tx_n_11,
      Q(19) => i2s_rx_tx_n_12,
      Q(18) => i2s_rx_tx_n_13,
      Q(17) => i2s_rx_tx_n_14,
      Q(16) => i2s_rx_tx_n_15,
      Q(15) => i2s_rx_tx_n_16,
      Q(14) => i2s_rx_tx_n_17,
      Q(13) => i2s_rx_tx_n_18,
      Q(12) => i2s_rx_tx_n_19,
      Q(11) => i2s_rx_tx_n_20,
      Q(10) => i2s_rx_tx_n_21,
      Q(9) => i2s_rx_tx_n_22,
      Q(8) => i2s_rx_tx_n_23,
      Q(7) => i2s_rx_tx_n_24,
      Q(6) => i2s_rx_tx_n_25,
      Q(5) => i2s_rx_tx_n_26,
      Q(4) => i2s_rx_tx_n_27,
      Q(3) => i2s_rx_tx_n_28,
      Q(2) => i2s_rx_tx_n_29,
      Q(1) => i2s_rx_tx_n_30,
      Q(0) => i2s_rx_tx_n_31,
      counter_reg(4 downto 0) => counter_reg(4 downto 0),
      data_valid => data_valid,
      \input_right_channel_reg[23]_0\ => LRCLK_n_1,
      last_lr_state_reg_0 => \^out_buf_reg_0\,
      last_s_clk_state => last_s_clk_state,
      last_s_clk_state_reg_0 => \^out_buf_reg\,
      m00_axis_aclk => m00_axis_aclk,
      rst => rst,
      rst_0 => i2s_rx_tx_n_1,
      rx_i2s_data => rx_i2s_data
    );
mem: entity work.design_1_AXIS_I2S_Transceiver_0_0_i2s_mem
     port map (
      axis_m_tdata(0) => axis_m_tdata(0),
      axis_m_tvalid_int => axis_m_tvalid_int,
      counter_reg(4 downto 0) => counter_reg(4 downto 0),
      data_valid => data_valid,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      \mem_counter_reg[0]_0\ => \mem_counter_reg[0]\,
      \mem_counter_reg[4]_0\ => i2s_rx_tx_n_1,
      rst => rst,
      rx_i2s_data_reg(23) => i2s_rx_tx_n_8,
      rx_i2s_data_reg(22) => i2s_rx_tx_n_9,
      rx_i2s_data_reg(21) => i2s_rx_tx_n_10,
      rx_i2s_data_reg(20) => i2s_rx_tx_n_11,
      rx_i2s_data_reg(19) => i2s_rx_tx_n_12,
      rx_i2s_data_reg(18) => i2s_rx_tx_n_13,
      rx_i2s_data_reg(17) => i2s_rx_tx_n_14,
      rx_i2s_data_reg(16) => i2s_rx_tx_n_15,
      rx_i2s_data_reg(15) => i2s_rx_tx_n_16,
      rx_i2s_data_reg(14) => i2s_rx_tx_n_17,
      rx_i2s_data_reg(13) => i2s_rx_tx_n_18,
      rx_i2s_data_reg(12) => i2s_rx_tx_n_19,
      rx_i2s_data_reg(11) => i2s_rx_tx_n_20,
      rx_i2s_data_reg(10) => i2s_rx_tx_n_21,
      rx_i2s_data_reg(9) => i2s_rx_tx_n_22,
      rx_i2s_data_reg(8) => i2s_rx_tx_n_23,
      rx_i2s_data_reg(7) => i2s_rx_tx_n_24,
      rx_i2s_data_reg(6) => i2s_rx_tx_n_25,
      rx_i2s_data_reg(5) => i2s_rx_tx_n_26,
      rx_i2s_data_reg(4) => i2s_rx_tx_n_27,
      rx_i2s_data_reg(3) => i2s_rx_tx_n_28,
      rx_i2s_data_reg(2) => i2s_rx_tx_n_29,
      rx_i2s_data_reg(1) => i2s_rx_tx_n_30,
      rx_i2s_data_reg(0) => i2s_rx_tx_n_31,
      tx_i2s_data => tx_i2s_data
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0 is
  port (
    out_buf_reg : out STD_LOGIC;
    out_buf_reg_0 : out STD_LOGIC;
    m_clk_dac : out STD_LOGIC;
    mst_exec_state_reg : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_i2s_data : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    rx_i2s_data : in STD_LOGIC;
    rst : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0 : entity is "AXIS_I2S_Transceiver_v1_0";
end design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0;

architecture STRUCTURE of design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0 is
  signal I2S_Transceiver_n_5 : STD_LOGIC;
  signal axis_m_tvalid_int : STD_LOGIC;
  signal axis_tdata_int : STD_LOGIC;
begin
AXIS_I2S_Transceiver_v1_0_M00_AXIS_inst: entity work.design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_M00_AXIS
     port map (
      axis_m_tdata(0) => axis_tdata_int,
      axis_m_tvalid_int => axis_m_tvalid_int,
      axis_tlast_delay_reg_0 => I2S_Transceiver_n_5,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(0) => m00_axis_tdata(0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid
    );
AXIS_I2S_Transceiver_v1_0_S00_AXIS_inst: entity work.design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0_S00_AXIS
     port map (
      mst_exec_state_reg_0 => mst_exec_state_reg,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid
    );
I2S_Transceiver: entity work.design_1_AXIS_I2S_Transceiver_0_0_top
     port map (
      axis_m_tdata(0) => axis_tdata_int,
      axis_m_tvalid_int => axis_m_tvalid_int,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m_clk_dac => m_clk_dac,
      \mem_counter_reg[0]\ => I2S_Transceiver_n_5,
      out_buf_reg => out_buf_reg_0,
      out_buf_reg_0 => out_buf_reg,
      rst => rst,
      rx_i2s_data => rx_i2s_data,
      tx_i2s_data => tx_i2s_data
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_AXIS_I2S_Transceiver_0_0 is
  port (
    rst : in STD_LOGIC;
    rx_i2s_data : in STD_LOGIC;
    tx_i2s_data : out STD_LOGIC;
    s_clk_adc : out STD_LOGIC;
    s_clk_dac : out STD_LOGIC;
    m_clk_adc : out STD_LOGIC;
    m_clk_dac : out STD_LOGIC;
    lr_clk_adc : out STD_LOGIC;
    lr_clk_dac : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_AXIS_I2S_Transceiver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_AXIS_I2S_Transceiver_0_0 : entity is "design_1_AXIS_I2S_Transceiver_0_0,AXIS_I2S_Transceiver_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_AXIS_I2S_Transceiver_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_AXIS_I2S_Transceiver_0_0 : entity is "AXIS_I2S_Transceiver_v1_0,Vivado 2023.2";
end design_1_AXIS_I2S_Transceiver_0_0;

architecture STRUCTURE of design_1_AXIS_I2S_Transceiver_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^lr_clk_dac\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_clk_dac\ : STD_LOGIC;
  signal \^s_clk_dac\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute X_INTERFACE_PARAMETER of s00_axis_tvalid : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute X_INTERFACE_INFO of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  lr_clk_adc <= \^lr_clk_dac\;
  lr_clk_dac <= \^lr_clk_dac\;
  m00_axis_tdata(31) <= \<const0>\;
  m00_axis_tdata(30) <= \<const0>\;
  m00_axis_tdata(29) <= \<const0>\;
  m00_axis_tdata(28) <= \<const0>\;
  m00_axis_tdata(27) <= \<const0>\;
  m00_axis_tdata(26) <= \<const0>\;
  m00_axis_tdata(25) <= \<const0>\;
  m00_axis_tdata(24) <= \<const0>\;
  m00_axis_tdata(23) <= \<const0>\;
  m00_axis_tdata(22) <= \<const0>\;
  m00_axis_tdata(21) <= \<const0>\;
  m00_axis_tdata(20) <= \<const0>\;
  m00_axis_tdata(19) <= \<const0>\;
  m00_axis_tdata(18) <= \<const0>\;
  m00_axis_tdata(17) <= \<const0>\;
  m00_axis_tdata(16) <= \<const0>\;
  m00_axis_tdata(15) <= \<const0>\;
  m00_axis_tdata(14) <= \<const0>\;
  m00_axis_tdata(13) <= \<const0>\;
  m00_axis_tdata(12) <= \<const0>\;
  m00_axis_tdata(11) <= \<const0>\;
  m00_axis_tdata(10) <= \<const0>\;
  m00_axis_tdata(9) <= \<const0>\;
  m00_axis_tdata(8) <= \<const0>\;
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \^m00_axis_tdata\(0);
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
  m_clk_adc <= \^m_clk_dac\;
  m_clk_dac <= \^m_clk_dac\;
  s_clk_adc <= \^s_clk_dac\;
  s_clk_dac <= \^s_clk_dac\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_AXIS_I2S_Transceiver_0_0_AXIS_I2S_Transceiver_v1_0
     port map (
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(0) => \^m00_axis_tdata\(0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      m_clk_dac => \^m_clk_dac\,
      mst_exec_state_reg => s00_axis_tready,
      out_buf_reg => \^lr_clk_dac\,
      out_buf_reg_0 => \^s_clk_dac\,
      rst => rst,
      rx_i2s_data => rx_i2s_data,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid,
      tx_i2s_data => tx_i2s_data
    );
end STRUCTURE;
