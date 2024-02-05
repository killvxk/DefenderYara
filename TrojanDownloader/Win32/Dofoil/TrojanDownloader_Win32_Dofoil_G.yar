
rule TrojanDownloader_Win32_Dofoil_G{
	meta:
		description = "TrojanDownloader:Win32/Dofoil.G,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4f 75 72 5f 41 67 65 6e 74 00 5c 64 78 64 69 61 67 2e 65 78 65 } //01 00 
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 00 53 74 61 72 74 75 70 } //01 00 
		$a_01_2 = {3f 62 69 64 3d 25 30 38 78 25 30 38 78 00 26 6f 73 3d 25 64 2d 25 64 2d 25 64 00 26 75 70 74 69 6d 65 3d 25 64 26 72 6e 64 3d 25 64 00 25 78 25 78 25 73 } //01 00 
		$a_01_3 = {64 6f 77 6e 6c 6f 61 64 31 } //01 00 
		$a_01_4 = {75 70 64 61 74 65 63 09 20 } //01 00 
		$a_01_5 = {5c 53 74 61 72 74 75 70 5c 64 78 64 69 61 67 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}