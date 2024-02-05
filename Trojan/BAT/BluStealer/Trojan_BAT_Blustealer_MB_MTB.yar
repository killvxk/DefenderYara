
rule Trojan_BAT_Blustealer_MB_MTB{
	meta:
		description = "Trojan:BAT/Blustealer.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {08 13 04 16 13 05 11 04 12 05 28 0d 00 00 0a 07 09 18 6f 0e 00 00 0a 06 28 0f 00 00 0a 13 06 08 09 11 06 6f 10 00 00 0a de 0c } //0a 00 
		$a_01_1 = {07 02 07 18 6f 14 00 00 0a 1f 10 28 15 00 00 0a 6f 16 00 00 0a de 20 08 2b e0 28 17 00 00 0a 2b dd 06 2b dc } //05 00 
		$a_01_2 = {57 15 02 08 09 08 00 00 00 5a a4 00 00 14 00 00 01 00 00 00 2b 00 00 00 07 00 00 00 06 00 00 00 13 00 00 00 04 00 00 00 2f 00 00 00 0e 00 00 00 04 00 00 00 02 00 00 00 01 00 00 00 05 00 00 00 01 00 00 00 00 00 97 02 } //05 00 
		$a_01_3 = {57 15 02 08 09 08 00 00 00 10 00 00 00 00 00 00 01 00 00 00 23 00 00 00 07 00 00 00 02 00 00 00 0b 00 00 00 02 00 00 00 26 00 00 00 0e 00 00 00 03 00 00 00 02 00 00 00 01 00 00 00 03 00 00 00 01 00 00 00 00 00 01 00 01 } //01 00 
		$a_01_4 = {3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 31 00 30 00 33 00 } //01 00 
		$a_01_5 = {47 65 74 44 6f 6d 61 69 6e } //00 00 
	condition:
		any of ($a_*)
 
}