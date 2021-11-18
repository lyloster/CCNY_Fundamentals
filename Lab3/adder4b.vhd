----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:43 11/17/2021 
-- Design Name: 
-- Module Name:    adder4b - adder4b_arch 
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
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity adder4b is
    port ( X_4b : in  STD_LOGIC_VECTOR(3 downto 0);
           Y_4b : in  STD_LOGIC_VECTOR(3 downto 0);
           S_4b : out  STD_LOGIC_VECTOR(3 downto 0);
           CIN_4b : in  STD_LOGIC;
           COUT_4b : out  STD_LOGIC);
end adder4b;

architecture adder4b_arch of adder4b is

signal CIN_1, CIN_2, CIN_3: STD_LOGIC;                  --intermediary variables
component adder1b port(X, Y, CIN: in STD_LOGIC; COUT, S: out STD_LOGIC); end component;

begin
ADDER0: adder1b                                        
port map (X=> X_4b(0),
          Y=> Y_4b(0),
			 CIN=> CIN_4b,
			 S=> S_4b(0),
			 COUT=> CIN_1);
ADDER1: adder1b
port map (X=> X_4b(1),
          Y=> Y_4b(1),
			 CIN=> CIN_1,
			 S=> S_4b(1),
			 COUT=> CIN_2);
ADDER2: adder1b
port map (X=> X_4b(2),
          Y=> Y_4b(2),
			 CIN=> CIN_2,
			 S=> S_4b(2),
			 COUT=> CIN_3);
ADDER3: adder1b
port map (X=> X_4b(3),
          Y=> Y_4b(3),
			 CIN=> CIN_3,
			 S=> S_4b(3),
			 COUT=> COUT_4b);
end adder4b_arch;

