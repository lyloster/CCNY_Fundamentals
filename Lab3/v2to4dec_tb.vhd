--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:06:25 11/16/2021
-- Design Name:   
-- Module Name:   /home/lyloster/University/2021_Fall_CCNY/CSC211/Project_03/v2to4dec_tb.vhd
-- Project Name:  Project_03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: v2to4dec
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
 
ENTITY v2to4dec_tb IS
END v2to4dec_tb;
 
ARCHITECTURE structural OF v2to4dec_tb IS 
    -- Component Declaration for the Unit Under Test (UUT) 
    COMPONENT v2to4dec
    PORT(
         en : IN  std_logic;
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         y0 : OUT  std_logic;
         y1 : OUT  std_logic;
         y2 : OUT  std_logic;
         y3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';

 	--Outputs
   signal y0 : std_logic;
   signal y1 : std_logic;
   signal y2 : std_logic;
   signal y3 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: v2to4dec PORT MAP (
          en => en,
          i0 => i0,
          i1 => i1,
          y0 => y0,
          y1 => y1,
          y2 => y2,
          y3 => y3
        );
   -- Stimulus process
   stim_proc: process
	
   begin		
		en <= '0';
		i1 <= '0'; i0 <= '0'; wait for 10 ns;
		i1 <= '0'; i0 <= '1'; wait for 10 ns;
		i1 <= '1'; i0 <= '0'; wait for 10 ns;
		i1 <= '1'; i0 <= '1'; wait for 10 ns;
		
		en <= '1';
		i1 <= '0'; i0 <= '0'; wait for 10 ns;
		i1 <= '0'; i0 <= '1'; wait for 10 ns;
		i1 <= '1'; i0 <= '0'; wait for 10 ns;
		i1 <= '1'; i0 <= '1'; wait for 10 ns;
      wait;
   end process;
END;
