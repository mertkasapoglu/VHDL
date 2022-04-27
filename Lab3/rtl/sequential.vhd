library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity sequential is
    port (
        clk   : in std_logic;
        reset : in std_logic;
        x : in std_logic;
        o : out std_logic
        
        
    );
end entity;

architecture rtl of sequential is
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

    ns(0) <= x;
    ns(1) <= ((not cs(1)) and cs(0) and (not x)) or (cs(1) and (not cs(0)) and x);
    o <= cs(0) and cs(1);
    
    

end architecture;