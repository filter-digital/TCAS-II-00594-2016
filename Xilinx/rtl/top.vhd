library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library unisim;
use unisim.vcomponents.all;

library work;

entity top is
   port (        
      sysclk_n     : in    std_logic;
      sysclk_p     : in    std_logic;
      fpga_awake   : out   std_logic
   );
end entity top;

architecture rtl of top is
   constant datain_bitsize  : natural := 15;
   constant dataout_bitsize : natural := 41;

   constant signedzero      : signed(datain_bitsize-1 downto 0)  := to_signed(0,datain_bitsize);
   constant signedmax       : signed(datain_bitsize-1 downto 0)  := to_signed(2**(datain_bitsize-1)-1,datain_bitsize);

   signal msb               : std_ulogic := '0';
   signal clk               : std_ulogic; 
                            
   signal datain            : signed(datain_bitsize-1  downto 0) := to_signed(0,datain_bitsize);
   signal dataout           : signed(dataout_bitsize-1 downto 0) := to_signed(0,dataout_bitsize);
                            
   signal pulse             : std_ulogic_vector(1 downto 0)      := "01";
   
begin

   clkin_buf : IBUFGDS
   port map (
      O  => clk,
      I  => sysclk_p,
      IB => sysclk_n
   );    
   
   fpga_awake <= msb;

   fir_xilinx_wrapper_inst : entity work.fir_xilinx_wrapper
   generic map (
      datawidth     => datain_bitsize,
      fullprecision => dataout_bitsize
   )
   port map (
      clk     => clk,
      datain  => datain,
      dataout => dataout
   );
      
   proc_out : process(clk)   
   begin
      if(clk'event and clk='1') then
         msb <=  std_ulogic(dataout(dataout'left));
      end if;
   end process;

   proc_stim : process(clk) 
   begin
      if(clk'event and clk='1') then
         pulse(pulse'right)                       <= '0';
         pulse(pulse'left downto pulse'right + 1) <= pulse(pulse'left-1 downto pulse'right);

         if(pulse(pulse'left) = '1') then
            datain <= signedmax;
         else
            datain <= signedzero;
         end if;         
      end if;
   end process;

end architecture rtl;
