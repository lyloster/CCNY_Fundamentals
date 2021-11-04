--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:46:16 10/28/2021
-- Design Name:   
-- Module Name:   /home/lyloster/University/2021_Fall_CCNY/CSC211/VHDL_intro/inhibit_gate_testbench.vhd
-- Project Name:  VHDL_intro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: inhibit_gate
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY inhibit_gate_testbench IS
END inhibit_gate_testbench;
 
ARCHITECTURE structural OF inhibit_gate_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT inhibit_gate
    PORT(
         x : IN  BIT;
         y : IN  BIT;
         z : OUT  BIT
        );
    END COMPONENT;
   --Inputs
   signal x,y: BIT;

 	--Outputs
   signal z : BIT;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: inhibit_gate PORT MAP (
          x => x,
          y => y,
          z => z
        ); 
   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 
		x <= '0'; y<= '0';
		wait for 20 ns;
		x <= '0'; y <= '1';
		wait for 20 ns;
		x <= '1'; y <= '0';
		wait for 20 ns;
		x <= '1'; y <= '1';
      wait;
   end process;
END;
