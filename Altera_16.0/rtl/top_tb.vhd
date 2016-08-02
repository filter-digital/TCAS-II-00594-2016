library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

library work;

entity top_tb is
end entity top_tb;


architecture rtl of top_tb is

   signal tb_sysclk     : std_logic := '0';
   signal tb_fpga_awake : std_logic;
  
   constant clk_period : time := 10 ns;

begin

   DUT : entity work.top
   port map (
      sysclk       =>     tb_sysclk,     --: in    std_logic;
      fpga_awake   =>     tb_fpga_awake  --: out   std_logic
   );
    
   clkgen : process
   begin
      tb_sysclk <= '0';
      wait for clk_period/2;
      tb_sysclk <= '1';
      wait for clk_period/2;
   end process clkgen;

end architecture rtl;
