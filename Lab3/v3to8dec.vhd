----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:09 11/16/2021 
-- Design Name: 
-- Module Name:    v3to8dec - Behavioral 
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

entity v3to8dec is
    port ( a: in  STD_LOGIC_VECTOR(2 downto 0);
           en: in  STD_LOGIC;
           o: out  STD_LOGIC_VECTOR(7 downto 0));
end v3to8dec;

architecture v3to8dec_arch of v3to8dec is

signal A2_L: STD_LOGIC;
signal Y_TEMP: STD_LOGIC_VECTOR(7 downto 0);

component v2to4dec
	port (i0: in STD_LOGIC;
			i1: in STD_LOGIC;
			en: in STD_LOGIC;
			y3: out STD_LOGIC;
			y2: out STD_LOGIC;
			y1: out STD_LOGIC;
			y0: out STD_LOGIC);
end component;
component AND2 port(i0, i1: in STD_LOGIC; o: out STD_LOGIC); end component;
component INV port(i: in STD_LOGIC; o: out STD_LOGIC); end component;
			
begin
U1: INV port map(A(2), A2_L);           --invert most significant bit, used as selector
DEC1: v2to4dec                          --2-to-4 decoder
port map (en=>A2_L,
			 i1=>a(0),
			 i0=>a(1),
			 y0=>Y_TEMP(7),
			 y1=>Y_TEMP(6),
			 y2=>Y_TEMP(5),
			 y3=>Y_TEMP(4));
DEC2: v2to4dec                          --2-to-4 decoder
port map(en=>a(2),
         i1=>a(0),
			i0=>a(1),
			y0=>Y_TEMP(3),
			y1=>Y_TEMP(2),
			y2=>Y_TEMP(1),
			y3=>Y_TEMP(0));
U2: AND2 port map(Y_TEMP(7), en, o(7));--select correct output based on decoder output and enable bit
U3: AND2 port map(Y_TEMP(6), en, o(6));
U4: AND2 port map(Y_TEMP(5), en, o(5));
U5: AND2 port map(Y_TEMP(4), en, o(4));
U6: AND2 port map(Y_TEMP(3), en, o(3));
U7: AND2 port map(Y_TEMP(2), en, o(2));
U8: AND2 port map(Y_TEMP(1), en, o(1));
U9: AND2 port map(Y_TEMP(0), en, o(0));
end v3to8dec_arch;

