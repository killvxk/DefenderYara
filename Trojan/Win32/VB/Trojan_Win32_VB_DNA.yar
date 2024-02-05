
rule Trojan_Win32_VB_DNA{
	meta:
		description = "Trojan:Win32/VB.DNA,SIGNATURE_TYPE_PEHSTR_EXT,33 00 33 00 09 00 00 0a 00 "
		
	strings :
		$a_00_0 = {56 49 52 55 53 } //0a 00 
		$a_00_1 = {54 72 6f 6a 61 6e } //0a 00 
		$a_01_2 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00 
		$a_00_3 = {32 00 38 00 43 00 34 00 43 00 38 00 32 00 30 00 2d 00 34 00 30 00 31 00 41 00 2d 00 31 00 30 00 31 00 42 00 2d 00 41 00 33 00 43 00 39 00 2d 00 30 00 38 00 30 00 30 00 32 00 42 00 32 00 46 00 34 00 39 00 46 00 42 00 } //0a 00 
		$a_00_4 = {44 00 3a 00 5c 00 76 00 69 00 72 00 75 00 73 00 74 00 72 00 6f 00 6a 00 61 00 6e 00 5c 00 68 00 61 00 72 00 70 00 6f 00 74 00 69 00 6e 00 66 00 65 00 6b 00 73 00 69 00 65 00 78 00 65 00 5c 00 68 00 61 00 72 00 70 00 6f 00 74 00 69 00 6e 00 66 00 65 00 6b 00 73 00 69 00 65 00 78 00 65 00 5c 00 53 00 45 00 52 00 56 00 45 00 52 00 2e 00 56 00 42 00 50 00 } //01 00 
		$a_00_5 = {52 00 55 00 4e 00 44 00 4c 00 4c 00 33 00 32 00 2e 00 45 00 58 00 45 00 } //01 00 
		$a_00_6 = {77 61 76 65 4f 75 74 47 65 74 4e 75 6d 44 65 76 73 } //01 00 
		$a_01_7 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00 
		$a_00_8 = {73 00 68 00 65 00 6c 00 6c 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 2c 00 4f 00 70 00 65 00 6e 00 41 00 73 00 5f 00 52 00 75 00 6e 00 44 00 4c 00 4c 00 } //00 00 
	condition:
		any of ($a_*)
 
}