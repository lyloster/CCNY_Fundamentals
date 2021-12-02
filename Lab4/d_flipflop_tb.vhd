--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:39:39 12/02/2021
-- Design Name:   
-- Module Name:   /home/lyloster/University/2021_Fall_CCNY/CSC211/Project04_latches/d_flipflop_tb.vhd
-- Project Name:  Project04_latches
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d_flipflop
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
 
ENTITY d_flipflop_tb IS
END d_flipflop_tb;
 
ARCHITECTURE behavior OF d_flipflop_tb IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT d_flipflop
    PORT(
         CLK_L : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal CLK_L : std_logic := '0';
   signal D : std_logic := '0';
 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;
   -- Clock period definitions
	signal CLK : std_logic := '0';
   constant CLK_period : time := 100 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: d_flipflop PORT MAP (
          CLK_L => CLK_L,
          D => D,
          Q => Q,
          QN => QN
        );
   -- Clock process definitions
   CLK_L_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
	CLK_L <= CLK;
   -- Stimulus process
   stim_proc: process
   begin		
      D <= '0'; wait for 70 ns;
		D <= '1'; wait for 50 ns;
		D <= '0'; wait for 50 ns;
		D <= '1'; wait for 10 ns;
		D <= '0'; wait for 50 ns;
		D <= '1'; wait for 50 ns;
		D <= '0'; wait for 100 ns;
		D <= '1'; wait for 100 ns;
		D <= '0';
      wait;
   end process;
END;