library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
        port(
                Clk             : in std_logic;
                A               : in std_logic_vector(11 downto 0);
                D               : out std_logic_vector(7 downto 0)
        );
end rom;

architecture rtl of rom is
begin

process (Clk)
begin
 if Clk'event and Clk = '1' then
        case A is
             when x"000" => D <= x"31";
             when x"001" => D <= x"FE";
             when x"002" => D <= x"BF";
             when x"003" => D <= x"CD";
             when x"004" => D <= x"69";
             when x"005" => D <= x"00";
             when x"006" => D <= x"21";
             when x"007" => D <= x"42";
             when x"008" => D <= x"41";
             when x"009" => D <= x"E5";
             when x"00A" => D <= x"D1";
             when x"00B" => D <= x"21";
             when x"00C" => D <= x"E0";
             when x"00D" => D <= x"FF";
             when x"00E" => D <= x"7A";
             when x"00F" => D <= x"77";
             when x"010" => D <= x"23";
             when x"011" => D <= x"7B";
             when x"012" => D <= x"77";
             when x"013" => D <= x"23";
             when x"014" => D <= x"3E";
             when x"015" => D <= x"43";
             when x"016" => D <= x"32";
             when x"017" => D <= x"00";
             when x"018" => D <= x"40";
             when x"019" => D <= x"3E";
             when x"01A" => D <= x"20";
             when x"01B" => D <= x"3A";
             when x"01C" => D <= x"00";
             when x"01D" => D <= x"40";
             when x"01E" => D <= x"77";
             when x"01F" => D <= x"23";
             when x"020" => D <= x"3E";
             when x"021" => D <= x"44";
             when x"022" => D <= x"32";
             when x"023" => D <= x"F7";
             when x"024" => D <= x"4C";
             when x"025" => D <= x"3E";
             when x"026" => D <= x"20";
             when x"027" => D <= x"3A";
             when x"028" => D <= x"7F";
             when x"029" => D <= x"4C";
             when x"02A" => D <= x"77";
             when x"02B" => D <= x"23";
             when x"02C" => D <= x"E5";
             when x"02D" => D <= x"11";
             when x"02E" => D <= x"88";
             when x"02F" => D <= x"4C";
             when x"030" => D <= x"21";
             when x"031" => D <= x"78";
             when x"032" => D <= x"00";
             when x"033" => D <= x"01";
             when x"034" => D <= x"08";
             when x"035" => D <= x"00";
             when x"036" => D <= x"ED";
             when x"037" => D <= x"B0";
             when x"038" => D <= x"3E";
             when x"039" => D <= x"01";
             when x"03A" => D <= x"32";
             when x"03B" => D <= x"13";
             when x"03C" => D <= x"40";
             when x"03D" => D <= x"E1";
             when x"03E" => D <= x"77";
             when x"03F" => D <= x"23";
             when x"040" => D <= x"3E";
             when x"041" => D <= x"45";
             when x"042" => D <= x"32";
             when x"043" => D <= x"00";
             when x"044" => D <= x"60";
             when x"045" => D <= x"3E";
             when x"046" => D <= x"20";
             when x"047" => D <= x"3A";
             when x"048" => D <= x"00";
             when x"049" => D <= x"60";
             when x"04A" => D <= x"77";
             when x"04B" => D <= x"23";
             when x"04C" => D <= x"3E";
             when x"04D" => D <= x"46";
             when x"04E" => D <= x"32";
             when x"04F" => D <= x"FF";
             when x"050" => D <= x"DF";
             when x"051" => D <= x"3E";
             when x"052" => D <= x"20";
             when x"053" => D <= x"3A";
             when x"054" => D <= x"FF";
             when x"055" => D <= x"DF";
             when x"056" => D <= x"77";
             when x"057" => D <= x"23";
             when x"058" => D <= x"3E";
             when x"059" => D <= x"47";
             when x"05A" => D <= x"77";
             when x"05B" => D <= x"23";
             when x"05C" => D <= x"3E";
             when x"05D" => D <= x"4B";
             when x"05E" => D <= x"32";
             when x"05F" => D <= x"16";
             when x"060" => D <= x"40";
             when x"061" => D <= x"77";
             when x"062" => D <= x"3E";
             when x"063" => D <= x"01";
             when x"064" => D <= x"D3";
             when x"065" => D <= x"01";
             when x"066" => D <= x"C3";
             when x"067" => D <= x"66";
             when x"068" => D <= x"00";
             when x"069" => D <= x"21";
             when x"06A" => D <= x"00";
             when x"06B" => D <= x"40";
             when x"06C" => D <= x"3E";
             when x"06D" => D <= x"20";
             when x"06E" => D <= x"77";
             when x"06F" => D <= x"11";
             when x"070" => D <= x"01";
             when x"071" => D <= x"40";
             when x"072" => D <= x"01";
             when x"073" => D <= x"7F";
             when x"074" => D <= x"0C";
             when x"075" => D <= x"ED";
             when x"076" => D <= x"B0";
             when x"077" => D <= x"C9";
             when x"078" => D <= x"7C";
             when x"079" => D <= x"C6";
             when x"07A" => D <= x"DE";
             when x"07B" => D <= x"DE";
             when x"07C" => D <= x"DE";
             when x"07D" => D <= x"C0";
             when x"07E" => D <= x"78";
             when x"07F" => D <= x"00";
             when others => D <="ZZZZZZZZ";
        end case;
 end if;
end process;
end;
