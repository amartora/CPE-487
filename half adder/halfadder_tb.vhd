library ieee;
use ieee.std_logic_1164.all;

-- This file is my test bench

entity halfadder_tb is 
end halfadder_tb;

architecture test of halfadder_tb is
	component halfadder
		port
		(
			a: in std_ulogic; 
			b: in std_ulogic; 
			o: out std_ulogic; 
			c: out std_ulogic 
		);	
	end component;
	
	signal a, b, o, c : std_ulogic;
begin
	half_adder: halfadder port map (a => a, b => b, o => o, c => c); --making a port map here, connecting the wires from our halfadder to the test bench
	
	process begin
	
		a <= 'X'; 
		b <= 'X'; -- delivering unknown signals to the inputs initially
		wait for 1 ns; -- waiting 1 nanosecond
		
		a <= '0'; -- making a low
		b <= '0'; -- making b low
		wait for 1 ns;
		
		a <= '0'; -- making a low
		b <= '1'; -- making b high
		wait for 1 ns;
		
		a <= '1';
		b <= '0';
		wait for 1 ns;
		
		a <= '1';
		b <= '1';
		wait for 1 ns;
		
		-- we have just exhaustively tested all possible inputs
		
		assert false report "Reached end of test";
		wait;
	
	end process;
	 
end test;