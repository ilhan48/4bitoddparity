library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ParityBitGenerator is
	 port(
		 Input : in STD_LOGIC_VECTOR(0 to 2);
		 Parity_odd : out STD_LOGIC_VECTOR (0 to 3));
end ParityBitGenerator;



architecture ParityBitGenerator of ParityBitGenerator is
	signal parity: std_logic:= '0';
begin
	parity <= Input(0) xor Input(1) xor Input(2);
	Parity_odd <= input & not parity;
end ParityBitGenerator;
