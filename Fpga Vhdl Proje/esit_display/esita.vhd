----------------------------------------------------------------------------------
-- Engineer: Durdu Kaan Kaltakk�ran 201913172065
-- Create Date:    19:36:18 05/18/2022 
-- Module Name:    esita - Behavioral 
-- Project Name: Fpga Proje �devi
-- Description: 4 bitlik 2 say�n�n e�it olup olmad��n� display de g�steren program.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------
entity esita is
 port(
  sayi_1:in std_logic_vector(3 downto 0);     -- giri� ��k�� tan�mlar�
  sayi_2:in std_logic_vector(3 downto 0);
  cikis: out std_logic_vector(7 downto 0);
  led:out std_logic;
  anot:out std_logic_vector(3 downto 0)
  );
end esita;
----------------------------------------------------------------------------------
architecture Behavioral of esita is
signal esit:std_logic_vector(3 downto 0);     -- ara ba�lant� 

	 begin
	  process(sayi_1,sayi_2)
	variable esitlik:std_logic;
	begin
	                                                    -- xnor b�l�m�
      esit(0)<=sayi_1(0) xnor sayi_2(0);   
		esit(1)<=sayi_1(1) xnor sayi_2(1);
		esit(2)<=sayi_1(2) xnor sayi_2(2);
		esit(3)<=sayi_1(3) xnor sayi_2(3);
		
		esitlik:=esit(0) and  esit(1) and esit(2)and esit(3);    --and b�l�m�

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

