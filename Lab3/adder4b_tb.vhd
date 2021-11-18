--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:15:24 11/17/2021
-- Design Name:   
-- Module Name:   /home/lyloster/University/2021_Fall_CCNY/CSC211/Project_03/adder4b_tb.vhd
-- Project Name:  Project_03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder4b
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
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_signed.ALL;
 
ENTITY adder4b_tb IS
END adder4b_tb;
 
ARCHITECTURE behavior OF adder4b_tb IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT adder4b
    PORT(
         X_4b : IN  std_logic_vector(3 downto 0);
         Y_4b : IN  std_logic_vector(3 downto 0);
         S_4b : OUT  std_logic_vector(3 downto 0);
         CIN_4b : IN  std_logic;
         COUT_4b : OUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal X_4b : std_logic_vector(3 downto 0) := (others => '0');
   signal Y_4b : std_logic_vector(3 downto 0) := (others => '0');
   signal CIN_4b : std_logic := '0';

 	--Outputs
   signal S_4b : std_logic_vector(3 downto 0);
   signal COUT_4b : std_logic;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: adder4b PORT MAP (
          X_4b => X_4b,
          Y_4b => Y_4b,
          S_4b => S_4b,
          CIN_4b => CIN_4b,
          COUT_4b => COUT_4b
        );

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 10 ns;
		CIN_4b<='0';
		for i in 0 to 15 loop
			X_4b<= std_logic_vector(to_unsigned(i, 4));
			for j in 0 to 15 loop
				Y_4b<= std_logic_vector(to_unsigned(j, 4));
				wait for 2 ns;
			end loop;
		end loop;
		
		CIN_4b <='1';
		for i in 0 to 15 loop
			X_4b <= std_logic_vector(to_unsigned(i, 4));
			for j in 0 to 15 loop
				Y_4b<= std_logic_vector(to_unsigned(j, 4));
				wait for 2 ns;
			end loop;
		end loop;
      wait;
   end process;

END;
