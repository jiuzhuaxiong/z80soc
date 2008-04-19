library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
        port(
                Clk             : in std_logic;
                A               : in std_logic_vector(15 downto 0);
                D               : out std_logic_vector(7 downto 0)
        );
end rom;

architecture rtl of rom is
begin

process (Clk)
begin
 if Clk'event and Clk = '1' then
        case A is
             when x"0000" => D <= x"31";
             when x"0001" => D <= x"FF";
             when x"0002" => D <= x"FF";
             when x"0003" => D <= x"CD";
             when x"0004" => D <= x"C7";
             when x"0005" => D <= x"00";
             when x"0006" => D <= x"21";
             when x"0007" => D <= x"32";
             when x"0008" => D <= x"20";
             when x"0009" => D <= x"11";
             when x"000A" => D <= x"0E";
             when x"000B" => D <= x"01";
             when x"000C" => D <= x"CD";
             when x"000D" => D <= x"D7";
             when x"000E" => D <= x"00";
             when x"000F" => D <= x"21";
             when x"0010" => D <= x"5A";
             when x"0011" => D <= x"20";
             when x"0012" => D <= x"11";
             when x"0013" => D <= x"21";
             when x"0014" => D <= x"01";
             when x"0015" => D <= x"CD";
             when x"0016" => D <= x"D7";
             when x"0017" => D <= x"00";
             when x"0018" => D <= x"CD";
             when x"0019" => D <= x"E8";
             when x"001A" => D <= x"00";
             when x"001B" => D <= x"21";
             when x"001C" => D <= x"46";
             when x"001D" => D <= x"21";
             when x"001E" => D <= x"11";
             when x"001F" => D <= x"34";
             when x"0020" => D <= x"01";
             when x"0021" => D <= x"CD";
             when x"0022" => D <= x"D7";
             when x"0023" => D <= x"00";
             when x"0024" => D <= x"21";
             when x"0025" => D <= x"96";
             when x"0026" => D <= x"21";
             when x"0027" => D <= x"11";
             when x"0028" => D <= x"50";
             when x"0029" => D <= x"01";
             when x"002A" => D <= x"CD";
             when x"002B" => D <= x"D7";
             when x"002C" => D <= x"00";
             when x"002D" => D <= x"21";
             when x"002E" => D <= x"E6";
             when x"002F" => D <= x"21";
             when x"0030" => D <= x"11";
             when x"0031" => D <= x"6D";
             when x"0032" => D <= x"01";
             when x"0033" => D <= x"CD";
             when x"0034" => D <= x"D7";
             when x"0035" => D <= x"00";
             when x"0036" => D <= x"21";
             when x"0037" => D <= x"36";
             when x"0038" => D <= x"22";
             when x"0039" => D <= x"11";
             when x"003A" => D <= x"8A";
             when x"003B" => D <= x"01";
             when x"003C" => D <= x"CD";
             when x"003D" => D <= x"D7";
             when x"003E" => D <= x"00";
             when x"003F" => D <= x"21";
             when x"0040" => D <= x"5E";
             when x"0041" => D <= x"22";
             when x"0042" => D <= x"11";
             when x"0043" => D <= x"9E";
             when x"0044" => D <= x"01";
             when x"0045" => D <= x"CD";
             when x"0046" => D <= x"D7";
             when x"0047" => D <= x"00";
             when x"0048" => D <= x"DB";
             when x"0049" => D <= x"20";
             when x"004A" => D <= x"32";
             when x"004B" => D <= x"00";
             when x"004C" => D <= x"E0";
             when x"004D" => D <= x"11";
             when x"004E" => D <= x"D6";
             when x"004F" => D <= x"22";
             when x"0050" => D <= x"01";
             when x"0051" => D <= x"1E";
             when x"0052" => D <= x"00";
             when x"0053" => D <= x"CD";
             when x"0054" => D <= x"DF";
             when x"0055" => D <= x"00";
             when x"0056" => D <= x"FE";
             when x"0057" => D <= x"41";
             when x"0058" => D <= x"28";
             when x"0059" => D <= x"0B";
             when x"005A" => D <= x"D3";
             when x"005B" => D <= x"11";
             when x"005C" => D <= x"12";
             when x"005D" => D <= x"13";
             when x"005E" => D <= x"0B";
             when x"005F" => D <= x"78";
             when x"0060" => D <= x"B1";
             when x"0061" => D <= x"28";
             when x"0062" => D <= x"EA";
             when x"0063" => D <= x"18";
             when x"0064" => D <= x"EE";
             when x"0065" => D <= x"21";
             when x"0066" => D <= x"00";
             when x"0067" => D <= x"40";
             when x"0068" => D <= x"3E";
             when x"0069" => D <= x"00";
             when x"006A" => D <= x"77";
             when x"006B" => D <= x"23";
             when x"006C" => D <= x"3C";
             when x"006D" => D <= x"20";
             when x"006E" => D <= x"FB";
             when x"006F" => D <= x"3E";
             when x"0070" => D <= x"01";
             when x"0071" => D <= x"D3";
             when x"0072" => D <= x"01";
             when x"0073" => D <= x"CD";
             when x"0074" => D <= x"B9";
             when x"0075" => D <= x"00";
             when x"0076" => D <= x"CD";
             when x"0077" => D <= x"B9";
             when x"0078" => D <= x"00";
             when x"0079" => D <= x"CD";
             when x"007A" => D <= x"B9";
             when x"007B" => D <= x"00";
             when x"007C" => D <= x"CD";
             when x"007D" => D <= x"A6";
             when x"007E" => D <= x"00";
             when x"007F" => D <= x"CD";
             when x"0080" => D <= x"B9";
             when x"0081" => D <= x"00";
             when x"0082" => D <= x"CD";
             when x"0083" => D <= x"A6";
             when x"0084" => D <= x"00";
             when x"0085" => D <= x"21";
             when x"0086" => D <= x"00";
             when x"0087" => D <= x"40";
             when x"0088" => D <= x"7C";
             when x"0089" => D <= x"D3";
             when x"008A" => D <= x"11";
             when x"008B" => D <= x"7D";
             when x"008C" => D <= x"D3";
             when x"008D" => D <= x"10";
             when x"008E" => D <= x"7E";
             when x"008F" => D <= x"D3";
             when x"0090" => D <= x"01";
             when x"0091" => D <= x"CD";
             when x"0092" => D <= x"B9";
             when x"0093" => D <= x"00";
             when x"0094" => D <= x"23";
             when x"0095" => D <= x"7E";
             when x"0096" => D <= x"FE";
             when x"0097" => D <= x"FF";
             when x"0098" => D <= x"20";
             when x"0099" => D <= x"EE";
             when x"009A" => D <= x"3E";
             when x"009B" => D <= x"00";
             when x"009C" => D <= x"D3";
             when x"009D" => D <= x"01";
             when x"009E" => D <= x"D3";
             when x"009F" => D <= x"02";
             when x"00A0" => D <= x"CD";
             when x"00A1" => D <= x"A6";
             when x"00A2" => D <= x"00";
             when x"00A3" => D <= x"C3";
             when x"00A4" => D <= x"03";
             when x"00A5" => D <= x"00";
             when x"00A6" => D <= x"CD";
             when x"00A7" => D <= x"B9";
             when x"00A8" => D <= x"00";
             when x"00A9" => D <= x"DB";
             when x"00AA" => D <= x"30";
             when x"00AB" => D <= x"D3";
             when x"00AC" => D <= x"10";
             when x"00AD" => D <= x"FE";
             when x"00AE" => D <= x"0E";
             when x"00AF" => D <= x"20";
             when x"00B0" => D <= x"F5";
             when x"00B1" => D <= x"C9";
             when x"00B2" => D <= x"3A";
             when x"00B3" => D <= x"00";
             when x"00B4" => D <= x"E0";
             when x"00B5" => D <= x"3D";
             when x"00B6" => D <= x"20";
             when x"00B7" => D <= x"FD";
             when x"00B8" => D <= x"C9";
             when x"00B9" => D <= x"3A";
             when x"00BA" => D <= x"00";
             when x"00BB" => D <= x"E0";
             when x"00BC" => D <= x"F5";
             when x"00BD" => D <= x"3E";
             when x"00BE" => D <= x"FF";
             when x"00BF" => D <= x"3D";
             when x"00C0" => D <= x"20";
             when x"00C1" => D <= x"FD";
             when x"00C2" => D <= x"F1";
             when x"00C3" => D <= x"3D";
             when x"00C4" => D <= x"20";
             when x"00C5" => D <= x"F6";
             when x"00C6" => D <= x"C9";
             when x"00C7" => D <= x"21";
             when x"00C8" => D <= x"00";
             when x"00C9" => D <= x"20";
             when x"00CA" => D <= x"11";
             when x"00CB" => D <= x"B0";
             when x"00CC" => D <= x"04";
             when x"00CD" => D <= x"3E";
             when x"00CE" => D <= x"20";
             when x"00CF" => D <= x"77";
             when x"00D0" => D <= x"23";
             when x"00D1" => D <= x"1B";
             when x"00D2" => D <= x"7A";
             when x"00D3" => D <= x"B3";
             when x"00D4" => D <= x"20";
             when x"00D5" => D <= x"F7";
             when x"00D6" => D <= x"C9";
             when x"00D7" => D <= x"1A";
             when x"00D8" => D <= x"B7";
             when x"00D9" => D <= x"C8";
             when x"00DA" => D <= x"77";
             when x"00DB" => D <= x"23";
             when x"00DC" => D <= x"13";
             when x"00DD" => D <= x"18";
             when x"00DE" => D <= x"F8";
             when x"00DF" => D <= x"CD";
             when x"00E0" => D <= x"B9";
             when x"00E1" => D <= x"00";
             when x"00E2" => D <= x"DB";
             when x"00E3" => D <= x"80";
             when x"00E4" => D <= x"B7";
             when x"00E5" => D <= x"28";
             when x"00E6" => D <= x"F8";
             when x"00E7" => D <= x"C9";
             when x"00E8" => D <= x"11";
             when x"00E9" => D <= x"BD";
             when x"00EA" => D <= x"01";
             when x"00EB" => D <= x"21";
             when x"00EC" => D <= x"F5";
             when x"00ED" => D <= x"20";
             when x"00EE" => D <= x"CD";
             when x"00EF" => D <= x"D7";
             when x"00F0" => D <= x"00";
             when x"00F1" => D <= x"21";
             when x"00F2" => D <= x"1D";
             when x"00F3" => D <= x"21";
             when x"00F4" => D <= x"3E";
             when x"00F5" => D <= x"0A";
             when x"00F6" => D <= x"11";
             when x"00F7" => D <= x"FF";
             when x"00F8" => D <= x"01";
             when x"00F9" => D <= x"F5";
             when x"00FA" => D <= x"E5";
             when x"00FB" => D <= x"CD";
             when x"00FC" => D <= x"D7";
             when x"00FD" => D <= x"00";
             when x"00FE" => D <= x"E1";
             when x"00FF" => D <= x"F1";
             when x"0100" => D <= x"01";
             when x"0101" => D <= x"28";
             when x"0102" => D <= x"00";
             when x"0103" => D <= x"09";
             when x"0104" => D <= x"3D";
             when x"0105" => D <= x"20";
             when x"0106" => D <= x"EF";
             when x"0107" => D <= x"11";
             when x"0108" => D <= x"DE";
             when x"0109" => D <= x"01";
             when x"010A" => D <= x"CD";
             when x"010B" => D <= x"D7";
             when x"010C" => D <= x"00";
             when x"010D" => D <= x"C9";
             when x"010E" => D <= x"5A";
             when x"010F" => D <= x"38";
             when x"0110" => D <= x"30";
             when x"0111" => D <= x"20";
             when x"0112" => D <= x"53";
             when x"0113" => D <= x"59";
             when x"0114" => D <= x"53";
             when x"0115" => D <= x"54";
             when x"0116" => D <= x"45";
             when x"0117" => D <= x"4D";
             when x"0118" => D <= x"20";
             when x"0119" => D <= x"4F";
             when x"011A" => D <= x"4E";
             when x"011B" => D <= x"20";
             when x"011C" => D <= x"43";
             when x"011D" => D <= x"48";
             when x"011E" => D <= x"49";
             when x"011F" => D <= x"50";
             when x"0120" => D <= x"00";
             when x"0121" => D <= x"52";
             when x"0122" => D <= x"4F";
             when x"0123" => D <= x"4E";
             when x"0124" => D <= x"49";
             when x"0125" => D <= x"56";
             when x"0126" => D <= x"4F";
             when x"0127" => D <= x"4E";
             when x"0128" => D <= x"20";
             when x"0129" => D <= x"43";
             when x"012A" => D <= x"4F";
             when x"012B" => D <= x"53";
             when x"012C" => D <= x"54";
             when x"012D" => D <= x"41";
             when x"012E" => D <= x"20";
             when x"012F" => D <= x"32";
             when x"0130" => D <= x"30";
             when x"0131" => D <= x"30";
             when x"0132" => D <= x"38";
             when x"0133" => D <= x"00";
             when x"0134" => D <= x"20";
             when x"0135" => D <= x"20";
             when x"0136" => D <= x"7C";
             when x"0137" => D <= x"21";
             when x"0138" => D <= x"23";
             when x"0139" => D <= x"24";
             when x"013A" => D <= x"25";
             when x"013B" => D <= x"26";
             when x"013C" => D <= x"2F";
             when x"013D" => D <= x"28";
             when x"013E" => D <= x"29";
             when x"013F" => D <= x"3D";
             when x"0140" => D <= x"3F";
             when x"0141" => D <= x"2A";
             when x"0142" => D <= x"60";
             when x"0143" => D <= x"2B";
             when x"0144" => D <= x"B4";
             when x"0145" => D <= x"E7";
             when x"0146" => D <= x"7E";
             when x"0147" => D <= x"5E";
             when x"0148" => D <= x"2C";
             when x"0149" => D <= x"2E";
             when x"014A" => D <= x"3B";
             when x"014B" => D <= x"3A";
             when x"014C" => D <= x"5C";
             when x"014D" => D <= x"3C";
             when x"014E" => D <= x"3E";
             when x"014F" => D <= x"00";
             when x"0150" => D <= x"20";
             when x"0151" => D <= x"20";
             when x"0152" => D <= x"41";
             when x"0153" => D <= x"42";
             when x"0154" => D <= x"43";
             when x"0155" => D <= x"44";
             when x"0156" => D <= x"45";
             when x"0157" => D <= x"46";
             when x"0158" => D <= x"47";
             when x"0159" => D <= x"48";
             when x"015A" => D <= x"49";
             when x"015B" => D <= x"4A";
             when x"015C" => D <= x"4B";
             when x"015D" => D <= x"4C";
             when x"015E" => D <= x"4D";
             when x"015F" => D <= x"4E";
             when x"0160" => D <= x"4F";
             when x"0161" => D <= x"50";
             when x"0162" => D <= x"51";
             when x"0163" => D <= x"52";
             when x"0164" => D <= x"53";
             when x"0165" => D <= x"54";
             when x"0166" => D <= x"55";
             when x"0167" => D <= x"56";
             when x"0168" => D <= x"57";
             when x"0169" => D <= x"58";
             when x"016A" => D <= x"59";
             when x"016B" => D <= x"5A";
             when x"016C" => D <= x"00";
             when x"016D" => D <= x"20";
             when x"016E" => D <= x"20";
             when x"016F" => D <= x"61";
             when x"0170" => D <= x"62";
             when x"0171" => D <= x"63";
             when x"0172" => D <= x"64";
             when x"0173" => D <= x"65";
             when x"0174" => D <= x"66";
             when x"0175" => D <= x"67";
             when x"0176" => D <= x"68";
             when x"0177" => D <= x"69";
             when x"0178" => D <= x"6A";
             when x"0179" => D <= x"6B";
             when x"017A" => D <= x"6C";
             when x"017B" => D <= x"6D";
             when x"017C" => D <= x"6E";
             when x"017D" => D <= x"6F";
             when x"017E" => D <= x"70";
             when x"017F" => D <= x"71";
             when x"0180" => D <= x"72";
             when x"0181" => D <= x"73";
             when x"0182" => D <= x"74";
             when x"0183" => D <= x"75";
             when x"0184" => D <= x"76";
             when x"0185" => D <= x"77";
             when x"0186" => D <= x"78";
             when x"0187" => D <= x"79";
             when x"0188" => D <= x"7A";
             when x"0189" => D <= x"00";
             when x"018A" => D <= x"20";
             when x"018B" => D <= x"20";
             when x"018C" => D <= x"20";
             when x"018D" => D <= x"20";
             when x"018E" => D <= x"20";
             when x"018F" => D <= x"20";
             when x"0190" => D <= x"20";
             when x"0191" => D <= x"20";
             when x"0192" => D <= x"20";
             when x"0193" => D <= x"30";
             when x"0194" => D <= x"31";
             when x"0195" => D <= x"32";
             when x"0196" => D <= x"33";
             when x"0197" => D <= x"34";
             when x"0198" => D <= x"35";
             when x"0199" => D <= x"36";
             when x"019A" => D <= x"37";
             when x"019B" => D <= x"38";
             when x"019C" => D <= x"39";
             when x"019D" => D <= x"00";
             when x"019E" => D <= x"02";
             when x"019F" => D <= x"03";
             when x"01A0" => D <= x"04";
             when x"01A1" => D <= x"0B";
             when x"01A2" => D <= x"0C";
             when x"01A3" => D <= x"0D";
             when x"01A4" => D <= x"0E";
             when x"01A5" => D <= x"12";
             when x"01A6" => D <= x"18";
             when x"01A7" => D <= x"19";
             when x"01A8" => D <= x"1A";
             when x"01A9" => D <= x"1B";
             when x"01AA" => D <= x"E8";
             when x"01AB" => D <= x"E9";
             when x"01AC" => D <= x"EB";
             when x"01AD" => D <= x"BB";
             when x"01AE" => D <= x"BC";
             when x"01AF" => D <= x"8A";
             when x"01B0" => D <= x"86";
             when x"01B1" => D <= x"87";
             when x"01B2" => D <= x"81";
             when x"01B3" => D <= x"80";
             when x"01B4" => D <= x"01";
             when x"01B5" => D <= x"06";
             when x"01B6" => D <= x"07";
             when x"01B7" => D <= x"08";
             when x"01B8" => D <= x"09";
             when x"01B9" => D <= x"0A";
             when x"01BA" => D <= x"1D";
             when x"01BB" => D <= x"1F";
             when x"01BC" => D <= x"00";
             when x"01BD" => D <= x"C9";
             when x"01BE" => D <= x"CD";
             when x"01BF" => D <= x"CD";
             when x"01C0" => D <= x"CD";
             when x"01C1" => D <= x"CD";
             when x"01C2" => D <= x"CD";
             when x"01C3" => D <= x"CD";
             when x"01C4" => D <= x"CD";
             when x"01C5" => D <= x"CD";
             when x"01C6" => D <= x"CD";
             when x"01C7" => D <= x"CD";
             when x"01C8" => D <= x"CD";
             when x"01C9" => D <= x"CD";
             when x"01CA" => D <= x"CD";
             when x"01CB" => D <= x"CD";
             when x"01CC" => D <= x"CD";
             when x"01CD" => D <= x"CD";
             when x"01CE" => D <= x"CD";
             when x"01CF" => D <= x"CD";
             when x"01D0" => D <= x"CD";
             when x"01D1" => D <= x"CD";
             when x"01D2" => D <= x"CD";
             when x"01D3" => D <= x"CD";
             when x"01D4" => D <= x"CD";
             when x"01D5" => D <= x"CD";
             when x"01D6" => D <= x"CD";
             when x"01D7" => D <= x"CD";
             when x"01D8" => D <= x"CD";
             when x"01D9" => D <= x"CD";
             when x"01DA" => D <= x"CD";
             when x"01DB" => D <= x"CD";
             when x"01DC" => D <= x"BB";
             when x"01DD" => D <= x"00";
             when x"01DE" => D <= x"C8";
             when x"01DF" => D <= x"CD";
             when x"01E0" => D <= x"CD";
             when x"01E1" => D <= x"CD";
             when x"01E2" => D <= x"CD";
             when x"01E3" => D <= x"CD";
             when x"01E4" => D <= x"CD";
             when x"01E5" => D <= x"CD";
             when x"01E6" => D <= x"CD";
             when x"01E7" => D <= x"CD";
             when x"01E8" => D <= x"CD";
             when x"01E9" => D <= x"CD";
             when x"01EA" => D <= x"CD";
             when x"01EB" => D <= x"CD";
             when x"01EC" => D <= x"CD";
             when x"01ED" => D <= x"CD";
             when x"01EE" => D <= x"CD";
             when x"01EF" => D <= x"CD";
             when x"01F0" => D <= x"CD";
             when x"01F1" => D <= x"CD";
             when x"01F2" => D <= x"CD";
             when x"01F3" => D <= x"CD";
             when x"01F4" => D <= x"CD";
             when x"01F5" => D <= x"CD";
             when x"01F6" => D <= x"CD";
             when x"01F7" => D <= x"CD";
             when x"01F8" => D <= x"CD";
             when x"01F9" => D <= x"CD";
             when x"01FA" => D <= x"CD";
             when x"01FB" => D <= x"CD";
             when x"01FC" => D <= x"CD";
             when x"01FD" => D <= x"BC";
             when x"01FE" => D <= x"00";
             when x"01FF" => D <= x"BA";
             when x"0200" => D <= x"20";
             when x"0201" => D <= x"20";
             when x"0202" => D <= x"20";
             when x"0203" => D <= x"20";
             when x"0204" => D <= x"20";
             when x"0205" => D <= x"20";
             when x"0206" => D <= x"20";
             when x"0207" => D <= x"20";
             when x"0208" => D <= x"20";
             when x"0209" => D <= x"20";
             when x"020A" => D <= x"20";
             when x"020B" => D <= x"20";
             when x"020C" => D <= x"20";
             when x"020D" => D <= x"20";
             when x"020E" => D <= x"20";
             when x"020F" => D <= x"20";
             when x"0210" => D <= x"20";
             when x"0211" => D <= x"20";
             when x"0212" => D <= x"20";
             when x"0213" => D <= x"20";
             when x"0214" => D <= x"20";
             when x"0215" => D <= x"20";
             when x"0216" => D <= x"20";
             when x"0217" => D <= x"20";
             when x"0218" => D <= x"20";
             when x"0219" => D <= x"20";
             when x"021A" => D <= x"20";
             when x"021B" => D <= x"20";
             when x"021C" => D <= x"20";
             when x"021D" => D <= x"20";
             when x"021E" => D <= x"BA";
             when x"021F" => D <= x"00";
             when others => D <= x"00";
        end case;
 end if;
end process;
end;
