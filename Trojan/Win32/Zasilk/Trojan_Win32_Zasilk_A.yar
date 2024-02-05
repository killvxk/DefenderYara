
rule Trojan_Win32_Zasilk_A{
	meta:
		description = "Trojan:Win32/Zasilk.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 68 00 6f 00 77 00 53 00 75 00 70 00 65 00 72 00 48 00 69 00 64 00 64 00 65 00 6e 00 } //01 00 
		$a_01_1 = {4d 00 52 00 48 00 45 00 4c 00 4c 00 } //01 00 
		$a_01_2 = {5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 2e 00 68 00 74 00 74 00 } //01 00 
		$a_01_3 = {53 00 79 00 73 00 74 00 65 00 6d 00 20 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 } //01 00 
		$a_01_4 = {6c 00 6e 00 6b 00 66 00 69 00 6c 00 65 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //01 00 
		$a_01_5 = {4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 41 00 65 00 44 00 65 00 62 00 75 00 67 00 } //01 00 
		$a_01_6 = {30 00 31 00 30 00 30 00 20 00 34 00 44 00 20 00 35 00 41 00 20 00 33 00 36 00 20 00 30 00 31 00 20 00 30 00 31 00 20 00 30 00 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}