
rule PWS_Win32_Lolyda_AK{
	meta:
		description = "PWS:Win32/Lolyda.AK,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 6e 66 72 6d 62 2e 61 73 70 00 } //01 00 
		$a_01_1 = {73 75 63 63 6d 62 } //01 00  succmb
		$a_01_2 = {26 6d 62 68 3d c3 dc 00 } //02 00 
		$a_03_3 = {8a 04 33 55 04 90 01 01 34 90 01 01 2c 90 01 01 47 88 06 46 ff 15 90 01 04 3b f8 7c e8 90 00 } //01 00 
		$a_03_4 = {2b de c6 06 e9 90 02 02 8d 83 90 01 04 90 02 01 8b c8 8b d0 c1 e9 08 88 46 01 88 4e 02 90 00 } //01 00 
		$a_03_5 = {c6 06 e9 2b c6 90 02 02 83 e8 05 89 46 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}