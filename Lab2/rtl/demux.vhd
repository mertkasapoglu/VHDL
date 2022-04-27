library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity demux is
    port (
        A : in std_logic_vector(1 downto 0);
        F : in std_logic;
        O : out std_logic_vector(3 downto 0)
        
    );
end entity;

architecture rtl of demux is

begin
    O(0) <= F and (not A(0)) and (not A(1));
    O(1) <= F and A(0) and (not A(1));
    O(2) <= F and (not A(0)) and A(1);
    O(3) <= F and A(0) and A(1);
    

end architecture;