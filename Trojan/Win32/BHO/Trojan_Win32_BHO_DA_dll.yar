
rule Trojan_Win32_BHO_DA_dll{
	meta:
		description = "Trojan:Win32/BHO.DA!dll,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {2a 6d 6d 73 74 61 74 2a 2e 74 78 74 } //01 00 
		$a_01_1 = {75 64 70 5c 68 6a 6f 62 31 32 33 5c 63 6f 6d } //01 00 
		$a_01_2 = {7b 41 45 31 33 38 36 30 39 2d 41 46 39 46 2d 36 42 42 36 2d 41 36 41 38 2d 32 44 43 35 38 33 44 39 44 46 30 36 7d } //01 00 
		$a_01_3 = {77 77 2e 32 30 36 6d 3b 79 75 69 6f 3f 6f 6b 6c 6f 67 69 } //01 00 
		$a_01_4 = {64 5f 44 65 66 42 67 32 2e 74 78 74 } //01 00 
		$a_01_5 = {43 3a 5c 52 5f 62 6d 54 69 6d 32 2e 66 67 } //01 00 
		$a_03_6 = {4e 65 77 50 6c 75 67 90 02 03 5c 54 69 6d 65 44 6c 6c 5c 7a 6c 75 45 78 70 54 6f 6f 6c 73 2e 70 61 73 90 00 } //01 00 
		$a_03_7 = {72 65 70 2e 65 78 65 90 01 09 52 75 6e 43 6c 69 63 6b 50 72 45 72 72 3a 90 00 } //01 00 
		$a_03_8 = {5b 2d 25 73 25 73 5d 90 02 15 2e 72 65 67 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}