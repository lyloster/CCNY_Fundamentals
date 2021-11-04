----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:35:08 11/01/2021 
-- Design Name: 
-- Module Name:    ex3_detector - ex3_detector_arch 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity ex3_detector is
    port ( E : in  STD_LOGIC_VECTOR(3 downto 0);   --little endian, MSB first
           F : out  STD_LOGIC);
end ex3_detector;

architecture ex3_detector_arch of ex3_detector is

signal E3_L, E2_L, E1_L, E0_L: STD_LOGIC;                   --variables
signal E3_E2L, E3L_E2, E3L_E1_E0, E2_E1L_E0L: STD_LOGIC;

component INV port (I: in STD_LOGIC; O: out STD_LOGIC); end component;         --gates used
component NAND2 port (I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component NAND3 port (I0, I1, I2: in STD_LOGIC; O: out STD_LOGIC); end component;
component NAND4 port (I0, I1, I2, I3: in STD_LOGIC; O: out STD_LOGIC); end component;

begin
	U1: INV port map (E(3), E3_L);                           --invert E3
	U2: INV port map (E(2), E2_L);                           --invert E2
	U3: INV port map (E(1), E1_L);                           --invert E1
	U4: INV port map (E(0), E0_L);                           --invert E0
	U5: NAND2 port map (E(3), E2_L, E3_E2L);                 --NAND of 2 inputs
	U6: NAND2 port map (E3_L, E(2), E3L_E2);                 --NAND of 2 inputs
	U7: NAND3 port map (E3_L, E(1), E(0), E3L_E1_E0);        --NAND of 3 inputs
	U8: NAND3 port map (E(2), E1_L, E0_L, E2_E1L_E0L);       --NAND of 3 inputs
	U9: NAND4 port map (E3_E2L, E3L_E2, E3L_E1_E0, E2_E1L_E0L, F); --NAND of 4 inputs, store in F
end ex3_detector_arch;

