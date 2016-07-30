library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;

use work.txt_util.all;
use std.textio.all;

entity fir_xilinx_wrapper is
   generic (
      datawidth      : natural := 14;
      fullprecision  : natural := 48
   );
   port (        
      clk        : in    std_logic;
      datain     : in    signed(datawidth-1    downto 0);
      dataout    : out   signed(fullprecision-1 downto 0)
   );
end entity fir_xilinx_wrapper;

architecture rtl of fir_xilinx_wrapper is

   COMPONENT fir_90taps
      PORT (
         aclk               : IN STD_LOGIC;
         s_axis_data_tvalid : IN STD_LOGIC;
         s_axis_data_tready : OUT STD_LOGIC;
         s_axis_data_tdata  : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
         m_axis_data_tvalid : OUT STD_LOGIC;
         m_axis_data_tdata  : OUT STD_LOGIC_VECTOR(39 DOWNTO 0)
      );
   END COMPONENT;

   constant xil_fir_input_bit_width  : natural := 16;
   constant xil_fir_output_bit_width : natural := 40;
	
   signal wrap_s_axis_data_tdata   : std_logic_vector(xil_fir_input_bit_width-1 downto 0);
   signal wrap_m_axis_data_tdata   : std_logic_vector(xil_fir_output_bit_width-1 downto 0);

   -- pragma translate_off		
   -- debug
   constant counterbits    : natural := 16;
   constant fir_filename   : string := "fir_xilinx_output.txt";
   file fir_file           : TEXT;	
   constant string_bits    : natural := natural(ceil(real(xil_fir_output_bit_width)/real(4.0)));	
   signal clockcount       : unsigned(counterbits-1 downto 0) := to_unsigned(0,counterbits);
   -- pragma translate_on	

begin

   wrap_s_axis_data_tdata <= std_logic_vector(resize(datain,16));
   dataout                <= resize(signed(wrap_m_axis_data_tdata),fullprecision);
   
   fir_90taps_inst : FIR_90TAPS
   port map (
      aclk               => clk,                    --: IN STD_LOGIC;
      s_axis_data_tvalid => '1',                    --: IN STD_LOGIC;
      s_axis_data_tready => open,                   --: OUT STD_LOGIC;
      s_axis_data_tdata  => wrap_s_axis_data_tdata, --: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axis_data_tvalid => open,                   --: OUT STD_LOGIC;
      m_axis_data_tdata  => wrap_m_axis_data_tdata  --: OUT STD_LOGIC_VECTOR(39 DOWNTO 0)
   ); 

   -- pragma translate_off   
   debug_clockcount : process(clk)
   begin
      if(clk'event and clk='1') then
         clockcount <= clockcount + 1;
      end if;
   end process;
   
   proc_file: process
   variable l: line;
   variable s: string(1 to string_bits);     
   begin
      file_open(fir_file,fir_filename,WRITE_MODE);        
      while not (clockcount = to_unsigned(1000,counterbits)) loop
         s := hstr(std_logic_Vector(wrap_m_axis_data_tdata));        
         write(l, s);
         writeline(fir_file,l);
         wait until clk = '1';
      end loop; 
      file_close(fir_file);       
      wait;
   end process;
   -- pragma translate_on    
	
end architecture rtl;
