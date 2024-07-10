library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_V1 is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           y : out  STD_LOGIC_VECTOR (31 downto 0);
			  zero : out STD_LOGIC;
           --ci : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (3 downto 0));
end ALU_V1;



architecture Behavioral of ALU_V1 is
	-- Declaración de señales con signo--------------
	signal a_sig: signed (31 downto 0); 
	signal b_sig: signed (31 downto 0);
	signal y_sig: signed (31 downto 0);
	signal y_reg: signed (31 downto 0);
	--signal ci_sig: integer range 0 to 1;
	signal zero_sig:STD_LOGIC;

	--signal zero_sig: integer range 0 to 1;

-----------------------------------------------

begin
--Convertir entradas a tipo signed
a_sig<=signed(a);
b_sig<=signed(b);
--y_sig<=y; 





-----------------------------------------------------
--------------------- ALU ---------------------------
-----------------------------------------------------
with op select
    y_sig <=  a_sig + b_sig when "0000",  -- add
             a_sig - b_sig when "0001",  -- sub
             a_sig sll to_integer(unsigned(b(4 downto 0))) when "0010",  -- sll
             a_sig xor b_sig when "0011",  -- xor
             a_sig srl to_integer(unsigned(b(4 downto 0))) when "0100",  -- srl
             a_sig or b_sig when "0101",  -- or
             a_sig and b_sig when "0110",  -- and
             y_reg when others;  -- default case


-----------------------------------------------------
------------- Comparacion de cero -------------------
-----------------------------------------------------
zero <= '1' when a_sig = b_sig else
            '0';
-----------------------------------------------------
------ Actualización de registro para mantener ------
------------------ valor anterior -------------------
-----------------------------------------------------				
				
   process(op,y_sig)
    begin
        y_reg <= y_sig;
    end process;

-----------------------------------------------------
------------- Asignación de salida  -------------------
-----------------------------------------------------
y <= std_logic_vector(y_sig);


end Behavioral;