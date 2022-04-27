library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity decoder is
    port (
        A : in std_logic_vector(3 downto 0);
        O : out std_logic_vector(15 downto 0)
    );
end entity;

architecture rtl of decoder is

begin

    process (A)
    begin
        case A is
            when "0000" => 
                O <= "0000000000000001";
        
            when "0001" =>
                O <= "0000000000000010";
            
            when "0010" =>
                O <= "0000000000000100";
            
            when "0011" =>
                O <= "0000000000001000";
            
            when "0100" =>
                O <= "0000000000010000";
            
            when "0101" =>
                O <= "0000000000100000";
            
            when "0110" =>
                O <= "0000000001000000";
            
            when "0111" =>
                O <= "0000000010000000";
            
            when "1000" =>
                O <= "0000000100000000";
            
            when "1001" =>
                O <= "0000001000000000";

            when "1010" =>
                O <= "0000010000000000";
            
            when "1011" =>
                O <= "0000100000000000";
            
            when "1100" =>
                O <= "0001000000000000";

            when "1101" =>
                O <= "0010000000000000";

            when "1110" =>
                O <= "0100000000000000";

            when "1111" =>
                O <= "1000000000000000";
            when others => 
                O <= "0000000000000000";
            
            
        end case;
        
    end process;

end architecture;