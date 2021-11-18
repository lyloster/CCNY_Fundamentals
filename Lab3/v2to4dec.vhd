----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:48 11/16/2021 
-- Design Name: 
-- Module Name:    v2to4dec - Behavioral 
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

entity v2to4dec is
    Port ( en : in  STD_LOGIC;                   --enable bit
           i0 : in  STD_LOGIC;                   --input 0
           i1 : in  STD_LOGIC;                   --input 1
           y0 : out  STD_LOGIC;                  --outputs
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC);
end v2to4dec;

architecture v2to4dec_arch of v2to4dec is
begin
y0 <= en and not i0 and not i1;                 --truth table representation
y1 <= en and not i0 and i1;
y2 <= en and i0 and not i1;
y3 <= en and i0 and i1;
end v2to4dec_arch;