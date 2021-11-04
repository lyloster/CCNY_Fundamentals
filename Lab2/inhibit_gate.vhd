----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:47 10/28/2021 
-- Design Name: 
-- Module Name:    inhibit_gate - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity inhibit_gate is      --also known as "BUT-NOT"
    Port ( x : in  BIT;       --as in x BUT NOT y
           y : in  BIT;
           z : out  BIT);
end inhibit_gate;

architecture Inhibit_arch of inhibit_gate is

begin
	z <= '1' when x='1' and y='0' else '0';
end Inhibit_arch;

