library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ssi is
end;

architecture bench of tb_ssi is
---
  component and_gate
    port (
      I0 : in std_logic;
      I1 : in std_logic;
      O : out std_logic
    );
  end component;

  component or_gate
    port (
    I0 : in std_logic;
    I1 : in std_logic;
    O : out std_logic
  );
  end component;

  component nand_gate
    port (
    I0 : in std_logic;
    I1 : in std_logic;
    O : out std_logic
  );
  end component;

  component nor_gate
    port (
    I0 : in std_logic;
    I1 : in std_logic;
    O : out std_logic
  );
  end component;

  component xor_gate
    port (
    I0 : in std_logic;
    I1 : in std_logic;
    O : out std_logic
  );
end component;

  component xnor_gate
    port (
    I0 : in std_logic;
    I1 : in std_logic;
    O : out std_logic
  );
end component;



  -- Ports
  signal I0 : std_logic;
  signal I1 : std_logic;
  signal O : std_logic;

begin

  --and_gate_inst : and_gate
  --port map(
  --  I0 => I0,
  --  I1 => I1,
  --  O => O
  --);

  

  --or_gate_inst : or_gate
  --port map (
  --  I0 => I0,
  --  I1 => I1,
  --  O => O
  --);

  --nand_gate_inst : nand_gate
  --port map (
  --  I0 => I0,
  --  I1 => I1,
  --  O => O
  --);

  --nor_gate_inst : nor_gate
  --port map (
  --  I0 => I0,
  --  I1 => I1,
  --  O => O
  --);
  
  xor_gate_inst : xor_gate
  port map (
    I0 => I0,
    I1 => I1,
    O => O
  );

  --xnor_gate_inst : xnor_gate
  --port map (
  --  I0 => I0,
  --  I1 => I1,
  --  O => O
  --);


  process
  begin
    I0 <= '0';
    I1 <= '0'; 
    wait for 10 ns;   

    I0 <= '0';
    I1 <= '1'; 
    wait for 10 ns;

    I0 <= '1';
    I1 <= '0'; 
    wait for 10 ns;

    I0 <= '1';
    I1 <= '1'; 
    wait;
  end process;

end;