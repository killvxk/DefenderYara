
rule Worm_Win32_Autorun_C{
	meta:
		description = "Worm:Win32/Autorun.C,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 04 00 00 0a 00 "
		
	strings :
		$a_02_0 = {5c 00 66 00 61 00 63 00 6b 00 20 00 4d 00 73 00 6e 00 5c 00 90 02 20 76 00 62 00 53 00 65 00 6e 00 64 00 4d 00 61 00 69 00 6c 00 2e 00 76 00 62 00 70 00 90 00 } //0a 00 
		$a_01_1 = {56 49 44 49 4f 48 4f 4d 45 00 33 33 66 00 33 33 56 49 44 49 4f 20 48 4f 4d 45 00 } //01 00 
		$a_00_2 = {63 6c 73 53 65 6e 64 4d 61 69 6c } //01 00 
		$a_00_3 = {63 6f 70 79 74 6f 64 72 69 76 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Worm_Win32_Autorun_C_2{
	meta:
		description = "Worm:Win32/Autorun.C,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00 
		$a_00_1 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_00_2 = {4d 00 63 00 52 00 65 00 67 00 57 00 69 00 7a 00 7a 00 } //01 00 
		$a_00_3 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00 
		$a_00_4 = {5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 } //01 00 
		$a_00_5 = {73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 4d 00 63 00 52 00 65 00 67 00 57 00 69 00 7a 00 7a 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_6 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 41 00 75 00 74 00 6f 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 4d 00 63 00 52 00 65 00 67 00 57 00 69 00 7a 00 7a 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_7 = {48 00 4b 00 45 00 59 00 5f 00 44 00 59 00 4e 00 5f 00 44 00 41 00 54 00 41 00 } //00 00 
	condition:
		any of ($a_*)
 
}