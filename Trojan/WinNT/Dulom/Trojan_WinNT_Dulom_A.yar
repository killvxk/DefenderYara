
rule Trojan_WinNT_Dulom_A{
	meta:
		description = "Trojan:WinNT/Dulom.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {77 78 70 5f 78 38 36 5c 69 33 38 36 5c 65 6e 74 72 79 64 65 6c 2e 70 64 62 } //01 00 
		$a_01_1 = {6e 74 6f 73 6b 72 6e 6c 2e 65 78 65 00 } //01 00 
		$a_01_2 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 48 00 61 00 72 00 64 00 64 00 69 00 73 00 6b 00 56 00 6f 00 6c 00 75 00 6d 00 65 00 31 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 } //01 00 
		$a_01_3 = {41 00 72 00 71 00 75 00 69 00 76 00 6f 00 73 00 20 00 64 00 65 00 20 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 61 00 73 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 67 00 62 00 70 00 6b 00 6d 00 2e 00 } //01 00 
		$a_02_4 = {83 7d 0c 00 75 90 01 01 83 7d 18 00 74 90 01 01 8b 4d 14 0f b7 11 85 d2 74 90 01 01 c7 45 f8 05 00 00 80 8b 45 10 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}