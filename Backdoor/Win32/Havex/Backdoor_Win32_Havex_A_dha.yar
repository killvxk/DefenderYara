
rule Backdoor_Win32_Havex_A_dha{
	meta:
		description = "Backdoor:Win32/Havex.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 6d 00 20 00 77 00 61 00 73 00 20 00 73 00 74 00 61 00 72 00 74 00 65 00 64 00 20 00 61 00 74 00 20 00 25 00 30 00 32 00 69 00 3a 00 25 00 30 00 32 00 69 00 3a 00 25 00 30 00 32 00 69 00 } //01 00 
		$a_01_1 = {53 00 74 00 61 00 72 00 74 00 20 00 66 00 69 00 6e 00 67 00 69 00 6e 00 67 00 20 00 6f 00 66 00 20 00 4c 00 41 00 4e 00 20 00 68 00 6f 00 73 00 74 00 73 00 } //01 00 
		$a_01_2 = {53 00 74 00 61 00 72 00 74 00 20 00 66 00 69 00 6e 00 67 00 69 00 6e 00 67 00 20 00 6f 00 66 00 20 00 4f 00 50 00 43 00 20 00 53 00 65 00 72 00 76 00 65 00 72 00 73 00 } //01 00 
		$a_01_3 = {4f 00 50 00 43 00 20 00 53 00 65 00 72 00 76 00 65 00 72 00 73 00 20 00 6e 00 6f 00 74 00 20 00 66 00 6f 00 75 00 6e 00 64 00 2e 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 6d 00 20 00 66 00 69 00 6e 00 69 00 73 00 68 00 65 00 64 00 } //01 00 
		$a_01_4 = {4f 00 50 00 43 00 20 00 53 00 65 00 72 00 76 00 65 00 72 00 5b 00 25 00 73 00 5c 00 25 00 73 00 5d 00 20 00 76 00 25 00 69 00 2e 00 25 00 69 00 28 00 62 00 25 00 69 00 29 00 } //01 00 
		$a_01_5 = {4f 00 50 00 43 00 53 00 65 00 72 00 76 00 65 00 72 00 25 00 30 00 32 00 69 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_6 = {4d 00 54 00 4d 00 78 00 4d 00 6a 00 4d 00 78 00 4d 00 67 00 3d 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}