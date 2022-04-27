library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is
    port (  
        S : in std_logic_vector(1 downto 0);
        A : in std_logic_vector(3 downto 0);
        O : out std_logic
        
    );
end entity;

architecture rtl of mux is

    signal and0_out : std_logic;
    signal and1_out : std_logic;
    signal and2_out : std_logic;
    signal and3_out : std_logic;

begin
    and0_out <= S(0) and S(1) and A(3);
    and1_out <= (not S(0)) and S(1) and A(2);
    and2_out <= S(0) and (not S(1)) and A(1);
    and3_out <= (not S(0)) and (not S(1)) and A(0);

    O <= and0_out or and1_out or and2_out or and3_out; 
    

end architecture;