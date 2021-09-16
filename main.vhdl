library ieee;
use ieee.std_logic_1164.all;

entity main is
    port(i_in1 : in std_logic;
         i_in2 : in std_logic;
         o_out1 : out std_logic;
         o_out2 : out std_logic);
end main;

architecture dataflow_model of main is
signal o_and_out, o_or_out : std_logic;

-- Instantiate components
component and_module
    port(i_ain1    : in std_logic;
         i_ain2    : in std_logic;
         o_and_out : out std_logic);
end component;

component or_module
    port(i_oin1 : in std_logic;
         i_oin2 : in std_logic;
         o_or_out : out std_logic);
end component;

begin
    and2: and_module port map (
        i_ain1 => i_in1,
        i_ain2 => i_in2,
        o_and_out => o_and_out);

    or2: or_module port map (
        i_oin1 => i_in1,
        i_oin2 => i_in2,
        o_or_out => o_or_out);

    o_out1 <= o_and_out xor o_or_out;
    o_out2 <= not i_in1;
end dataflow_model;