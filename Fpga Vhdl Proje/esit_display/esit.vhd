----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:34:00 05/18/2022 
-- Design Name: 
-- Module Name:    esit - Behavioral 
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
----------------------------------------------------------------------------------
entity esit is
  port(
  a:in std_logic_vector(3 downto 0);
  b:in std_logic_vector(3 downto 0);
  esitlik:out std_logic
  );
end esit;
----------------------------------------------------------------------------------
architecture Behavioral of esit is
    signal esit:std_logic_vector(3 downto 0);
	 begin
	
     esit(0)<=a(0) xnor b(0);
	   esit(1)<=a(1) xnor b(1);
	   esit(2)<=a(2) xnor b(2);
		esit(3)<=a(3) xnor b(3);
		
	esitlik<=esit(0) and  esit(1) and esit(2) and esit(3);
	

end Behavioral;

