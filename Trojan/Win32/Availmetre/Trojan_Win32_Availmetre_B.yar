
rule Trojan_Win32_Availmetre_B{
	meta:
		description = "Trojan:Win32/Availmetre.B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_01_0 = {74 62 2e 44 4c 4c 00 62 6f 74 6b 6f 6d 61 6e 64 } //01 00 
		$a_03_1 = {66 c7 45 e4 45 00 66 c7 45 e6 58 00 66 c7 45 e8 50 00 90 01 1e 66 c7 45 f4 2e 00 66 c7 45 f6 45 00 66 c7 45 f8 58 00 66 c7 45 fa 45 00 90 00 } //01 00 
		$a_01_2 = {62 6f 74 00 65 78 65 63 00 65 78 69 74 64 6c 6c 00 70 6f 77 65 72 00 78 61 6e 61 00 73 68 65 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Availmetre_B_2{
	meta:
		description = "Trojan:Win32/Availmetre.B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {54 53 2e 64 6c 6c 90 02 06 41 64 64 50 72 6f 63 65 73 73 45 78 63 6c 75 73 69 6f 6e 90 02 06 47 65 74 43 68 61 6e 67 65 52 65 63 74 90 02 06 47 65 74 43 68 61 6e 67 65 64 57 69 6e 64 6f 77 4c 69 73 74 90 00 } //01 00 
		$a_03_1 = {54 56 2e 44 4c 4c 90 02 06 41 64 64 50 72 6f 63 65 73 73 45 78 63 6c 75 73 69 6f 6e 90 02 06 47 65 74 43 68 61 6e 67 65 52 65 63 74 90 02 06 47 65 74 43 68 61 6e 67 65 64 57 69 6e 64 6f 77 4c 69 73 74 90 00 } //01 00 
		$a_01_2 = {55 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 31 3b 20 72 75 3b 20 72 76 3a 31 2e 39 2e 30 2e 31 31 29 20 47 65 63 6b 6f 2f 32 30 30 39 30 36 30 32 31 35 20 46 69 72 65 66 6f 78 2f 33 2e 30 2e 31 31 } //00 00 
	condition:
		any of ($a_*)
 
}