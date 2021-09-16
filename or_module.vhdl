library ieee;
use ieee.std_logic_1164.all;

entity or_module is
    port(i_oin1 : in std_logic;
         i_oin2 : in std_logic;
         o_or_out : out std_logic);
end or_module;

architecture dataflow_model of or_module is
begin
    o_or_out <= (i_oin1 or i_oin2);
end dataflow_model;

