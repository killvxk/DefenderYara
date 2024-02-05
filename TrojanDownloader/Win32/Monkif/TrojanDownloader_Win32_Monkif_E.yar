
rule TrojanDownloader_Win32_Monkif_E{
	meta:
		description = "TrojanDownloader:Win32/Monkif.E,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {b4 00 00 00 75 90 01 01 c7 05 90 01 04 20 1c 00 00 e9 90 01 01 ff ff ff 90 00 } //02 00 
		$a_03_1 = {b4 00 00 00 0f 85 90 01 02 ff ff c7 05 90 01 04 20 1c 00 00 e9 90 09 06 00 81 3d 90 00 } //01 00 
		$a_01_2 = {47 6c 6f 62 61 6c 5c 55 49 45 49 00 } //01 00 
		$a_01_3 = {54 3d 25 64 2c 53 3d 25 64 2c 25 73 2c 46 3d 25 73 2c 00 } //01 00 
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 5c 50 52 4f 54 4f 43 4f 4c 53 5c 46 69 6c 74 65 72 5c 74 65 78 74 2f 68 74 6d 6c 00 } //01 00 
		$a_01_5 = {25 64 7c 25 64 7c 25 64 7c 25 64 00 } //01 00 
		$a_01_6 = {2f 73 6f 64 6f 6d 61 2f 00 } //00 00 
	condition:
		any of ($a_*)
 
}