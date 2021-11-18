--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:45:08 11/17/2021
-- Design Name:   
-- Module Name:   /home/lyloster/University/2021_Fall_CCNY/CSC211/Project_03/adder1b_tb.vhd
-- Project Name:  Project_03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder1b
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
USE ieee.numeric_std.ALL;
 
ENTITY adder1b_tb IS
END adder1b_tb;
 
ARCHITECTURE structural OF adder1b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder1b
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         CIN : IN  std_logic;
         S : OUT  std_logic;
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal CIN : std_logic := '0';

 	--Outputs
   signal S : std_logic;
   signal COUT : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder1b PORT MAP (
          X => X,
          Y => Y,
          CIN => CIN,
          S => S,
          COUT => COUT
        );

   -- Stimulus process
   stim_proc: process
   begin		
      X<='0'; Y<='0'; CIN<='0'; wait for 10 ns;
		X<='0'; Y<='0'; CIN<='1'; wait for 10 ns;
		X<='0'; Y<='1'; CIN<='0'; wait for 10 ns;
		X<='0'; Y<='1'; CIN<='1'; wait for 10 ns;
		X<='1'; Y<='0'; CIN<='0'; wait for 10 ns;
		X<='1'; Y<='0'; CIN<='1'; wait for 10 ns;
		X<='1'; Y<='1'; CIN<='0'; wait for 10 ns;
		X<='1'; Y<='1'; CIN<='1'; wait for 10 ns;
      wait;
   end process;

END;
