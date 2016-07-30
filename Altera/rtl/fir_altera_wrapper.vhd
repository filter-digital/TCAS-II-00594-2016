library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.txt_util.all;

use std.textio.all;

entity fir_altera_wrapper is
   generic (
      datawidth      : natural := 14;
      fullprecision  : natural := 48
   );
   port (        
      clk        : in    std_logic;
      datain     : in    signed(datawidth-1    downto 0);
      dataout    : out   signed(fullprecision-1 downto 0)
   );
end entity fir_altera_wrapper;

architecture rtl of fir_altera_wrapper is
   constant altera_fir_input_bit_width  : natural := 15;
   constant altera_fir_output_bit_width : natural := 41;
   
   component FIR_90TAPS is
   port (
      clk              : in  std_logic                     := 'X';             -- clk
      reset_n          : in  std_logic                     := 'X';             -- reset_n
      ast_sink_data    : in  std_logic_vector(14 downto 0) := (others => 'X'); -- data
      ast_sink_valid   : in  std_logic                     := 'X';             -- valid
      ast_sink_error   : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
      ast_source_data  : out std_logic_vector(40 downto 0);                    -- data
      ast_source_valid : out std_logic;                                        -- valid
      ast_source_error : out std_logic_vector(1 downto 0)                      -- error
   );
   end component FIR_90TAPS;

   signal wrap_ast_sink_data   : std_logic_vector(altera_fir_input_bit_width-1 downto 0);
   signal wrap_ast_source_data : std_logic_vector(altera_fir_output_bit_width-1 downto 0);
   signal wrap_reset_n         : std_logic;
   
   signal reset_gen            : std_logic_vector(0 downto 0) := "0";
	
   -- ALTERA synthesis translate_off
   -- pragma translate_off		
   -- debug
   constant counterbits    : natural := 16;
   constant fir_filename   : string := "fir_altera_output.txt";
   file fir_file           : TEXT;	
   constant string_bits    : natural := natural(ceil(real(altera_fir_output_bit_width)/real(4.0)));	
   signal clockcount       : unsigned(counterbits-1 downto 0) := to_unsigned(0,counterbits);
   -- ALTERA synthesis translate_on
   -- pragma translate_on	
	
begin

   wrap_reset_n         <= reset_gen(reset_gen'left);
   wrap_ast_sink_data   <= std_logic_vector(datain);
   dataout              <= resize(signed(wrap_ast_source_data),fullprecision);
   
   fir_90taps_inst : FIR_90TAPS
   port map (
      clk              => clk,                    --: in  std_logic                     := '0';             --                     clk.clk
      reset_n          => wrap_reset_n,           --: in  std_logic                     := '0';             --                     rst.reset_n
      ast_sink_data    => wrap_ast_sink_data,     --: in  std_logic_vector(14 downto 0) := (others => '0'); --   avalon_streaming_sink.data
      ast_sink_valid   => '1',                    --: in  std_logic                     := '0';             --                        .valid
      ast_sink_error   => (others => '0'),        --: in  std_logic_vector(1 downto 0)  := (others => '0'); --                        .error
      ast_source_data  => wrap_ast_source_data,   --: out std_logic_vector(40 downto 0);                    -- avalon_streaming_source.data
      ast_source_valid => open,                   --: out std_logic;                                        --                        .valid
      ast_source_error => open                    --: out std_logic_vector(1 downto 0)                      --                        .error
   );
	
   reset_gen_shift : process(clk)
   begin
      if(clk'event and clk='1') then
         reset_gen <= reset_gen(reset_gen'left-1 downto reset_gen'right) & "1";
      end if;
   end process;
	
   -- ALTERA synthesis translate_off
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
         s := hstr(std_logic_Vector(wrap_ast_source_data));		
         write(l, s);
         writeline(fir_file,l);
         wait until clk = '1';
      end loop; 
      file_close(fir_file);	   
      wait;
   end process;	
   -- ALTERA synthesis translate_on
   -- pragma translate_on	

end architecture rtl;
