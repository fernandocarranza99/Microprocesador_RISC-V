library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Test_ALU_V1 is
end Test_ALU_V1;

architecture behavior of Test_ALU_V1 is
    -- Component declaration for the unit under test (UUT)
    component ALU_V1
        port (
            a : in  STD_LOGIC_VECTOR (31 downto 0);
            b : in  STD_LOGIC_VECTOR (31 downto 0);
            y : out  STD_LOGIC_VECTOR (31 downto 0);
            zero : out STD_LOGIC;
           -- ci : in  STD_LOGIC;
            op : in  STD_LOGIC_VECTOR (3 downto 0)
        );
    end component;

    -- Signal declarations
    signal a_tb, b_tb, y_tb : STD_LOGIC_VECTOR(31 downto 0);
    signal zero_tb : STD_LOGIC;
    signal op_tb : STD_LOGIC_VECTOR(3 downto 0);

begin
    -- Instantiate the unit under test (UUT)
    uut: ALU_V1 port map (
        a => a_tb,
        b => b_tb,
        y => y_tb,
        zero => zero_tb,
        --ci => ci_tb,
        op => op_tb
    );

    -- Stimulus process
    stimulus: process
    begin
        -- Test case 1_1: suma (5 + 3 = 8)
        a_tb <= "00000000000000000000000000000101"; -- 5
        b_tb <= "00000000000000000000000000000011"; -- 3
        op_tb <= "0000"; -- Add
        --ci_tb <= '0'; -- Carry-in not used for addition
        wait for 10 ns;
        assert y_tb = "00000000000000000000000000001000" report "Addition failed" severity error;
        assert zero_tb = '0' report "Zero signal incorrect for OR operation" severity error;
        
		  -- Test case 1_2: suma (5 + -3 = 2)

		  a_tb <= "00000000000000000000000000000101"; -- 5
        b_tb <= "11111111111111111111111111111101"; -- -3 Complemento 2
        op_tb <= "0000"; -- Add
        --ci_tb <= '0'; -- Carry-in not used for addition
        wait for 10 ns;
        assert y_tb = "00000000000000000000000000000010" report "Addition failed" severity error;
        assert zero_tb = '0' report "Zero signal incorrect for OR operation" severity error;
		  
		  

		  
		  
		  -- Test case 2: Resta (10 - 3 = 7)
        a_tb <= "00000000000000000000000000001010"; -- 10
        b_tb <= "00000000000000000000000000000011"; -- 3
        op_tb <= "0001"; -- Sub
        --ci_tb <= '0'; -- Carry-in not used for subtraction
        wait for 10 ns;
        assert y_tb = "00000000000000000000000000000111" report "Subtraction failed" severity error;
        assert zero_tb = '0' report "Zero signal incorrect for OR operation" severity error;
		  
		  -- Test case 2_1: Resta (10 - (-3) = 7)
        a_tb <= "00000000000000000000000000001010"; -- 10
        b_tb <= "11111111111111111111111111111101"; -- -3
        op_tb <= "0001"; -- Sub
        --ci_tb <= '0'; -- Carry-in not used for subtraction
        wait for 10 ns;
        assert y_tb = "00000000000000000000000000001101" report "Subtraction failed" severity error;
        assert zero_tb = '0' report "Zero signal incorrect for OR operation" severity error;


        -- Test case 3_1: AND operation (5 AND 3 = 1)
        a_tb <= "00000000000000000000000000000101"; -- 5
        b_tb <= "00000000000000000000000000000011"; -- 3
        op_tb <= "0110"; -- AND
        --ci_tb <= '0'; -- Carry-in not used for AND operation
        wait for 10 ns;
        assert y_tb = "00000000000000000000000000000001" report "AND operation failed" severity error;
        assert zero_tb = '0' report "Zero signal incorrect for OR operation" severity error;


			-- Test case 3_2: AND operation (5 AND 3 = 1) con menos bits
        a_tb <= "0X000000000000000000000000000101"; -- 5 -- tengo un bit '1' menos 
        b_tb <= "00000000000000000000000000000011"; -- 3
        op_tb <= "0110"; -- AND
        --ci_tb <= '0'; -- Carry-in not used for AND operation
        wait for 10 ns;
        assert y_tb = "00000000000000000000000000000001" report "AND operation failed" severity error;
        assert zero_tb = '0' report "Zero signal incorrect for OR operation" severity error;
         
			-- Test case 4: OR operation (5 OR 3 = 7)
        a_tb <= "00000000000000000000000000000101"; -- 5
        b_tb <= "00000000000000000000000000000011"; -- 3
        op_tb <= "0101"; -- OR
        --ci_tb <= '0'; -- Carry-in not used for OR operation
        wait for 10 ns;
        assert y_tb = "00000000000000000000000000000111" report "OR operation failed" severity error;
        assert zero_tb = '0' report "Zero signal incorrect for OR operation" severity error;


        -- Test case 1: SRL operation (8 >> 2 = 2)
        a_tb <= "00000000000000000000000000001000"; -- 8
        b_tb <= "00000000000000000000000000000010"; -- 2
        op_tb <= "0100"; -- SRL
        --ci_tb <= '0'; -- Carry-in not used for SRL operation
        wait for 10 ns;
        assert y_tb = "00000000000000000000000000000010" report "SRL operation failed" severity error;
        assert zero_tb = '0' report "Zero signal incorrect for OR operation" severity error;

        -- Test case 2_1: SLL operation (8 << 2 = 32)
        a_tb <= "00000000000000000000000000001000"; -- 8
        b_tb <= "00000000000000000000000000000010"; -- 2
        op_tb <= "0010"; -- SLL
        --ci_tb <= '0'; -- Carry-in not used for SLL operation
        wait for 10 ns;
        assert y_tb = "00000000000000000000000000100000" report "SLL operation failed" severity error;
        assert zero_tb = '0' report "Zero signal incorrect for OR operation" severity error;
		  
		  
		  
		  -- Test case 2_2: SLL operation (8 << 2 = 32) CON UN OPCODE INCORRECTO
        a_tb <= "00000000000000000000000000001000"; -- 8
        b_tb <= "00000000000000000000000000000010"; -- 2
        op_tb <= "1111"; -- SLL
        --ci_tb <= '0'; -- Carry-in not used for SLL operation
        wait for 10 ns;
        assert y_tb = "00000000000000000000000000100000" report "SLL operation failed" severity error;
        assert zero_tb = '0' report "Zero signal incorrect for OR operation" severity error;

        -- Add more test cases here as needed...

    wait;
end process;
end behavior;