library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nand_gate is
    port (
        I0 : in std_logic;
        I1 : in std_logic;
        O : out std_logic
        
    );
end entity;

architecture rtl of nand_gate is

begin

    process (I0, I1)
    begin
        if (I0 = '0') and (I1 = '0') then
            O <= '1';
        
        elsif (I0 = '0') and (I1 = '1') then
            O <= '1';
        
        elsif (I0 = '1') and (I1 = '0') then
            O <= '1';

        elsif (I0 = '1') and (I1 = '1') then
            O <= '0';
        end if;
        
    end process;
   

end architecture;