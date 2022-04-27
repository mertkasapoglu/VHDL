library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_msi is
end;

architecture bench of tb_msi is

  component decoder
      port (
      A : in std_logic_vector(3 downto 0);
      O : out std_logic_vector(15 downto 0)
    );
  end component;

  component priority_enc
      port (
      A : in std_logic_vector(3 downto 0);
      O : out std_logic_vector(1 downto 0);
      V : out std_logic
    );
  end component;

  component mux
    port (
    S : in std_logic_vector(1 downto 0);
    A : in std_logic_vector(3 downto 0);
    O : out std_logic
  );
end component;

component demux
    port (
    A : in std_logic_vector(1 downto 0);
    F : in std_logic;
    O : out std_logic_vector(3 downto 0)
  );
end component;


  -- Ports
  signal A : std_logic_vector(1 downto 0);
  signal F : std_logic;
  signal O : std_logic_vector(3 downto 0);
  --signal V : std_logic;

begin

  --decoder_inst : decoder
  --  port map (
  --    A => A,
  --   O => O
  --);  

  --priority_enc_inst : priority_enc
  --  port map (
  --    A => A,
  --    O => O,
  --    V => V
  --  );

  --mux_inst : mux
   -- port map (
  --    S => S,
   --   A => A,
   --   O => O
   -- );

    demux_inst : demux
    port map (
      A => A,
      F => F,
      O => O
    );

    process
    begin
      A <= "00";
      F <= '0';
      wait for 10 ns;   
  
      A <= "01";
      F <= '0';
      wait for 10 ns;
  
      A <= "10";
      F <= '0';
      wait for 10 ns;

      A <= "11";
      F <= '0';
      wait for 10 ns;

     
      A <= "00"; 
      F <= '1';
      wait for 10 ns;   
  
      A <= "01";
      F <= '1';
      wait for 10 ns;
  
      A <= "10";
      F <= '1';
      wait for 10 ns;

      A <= "11";
      F <= '1';

      wait;
    end process;

end;



