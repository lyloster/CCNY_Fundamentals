----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:42:02 11/17/2021 
-- Design Name: 
-- Module Name:    adder1b - Behavioral 
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

entity adder1b is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
           S : out  STD_LOGIC;
           COUT : out  STD_LOGIC);
end adder1b;

architecture adder1b_arch of adder1b is
begin
S <=X xor Y xor CIN;
COUT <=(X and Y) or (X and CIN) or (Y and CIN);
end adder1b_arch;