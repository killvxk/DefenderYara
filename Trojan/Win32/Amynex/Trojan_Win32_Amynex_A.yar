
rule Trojan_Win32_Amynex_A{
	meta:
		description = "Trojan:Win32/Amynex.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_1 = {7c 00 66 00 6f 00 72 00 65 00 61 00 63 00 68 00 7b 00 } //01 00 
		$a_00_2 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //01 00 
		$a_02_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 24 00 5f 00 2f 00 90 02 10 2e 00 6a 00 73 00 70 00 3f 00 90 02 10 2a 00 24 00 65 00 6e 00 76 00 3a 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 2a 00 24 00 65 00 6e 00 76 00 3a 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 6e 00 61 00 6d 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Amynex_A_2{
	meta:
		description = "Trojan:Win32/Amynex.A,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_1 = {29 00 2e 00 44 00 6f 00 77 00 6e 00 4c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 } //01 00 
		$a_00_2 = {2e 00 6a 00 73 00 70 00 3f 00 } //01 00 
		$a_00_3 = {27 00 27 00 2b 00 5b 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 5d 00 3a 00 3a 00 4f 00 53 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 2e 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 2e 00 4d 00 61 00 6a 00 6f 00 72 00 29 00 } //01 00 
		$a_00_4 = {29 00 3b 00 62 00 70 00 75 00 20 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Amynex_A_3{
	meta:
		description = "Trojan:Win32/Amynex.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_1 = {29 00 2e 00 44 00 6f 00 77 00 6e 00 4c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 } //01 00 
		$a_02_2 = {2e 00 70 00 68 00 70 00 3f 00 90 02 02 2e 00 90 00 } //01 00 
		$a_00_3 = {2a 00 27 00 2b 00 5b 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 5d 00 3a 00 3a 00 4f 00 53 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 2e 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 2e 00 4d 00 61 00 6a 00 6f 00 72 00 29 00 3b 00 62 00 70 00 75 00 20 00 28 00 27 00 68 00 74 00 74 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Amynex_A_4{
	meta:
		description = "Trojan:Win32/Amynex.A,SIGNATURE_TYPE_CMDHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_1 = {5b 00 4e 00 65 00 74 00 2e 00 44 00 6e 00 73 00 5d 00 3a 00 3a 00 47 00 65 00 74 00 48 00 6f 00 73 00 74 00 41 00 64 00 64 00 72 00 65 00 73 00 73 00 65 00 73 00 28 00 } //01 00 
		$a_00_2 = {29 00 5b 00 30 00 5d 00 2e 00 49 00 50 00 41 00 64 00 64 00 72 00 65 00 73 00 73 00 54 00 6f 00 53 00 74 00 72 00 69 00 6e 00 67 00 2b 00 27 00 } //01 00 
		$a_00_3 = {3d 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 27 00 2b 00 24 00 } //01 00 
		$a_00_4 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 44 00 61 00 74 00 61 00 } //01 00 
		$a_00_5 = {5d 00 3a 00 3a 00 43 00 72 00 65 00 61 00 74 00 65 00 28 00 29 00 2e 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 48 00 61 00 73 00 68 00 28 00 } //01 00 
		$a_00_6 = {7c 00 66 00 6f 00 72 00 65 00 61 00 63 00 68 00 7b 00 } //01 00 
		$a_00_7 = {7b 00 49 00 45 00 58 00 28 00 2d 00 6a 00 6f 00 69 00 6e 00 5b 00 63 00 68 00 61 00 72 00 5b 00 5d 00 5d 00 24 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Amynex_A_5{
	meta:
		description = "Trojan:Win32/Amynex.A,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_1 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 44 00 61 00 74 00 61 00 } //01 00 
		$a_00_2 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //03 00 
		$a_02_3 = {2e 00 6a 00 73 00 70 00 3f 00 90 02 30 3f 00 27 00 2b 00 28 00 40 00 28 00 24 00 65 00 6e 00 76 00 3a 00 43 00 4f 00 4d 00 50 00 55 00 54 00 45 00 52 00 4e 00 41 00 4d 00 45 00 2c 00 24 00 65 00 6e 00 76 00 3a 00 55 00 53 00 45 00 52 00 4e 00 41 00 4d 00 45 00 2c 00 28 00 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 53 00 79 00 73 00 74 00 65 00 6d 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 29 00 2e 00 55 00 55 00 49 00 44 00 2c 00 28 00 72 00 61 00 6e 00 64 00 6f 00 6d 00 29 00 29 00 2d 00 6a 00 6f 00 69 00 6e 00 27 00 2a 00 27 00 29 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Amynex_A_6{
	meta:
		description = "Trojan:Win32/Amynex.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_1 = {3a 00 3a 00 46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 } //01 00 
		$a_02_2 = {2d 00 6a 00 6f 00 69 00 6e 00 90 02 04 5b 00 63 00 68 00 61 00 72 00 5b 00 5d 00 5d 00 24 00 90 00 } //01 00 
		$a_02_3 = {2e 00 6a 00 73 00 70 00 3f 00 90 02 30 3f 00 27 00 2b 00 28 00 40 00 28 00 24 00 65 00 6e 00 76 00 3a 00 43 00 4f 00 4d 00 50 00 55 00 54 00 45 00 52 00 4e 00 41 00 4d 00 45 00 2c 00 24 00 65 00 6e 00 76 00 3a 00 55 00 53 00 45 00 52 00 4e 00 41 00 4d 00 45 00 2c 00 28 00 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 53 00 79 00 73 00 74 00 65 00 6d 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 29 00 2e 00 55 00 55 00 49 00 44 00 2c 00 28 00 72 00 61 00 6e 00 64 00 6f 00 6d 00 29 00 29 00 2d 00 6a 00 6f 00 69 00 6e 00 27 00 2a 00 27 00 29 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}