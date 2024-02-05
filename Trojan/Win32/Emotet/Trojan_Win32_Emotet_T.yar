
rule Trojan_Win32_Emotet_T{
	meta:
		description = "Trojan:Win32/Emotet.T,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 61 6d 70 6c 65 00 6d 6c 77 72 5f 73 6d 70 6c 00 61 72 74 69 66 61 63 74 2e 65 78 65 00 63 } //01 00 
		$a_01_1 = {54 45 51 55 49 4c 41 42 4f 4f 4d 42 4f 4f 4d 00 57 69 6c 62 65 72 74 } //01 00 
		$a_01_2 = {4b 4c 4f 4e 45 5f 58 36 34 2d 50 43 00 4a 6f 68 6e 20 44 6f 65 00 42 45 41 2d 43 48 49 } //01 00 
		$a_01_3 = {5c 00 74 00 61 00 6b 00 65 00 5f 00 73 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 2e 00 70 00 73 00 31 00 00 00 43 00 3a 00 5c 00 6c 00 6f 00 61 00 64 00 64 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_4 = {5c 00 65 00 6d 00 61 00 69 00 6c 00 2e 00 68 00 74 00 6d 00 00 00 43 00 3a 00 5c 00 31 00 32 00 33 00 5c 00 65 00 6d 00 61 00 69 00 6c 00 2e 00 64 00 6f 00 63 00 } //01 00 
		$a_01_5 = {5c 00 61 00 5c 00 66 00 6f 00 6f 00 62 00 61 00 72 00 2e 00 64 00 6f 00 63 00 00 00 43 00 3a 00 5c 00 61 00 5c 00 66 00 6f 00 6f 00 62 00 61 00 72 00 2e 00 67 00 69 00 66 00 } //01 00 
		$a_01_6 = {62 6f 6f 6b 00 66 61 63 65 00 6c 75 63 6b 00 25 58 25 50 } //00 00 
		$a_00_7 = {87 10 00 } //00 6d 
	condition:
		any of ($a_*)
 
}