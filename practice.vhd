-- AND GATE a,b are inputs and z is output
-- library
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AndGate IS 
   PORT(
        a: IN BIT;
		b: IN BIT;
		z: OUT BIT;
       );
	END AndGate;
	
ARCHITECTURE AndGateArch OF ANDGATE IS
BEGIN 
    z<= a AND b;
END AndGateArch;

-- NOT GATE a input & z output

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NotGate IS 
   PORT(
        a: IN BIT;
		z: OUT BIT;
       );
	END NotGate;
	
ARCHITECTURE NotGateArch OF NotGate IS
BEGIN 
    z<= NOT a ;
END NotGateArch;


-- OR GATE a,b input & z output

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY OrGate IS 
   PORT(
        a: IN BIT;
		b: IN BIT;
		z: OUT BIT;
       );
	END OrGate;
	
ARCHITECTURE OrGateArch OF OrGate IS
BEGIN 
    z<= a OR b ;
END OrGateArch;

-- NAND GATE a,b are inputs and z is output
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NandGate IS 
   PORT(
        a: IN BIT;
		b: IN BIT;
		z: OUT BIT;
       );
	END NandGate;
	
ARCHITECTURE NandGateArch OF NandGate IS
BEGIN 
    z<= a NAND b;
END NandGateArch;

-- NOR GATE a,b input & z output

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NorGate IS 
   PORT(
        a: IN BIT;
		b: IN BIT;
		z: OUT BIT;
       );
	END NorGate;
	
ARCHITECTURE NorGateArch OF NorGate IS
BEGIN 
    z<= a NOR b ;
END NorGateArch;

-- XoR GATE a,b input & z output

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XorGate IS 
   PORT(
        a: IN BIT;
		b: IN BIT;
		z: OUT BIT;
       );
	END XorGate;
	
ARCHITECTURE XorGateArch OF XorGate IS
BEGIN 
    z<= a XOR b ;
END XorGateArch;


-- XNOR GATE a,b input & z output

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XnorGate IS 
   PORT(
        a: IN BIT;
		b: IN BIT;
		z: OUT BIT;
       );
	END XnorGate;
	
ARCHITECTURE XnorGateArch OF XnorGate IS
BEGIN 
    z<= a XNOR b ;
END XnorGateArch;


-- Entity 
ENTITY example IS 
       PORT (
	        a,b,c : IN BIT;
			Z: OUT BIT;
	   );
END example;

ARCHITECTURE exampleArch OF example
BEGIN 
  z <= a NAND (a AND b) OR (NOT c);
END exampleArch;