-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(15 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component bit1shift is
    port (
        A: in std_logic_vector(15 downto 0);
        Op: out std_logic_vector(15 downto 0)
    ) ;
	  end component;
begin

   add_instance: bit1shift
			port map (
			
					A => input_vector(15 downto 0),
				
					op => output_vector(15 downto 0));

end DutWrap;

