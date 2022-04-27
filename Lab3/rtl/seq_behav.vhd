library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seq_behav is
    port (
        clk   : in std_logic;
        reset : in std_logic;
        x : in std_logic;
        o : out std_logic
        
        
    );
end entity;

architecture rtl of seq_behav is
    signal cs : std_logic_vector(1 downto 0);
    signal ns : std_logic_vector(1 downto 0);

begin
    process (clk)
    begin
    if rising_edge(clk) then
        if (reset = '1') then
            cs <= "00";
        else
            cs <= ns;
        end if;
    end if;

    end process;
    process (x, cs)
    begin
        case cs is
            when "00" =>
                if (x = '1') then
                    ns <= "01";
                    o <= '0';
                else
                    ns <= "00";
                    o <= '0';
                    
                end if;
            
            when "01" =>
                if (x = '1') then
                    ns <= "01";
                    o <= '0';
                else
                    ns <= "10";
                    o <= '0';
                    
                end if;

            when "10" =>
                if (x = '1') then
                    ns <= "11";
                    o <= '0';
                else
                    ns <= "00";
                    o <= '0';
                    
                end if;
            
            when "11" =>
                if (x = '1') then
                    ns <= "01";
                    o <= '1';
                else
                    ns <= "00";
                    o <= '1';
                    
                end if;
            
            
        
            
        end case;
        
    end process;

end architecture;