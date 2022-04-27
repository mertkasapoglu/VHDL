library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity or_gate is
    port (
        I0 : in std_logic;
        I1 : in std_logic;
        O : out std_logic
        
    );
end entity;

architecture rtl of or_gate is

begin

    O <= I0 or I1;
    

end architecture;