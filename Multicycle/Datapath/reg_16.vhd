library ieee;
use ieee.std_logic_1164.all;

entity reg is 
    port(
      wr: in std_logic;
		clk: in std_logic;
		data: in std_logic_vector(15 downto 0);
		Op: out std_logic_vector(15 downto 0)
		);
end reg;

architecture reg1 of reg is
begin
process(wr, clk, data)
begin
if rising_edge(clk) then
  if wr='1' then
    Op <= data;
  else
    null;
  end if;
else
  null;
end if;
end process;
end reg1;