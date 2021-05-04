------------------------------------------------------------------------
--
-- Generates clock enable signal.
-- Nexys A7-50T, Vivado v2020.1.1, EDA Playground
--
-- Copyright (c) 2019-Present Tomas Fryza
-- Dept. of Radio Electronics, Brno University of Technology, Czechia
-- This work is licensed under the terms of the MIT license.
--
------------------------------------------------------------------------

library ieee;               -- Standard library
use ieee.std_logic_1164.all;-- Package for data types and logic operations
use ieee.numeric_std.all;   -- Package for arithmetic operations

------------------------------------------------------------------------
-- Entity declaration for time enable
------------------------------------------------------------------------
entity time_enable is
    port(
        clk        : in  std_logic; -- main clock
        reset      : in  std_logic; -- synchronous reset
        run        : in  std_logic; -- input for timer run
        runtime    : out integer    -- time output
    );
end entity time_enable;

------------------------------------------------------------------------
-- Architecture body for time enable
------------------------------------------------------------------------
architecture Behavioral of time_enable is

    signal s_runtime  : integer:=0; -- internal variable for time
    signal timing     : integer:=0; -- number of clock cycles

begin

------------------------------------------------------------------------
-- Process p_time_ena:
-- every 100 main clock cycles add 1 to runtime variable
-- reset stop counting and erase runtime
------------------------------------------------------------------------
    p_time_ena : process(clk)
    begin
    
        if(timing < 100 and reset = '0') then
            timing <= timing + 1;
        elsif(timing = 100 and reset = '0') then 
            s_runtime <= s_runtime + 1;
            timing <= 0;
        elsif (reset = '1') then
            s_runtime <= 0;
            timing <= 0;
        end if;
        
        runtime <= s_runtime;
        
    end process p_time_ena;

end architecture Behavioral;
