library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity xor_gate is
    port (
        I0 : in std_logic;
        I1 : in std_logic;
        O : out std_logic
        
    );
end entity;

architecture rtl of xor_gate is
    component nand_gate is
        port (
            I0 : in std_logic;
            I1 : in std_logic;
            O : out std_logic  
            
        );
    end component;

    signal nand_o0 : std_logic;
    signal nand_o1 : std_logic;
    signal nand_o2 : std_logic;
    signal nand_o3 : std_logic;

begin
    nand_gate_ins0 : nand_gate
    port map (
       I0 => I0,
       I1 => I1,
       O => nand_o0 
    );

    nand_gate_ins1 : nand_gate
    port map (
       I0 => I0,
       I1 => nand_o0,
       O => nand_o1
    );

    nand_gate_ins2 : nand_gate
    port map (
       I0 => nand_o0,
       I1 => I1,
       O => nand_o2
    );

    nand_gate_ins3 : nand_gate
    port map (
       I0 => nand_o1,
       I1 => nand_o2,
       O => nand_o3 
    );
    
    O <= nand_o3;
    

end architecture;

