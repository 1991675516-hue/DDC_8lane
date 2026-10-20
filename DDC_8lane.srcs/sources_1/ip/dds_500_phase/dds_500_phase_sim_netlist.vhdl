-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Oct 20 16:47:09 2026
-- Host        : LAPTOP-P782ARKR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/project/DDC_8lane/DDC_8lane.srcs/sources_1/ip/dds_500_phase/dds_500_phase_sim_netlist.vhdl
-- Design      : dds_500_phase
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_500_phase_sin_cos is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_phase_tdata_2_sp_1 : out STD_LOGIC;
    s_axis_phase_tdata_3_sp_1 : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 25 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_phase_tvalid : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_500_phase_sin_cos : entity is "sin_cos";
end dds_500_phase_sin_cos;

architecture STRUCTURE of dds_500_phase_sin_cos is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[10]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[11]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[12]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[13]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[14]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[1]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[2]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[5]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[6]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[7]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[12]_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pre_asyn_cos_RAM_op : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pre_asyn_sin_RAM_op : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axis_phase_tdata_2_sn_1 : STD_LOGIC;
  signal s_axis_phase_tdata_3_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[15]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[8]_i_1\ : label is "soft_lutpair3";
begin
  E(0) <= \^e\(0);
  s_axis_phase_tdata_2_sp_1 <= s_axis_phase_tdata_2_sn_1;
  s_axis_phase_tdata_3_sp_1 <= s_axis_phase_tdata_3_sn_1;
\has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_phase_tdata(2),
      I1 => Q(2),
      I2 => s_axis_phase_tvalid,
      O => s_axis_phase_tdata_2_sn_1
    );
\has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_phase_tdata(3),
      I1 => Q(3),
      I2 => s_axis_phase_tvalid,
      O => s_axis_phase_tdata_3_sn_1
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => s_axis_phase_tdata_2_sn_1,
      I2 => s_axis_phase_tdata(1),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[0]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAC535300ACAC53"
    )
        port map (
      I0 => s_axis_phase_tdata(1),
      I1 => Q(1),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_2_sn_1,
      I4 => s_axis_phase_tdata_3_sn_1,
      I5 => s_axis_phase_tdata(0),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[10]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"53ACAC5300ACAC53"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_2_sn_1,
      I4 => s_axis_phase_tdata_3_sn_1,
      I5 => s_axis_phase_tdata(1),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[11]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
        port map (
      I0 => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0\,
      I1 => s_axis_phase_tdata(3),
      I2 => s_axis_phase_tdata(2),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[12]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5353ACAC0000FF"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_2_sn_1,
      I4 => s_axis_phase_tdata_3_sn_1,
      I5 => s_axis_phase_tdata(1),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[13]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACAC5353AC0000FF"
    )
        port map (
      I0 => s_axis_phase_tdata(1),
      I1 => Q(1),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_2_sn_1,
      I4 => s_axis_phase_tdata_3_sn_1,
      I5 => s_axis_phase_tdata(0),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[14]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => s_axis_phase_tdata(3),
      I1 => s_axis_phase_tdata(2),
      I2 => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0\,
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACFCA"
    )
        port map (
      I0 => Q(1),
      I1 => s_axis_phase_tdata(1),
      I2 => s_axis_phase_tvalid,
      I3 => Q(0),
      I4 => s_axis_phase_tdata(0),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005353ACAC530053"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_2_sn_1,
      I4 => s_axis_phase_tdata_3_sn_1,
      I5 => s_axis_phase_tdata(1),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[1]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF53000000AC53"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_2_sn_1,
      I4 => s_axis_phase_tdata_3_sn_1,
      I5 => s_axis_phase_tdata(1),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[2]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005353ACAC000053"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_2_sn_1,
      I4 => s_axis_phase_tdata_3_sn_1,
      I5 => s_axis_phase_tdata(1),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[5]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC53FFACACAC00FF"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_2_sn_1,
      I4 => s_axis_phase_tdata_3_sn_1,
      I5 => s_axis_phase_tdata(1),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[6]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5353ACACAC0000FF"
    )
        port map (
      I0 => s_axis_phase_tdata(1),
      I1 => Q(1),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_2_sn_1,
      I4 => s_axis_phase_tdata_3_sn_1,
      I5 => s_axis_phase_tdata(0),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[7]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"61"
    )
        port map (
      I0 => s_axis_phase_tdata(2),
      I1 => s_axis_phase_tdata(3),
      I2 => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0\,
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[8]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[0]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(0),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[10]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(10),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[11]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(11),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[12]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(12),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[13]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(13),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[14]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(14),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(15),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[1]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(1),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[2]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(2),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[5]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(5),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[6]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(6),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[7]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(7),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[8]_i_1_n_0\,
      Q => pre_asyn_cos_RAM_op(8),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => s_axis_phase_tdata_2_sn_1,
      I1 => s_axis_phase_tdata(1),
      I2 => s_axis_phase_tdata(0),
      O => p_0_out(0)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5353ACAC53AC00"
    )
        port map (
      I0 => s_axis_phase_tdata(1),
      I1 => Q(1),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_3_sn_1,
      I4 => s_axis_phase_tdata_2_sn_1,
      I5 => s_axis_phase_tdata(0),
      O => p_0_out(10)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC53AC53AC53AC00"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_3_sn_1,
      I4 => s_axis_phase_tdata_2_sn_1,
      I5 => s_axis_phase_tdata(1),
      O => p_0_out(11)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0\,
      I1 => s_axis_phase_tdata(2),
      I2 => s_axis_phase_tdata(3),
      O => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[12]_i_1_n_0\
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"53AC00FF53AC00AC"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_3_sn_1,
      I4 => s_axis_phase_tdata(1),
      I5 => s_axis_phase_tdata_2_sn_1,
      O => p_0_out(13)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300FF53AC00AC"
    )
        port map (
      I0 => s_axis_phase_tdata(1),
      I1 => Q(1),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_3_sn_1,
      I4 => s_axis_phase_tdata(0),
      I5 => s_axis_phase_tdata_2_sn_1,
      O => p_0_out(14)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => s_axis_phase_tdata(3),
      I1 => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0\,
      I2 => s_axis_phase_tdata(2),
      O => p_0_out(15)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AC0053FF53AC00"
    )
        port map (
      I0 => s_axis_phase_tdata(1),
      I1 => Q(1),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_3_sn_1,
      I4 => s_axis_phase_tdata_2_sn_1,
      I5 => s_axis_phase_tdata(0),
      O => p_0_out(1)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0053000053AC00"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_3_sn_1,
      I4 => s_axis_phase_tdata_2_sn_1,
      I5 => s_axis_phase_tdata(1),
      O => p_0_out(2)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AC0053AC53AC00"
    )
        port map (
      I0 => s_axis_phase_tdata(1),
      I1 => Q(1),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_3_sn_1,
      I4 => s_axis_phase_tdata_2_sn_1,
      I5 => s_axis_phase_tdata(0),
      O => p_0_out(5)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"53ACACFFFFAC00AC"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_3_sn_1,
      I4 => s_axis_phase_tdata(1),
      I5 => s_axis_phase_tdata_2_sn_1,
      O => p_0_out(6)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFAC53AC5300AC"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => Q(0),
      I2 => s_axis_phase_tvalid,
      I3 => s_axis_phase_tdata_3_sn_1,
      I4 => s_axis_phase_tdata_2_sn_1,
      I5 => s_axis_phase_tdata(1),
      O => p_0_out(7)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => s_axis_phase_tdata(3),
      I1 => s_axis_phase_tdata(2),
      I2 => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_cos_RAM_op[15]_i_2_n_0\,
      O => p_0_out(8)
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(0),
      Q => pre_asyn_sin_RAM_op(0),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(10),
      Q => pre_asyn_sin_RAM_op(10),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(11),
      Q => pre_asyn_sin_RAM_op(11),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op[12]_i_1_n_0\,
      Q => pre_asyn_sin_RAM_op(12),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(13),
      Q => pre_asyn_sin_RAM_op(13),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(14),
      Q => pre_asyn_sin_RAM_op(14),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(15),
      Q => pre_asyn_sin_RAM_op(15),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(1),
      Q => pre_asyn_sin_RAM_op(1),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(2),
      Q => pre_asyn_sin_RAM_op(2),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(5),
      Q => pre_asyn_sin_RAM_op(5),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(6),
      Q => pre_asyn_sin_RAM_op(6),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(7),
      Q => pre_asyn_sin_RAM_op(7),
      R => '0'
    );
\i_rtl.i_full_table.i_dist_rom.i_pipe_1.pre_asyn_sin_RAM_op_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => p_0_out(8),
      Q => pre_asyn_sin_RAM_op(8),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(0),
      Q => m_axis_data_tdata(0),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(10),
      Q => m_axis_data_tdata(7),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(11),
      Q => m_axis_data_tdata(8),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(12),
      Q => m_axis_data_tdata(9),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(13),
      Q => m_axis_data_tdata(10),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(14),
      Q => m_axis_data_tdata(11),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(15),
      Q => m_axis_data_tdata(12),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(1),
      Q => m_axis_data_tdata(1),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(2),
      Q => m_axis_data_tdata(2),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(5),
      Q => m_axis_data_tdata(3),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(6),
      Q => m_axis_data_tdata(4),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(7),
      Q => m_axis_data_tdata(5),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_cos_RAM_op_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_cos_RAM_op(8),
      Q => m_axis_data_tdata(6),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aclken,
      I1 => s_axis_phase_tvalid,
      O => \^e\(0)
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(0),
      Q => m_axis_data_tdata(13),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(10),
      Q => m_axis_data_tdata(20),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(11),
      Q => m_axis_data_tdata(21),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(12),
      Q => m_axis_data_tdata(22),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(13),
      Q => m_axis_data_tdata(23),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(14),
      Q => m_axis_data_tdata(24),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(15),
      Q => m_axis_data_tdata(25),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(1),
      Q => m_axis_data_tdata(14),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(2),
      Q => m_axis_data_tdata(15),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(5),
      Q => m_axis_data_tdata(16),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(6),
      Q => m_axis_data_tdata(17),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(7),
      Q => m_axis_data_tdata(18),
      R => '0'
    );
\i_rtl.i_full_table.i_pipe_2_a.asyn_sin_RAM_op_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => pre_asyn_sin_RAM_op(8),
      Q => m_axis_data_tdata(19),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_500_phase_xbip_pipe_v3_0_5_viv is
  port (
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_500_phase_xbip_pipe_v3_0_5_viv : entity is "xbip_pipe_v3_0_5_viv";
end dds_500_phase_xbip_pipe_v3_0_5_viv;

architecture STRUCTURE of dds_500_phase_xbip_pipe_v3_0_5_viv is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
begin
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => '0',
      Q => first_q,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_500_phase_xbip_pipe_v3_0_5_viv_0 is
  port (
    m_axis_data_tvalid : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_500_phase_xbip_pipe_v3_0_5_viv_0 : entity is "xbip_pipe_v3_0_5_viv";
end dds_500_phase_xbip_pipe_v3_0_5_viv_0;

architecture STRUCTURE of dds_500_phase_xbip_pipe_v3_0_5_viv_0 is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal p_0_in : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
begin
m_axis_data_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => s_axis_phase_tvalid,
      O => m_axis_data_tvalid
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => '1',
      Q => first_q,
      R => SR(0)
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => first_q,
      Q => p_0_in,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized0\ is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized0\ : entity is "xbip_pipe_v3_0_5_viv";
end \dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized0\;

architecture STRUCTURE of \dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized0\ is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal \opt_has_pipe.first_q[0]_i_1__0_n_0\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
begin
\opt_has_pipe.first_q[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => aclken,
      I1 => SR(0),
      O => \opt_has_pipe.first_q[0]_i_1__0_n_0\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q[0]_i_1__0_n_0\,
      Q => first_q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized2\ is
  port (
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    pre_rdy2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized2\ : entity is "xbip_pipe_v3_0_5_viv";
end \dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized2\;

architecture STRUCTURE of \dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized2\ is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal pre_rdy : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
begin
\opt_has_pipe.first_q[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pre_rdy2,
      O => pre_rdy
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => pre_rdy,
      Q => first_q,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_500_phase_dds_compiler_v6_0_17_rdy is
  port (
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_500_phase_dds_compiler_v6_0_17_rdy : entity is "dds_compiler_v6_0_17_rdy";
end dds_500_phase_dds_compiler_v6_0_17_rdy;

architecture STRUCTURE of dds_500_phase_dds_compiler_v6_0_17_rdy is
  signal \mutant_x_op[0]_i_1_n_0\ : STD_LOGIC;
  signal pre_rdy2 : STD_LOGIC;
begin
\i_single_channel.i_non_trivial_lat.i_rdy\: entity work.\dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized2\
     port map (
      E(0) => E(0),
      SR(0) => SR(0),
      aclk => aclk,
      pre_rdy2 => pre_rdy2
    );
\mutant_x_op[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2A"
    )
        port map (
      I0 => pre_rdy2,
      I1 => aclken,
      I2 => s_axis_phase_tvalid,
      I3 => SR(0),
      O => \mutant_x_op[0]_i_1_n_0\
    );
\mutant_x_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \mutant_x_op[0]_i_1_n_0\,
      Q => pre_rdy2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_500_phase_dds_compiler_v6_0_17_core is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 25 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_phase_tvalid : in STD_LOGIC;
    aclken : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_500_phase_dds_compiler_v6_0_17_core : entity is "dds_compiler_v6_0_17_core";
end dds_500_phase_dds_compiler_v6_0_17_core;

architecture STRUCTURE of dds_500_phase_dds_compiler_v6_0_17_core is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  E(0) <= \^e\(0);
\I_SINCOS.i_std_rom.i_rom\: entity work.dds_500_phase_sin_cos
     port map (
      E(0) => \^e\(0),
      Q(3 downto 0) => Q(3 downto 0),
      aclk => aclk,
      aclken => aclken,
      m_axis_data_tdata(25 downto 0) => m_axis_data_tdata(25 downto 0),
      s_axis_phase_tdata(3 downto 0) => s_axis_phase_tdata(3 downto 0),
      s_axis_phase_tdata_2_sp_1 => sel(0),
      s_axis_phase_tdata_3_sp_1 => sel(1),
      s_axis_phase_tvalid => s_axis_phase_tvalid
    );
\i_rdy.rdy_logic\: entity work.dds_500_phase_dds_compiler_v6_0_17_rdy
     port map (
      E(0) => \^e\(0),
      SR(0) => SR(0),
      aclk => aclk,
      aclken => aclken,
      s_axis_phase_tvalid => s_axis_phase_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_500_phase_dds_compiler_v6_0_17_viv is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tready : out STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_phase_tlast : in STD_LOGIC;
    s_axis_phase_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_config_tlast : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tlast : out STD_LOGIC;
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_phase_tvalid : out STD_LOGIC;
    m_axis_phase_tready : in STD_LOGIC;
    m_axis_phase_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_phase_tlast : out STD_LOGIC;
    m_axis_phase_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    event_pinc_invalid : out STD_LOGIC;
    event_poff_invalid : out STD_LOGIC;
    event_phase_in_invalid : out STD_LOGIC;
    event_s_phase_tlast_missing : out STD_LOGIC;
    event_s_phase_tlast_unexpected : out STD_LOGIC;
    event_s_phase_chanid_incorrect : out STD_LOGIC;
    event_s_config_tlast_missing : out STD_LOGIC;
    event_s_config_tlast_unexpected : out STD_LOGIC;
    debug_axi_pinc_in : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_axi_poff_in : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_axi_resync_in : out STD_LOGIC;
    debug_axi_chan_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug_core_nd : out STD_LOGIC;
    debug_phase : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_phase_nd : out STD_LOGIC
  );
  attribute C_ACCUMULATOR_WIDTH : integer;
  attribute C_ACCUMULATOR_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 4;
  attribute C_AMPLITUDE : integer;
  attribute C_AMPLITUDE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_CHANNELS : integer;
  attribute C_CHANNELS of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_CHAN_WIDTH : integer;
  attribute C_CHAN_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_DEBUG_INTERFACE : integer;
  attribute C_DEBUG_INTERFACE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_HAS_M_DATA : integer;
  attribute C_HAS_M_DATA of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_HAS_M_PHASE : integer;
  attribute C_HAS_M_PHASE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_HAS_PHASEGEN : integer;
  attribute C_HAS_PHASEGEN of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_HAS_PHASE_OUT : integer;
  attribute C_HAS_PHASE_OUT of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_HAS_SINCOS : integer;
  attribute C_HAS_SINCOS of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_HAS_S_CONFIG : integer;
  attribute C_HAS_S_CONFIG of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_HAS_S_PHASE : integer;
  attribute C_HAS_S_PHASE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_HAS_TLAST : integer;
  attribute C_HAS_TLAST of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_HAS_TREADY : integer;
  attribute C_HAS_TREADY of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 2;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 2;
  attribute C_MODE_OF_OPERATION : integer;
  attribute C_MODE_OF_OPERATION of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_MODULUS : integer;
  attribute C_MODULUS of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 9;
  attribute C_M_DATA_HAS_TUSER : integer;
  attribute C_M_DATA_HAS_TUSER of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_M_DATA_TDATA_WIDTH : integer;
  attribute C_M_DATA_TDATA_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 32;
  attribute C_M_DATA_TUSER_WIDTH : integer;
  attribute C_M_DATA_TUSER_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_M_PHASE_HAS_TUSER : integer;
  attribute C_M_PHASE_HAS_TUSER of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_M_PHASE_TDATA_WIDTH : integer;
  attribute C_M_PHASE_TDATA_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_M_PHASE_TUSER_WIDTH : integer;
  attribute C_M_PHASE_TUSER_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_NEGATIVE_COSINE : integer;
  attribute C_NEGATIVE_COSINE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_NEGATIVE_SINE : integer;
  attribute C_NEGATIVE_SINE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_NOISE_SHAPING : integer;
  attribute C_NOISE_SHAPING of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_OPTIMISE_GOAL : integer;
  attribute C_OPTIMISE_GOAL of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_OUTPUTS_REQUIRED : integer;
  attribute C_OUTPUTS_REQUIRED of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 2;
  attribute C_OUTPUT_FORM : integer;
  attribute C_OUTPUT_FORM of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_OUTPUT_WIDTH : integer;
  attribute C_OUTPUT_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 16;
  attribute C_PHASE_ANGLE_WIDTH : integer;
  attribute C_PHASE_ANGLE_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 4;
  attribute C_PHASE_INCREMENT : integer;
  attribute C_PHASE_INCREMENT of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 2;
  attribute C_PHASE_INCREMENT_VALUE : string;
  attribute C_PHASE_INCREMENT_VALUE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
  attribute C_PHASE_OFFSET : integer;
  attribute C_PHASE_OFFSET of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_PHASE_OFFSET_VALUE : string;
  attribute C_PHASE_OFFSET_VALUE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
  attribute C_POR_MODE : integer;
  attribute C_POR_MODE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_RESYNC : integer;
  attribute C_RESYNC of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_S_CONFIG_SYNC_MODE : integer;
  attribute C_S_CONFIG_SYNC_MODE of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_S_CONFIG_TDATA_WIDTH : integer;
  attribute C_S_CONFIG_TDATA_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_S_PHASE_HAS_TUSER : integer;
  attribute C_S_PHASE_HAS_TUSER of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_S_PHASE_TDATA_WIDTH : integer;
  attribute C_S_PHASE_TDATA_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 8;
  attribute C_S_PHASE_TUSER_WIDTH : integer;
  attribute C_S_PHASE_TUSER_WIDTH of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 1;
  attribute C_USE_DSP48 : integer;
  attribute C_USE_DSP48 of dds_500_phase_dds_compiler_v6_0_17_viv : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of dds_500_phase_dds_compiler_v6_0_17_viv : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_500_phase_dds_compiler_v6_0_17_viv : entity is "dds_compiler_v6_0_17_viv";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dds_500_phase_dds_compiler_v6_0_17_viv : entity is "yes";
end dds_500_phase_dds_compiler_v6_0_17_viv;

architecture STRUCTURE of dds_500_phase_dds_compiler_v6_0_17_viv is
  signal \<const0>\ : STD_LOGIC;
  signal ce_core : STD_LOGIC;
  signal \has_aresetn.sclr_i_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_data_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_s_phase_fifo_din : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sclr_i : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[1]_i_1\ : label is "soft_lutpair5";
begin
  debug_axi_chan_in(0) <= \<const0>\;
  debug_axi_pinc_in(3) <= \<const0>\;
  debug_axi_pinc_in(2) <= \<const0>\;
  debug_axi_pinc_in(1) <= \<const0>\;
  debug_axi_pinc_in(0) <= \<const0>\;
  debug_axi_poff_in(3) <= \<const0>\;
  debug_axi_poff_in(2) <= \<const0>\;
  debug_axi_poff_in(1) <= \<const0>\;
  debug_axi_poff_in(0) <= \<const0>\;
  debug_axi_resync_in <= \<const0>\;
  debug_core_nd <= \<const0>\;
  debug_phase(3) <= \<const0>\;
  debug_phase(2) <= \<const0>\;
  debug_phase(1) <= \<const0>\;
  debug_phase(0) <= \<const0>\;
  debug_phase_nd <= \<const0>\;
  event_phase_in_invalid <= \<const0>\;
  event_pinc_invalid <= \<const0>\;
  event_poff_invalid <= \<const0>\;
  event_s_config_tlast_missing <= \<const0>\;
  event_s_config_tlast_unexpected <= \<const0>\;
  event_s_phase_chanid_incorrect <= \<const0>\;
  event_s_phase_tlast_unexpected <= \<const0>\;
  m_axis_data_tdata(31 downto 26) <= \^m_axis_data_tdata\(31 downto 26);
  m_axis_data_tdata(25) <= \<const0>\;
  m_axis_data_tdata(24 downto 21) <= \^m_axis_data_tdata\(24 downto 21);
  m_axis_data_tdata(20) <= \<const0>\;
  m_axis_data_tdata(19) <= \<const0>\;
  m_axis_data_tdata(18 downto 10) <= \^m_axis_data_tdata\(18 downto 10);
  m_axis_data_tdata(9) <= \<const0>\;
  m_axis_data_tdata(8 downto 5) <= \^m_axis_data_tdata\(8 downto 5);
  m_axis_data_tdata(4) <= \<const0>\;
  m_axis_data_tdata(3) <= \<const0>\;
  m_axis_data_tdata(2 downto 0) <= \^m_axis_data_tdata\(2 downto 0);
  m_axis_data_tlast <= \<const0>\;
  m_axis_data_tuser(0) <= \<const0>\;
  m_axis_phase_tdata(0) <= \<const0>\;
  m_axis_phase_tlast <= \<const0>\;
  m_axis_phase_tuser(0) <= \<const0>\;
  m_axis_phase_tvalid <= \<const0>\;
  s_axis_config_tready <= \<const0>\;
  s_axis_phase_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\has_aresetn.sclr_i_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \has_aresetn.sclr_i_i_1_n_0\
    );
\has_aresetn.sclr_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \has_aresetn.sclr_i_i_1_n_0\,
      Q => sclr_i,
      R => '0'
    );
\has_s_phase.ce_i_delay\: entity work.\dds_500_phase_xbip_pipe_v3_0_5_viv__parameterized0\
     port map (
      SR(0) => sclr_i,
      aclk => aclk,
      aclken => aclken
    );
\has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_phase_tdata(0),
      I1 => reg_s_phase_fifo_din(0),
      I2 => s_axis_phase_tvalid,
      O => sel(0)
    );
\has_s_phase.i_has_no_tready.reg_s_phase_fifo_din[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axis_phase_tdata(1),
      I1 => reg_s_phase_fifo_din(1),
      I2 => s_axis_phase_tvalid,
      O => sel(1)
    );
\has_s_phase.i_has_no_tready.reg_s_phase_fifo_din_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => sel(0),
      Q => reg_s_phase_fifo_din(0),
      R => sclr_i
    );
\has_s_phase.i_has_no_tready.reg_s_phase_fifo_din_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => sel(1),
      Q => reg_s_phase_fifo_din(1),
      R => sclr_i
    );
\has_s_phase.i_has_no_tready.reg_s_phase_fifo_din_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => sel(2),
      Q => reg_s_phase_fifo_din(2),
      R => sclr_i
    );
\has_s_phase.i_has_no_tready.reg_s_phase_fifo_din_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => aclken,
      D => sel(3),
      Q => reg_s_phase_fifo_din(3),
      R => sclr_i
    );
\has_s_phase.s_phase_tlast_checks.event_s_phase_tlast_missing_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ce_core,
      D => '1',
      Q => event_s_phase_tlast_missing,
      R => '0'
    );
i_dds: entity work.dds_500_phase_dds_compiler_v6_0_17_core
     port map (
      E(0) => ce_core,
      Q(3 downto 0) => reg_s_phase_fifo_din(3 downto 0),
      SR(0) => sclr_i,
      aclk => aclk,
      aclken => aclken,
      m_axis_data_tdata(25 downto 20) => \^m_axis_data_tdata\(31 downto 26),
      m_axis_data_tdata(19 downto 16) => \^m_axis_data_tdata\(24 downto 21),
      m_axis_data_tdata(15 downto 7) => \^m_axis_data_tdata\(18 downto 10),
      m_axis_data_tdata(6 downto 3) => \^m_axis_data_tdata\(8 downto 5),
      m_axis_data_tdata(2 downto 0) => \^m_axis_data_tdata\(2 downto 0),
      s_axis_phase_tdata(3 downto 0) => s_axis_phase_tdata(3 downto 0),
      s_axis_phase_tvalid => s_axis_phase_tvalid,
      sel(1 downto 0) => sel(3 downto 2)
    );
\i_has_nd_rdy_pipe.channel_pipe\: entity work.dds_500_phase_xbip_pipe_v3_0_5_viv
     port map (
      E(0) => ce_core,
      SR(0) => sclr_i,
      aclk => aclk
    );
\i_has_nd_rdy_pipe.valid_phase_read_del\: entity work.dds_500_phase_xbip_pipe_v3_0_5_viv_0
     port map (
      E(0) => ce_core,
      SR(0) => sclr_i,
      aclk => aclk,
      m_axis_data_tvalid => m_axis_data_tvalid,
      s_axis_phase_tvalid => s_axis_phase_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_500_phase_dds_compiler_v6_0_17 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tready : out STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_phase_tlast : in STD_LOGIC;
    s_axis_phase_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_config_tvalid : in STD_LOGIC;
    s_axis_config_tready : out STD_LOGIC;
    s_axis_config_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_config_tlast : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tlast : out STD_LOGIC;
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_phase_tvalid : out STD_LOGIC;
    m_axis_phase_tready : in STD_LOGIC;
    m_axis_phase_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_phase_tlast : out STD_LOGIC;
    m_axis_phase_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    event_pinc_invalid : out STD_LOGIC;
    event_poff_invalid : out STD_LOGIC;
    event_phase_in_invalid : out STD_LOGIC;
    event_s_phase_tlast_missing : out STD_LOGIC;
    event_s_phase_tlast_unexpected : out STD_LOGIC;
    event_s_phase_chanid_incorrect : out STD_LOGIC;
    event_s_config_tlast_missing : out STD_LOGIC;
    event_s_config_tlast_unexpected : out STD_LOGIC;
    debug_axi_pinc_in : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_axi_poff_in : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_axi_resync_in : out STD_LOGIC;
    debug_axi_chan_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug_core_nd : out STD_LOGIC;
    debug_phase : out STD_LOGIC_VECTOR ( 3 downto 0 );
    debug_phase_nd : out STD_LOGIC
  );
  attribute C_ACCUMULATOR_WIDTH : integer;
  attribute C_ACCUMULATOR_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 4;
  attribute C_AMPLITUDE : integer;
  attribute C_AMPLITUDE of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_CHANNELS : integer;
  attribute C_CHANNELS of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_CHAN_WIDTH : integer;
  attribute C_CHAN_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_DEBUG_INTERFACE : integer;
  attribute C_DEBUG_INTERFACE of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_HAS_M_DATA : integer;
  attribute C_HAS_M_DATA of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_HAS_M_PHASE : integer;
  attribute C_HAS_M_PHASE of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_HAS_PHASEGEN : integer;
  attribute C_HAS_PHASEGEN of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_HAS_PHASE_OUT : integer;
  attribute C_HAS_PHASE_OUT of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_HAS_SINCOS : integer;
  attribute C_HAS_SINCOS of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_HAS_S_CONFIG : integer;
  attribute C_HAS_S_CONFIG of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_HAS_S_PHASE : integer;
  attribute C_HAS_S_PHASE of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_HAS_TLAST : integer;
  attribute C_HAS_TLAST of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_HAS_TREADY : integer;
  attribute C_HAS_TREADY of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of dds_500_phase_dds_compiler_v6_0_17 : entity is 2;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of dds_500_phase_dds_compiler_v6_0_17 : entity is 2;
  attribute C_MODE_OF_OPERATION : integer;
  attribute C_MODE_OF_OPERATION of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_MODULUS : integer;
  attribute C_MODULUS of dds_500_phase_dds_compiler_v6_0_17 : entity is 9;
  attribute C_M_DATA_HAS_TUSER : integer;
  attribute C_M_DATA_HAS_TUSER of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_M_DATA_TDATA_WIDTH : integer;
  attribute C_M_DATA_TDATA_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 32;
  attribute C_M_DATA_TUSER_WIDTH : integer;
  attribute C_M_DATA_TUSER_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_M_PHASE_HAS_TUSER : integer;
  attribute C_M_PHASE_HAS_TUSER of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_M_PHASE_TDATA_WIDTH : integer;
  attribute C_M_PHASE_TDATA_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_M_PHASE_TUSER_WIDTH : integer;
  attribute C_M_PHASE_TUSER_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_NEGATIVE_COSINE : integer;
  attribute C_NEGATIVE_COSINE of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_NEGATIVE_SINE : integer;
  attribute C_NEGATIVE_SINE of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_NOISE_SHAPING : integer;
  attribute C_NOISE_SHAPING of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_OPTIMISE_GOAL : integer;
  attribute C_OPTIMISE_GOAL of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_OUTPUTS_REQUIRED : integer;
  attribute C_OUTPUTS_REQUIRED of dds_500_phase_dds_compiler_v6_0_17 : entity is 2;
  attribute C_OUTPUT_FORM : integer;
  attribute C_OUTPUT_FORM of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_OUTPUT_WIDTH : integer;
  attribute C_OUTPUT_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 16;
  attribute C_PHASE_ANGLE_WIDTH : integer;
  attribute C_PHASE_ANGLE_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 4;
  attribute C_PHASE_INCREMENT : integer;
  attribute C_PHASE_INCREMENT of dds_500_phase_dds_compiler_v6_0_17 : entity is 2;
  attribute C_PHASE_INCREMENT_VALUE : string;
  attribute C_PHASE_INCREMENT_VALUE of dds_500_phase_dds_compiler_v6_0_17 : entity is "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
  attribute C_PHASE_OFFSET : integer;
  attribute C_PHASE_OFFSET of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_PHASE_OFFSET_VALUE : string;
  attribute C_PHASE_OFFSET_VALUE of dds_500_phase_dds_compiler_v6_0_17 : entity is "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
  attribute C_POR_MODE : integer;
  attribute C_POR_MODE of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_RESYNC : integer;
  attribute C_RESYNC of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_S_CONFIG_SYNC_MODE : integer;
  attribute C_S_CONFIG_SYNC_MODE of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_S_CONFIG_TDATA_WIDTH : integer;
  attribute C_S_CONFIG_TDATA_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_S_PHASE_HAS_TUSER : integer;
  attribute C_S_PHASE_HAS_TUSER of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_S_PHASE_TDATA_WIDTH : integer;
  attribute C_S_PHASE_TDATA_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 8;
  attribute C_S_PHASE_TUSER_WIDTH : integer;
  attribute C_S_PHASE_TUSER_WIDTH of dds_500_phase_dds_compiler_v6_0_17 : entity is 1;
  attribute C_USE_DSP48 : integer;
  attribute C_USE_DSP48 of dds_500_phase_dds_compiler_v6_0_17 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of dds_500_phase_dds_compiler_v6_0_17 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dds_500_phase_dds_compiler_v6_0_17 : entity is "dds_compiler_v6_0_17";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dds_500_phase_dds_compiler_v6_0_17 : entity is "yes";
end dds_500_phase_dds_compiler_v6_0_17;

architecture STRUCTURE of dds_500_phase_dds_compiler_v6_0_17 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_data_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_i_synth_debug_axi_resync_in_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_debug_core_nd_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_debug_phase_nd_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_event_phase_in_invalid_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_event_pinc_invalid_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_event_poff_invalid_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_m_axis_data_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_m_axis_phase_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_phase_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_debug_axi_chan_in_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_i_synth_debug_axi_pinc_in_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_i_synth_debug_axi_poff_in_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_i_synth_debug_phase_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_i_synth_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 25 downto 3 );
  signal NLW_i_synth_m_axis_data_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_i_synth_m_axis_phase_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_i_synth_m_axis_phase_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACCUMULATOR_WIDTH of i_synth : label is 4;
  attribute C_AMPLITUDE of i_synth : label is 0;
  attribute C_CHANNELS of i_synth : label is 1;
  attribute C_CHAN_WIDTH of i_synth : label is 1;
  attribute C_DEBUG_INTERFACE of i_synth : label is 0;
  attribute C_HAS_ACLKEN of i_synth : label is 1;
  attribute C_HAS_ARESETN of i_synth : label is 1;
  attribute C_HAS_M_DATA of i_synth : label is 1;
  attribute C_HAS_M_PHASE of i_synth : label is 0;
  attribute C_HAS_PHASEGEN of i_synth : label is 0;
  attribute C_HAS_PHASE_OUT of i_synth : label is 0;
  attribute C_HAS_SINCOS of i_synth : label is 1;
  attribute C_HAS_S_CONFIG of i_synth : label is 0;
  attribute C_HAS_S_PHASE of i_synth : label is 1;
  attribute C_HAS_TLAST of i_synth : label is 0;
  attribute C_HAS_TREADY of i_synth : label is 0;
  attribute C_LATENCY of i_synth : label is 2;
  attribute C_MEM_TYPE of i_synth : label is 2;
  attribute C_MODE_OF_OPERATION of i_synth : label is 0;
  attribute C_MODULUS of i_synth : label is 9;
  attribute C_M_DATA_HAS_TUSER of i_synth : label is 0;
  attribute C_M_DATA_TDATA_WIDTH of i_synth : label is 32;
  attribute C_M_DATA_TUSER_WIDTH of i_synth : label is 1;
  attribute C_M_PHASE_HAS_TUSER of i_synth : label is 0;
  attribute C_M_PHASE_TDATA_WIDTH of i_synth : label is 1;
  attribute C_M_PHASE_TUSER_WIDTH of i_synth : label is 1;
  attribute C_NEGATIVE_COSINE of i_synth : label is 0;
  attribute C_NEGATIVE_SINE of i_synth : label is 0;
  attribute C_NOISE_SHAPING of i_synth : label is 0;
  attribute C_OPTIMISE_GOAL of i_synth : label is 0;
  attribute C_OUTPUTS_REQUIRED of i_synth : label is 2;
  attribute C_OUTPUT_FORM of i_synth : label is 0;
  attribute C_OUTPUT_WIDTH of i_synth : label is 16;
  attribute C_PHASE_ANGLE_WIDTH of i_synth : label is 4;
  attribute C_PHASE_INCREMENT of i_synth : label is 2;
  attribute C_PHASE_INCREMENT_VALUE of i_synth : label is "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
  attribute C_PHASE_OFFSET of i_synth : label is 0;
  attribute C_PHASE_OFFSET_VALUE of i_synth : label is "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
  attribute C_POR_MODE of i_synth : label is 0;
  attribute C_RESYNC of i_synth : label is 0;
  attribute C_S_CONFIG_SYNC_MODE of i_synth : label is 0;
  attribute C_S_CONFIG_TDATA_WIDTH of i_synth : label is 1;
  attribute C_S_PHASE_HAS_TUSER of i_synth : label is 0;
  attribute C_S_PHASE_TDATA_WIDTH of i_synth : label is 8;
  attribute C_S_PHASE_TUSER_WIDTH of i_synth : label is 1;
  attribute C_USE_DSP48 of i_synth : label is 0;
  attribute C_XDEVICEFAMILY of i_synth : label is "zynq";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
  debug_axi_chan_in(0) <= \<const0>\;
  debug_axi_pinc_in(3) <= \<const0>\;
  debug_axi_pinc_in(2) <= \<const0>\;
  debug_axi_pinc_in(1) <= \<const0>\;
  debug_axi_pinc_in(0) <= \<const0>\;
  debug_axi_poff_in(3) <= \<const0>\;
  debug_axi_poff_in(2) <= \<const0>\;
  debug_axi_poff_in(1) <= \<const0>\;
  debug_axi_poff_in(0) <= \<const0>\;
  debug_axi_resync_in <= \<const0>\;
  debug_core_nd <= \<const0>\;
  debug_phase(3) <= \<const0>\;
  debug_phase(2) <= \<const0>\;
  debug_phase(1) <= \<const0>\;
  debug_phase(0) <= \<const0>\;
  debug_phase_nd <= \<const0>\;
  event_phase_in_invalid <= \<const0>\;
  event_pinc_invalid <= \<const0>\;
  event_poff_invalid <= \<const0>\;
  event_s_config_tlast_missing <= \<const0>\;
  event_s_config_tlast_unexpected <= \<const0>\;
  event_s_phase_chanid_incorrect <= \<const0>\;
  event_s_phase_tlast_unexpected <= \<const0>\;
  m_axis_data_tdata(31) <= \^m_axis_data_tdata\(31);
  m_axis_data_tdata(30) <= \^m_axis_data_tdata\(25);
  m_axis_data_tdata(29 downto 22) <= \^m_axis_data_tdata\(29 downto 22);
  m_axis_data_tdata(21) <= \^m_axis_data_tdata\(19);
  m_axis_data_tdata(20) <= \^m_axis_data_tdata\(19);
  m_axis_data_tdata(19 downto 15) <= \^m_axis_data_tdata\(19 downto 15);
  m_axis_data_tdata(14) <= \^m_axis_data_tdata\(9);
  m_axis_data_tdata(13 downto 6) <= \^m_axis_data_tdata\(13 downto 6);
  m_axis_data_tdata(5) <= \^m_axis_data_tdata\(3);
  m_axis_data_tdata(4) <= \^m_axis_data_tdata\(3);
  m_axis_data_tdata(3 downto 0) <= \^m_axis_data_tdata\(3 downto 0);
  m_axis_data_tlast <= \<const0>\;
  m_axis_data_tuser(0) <= \<const0>\;
  m_axis_phase_tdata(0) <= \<const0>\;
  m_axis_phase_tlast <= \<const0>\;
  m_axis_phase_tuser(0) <= \<const0>\;
  m_axis_phase_tvalid <= \<const0>\;
  s_axis_config_tready <= \<const0>\;
  s_axis_phase_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_synth: entity work.dds_500_phase_dds_compiler_v6_0_17_viv
     port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      debug_axi_chan_in(0) => NLW_i_synth_debug_axi_chan_in_UNCONNECTED(0),
      debug_axi_pinc_in(3 downto 0) => NLW_i_synth_debug_axi_pinc_in_UNCONNECTED(3 downto 0),
      debug_axi_poff_in(3 downto 0) => NLW_i_synth_debug_axi_poff_in_UNCONNECTED(3 downto 0),
      debug_axi_resync_in => NLW_i_synth_debug_axi_resync_in_UNCONNECTED,
      debug_core_nd => NLW_i_synth_debug_core_nd_UNCONNECTED,
      debug_phase(3 downto 0) => NLW_i_synth_debug_phase_UNCONNECTED(3 downto 0),
      debug_phase_nd => NLW_i_synth_debug_phase_nd_UNCONNECTED,
      event_phase_in_invalid => NLW_i_synth_event_phase_in_invalid_UNCONNECTED,
      event_pinc_invalid => NLW_i_synth_event_pinc_invalid_UNCONNECTED,
      event_poff_invalid => NLW_i_synth_event_poff_invalid_UNCONNECTED,
      event_s_config_tlast_missing => NLW_i_synth_event_s_config_tlast_missing_UNCONNECTED,
      event_s_config_tlast_unexpected => NLW_i_synth_event_s_config_tlast_unexpected_UNCONNECTED,
      event_s_phase_chanid_incorrect => NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED,
      event_s_phase_tlast_missing => event_s_phase_tlast_missing,
      event_s_phase_tlast_unexpected => NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(31) => \^m_axis_data_tdata\(31),
      m_axis_data_tdata(30) => \^m_axis_data_tdata\(25),
      m_axis_data_tdata(29 downto 26) => \^m_axis_data_tdata\(29 downto 26),
      m_axis_data_tdata(25) => NLW_i_synth_m_axis_data_tdata_UNCONNECTED(25),
      m_axis_data_tdata(24 downto 22) => \^m_axis_data_tdata\(24 downto 22),
      m_axis_data_tdata(21) => \^m_axis_data_tdata\(19),
      m_axis_data_tdata(20 downto 19) => NLW_i_synth_m_axis_data_tdata_UNCONNECTED(20 downto 19),
      m_axis_data_tdata(18 downto 15) => \^m_axis_data_tdata\(18 downto 15),
      m_axis_data_tdata(14) => \^m_axis_data_tdata\(9),
      m_axis_data_tdata(13 downto 10) => \^m_axis_data_tdata\(13 downto 10),
      m_axis_data_tdata(9) => NLW_i_synth_m_axis_data_tdata_UNCONNECTED(9),
      m_axis_data_tdata(8 downto 6) => \^m_axis_data_tdata\(8 downto 6),
      m_axis_data_tdata(5) => \^m_axis_data_tdata\(3),
      m_axis_data_tdata(4 downto 3) => NLW_i_synth_m_axis_data_tdata_UNCONNECTED(4 downto 3),
      m_axis_data_tdata(2 downto 0) => \^m_axis_data_tdata\(2 downto 0),
      m_axis_data_tlast => NLW_i_synth_m_axis_data_tlast_UNCONNECTED,
      m_axis_data_tready => '0',
      m_axis_data_tuser(0) => NLW_i_synth_m_axis_data_tuser_UNCONNECTED(0),
      m_axis_data_tvalid => m_axis_data_tvalid,
      m_axis_phase_tdata(0) => NLW_i_synth_m_axis_phase_tdata_UNCONNECTED(0),
      m_axis_phase_tlast => NLW_i_synth_m_axis_phase_tlast_UNCONNECTED,
      m_axis_phase_tready => '0',
      m_axis_phase_tuser(0) => NLW_i_synth_m_axis_phase_tuser_UNCONNECTED(0),
      m_axis_phase_tvalid => NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED,
      s_axis_config_tdata(0) => '0',
      s_axis_config_tlast => '0',
      s_axis_config_tready => NLW_i_synth_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => '0',
      s_axis_phase_tdata(7 downto 4) => B"0000",
      s_axis_phase_tdata(3 downto 0) => s_axis_phase_tdata(3 downto 0),
      s_axis_phase_tlast => '0',
      s_axis_phase_tready => NLW_i_synth_s_axis_phase_tready_UNCONNECTED,
      s_axis_phase_tuser(0) => '0',
      s_axis_phase_tvalid => s_axis_phase_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dds_500_phase is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dds_500_phase : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dds_500_phase : entity is "dds_500_phase,dds_compiler_v6_0_17,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dds_500_phase : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of dds_500_phase : entity is "dds_compiler_v6_0_17,Vivado 2018.3";
end dds_500_phase;

architecture STRUCTURE of dds_500_phase is
  signal NLW_U0_debug_axi_resync_in_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_debug_core_nd_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_debug_phase_nd_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_phase_in_invalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_pinc_invalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_poff_invalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_s_config_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_s_phase_tlast_missing_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_data_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_phase_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_phase_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_config_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_phase_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_debug_axi_chan_in_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_debug_axi_pinc_in_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_debug_axi_poff_in_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_debug_phase_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axis_data_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_phase_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_phase_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACCUMULATOR_WIDTH : integer;
  attribute C_ACCUMULATOR_WIDTH of U0 : label is 4;
  attribute C_AMPLITUDE : integer;
  attribute C_AMPLITUDE of U0 : label is 0;
  attribute C_CHANNELS : integer;
  attribute C_CHANNELS of U0 : label is 1;
  attribute C_CHAN_WIDTH : integer;
  attribute C_CHAN_WIDTH of U0 : label is 1;
  attribute C_DEBUG_INTERFACE : integer;
  attribute C_DEBUG_INTERFACE of U0 : label is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of U0 : label is 1;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of U0 : label is 1;
  attribute C_HAS_M_DATA : integer;
  attribute C_HAS_M_DATA of U0 : label is 1;
  attribute C_HAS_M_PHASE : integer;
  attribute C_HAS_M_PHASE of U0 : label is 0;
  attribute C_HAS_PHASEGEN : integer;
  attribute C_HAS_PHASEGEN of U0 : label is 0;
  attribute C_HAS_PHASE_OUT : integer;
  attribute C_HAS_PHASE_OUT of U0 : label is 0;
  attribute C_HAS_SINCOS : integer;
  attribute C_HAS_SINCOS of U0 : label is 1;
  attribute C_HAS_S_CONFIG : integer;
  attribute C_HAS_S_CONFIG of U0 : label is 0;
  attribute C_HAS_S_PHASE : integer;
  attribute C_HAS_S_PHASE of U0 : label is 1;
  attribute C_HAS_TLAST : integer;
  attribute C_HAS_TLAST of U0 : label is 0;
  attribute C_HAS_TREADY : integer;
  attribute C_HAS_TREADY of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 2;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 2;
  attribute C_MODE_OF_OPERATION : integer;
  attribute C_MODE_OF_OPERATION of U0 : label is 0;
  attribute C_MODULUS : integer;
  attribute C_MODULUS of U0 : label is 9;
  attribute C_M_DATA_HAS_TUSER : integer;
  attribute C_M_DATA_HAS_TUSER of U0 : label is 0;
  attribute C_M_DATA_TDATA_WIDTH : integer;
  attribute C_M_DATA_TDATA_WIDTH of U0 : label is 32;
  attribute C_M_DATA_TUSER_WIDTH : integer;
  attribute C_M_DATA_TUSER_WIDTH of U0 : label is 1;
  attribute C_M_PHASE_HAS_TUSER : integer;
  attribute C_M_PHASE_HAS_TUSER of U0 : label is 0;
  attribute C_M_PHASE_TDATA_WIDTH : integer;
  attribute C_M_PHASE_TDATA_WIDTH of U0 : label is 1;
  attribute C_M_PHASE_TUSER_WIDTH : integer;
  attribute C_M_PHASE_TUSER_WIDTH of U0 : label is 1;
  attribute C_NEGATIVE_COSINE : integer;
  attribute C_NEGATIVE_COSINE of U0 : label is 0;
  attribute C_NEGATIVE_SINE : integer;
  attribute C_NEGATIVE_SINE of U0 : label is 0;
  attribute C_NOISE_SHAPING : integer;
  attribute C_NOISE_SHAPING of U0 : label is 0;
  attribute C_OPTIMISE_GOAL : integer;
  attribute C_OPTIMISE_GOAL of U0 : label is 0;
  attribute C_OUTPUTS_REQUIRED : integer;
  attribute C_OUTPUTS_REQUIRED of U0 : label is 2;
  attribute C_OUTPUT_FORM : integer;
  attribute C_OUTPUT_FORM of U0 : label is 0;
  attribute C_OUTPUT_WIDTH : integer;
  attribute C_OUTPUT_WIDTH of U0 : label is 16;
  attribute C_PHASE_ANGLE_WIDTH : integer;
  attribute C_PHASE_ANGLE_WIDTH of U0 : label is 4;
  attribute C_PHASE_INCREMENT : integer;
  attribute C_PHASE_INCREMENT of U0 : label is 2;
  attribute C_PHASE_INCREMENT_VALUE : string;
  attribute C_PHASE_INCREMENT_VALUE of U0 : label is "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
  attribute C_PHASE_OFFSET : integer;
  attribute C_PHASE_OFFSET of U0 : label is 0;
  attribute C_PHASE_OFFSET_VALUE : string;
  attribute C_PHASE_OFFSET_VALUE of U0 : label is "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0";
  attribute C_POR_MODE : integer;
  attribute C_POR_MODE of U0 : label is 0;
  attribute C_RESYNC : integer;
  attribute C_RESYNC of U0 : label is 0;
  attribute C_S_CONFIG_SYNC_MODE : integer;
  attribute C_S_CONFIG_SYNC_MODE of U0 : label is 0;
  attribute C_S_CONFIG_TDATA_WIDTH : integer;
  attribute C_S_CONFIG_TDATA_WIDTH of U0 : label is 1;
  attribute C_S_PHASE_HAS_TUSER : integer;
  attribute C_S_PHASE_HAS_TUSER of U0 : label is 0;
  attribute C_S_PHASE_TDATA_WIDTH : integer;
  attribute C_S_PHASE_TDATA_WIDTH of U0 : label is 8;
  attribute C_S_PHASE_TUSER_WIDTH : integer;
  attribute C_S_PHASE_TUSER_WIDTH of U0 : label is 1;
  attribute C_USE_DSP48 : integer;
  attribute C_USE_DSP48 of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of aclken : signal is "xilinx.com:signal:clockenable:1.0 aclken_intf CE";
  attribute x_interface_parameter of aclken : signal is "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn_intf RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_data_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID";
  attribute x_interface_parameter of m_axis_data_tvalid : signal is "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_phase_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TVALID";
  attribute x_interface_parameter of s_axis_phase_tvalid : signal is "XIL_INTERFACENAME S_AXIS_PHASE, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_data_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA";
  attribute x_interface_info of s_axis_phase_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TDATA";
begin
U0: entity work.dds_500_phase_dds_compiler_v6_0_17
     port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      debug_axi_chan_in(0) => NLW_U0_debug_axi_chan_in_UNCONNECTED(0),
      debug_axi_pinc_in(3 downto 0) => NLW_U0_debug_axi_pinc_in_UNCONNECTED(3 downto 0),
      debug_axi_poff_in(3 downto 0) => NLW_U0_debug_axi_poff_in_UNCONNECTED(3 downto 0),
      debug_axi_resync_in => NLW_U0_debug_axi_resync_in_UNCONNECTED,
      debug_core_nd => NLW_U0_debug_core_nd_UNCONNECTED,
      debug_phase(3 downto 0) => NLW_U0_debug_phase_UNCONNECTED(3 downto 0),
      debug_phase_nd => NLW_U0_debug_phase_nd_UNCONNECTED,
      event_phase_in_invalid => NLW_U0_event_phase_in_invalid_UNCONNECTED,
      event_pinc_invalid => NLW_U0_event_pinc_invalid_UNCONNECTED,
      event_poff_invalid => NLW_U0_event_poff_invalid_UNCONNECTED,
      event_s_config_tlast_missing => NLW_U0_event_s_config_tlast_missing_UNCONNECTED,
      event_s_config_tlast_unexpected => NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED,
      event_s_phase_chanid_incorrect => NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED,
      event_s_phase_tlast_missing => NLW_U0_event_s_phase_tlast_missing_UNCONNECTED,
      event_s_phase_tlast_unexpected => NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED,
      m_axis_data_tdata(31 downto 0) => m_axis_data_tdata(31 downto 0),
      m_axis_data_tlast => NLW_U0_m_axis_data_tlast_UNCONNECTED,
      m_axis_data_tready => '0',
      m_axis_data_tuser(0) => NLW_U0_m_axis_data_tuser_UNCONNECTED(0),
      m_axis_data_tvalid => m_axis_data_tvalid,
      m_axis_phase_tdata(0) => NLW_U0_m_axis_phase_tdata_UNCONNECTED(0),
      m_axis_phase_tlast => NLW_U0_m_axis_phase_tlast_UNCONNECTED,
      m_axis_phase_tready => '0',
      m_axis_phase_tuser(0) => NLW_U0_m_axis_phase_tuser_UNCONNECTED(0),
      m_axis_phase_tvalid => NLW_U0_m_axis_phase_tvalid_UNCONNECTED,
      s_axis_config_tdata(0) => '0',
      s_axis_config_tlast => '0',
      s_axis_config_tready => NLW_U0_s_axis_config_tready_UNCONNECTED,
      s_axis_config_tvalid => '0',
      s_axis_phase_tdata(7 downto 0) => s_axis_phase_tdata(7 downto 0),
      s_axis_phase_tlast => '0',
      s_axis_phase_tready => NLW_U0_s_axis_phase_tready_UNCONNECTED,
      s_axis_phase_tuser(0) => '0',
      s_axis_phase_tvalid => s_axis_phase_tvalid
    );
end STRUCTURE;
