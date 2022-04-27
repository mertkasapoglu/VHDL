library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sequential_tb is
end;

architecture bench of sequential_tb is

  component sequential
      port (
      clk : in std_logic;
      reset : in std_logic;
      x : in std_logic;
      o : out std_logic
    );
  end component;

  component seq_behav
    port (
    clk : in std_logic;
    reset : in std_logic;
    x : in std_logic;
    o : out std_logic
  );
end component;


  -- Clock period
  constant clk_period : time := 20 ns;
  -- Generics

  -- Ports
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal x : std_logic := '0';
  signal o : std_logic := '0';

begin

  --sequential_inst : sequential
  --  port map (
  --    clk => clk,
  --    reset => reset,
  --    x => x,
  --    o => o
  --  );

    seq_behav_inst : seq_behav
    port map (
      clk => clk,
      reset => reset,
      x => x,
      o => o
    );

   clk_process : process
   begin
   clk <= '1';
   wait for clk_period/2;
   clk <= '0';
   wait for clk_period/2;
   end process clk_process;

   process 
   begin
      reset <= '1';
      wait for 100 ns;

      x <= '1';
      reset <= '0';
      wait for 20 ns;
      
      x <= '0';
      wait for 20 ns;

      x <= '0';
      wait for 20 ns;

      x <= '1';
      wait for 20 ns;

      x <= '0';
      wait for 20 ns;

      x <= '1';
      wait for 20 ns;

      x <= '0';
      wait for 20 ns;

      x <= '1';
      wait for 20 ns;

      x <= '0';
      wait for 20 ns;

      x <= '0';
      wait for 20 ns;

      x <= '1';
      wait for 20 ns;

      x <= '0';
      wait for 20 ns;

      x <= '1';
      wait for 20 ns;

      x <= '1';

      wait;



   end process;

end;
