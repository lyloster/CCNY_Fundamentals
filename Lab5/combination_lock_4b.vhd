----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:47 12/07/2021 
-- Design Name: 
-- Module Name:    combination_lock_4b - combination_lock_4b_arch 
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

entity combination_lock_4b is
    Port ( CLK : in  STD_LOGIC;
           X : in  STD_LOGIC;
           HINT : out  STD_LOGIC;
           UNLK : out  STD_LOGIC);
end combination_lock_4b;

architecture combination_lock_4b_arch of combination_lock_4b is
signal Q1, Q2, Q1_L, Q2_L, X_L, Q1Q2_LX, Q1_LQ2X_L, Q2_LX, D1_in, Q1X, HINT_SIGNAL, UNLK_SIGNAL: STD_LOGIC;
component INV port(I: in STD_LOGIC; O: out STD_LOGIC); end component;
component AND3 port(I0, I1, I2: in STD_LOGIC; O: out STD_LOGIC); end component;
component AND2 port(I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component OR2 port(I0, I1: in STD_LOGIC; O: out STD_LOGIC); end component;
component OR3 port(I0, I1, I2: in STD_LOGIC; O: out STD_LOGIC); end component;
component FD                                                     --D flip-flop
	generic (INIT: bit := '0');
	port (C: in STD_LOGIC;
			D: in STD_LOGIC;
			Q: out STD_LOGIC);
end component;
begin
U1: FD port map(                                                 --D1, memory state
	C => CLK, 
	D => D1_in,
	Q => Q1);
U2: FD port map(                                                 --D2, memory state
	C => CLK,
	D => Q2_LX,
	Q => Q2);
U3: AND2 port map(X, Q2_L, Q2_LX);                               --output logic
U4: AND3 port map(Q1_L, X_L, Q2, Q1_LQ2X_L);                     --output logic
U5: AND2 port map(Q1, X, Q1X);                                 --output logic
U6: OR3 port map(Q2_LX, Q1_LQ2X_L, Q1X, HINT_SIGNAL);            --HINT, output logic
U7: AND3 port map(Q1, Q2, X, UNLK_SIGNAL);                       --UNLK, output logic
U8: AND3 port map(Q1_L, Q2, X_L, Q1_LQ2X_L);                     --next state logic
U9: AND3 port map(Q1, Q2_L, X, Q1Q2_LX);                         --next state logic
U10: OR2 port map(Q1_LQ2X_L, Q1Q2_LX, D1_in);                    --next state logic
U11: AND2 port map(Q2_L, X, Q2_LX);                              --next state logic
U12: INV port map(Q1, Q1_L);                                  
U13: INV port map(Q2, Q2_L);
U14: INV port map(X, X_L);
HINT <= HINT_SIGNAL;                                             --Assign HINT value to output
UNLK <= UNLK_SIGNAL;                                             --Assign UNLK value to output
end combination_lock_4b_arch;

