--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:37:34 05/18/2022
-- Design Name:   
-- Module Name:   C:/Users/kaan_/Desktop/proje/esit_display/aaaaaaaa.vhd
-- Project Name:  esit_display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: esita
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
 
ENTITY aaaaaaaa IS
END aaaaaaaa;
 
ARCHITECTURE behavior OF aaaaaaaa IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT esita
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         esitlik : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal esitlik : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: esita PORT MAP (
          a => a,
          b => b,
          esitlik => esitlik
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

    
      -- insert stimulus here 
		a<="0001";b<="0001"; wait for 25 ns;
		a<="0001";b<="1001"; wait for 25 ns;
		a<="0011";b<="1001"; wait for 25 ns;

      wait;
   end process;

END;
