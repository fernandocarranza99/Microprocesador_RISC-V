library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity EXT_SIG_tb is
end EXT_SIG_tb;

architecture Behavioral of EXT_SIG_tb is
    -- Component declaration for the unit under test (UUT)
    component EXT_SIG is
        Port (
            instruccion : in  STD_LOGIC_VECTOR (31 downto 0);
            inmediato : out  STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    -- Signal declarations
    signal instruccion_tb : STD_LOGIC_VECTOR (31 downto 0) := (others => '0'); -- Initialize to all zeros
    signal inmediato_tb : STD_LOGIC_VECTOR (31 downto 0);

begin
    -- Instantiate the unit under test (UUT)
    uut: EXT_SIG port map (
        instruccion => instruccion_tb,
        inmediato => inmediato_tb
    );

    -- Stimulus process
    stimulus_process: process
    begin
        -- Test case 1
        instruccion_tb <= "11001110000000000000000001100011"; -- Set instruccion to a specific value
        wait for 10 ns;

        -- Test case 2
        instruccion_tb <= "11000110000000000000000000010011"; -- Set instruccion to a different value
        wait for 10 ns;

        -- Add more test cases as needed

        -- End test bench simulation after all test cases are complete
        wait;
    end process;

end Behavioral;
