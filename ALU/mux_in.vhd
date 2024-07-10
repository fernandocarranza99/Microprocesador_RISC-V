
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_in is
    Port ( registro : in  STD_LOGIC_VECTOR (31 downto 0);
           inmediato : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_src : in  STD_LOGIC;
           b : out  STD_LOGIC_VECTOR (31 downto 0));
end mux_in;
--------------------------------------------------------------------------------------------
architecture Behavioral of mux_in is
--signal registro_sig: signed (31 downto 0); -- Declaración de señales con signo
--signal inmediato_sig: signed (31 downto 0);
--signal b_sig: STD_LOGIC_VECTOR (31 downto 0);
------------------------------------------------------------------------------------------
begin





 with ALU_src select
b <= (registro) when '0',
STD_LOGIC_VECTOR (inmediato) when others;

end Behavioral;

