
rule Trojan_Win32_ZLoader_A_{
	meta:
		description = "Trojan:Win32/ZLoader.A!!ZLoader.A,SIGNATURE_TYPE_ARHSTR_EXT,0b 00 0b 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {83 c4 04 84 c0 74 90 01 01 e8 90 01 04 e8 90 01 04 e8 90 01 04 e8 90 02 1e 68 90 01 04 68 90 01 04 e8 90 00 } //01 00 
		$a_03_1 = {8b 55 08 89 d0 35 90 02 08 0f af ca 90 00 } //01 00 
		$a_03_2 = {8b 55 08 89 d0 35 90 02 08 80 cb 90 00 } //01 00 
		$a_03_3 = {81 ec 70 03 00 00 8b 90 01 02 8b 90 01 02 68 6f 03 00 00 90 02 08 83 c4 04 89 90 01 01 89 90 00 } //01 00 
		$a_03_4 = {6a 00 ff d0 85 c0 90 09 14 00 90 02 08 68 90 01 04 6a 00 6a 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}