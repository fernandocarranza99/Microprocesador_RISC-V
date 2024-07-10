library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use std.textio.all;

entity PC is
    
    port(MemDir_ALU	 : in  std_logic_vector(9 downto 0);
          Rst   : in  std_logic;
          Clk    : in  std_logic;
          MemDir_o   : out std_logic_vector(9 downto 0)
          );
end PC;
            
architecture Behavioral of PC is
begin

Program_counter: process(Rst, Clk) 
begin
    if Rst = '1' then                       --Se verifica si el reset esta en 1
        MemDir_o <= (others => '0');            --Asigno a la salida el valor '00'
    elsif (Clk'event and Clk = '1') then  --Si el reset es cero espero un evento de clock
		--if ((to_integer(unsigned(MemDir_ALU)))>0) then
            MemDir_o <= MemDir_ALU;				--A la salida le asigno el valor de la ALU
		--else
			--	MemDir_o <= MemDir_i;		 --ACA VER SI INICIALIZAMOS SIEMPRE EN 00000..
	 --end if;
	 end if;
end process;

end Behavioral;

