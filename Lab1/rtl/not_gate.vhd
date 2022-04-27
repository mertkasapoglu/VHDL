library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity not_gate is
    port (
        I : in std_logic;
        O : out std_logic
    );
end entity;

architecture rtl of not_gate is

begin

    O <= not I;

end architecture;