library IEEE;
use IEEE.std_logic_1164.all;

entity 	ps2kbd is
	PORT (	
			keyboard_clk	: inout std_logic;
			keyboard_data	: inout std_logic;
			clock			: in std_logic;
			reset			: in std_logic;
			read			: in std_logic;
			scan_ready		: out std_logic;
			ps2_ascii_code	: out std_logic_vector(7 downto 0));
end ps2kbd;
	
architecture rtl of ps2kbd is

--signal keyboard_clk		: std_logic;
--signal keyboard_data	: std_logic;
--signal clock			: std_logic;
--signal reset			: std_logic;
--signal read				: std_logic;
--signal scan_ready		: std_logic;
--signal ps2_ascii_code	: std_logic_vector(7 downto 0);
signal scan_code		: std_logic_vector(7 downto 0);

begin

ps2_ascii_decode : process(scan_code)
begin
  case scan_code is
    when x"66" => ps2_ascii_code <= x"08";  -- Backspace ("backspace" key)
    when x"0d" => ps2_ascii_code <= x"09";  -- Horizontal Tab
    when x"5a" => ps2_ascii_code <= x"0d";  -- Carriage return ("enter" key)
    when x"76" => ps2_ascii_code <= x"1b";  -- Escape ("esc" key)
    when x"29" => ps2_ascii_code <= x"20";  -- Space
--    when x"116" => ps2_ascii_code <= x"21";  -- !
--    when x"152" => ps2_ascii_code <= x"22";  -- "
--    when x"126" => ps2_ascii_code <= x"23";  -- #
--    when x"125" => ps2_ascii_code <= x"24";  -- $
--    when x"12e" => ps2_ascii_code <= x"25";  --
--    when x"13d" => ps2_ascii_code <= x"26";  --
--    when x"052" => ps2_ascii_code <= x"27";  --
--    when x"146" => ps2_ascii_code <= x"28";  --
--    when x"145" => ps2_ascii_code <= x"29";  --
--    when x"13e" => ps2_ascii_code <= x"2a";  -- *
--    when x"155" => ps2_ascii_code <= x"2b";  -- +
--    when x"041" => ps2_ascii_code <= x"2c";  -- ,
--    when x"04e" => ps2_ascii_code <= x"2d";  -- -
--    when x"049" => ps2_ascii_code <= x"2e";  -- .
--    when x"04a" => ps2_ascii_code <= x"2f";  -- /
    when x"45" => ps2_ascii_code <= x"30";  -- 0
    when x"16" => ps2_ascii_code <= x"31";  -- 1
    when x"1e" => ps2_ascii_code <= x"32";  -- 2
    when x"26" => ps2_ascii_code <= x"33";  -- 3
    when x"25" => ps2_ascii_code <= x"34";  -- 4
    when x"2e" => ps2_ascii_code <= x"35";  -- 5
    when x"36" => ps2_ascii_code <= x"36";  -- 6
    when x"3d" => ps2_ascii_code <= x"37";  -- 7
    when x"3e" => ps2_ascii_code <= x"38";  -- 8
    when x"46" => ps2_ascii_code <= x"39";  -- 9
--    when x"14c" => ps2_ascii_code <= x"3a";  -- :
--    when x"04c" => ps2_ascii_code <= x"3b";  -- ;
--    when x"141" => ps2_ascii_code <= x"3c";  -- <
--    when x"055" => ps2_ascii_code <= x"3d";  -- =
--    when x"149" => ps2_ascii_code <= x"3e";  -- >
--    when x"14a" => ps2_ascii_code <= x"3f";  -- ?
--    when x"11e" => ps2_ascii_code <= x"40";  -- @
    when x"1c" => ps2_ascii_code <= x"41";  -- A
    when x"32" => ps2_ascii_code <= x"42";  -- B
    when x"21" => ps2_ascii_code <= x"43";  -- C
    when x"23" => ps2_ascii_code <= x"44";  -- D
    when x"24" => ps2_ascii_code <= x"45";  -- E
    when x"2b" => ps2_ascii_code <= x"46";  -- F
    when x"34" => ps2_ascii_code <= x"47";  -- G
    when x"33" => ps2_ascii_code <= x"48";  -- H
    when x"43" => ps2_ascii_code <= x"49";  -- I
    when x"3b" => ps2_ascii_code <= x"4a";  -- J
    when x"42" => ps2_ascii_code <= x"4b";  -- K
    when x"4b" => ps2_ascii_code <= x"4c";  -- L
    when x"3a" => ps2_ascii_code <= x"4d";  -- M
    when x"31" => ps2_ascii_code <= x"4e";  -- N
    when x"44" => ps2_ascii_code <= x"4f";  -- O
    when x"4d" => ps2_ascii_code <= x"50";  -- P
    when x"15" => ps2_ascii_code <= x"51";  -- Q
    when x"2d" => ps2_ascii_code <= x"52";  -- R
    when x"1b" => ps2_ascii_code <= x"53";  -- S
    when x"2c" => ps2_ascii_code <= x"54";  -- T
    when x"3c" => ps2_ascii_code <= x"55";  -- U
    when x"2a" => ps2_ascii_code <= x"56";  -- V
    when x"1d" => ps2_ascii_code <= x"57";  -- W
    when x"22" => ps2_ascii_code <= x"58";  -- X
    when x"35" => ps2_ascii_code <= x"59";  -- Y
    when x"1a" => ps2_ascii_code <= x"5a";  -- Z
--    when x"054" => ps2_ascii_code <= x"5b";  -- [
--    when x"05d" => ps2_ascii_code <= x"5c";  -- \
--    when x"05b" => ps2_ascii_code <= x"5d";  -- ]
--    when x"136" => ps2_ascii_code <= x"5e";  -- ^
--    when x"14e" => ps2_ascii_code <= x"5f";  -- _    
--    when x"00e" => ps2_ascii_code <= x"60";  -- `
--    when x"01c" => ps2_ascii_code <= x"61";  -- a
--    when x"032" => ps2_ascii_code <= x"62";  -- b
--    when x"021" => ps2_ascii_code <= x"63";  -- c
--    when x"023" => ps2_ascii_code <= x"64";  -- d
--    when x"024" => ps2_ascii_code <= x"65";  -- e
--    when x"02b" => ps2_ascii_code <= x"66";  -- f
--    when x"034" => ps2_ascii_code <= x"67";  -- g
--    when x"033" => ps2_ascii_code <= x"68";  -- h
--    when x"043" => ps2_ascii_code <= x"69";  -- i
--    when x"03b" => ps2_ascii_code <= x"6a";  -- j
--    when x"042" => ps2_ascii_code <= x"6b";  -- k
--    when x"04b" => ps2_ascii_code <= x"6c";  -- l
--    when x"03a" => ps2_ascii_code <= x"6d";  -- m
--    when x"031" => ps2_ascii_code <= x"6e";  -- n
--    when x"044" => ps2_ascii_code <= x"6f";  -- o
--    when x"04d" => ps2_ascii_code <= x"70";  -- p
--    when x"015" => ps2_ascii_code <= x"71";  -- q
--    when x"02d" => ps2_ascii_code <= x"72";  -- r
--    when x"01b" => ps2_ascii_code <= x"73";  -- s
--    when x"02c" => ps2_ascii_code <= x"74";  -- t
--    when x"03c" => ps2_ascii_code <= x"75";  -- u
--    when x"02a" => ps2_ascii_code <= x"76";  -- v
--    when x"01d" => ps2_ascii_code <= x"77";  -- w
--    when x"022" => ps2_ascii_code <= x"78";  -- x
--    when x"035" => ps2_ascii_code <= x"79";  -- y
--    when x"01a" => ps2_ascii_code <= x"7a";  -- z
--    when x"154" => ps2_ascii_code <= x"7b";  -- {
--    when x"15d" => ps2_ascii_code <= x"7c";  -- |
--    when x"15b" => ps2_ascii_code <= x"7d";  -- }
--    when x"10e" => ps2_ascii_code <= x"7e";  -- ~
--    when x"071" => ps2_ascii_code <= x"7f";  -- (Delete OR DEL on numeric keypad)
--    when x"171" => ps2_ascii_code <= x"7f";  -- (Delete OR DEL on numeric keypad)
    when others => ps2_ascii_code <= x"FF";  -- keys not mapped
  end case;
end process;

kbd_inst: work.keyboard port map (
	keyboard_clk	=> keyboard_clk,
	keyboard_data	=> keyboard_data,
	clock			=> clock, 
	reset			=> reset,
	read			=> read,
	scan_ready		=> scan_ready,
	scan_code		=> scan_code
);

end;
	