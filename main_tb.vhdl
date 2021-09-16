library ieee;
use ieee.std_logic_1164.all;

entity main_tb is
end main_tb;

architecture dataflow of main_tb is
    signal i_in1t : std_logic := '0';
    signal i_in2t : std_logic := '0';
    signal o_out1t  : std_logic := '0';
    signal o_out2t  : std_logic := '0';

    -- Associating the description to be tested (unit under test)
    component main
        port(i_in1 : in std_logic;
            i_in2 : in std_logic;
            o_out1 : out std_logic;
            o_out2 : out std_logic);
    end component;

begin
    UUT: main port map(
        i_in1 => i_in1t,
        i_in2 => i_in2t,
        o_out1 => o_out1t,
        o_out2 => o_out2t);

    Testdrive: process
    begin
        wait for 100 ns;
        i_in1t <= '0'; i_in2t <= '0';

        wait for 100 ns;
        i_in1t <= '0'; i_in2t <= '1';

        wait for 100 ns;
        i_in1t <= '1'; i_in2t <= '0';

        wait for 100 ns;
        i_in1t <= '1'; i_in2t <= '1';

        wait;
    end process Testdrive;

end dataflow;