----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:38 05/27/2024 
-- Design Name: 
-- Module Name:    Logica_de_salto - Behavioral 
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
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Logica_de_salto is
	Port ( pc : in  STD_LOGIC_VECTOR (9 downto 0);
          branch : in  STD_LOGIC;
          zero : in  STD_LOGIC;
          exten : in  STD_LOGIC_VECTOR (31 downto 0); 
          salida : out  STD_LOGIC_VECTOR (9 downto 0));
			  
end Logica_de_salto;

architecture Behavioral of Logica_de_salto is

		signal auxiliar : signed(9 downto 0);
		signal exten_shifted : signed(9 downto 0);
		signal sum_resultado1 : signed(9 downto 0);
		signal sum_resultado2 : signed(9 downto 0);
	begin
		
		--Suma sensilla, PC+4
		sum_resultado1 <=signed(unsigned(pc) + 4);
		
		--Multiplica por cuatro el extendido y se lo suma al PC (el shifteo dos veses es lo mismo que multiplicar por 4)
		process(exten, pc, exten_shifted, auxiliar)
			begin
				exten_shifted <= resize(signed(exten), 10) sll 1; --('0' & '0') & unsigned(auxiliar);
				auxiliar <= resize(signed(pc) , 10);
				sum_resultado2 <= exten_shifted + auxiliar;
			end process;
		
		--Asignacion a la salida, compuerta AND, Sincronismo y Reset.		
	
		salida <= std_logic_vector(sum_resultado1) when (branch and zero)= '0' else
					std_logic_vector(sum_resultado2(9 downto 0)); 

end Behavioral;