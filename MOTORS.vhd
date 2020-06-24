LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY MOTORS IS PORT(
OUTPUT,switch1,output2,CLOCK: IN STD_LOGIC;
WHEEL1,WHEEL2,WHEEL3,WHEEL4,ENABLE1,ENABLE2,enable3,enable4:OUT STD_LOGIC);
END MOTORS;

ARCHITECTURE FUNCTION3 OF MOTORS IS
SIGNAL WHEEL11:STD_LOGIC:='0';
SIGNAL WHEEL22:STD_LOGIC:='1';
SIGNAL WHEEL33:STD_LOGIC:='0';
SIGNAL WHEEL44:STD_LOGIC:='1'; 
signal outss:std_logic;
BEGIN
outss<= (not output and  not output2 and switch1);
WITH outss SELECT
ENABLE1<='1' WHEN '1',
         '0' WHEN OTHERS;
WITH OUTss SELECT
ENABLE2<='1' WHEN '1',
         '0' WHEN OTHERS;
WITH OUTss SELECT
ENABLE3<='1' WHEN '1',
         '0' WHEN OTHERS;
WITH OUTss SELECT
ENABLE4<='1' WHEN '1',
         '0' WHEN OTHERS;		
PROCESS(CLOCK)
BEGIN
IF(RISING_EDGE(CLOCK)) THEN
CASE WHEEL11 IS
WHEN '0' =>WHEEL11<='1';
WHEN OTHERS=> WHEEL11<='0';
END CASE;
CASE WHEEL22 IS
WHEN '1' =>WHEEL22<='0';
WHEN OTHERS=> WHEEL22<='1';
END CASE;
CASE WHEEL33 IS
WHEN '0' =>WHEEL33<='1';
WHEN OTHERS=> WHEEL33<='0';
END CASE;
CASE WHEEL44 IS
WHEN '1' =>WHEEL44<='0';
WHEN OTHERS=> WHEEL44<='1';
END CASE;
END IF;
END PROCESS;
WHEEL1<=WHEEL11;
WHEEL2<=WHEEL22;
WHEEL3<=WHEEL33;
WHEEL4<=WHEEL44;
END FUNCTION3;
