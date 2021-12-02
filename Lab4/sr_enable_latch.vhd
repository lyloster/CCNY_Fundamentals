----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:35:41 12/01/2021 
-- Design Name: 
-- Module Name:    sr_enable_latch - sr_enable_latch_arch 
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

entity sr_enable_latch is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end sr_enable_latch;

architecture sr_enable_latch_arch of sr_enable_latch is
signal S_out, R_out: STD_LOGIC;
component NAND2 port(i0, i1: in STD_LOGIC; o: out STD_LOGIC); end component;
component slrl_latch                                 --slrl latch, part of sr with enable
			 port ( S_L : in  STD_LOGIC;
					  R_L : in  STD_LOGIC;
                 Q : out  STD_LOGIC;
                 QN : out  STD_LOGIC);
end component;
begin
U1: NAND2 port map(S, C, S_out);                     --get s output
U2: NAND2 port map(R, C, R_out);                     --get r output
SLRL1: slrl_latch                                    --use defined SLRL latch
	 port map(S_L => S_out,                           --feed s output to S_L
	   		 R_L => R_out,                           --feed r output to R_L
				 Q => Q,
				 QN => QN);
end sr_enable_latch_arch;

