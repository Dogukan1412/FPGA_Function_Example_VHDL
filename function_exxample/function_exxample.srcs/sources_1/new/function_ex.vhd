
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity function_ex is
  Port ( 
        in1 : in std_logic_vector(3 downto 0) := "0100";
        in2 : in std_logic_vector(3 downto 0) := "1101"
        );
end function_ex;

architecture Behavioral of function_ex is
    
    function comp(in1,in2 : std_logic_vector(3 downto 0)) return std_logic is
    begin
        if(in1 = in2) then
            return '1';
        else
            return '0';
        end if;
    end comp;
    
    signal res1,res2 : std_logic := '0';
    signal a,b : std_logic_vector(3 downto 0) := "0110";
    
begin
    
    res1 <= comp(in1,in2);
    res2 <= comp(a,b);

end Behavioral;
