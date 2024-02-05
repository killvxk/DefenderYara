
rule Backdoor_Win32_Plugx_S_dha{
	meta:
		description = "Backdoor:Win32/Plugx.S!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 3a 5c 6c 6f 67 5c 68 61 68 61 2e 74 78 74 00 } //01 00 
		$a_01_1 = {70 00 69 00 6e 00 73 00 69 00 64 00 65 00 73 00 68 00 65 00 6c 00 6c 00 63 00 6f 00 64 00 65 00 00 00 } //01 00 
		$a_01_2 = {25 75 73 65 72 70 72 6f 66 69 6c 65 25 5c 49 6e 74 65 6c 6c 6f 67 2e 74 78 74 00 } //01 00 
		$a_01_3 = {69 00 66 00 20 00 79 00 6f 00 75 00 20 00 73 00 65 00 65 00 20 00 6d 00 65 00 20 00 2c 00 74 00 68 00 65 00 20 00 75 00 61 00 63 00 20 00 69 00 73 00 20 00 6e 00 6f 00 74 00 20 00 73 00 75 00 63 00 63 00 65 00 73 00 73 00 66 00 75 00 6c 00 20 00 70 00 61 00 73 00 74 00 21 00 00 00 } //01 00 
		$a_01_4 = {25 00 34 00 2e 00 34 00 64 00 2d 00 25 00 32 00 2e 00 32 00 64 00 2d 00 25 00 32 00 2e 00 32 00 64 00 20 00 25 00 32 00 2e 00 32 00 64 00 3a 00 25 00 32 00 2e 00 32 00 64 00 3a 00 25 00 32 00 2e 00 32 00 64 00 00 00 } //01 00 
		$a_01_5 = {58 50 6c 75 67 4b 65 79 4c 6f 67 67 65 72 2e 63 70 70 00 } //01 00 
		$a_01_6 = {75 70 64 61 74 65 3f 69 64 3d 25 38 2e 38 78 00 } //01 00 
		$a_01_7 = {5b 00 25 00 30 00 2e 00 34 00 64 00 2d 00 25 00 30 00 2e 00 32 00 64 00 2d 00 25 00 30 00 2e 00 32 00 64 00 5d 00 2d 00 5b 00 25 00 30 00 2e 00 32 00 64 00 3a 00 25 00 30 00 2e 00 32 00 64 00 3a 00 25 00 30 00 2e 00 32 00 64 00 5d 00 20 00 65 00 72 00 63 00 6f 00 64 00 65 00 3d 00 25 00 30 00 2e 00 38 00 64 00 20 00 70 00 69 00 64 00 3d 00 25 00 30 00 2e 00 38 00 64 00 20 00 74 00 69 00 64 00 3d 00 25 00 30 00 2e 00 38 00 64 00 20 00 7c 00 7c 00 25 00 25 00 73 00 7c 00 7c 00 25 00 53 00 3d 00 3e 00 25 00 30 00 2e 00 38 00 64 00 20 00 65 00 72 00 69 00 6e 00 66 00 6f 00 3d 00 25 00 73 00 00 00 } //00 00 
		$a_00_8 = {87 10 } //00 00 
	condition:
		any of ($a_*)
 
}