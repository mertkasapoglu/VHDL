library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity and_gate is
    port (
        I0 : in std_logic;
        I1 : in std_logic;
        O : out std_logic
        
    );
end entity;

architecture rtl of and_gate is

begin

    O <= I0 and I1;

end architecture;