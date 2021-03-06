LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY leddec IS
	PORT (
		dig : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		anode : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		seg : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
	);
END leddec;

ARCHITECTURE Behavioral OF leddec IS
BEGIN
	-- Turn on segments corresponding to 4-bit data word, a 0 is a lit segment, and a 0 is a pressed button
	seg <= "1000000" WHEN data = "1111" ELSE --0  
	       "1001111" WHEN data = "1110" ELSE --1
	       "0100100" WHEN data = "1101" ELSE --2
	       "0110000" WHEN data = "1100" ELSE --3
	       "0011001" WHEN data = "1011" ELSE --4
	       "0010010" WHEN data = "1010" ELSE --5
	       "0000010" WHEN data = "1001" ELSE --6
	       "1111000" WHEN data = "1000" ELSE --7
	       "0000000" WHEN data = "0111" ELSE --8
	       "0011000" WHEN data = "0110" ELSE --9
	       "0001000" WHEN data = "0101" ELSE --A
	       "0000011" WHEN data = "0100" ELSE --B
	       "1000110" WHEN data = "0011" ELSE --C
	       "0100001" WHEN data = "0010" ELSE --D
	       "0000110" WHEN data = "0001" ELSE --E
	       "0001110" WHEN data = "0000" ELSE --F
	       "1111111";
	-- Turn on anode of 7-segment display addressed by 2-bit digit selector dig
	anode <= "1110" WHEN dig = "00" ELSE --0
	         "1101" WHEN dig = "01" ELSE --1
	         "1011" WHEN dig = "10" ELSE --2
	         "0111" WHEN dig = "11" ELSE --3
	         "1111";
END Behavioral;
