library ieee;
use ieee.std_logic_1164.all;

--https://www.youtube.com/watch?v=H2GyAIYwZbw

-- A half adder is an adder that has 2 inputs, A and B, and 2 outputs, sum and carry.
-- A half adder will add up A and B and move that to the sum output.
-- Since the inputs and outputs are single bit values, if A and B are both 1, the half adder
-- will have the sum output be 0 and the carry output be 1.
-- In all other cases the carry is equal to 0.

--TRUTH TABLE
-- A:0 B:0 SUM:0 CARRY:0
-- A:1 B:0 SUM:1 CARRY:0
-- A:0 B:1 SUM:1 CARRY:0
-- A:1 B:1 SUM:0 CARRY:1

entity halfadder is
	port
	(
		a: in std_ulogic; -- input signal of type std_ulogic, whioch is a 1 bit signal
		b: in std_ulogic; -- another input
		o: out std_ulogic; -- output (sum)
		c: out std_ulogic -- carry
	);	
end halfadder;

architecture behave of halfadder is --defining the behavior of halfadder
begin
	o <= a xor b;
	c <= a and b;
end behave;