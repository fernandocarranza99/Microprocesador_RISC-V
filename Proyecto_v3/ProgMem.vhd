----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:20:29 05/17/2024 
-- Design Name: 
-- Module Name:    ProgMem - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use std.textio.all;

--MemDir: 10 bits para poder referenciar 1024 posiciones de memoria
--Data: 32 bits, tamaño de las instrucciones en RISC-V
--Espacios de memoria de 8 bits 

entity ProgMem is
    Port ( MemDir : in  STD_LOGIC_VECTOR (9 downto 0);
           Rst : in  STD_LOGIC;
			  Enable : in STD_LOGIC;
           Clk : in  STD_LOGIC;
           Data : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end ProgMem;

architecture Behavioral of ProgMem is

	type arreglo_memoria is array (1023 downto 0) of std_logic_vector (7 downto 0); --Espacios de memoria de 8 bits, instrucciones son de 32 bits (4 espacios de memoria) porque estamos usando RISC-V
 
	impure function Ini_archivo return arreglo_memoria is
        file rom_file: text open read_mode is "..\unos_back.txt"; --Nombre del archivo a leer
        variable rom_line: line;
        variable rom_value: bit_vector(7 downto 0);
        variable aux: arreglo_memoria;
        variable i: integer := 0;
    begin
        while not endfile(rom_file) loop --este while controla que no nos pasemos del tamaño del archivo, soluciona el error: "Readline called past the end of file"
            readline(rom_file, rom_line);
            read(rom_line, rom_value);
            aux(i) := to_stdlogicvector(rom_value);
            i := i + 1;
        end loop;
        return aux;  
    end function;

	 --Conectamos arreglo_dememoria a Ini_archivo para asignar aux directamente a memoria, se realiza con una constante ya que utilizar signal generaba error en el testbench 
	 constant memoria: arreglo_memoria :=  Ini_Archivo;
 
begin
    
    process(Clk,Rst,Enable)
        begin 
            if Rst = '1' then
                Data <= (others => '0');
			   elsif Enable='1' then
					 Data <= (others => '0'); 
            elsif(Clk'event and Clk = '1') then 
                Data <= memoria((to_integer(unsigned(MemDir)+0))) 
						& memoria((to_integer(unsigned(MemDir)+1))) 
						& memoria((to_integer(unsigned(MemDir)+2))) 
						& memoria((to_integer(unsigned(MemDir)+3)));
					end if;
    end process;

end Behavioral;

