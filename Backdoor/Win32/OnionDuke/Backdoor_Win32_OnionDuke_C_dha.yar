
rule Backdoor_Win32_OnionDuke_C_dha{
	meta:
		description = "Backdoor:Win32/OnionDuke.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {75 70 6c 6f 61 64 5f 73 6c 6f 77 64 6f 77 6e 5f 6d 73 3a } //01 00 
		$a_01_1 = {6d 61 73 74 65 72 5f 73 6c 61 76 65 5f 70 6f 6c 69 63 79 3a } //01 00 
		$a_01_2 = {70 6f 73 74 5f 70 65 72 5f 72 65 71 75 65 73 74 5f 6c 69 6d 69 74 5f 6b 62 3a } //01 00 
		$a_01_3 = {6c 6f 63 61 6c 5f 6c 69 6d 69 74 5f 6d 62 3a } //01 00 
		$a_01_4 = {6d 79 63 65 72 74 3a 20 68 65 78 28 } //01 00 
		$a_01_5 = {2d 20 61 72 67 3a 20 63 61 6d 70 61 69 67 6e 5f 69 64 } //00 00 
		$a_00_6 = {5d 04 00 } //00 2d 
	condition:
		any of ($a_*)
 
}