
rule TrojanDownloader_Win32_Strimot_A{
	meta:
		description = "TrojanDownloader:Win32/Strimot.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3f 00 73 00 6c 00 6f 00 74 00 73 00 3d 00 } //01 00 
		$a_01_1 = {22 00 3b 00 20 00 66 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 3d 00 22 00 } //01 00 
		$a_01_2 = {65 00 6e 00 43 00 72 00 59 00 70 00 74 00 65 00 44 00 } //01 00 
		$a_01_3 = {73 74 72 50 61 73 73 77 64 54 6f 52 65 63 6f 76 65 72 } //01 00 
		$a_01_4 = {41 00 4e 00 4f 00 56 00 4f 00 32 00 5c 00 74 00 65 00 73 00 74 00 65 00 } //01 00 
		$a_03_5 = {61 00 75 00 64 00 69 00 6f 00 72 00 67 00 62 00 2e 00 63 00 6f 00 6d 00 2f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 61 00 90 0f 01 00 00 2f 00 73 00 65 00 74 00 75 00 70 00 35 00 2e 00 74 00 6d 00 70 00 90 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 f4 
	condition:
		any of ($a_*)
 
}