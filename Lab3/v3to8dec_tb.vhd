--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:30:38 11/17/2021
-- Design Name:   
-- Module Name:   /home/lyloster/University/2021_Fall_CCNY/CSC211/Project_03/v3to8dec_tb.vhd
-- Project Name:  Project_03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: v3to8dec
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY v3to8dec_tb IS
END v3to8dec_tb;
 
ARCHITECTURE structural OF v3to8dec_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT v3to8dec
    PORT(
         a : IN  std_logic_vector(2 downto 0);
         en : IN  std_logic;
         o : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(2 downto 0) := (others => '0');
   signal en : std_logic := '0';

 	--Outputs
   signal o : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: v3to8dec PORT MAP (
          a => a,
          en => en,
          o => o
        );

   -- Stimulus process
   stim_proc: process
   begin		
      en<='0'; a<="000"; wait for 10 ns;
		en<='0'; a<="001"; wait for 10 ns;
		en<='0'; a<="010"; wait for 10 ns;
		en<='0'; a<="011"; wait for 10 ns;
		en<='0'; a<="100"; wait for 10 ns;
		en<='0'; a<="101"; wait for 10 ns;
		en<='0'; a<="110"; wait for 10 ns;
		en<='0'; a<="111"; wait for 10 ns;
		
		en<='1'; a<="000"; wait for 10 ns;
		en<='1'; a<="001"; wait for 10 ns;
		en<='1'; a<="010"; wait for 10 ns;
		en<='1'; a<="011"; wait for 10 ns;
		en<='1'; a<="100"; wait for 10 ns;
		en<='1'; a<="101"; wait for 10 ns;
		en<='1'; a<="110"; wait for 10 ns;
		en<='1'; a<="111"; wait for 10 ns;
      wait;
   end process;

END;
