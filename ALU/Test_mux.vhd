library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_in_tb is
end mux_in_tb;

architecture Behavioral of mux_in_tb is
    -- Component declaration for the unit under test (UUT)
    component mux_in is
        Port (
            registro : in  STD_LOGIC_VECTOR (31 downto 0);
            inmediato : in  STD_LOGIC_VECTOR (31 downto 0);
            ALU_src : in  STD_LOGIC;
            b : out  STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

    -- Signal declarations
    signal registro_tb : STD_LOGIC_VECTOR (31 downto 0) := (others => '0'); -- Initialize to all zeros
    signal inmediato_tb : STD_LOGIC_VECTOR (31 downto 0) := (others => '0'); -- Initialize to all zeros
    signal ALU_src_tb : STD_LOGIC := '0'; -- Initialize to 0
    signal b_tb : STD_LOGIC_VECTOR (31 downto 0);

begin
    -- Instantiate the unit under test (UUT)
    uut: mux_in port map (
        registro => registro_tb,
        inmediato => inmediato_tb,
        ALU_src => ALU_src_tb,
        b => b_tb
    );

    -- Stimulus process
    stimulus_process: process
    begin
        -- Test case 1
        registro_tb <= (others => '0'); -- Set registro to all zeros
        inmediato_tb <= (others => '1'); -- Set inmediato to all ones
        ALU_src_tb <= '0'; -- Set ALU_src to 0
        wait for 10 ns;

        -- Test case 2
        registro_tb <= (others => '1'); -- Set registro to all ones
        inmediato_tb <= (others => '0'); -- Set inmediato to all zeros
        ALU_src_tb <= '1'; -- Set ALU_src to 1
        wait for 10 ns;

        -- Add more test cases as needed

        -- End test bench simulation after all test cases are complete
        wait;
    end process;

end Behavioral;
