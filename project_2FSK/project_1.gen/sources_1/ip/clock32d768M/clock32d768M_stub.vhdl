-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Fri Dec 19 10:46:35 2025
-- Host        : Ferryman running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/course
--               design/final/project_1/project_1.gen/sources_1/ip/clock32d768M/clock32d768M_stub.vhdl}
-- Design      : clock32d768M
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clock32d768M is
  Port ( 
    clock32d768M : out STD_LOGIC;
    clk_in_128M : in STD_LOGIC
  );

end clock32d768M;

architecture stub of clock32d768M is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock32d768M,clk_in_128M";
begin
end;
