----------------------------------------------------------------------------------
-- Engineer: Durdu Kaan Kaltakkýran 201913172065
-- Create Date:    19:36:18 05/18/2022 
-- Module Name:    esita - Behavioral 
-- Project Name: Fpga Proje Ödevi
-- Description: 4 bitlik 2 sayýnýn eþit olup olmadðýný display de gösteren program.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity esita is
 port(
  sayi_1:in std_logic_vector(3 downto 0);     -- giriþ çýkýþ tanýmlarý
  sayi_2:in std_logic_vector(3 downto 0);
  cikis: out std_logic_vector(7 downto 0);
  led:out std_logic;
  anot:out std_logic_vector(3 downto 0)
  );
end esita;
----------------------------------------------------------------------------------
architecture Behavioral of esita is
signal esit:std_logic_vector(3 downto 0);     -- ara baðlantý 

	 begin
	  process(sayi_1,sayi_2)
	variable esitlik:std_logic;
	begin
	                                                    -- xnor bölümü
      esit(0)<=sayi_1(0) xnor sayi_2(0);   
		esit(1)<=sayi_1(1) xnor sayi_2(1);
		esit(2)<=sayi_1(2) xnor sayi_2(2);
		esit(3)<=sayi_1(3) xnor sayi_2(3);
		
		esitlik:=esit(0) and  esit(1) and esit(2)and esit(3);    --and bölümü

	   --7 segment display (common anode)
	  if(esitlik='0')then
	  cikis <="01000000";  --dp,g,f,e,d,c,b,a
	  led<='0';
	  else
	  cikis <="01001111";
	  led<='1';
	  end if;
	end process;
	
	anot<="1110";
	
end Behavioral;

