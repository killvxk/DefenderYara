
rule Backdoor_Win32_Dunsenr_B{
	meta:
		description = "Backdoor:Win32/Dunsenr.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 6c 6f 62 61 6c 5c 57 49 4e 50 4f 50 55 50 5f 4d 45 4d 4f 52 59 } //01 00 
		$a_03_1 = {63 66 67 3a 90 02 20 2e 74 6d 70 90 00 } //01 00 
		$a_01_2 = {65 00 78 00 74 00 5c 00 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 7b 00 31 00 31 00 66 00 30 00 39 00 61 00 66 00 65 00 2d 00 37 00 35 00 61 00 64 00 2d 00 34 00 65 00 35 00 32 00 2d 00 61 00 62 00 34 00 33 00 2d 00 65 00 30 00 39 00 65 00 39 00 33 00 35 00 31 00 63 00 65 00 31 00 37 00 7d 00 } //01 00 
		$a_01_3 = {2e 63 6e 7a 7a 2e 63 6f 6d 2f 73 74 61 74 2e 70 68 70 3f 69 64 } //01 00 
		$a_01_4 = {75 6e 61 6d 65 3d 00 00 2f 64 6f 77 61 6e 72 65 67 6e 65 77 } //01 00 
		$a_01_5 = {31 31 38 2e 31 39 32 2e 39 31 2e 33 35 } //00 00 
	condition:
		any of ($a_*)
 
}