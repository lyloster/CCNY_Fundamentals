----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:33:20 12/02/2021 
-- Design Name: 
-- Module Name:    d_flipflop - d_flipflop_arch 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity d_flipflop is
    Port ( CLK_L : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end d_flipflop;

architecture d_flipflop_arch of d_flipflop is
signal D1_out, D1_L_out, CLK: STD_LOGIC;
component INV port (I:in STD_LOGIC; O: out STD_LOGIC); end component;
component d_latch                                      --reuse d latch
			 port (C: in STD_LOGIC;
					 D: in STD_LOGIC;
					 Q: out STD_LOGIC;
					 QN: out STD_LOGIC);
end component;
begin
D1: d_latch                                            --first d latch
	 port map( C => CLK_L,
				  D => D,
				  Q => D1_out,
				  QN => D1_L_out);
U1: INV port map (CLK_L, CLK);                         --get negated clock input
D2: d_latch                                            --second d latch
    port map (C => CLK,
	           D => D1_out,
				  Q => Q,
				  QN => QN);
end d_flipflop_arch;