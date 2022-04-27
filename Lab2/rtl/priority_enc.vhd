library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity priority_enc is
    port (
        A : in std_logic_vector(3 downto 0);
        O : out std_logic_vector(1 downto 0);
        V : out std_logic
        
    );
end entity;

architecture rtl of priority_enc is

begin
    
    O(0) <= A(3) or (A(1) and (not A(2)));
    O(1) <= A(2) or A(3);
    V <= A(0) or A(1) or A(2) or A(3);
    
    

end architecture;