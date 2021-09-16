library ieee;
use ieee.std_logic_1164.all;

entity and_module is
    port(i_ain1    : in std_logic;
         i_ain2    : in std_logic;
         o_and_out : out std_logic);
end and_module;

architecture dataflow_model of and_module is
begin
    o_and_out <= (i_ain1 and i_ain2);
end dataflow_model;