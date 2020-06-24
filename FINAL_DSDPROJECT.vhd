LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY FINAL_DSDPROJECT IS PORT(
SWITCH1,output2,OUTPUT,CLK:IN STD_LOGIC;
OUTPUT1,WHEEL1,WHEEL2,WHEEL3,WHEEL4,ENABLE1,ENABLE2,enable3,enable4,buzzer2:OUT STD_LOGIC);
END FINAL_DSDPROJECT;

ARCHITECTURE FUNCTION4 OF FINAL_DSDPROJECT IS
SIGNAL CLOCK:STD_LOGIC;


COMPONENT NEWCLK PORT(CLK:IN STD_LOGIC; CLOCK:OUT STD_LOGIC
);END COMPONENT;

COMPONENT SWITCHING PORT(SWITCH1:IN STD_LOGIC;OUTPUT1:OUT STD_LOGIC);END COMPONENT;

COMPONENT MOTORS PORT(OUTPUT,switch1,output2,CLOCK:IN STD_LOGIC;WHEEL1,WHEEL2,WHEEL3,WHEEL4,ENABLE1,ENABLE2,enable3,enable4:OUT STD_LOGIC);END COMPONENT;


component buzzer port(output,switch1,output2:in std_logic;buzzer2:out std_logic);end component;
BEGIN

CLK1: NEWCLK PORT MAP(CLK,CLOCK);
SWTCH1: SWITCHING PORT MAP(SWITCH1,OUTPUT1);
MOTORS1:MOTORS PORT MAP(OUTPUT,switch1,output2,CLOCK,WHEEL1,WHEEL2,WHEEL3,WHEEL4,ENABLE1,ENABLE2,enable3,enable4);
buzzer1:buzzer port map(output,switch1,output2,buzzer2);
end function4;