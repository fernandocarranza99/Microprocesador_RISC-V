library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ImmediateExtender is
    Port ( instruccion : in  STD_LOGIC_VECTOR (31 downto 0);
           inmediato   : out STD_LOGIC_VECTOR (31 downto 0));
end ImmediateExtender;

architecture Behavioral of ImmediateExtender is
begin
    process(instruccion)
    begin
        case instruccion(6 downto 0) is
            when "1101111" => -- tipo jal  
                if instruccion(31) = '1' then
                    inmediato <= "11111111111" & instruccion(31) & instruccion(19 downto 12) & instruccion(20) & instruccion(30 downto 21) & "0";
                else
                    inmediato <= "00000000000" & instruccion(31) & instruccion(19 downto 12) & instruccion(20) & instruccion(30 downto 21) & "0";
                end if;
            when "1100111" => 
                if instruccion(14 downto 12) /= "000" then -- tipo sb
                    if instruccion(31) = '1' then
                        inmediato <= "1111111111111111111" & instruccion(31) & instruccion(7) & instruccion(30 downto 25) & instruccion(11 downto 8) & "0";
                    else
                        inmediato <= "0000000000000000000" & instruccion(31) & instruccion(7) & instruccion(30 downto 25) & instruccion(11 downto 8) & "0";
                    end if;
                else -- tipo i y jalr
                    if instruccion(31) = '1' then
                        inmediato <= "11111111111111111111" & instruccion(31 downto 20);
                    else
                        inmediato <= "00000000000000000000" & instruccion(31 downto 20);
                    end if;
                end if;
            when "0010011" | "0000011" => -- tipo i
                if instruccion(31) = '1' then
                    inmediato <= "11111111111111111111" & instruccion(31 downto 20);
                else
                    inmediato <= "00000000000000000000" & instruccion(31 downto 20);
                end if;
            when "0100011" => -- tipo s
                if instruccion(31) = '1' then
                    inmediato <= "11111111111111111111" & instruccion(31 downto 25) & instruccion(11 downto 7);
                else
                    inmediato <= "00000000000000000000" & instruccion(31 downto 25) & instruccion(11 downto 7);
                end if;
            when others =>
                inmediato <= (others => '0');
        end case;
    end process;
end Behavioral;
