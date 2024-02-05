
rule TrojanDownloader_Win32_Onkods_A{
	meta:
		description = "TrojanDownloader:Win32/Onkods.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 63 3a 5c 55 73 65 72 73 5c 73 5c 44 65 73 6b 74 6f 70 5c } //01 00 
		$a_03_1 = {6a 00 6a 00 6a 02 6a 00 6a 00 68 00 00 00 40 8d 90 01 03 ff ff 90 17 06 01 01 01 01 01 01 50 51 52 53 56 57 ff 90 03 06 04 95 90 01 02 ff ff 55 90 01 01 89 85 90 01 02 ff ff 90 08 00 10 8d 90 01 03 ff ff 90 17 06 01 01 01 01 01 01 50 51 52 53 56 57 68 ff 03 00 00 90 00 } //01 00 
		$a_03_2 = {6a 00 6a 00 6a 20 6a 00 6a 00 6a 00 8d 90 01 03 ff ff 90 17 06 01 01 01 01 01 01 50 51 52 53 56 57 6a 00 ff 90 03 06 04 95 90 01 02 ff ff 55 90 01 01 90 08 00 20 b8 01 00 00 00 90 00 } //01 00 
		$a_03_3 = {0f b7 45 fc 83 c0 01 0f b7 4d 10 99 f7 f9 66 89 55 fc 0f b7 45 90 01 01 0f b7 55 fc 0f b6 4c 15 90 01 01 03 c1 0f b7 4d 10 99 f7 f9 66 89 55 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Onkods_A_2{
	meta:
		description = "TrojanDownloader:Win32/Onkods.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 00 6a 00 6a 02 6a 00 6a 00 90 02 06 68 00 00 00 40 8d 90 01 01 24 90 01 02 00 00 90 02 10 90 17 06 01 01 01 01 01 01 50 51 52 53 56 57 90 02 10 ff 54 24 90 01 01 90 08 00 10 8d 90 01 01 24 90 01 01 90 17 06 01 01 01 01 01 01 50 51 52 53 56 57 68 ff 03 00 00 90 00 } //01 00 
		$a_03_1 = {56 56 6a 02 56 56 90 02 06 68 00 00 00 40 8d 90 01 01 24 90 01 02 00 00 90 02 10 90 17 06 01 01 01 01 01 01 50 51 52 53 56 57 90 02 10 ff 54 24 90 01 01 90 08 00 10 8d 90 01 01 24 90 01 01 90 17 06 01 01 01 01 01 01 50 51 52 53 56 57 68 ff 03 00 00 90 00 } //01 00 
		$a_03_2 = {68 00 00 00 40 8d 84 24 90 01 01 00 00 00 50 90 02 01 ff 54 24 90 01 01 8b 90 01 01 24 90 01 01 8d 4c 24 90 01 01 51 68 ff 03 00 00 8d 94 24 90 01 02 00 00 52 90 01 01 8b 90 01 01 ff 90 00 } //0a 00 
		$a_03_3 = {8b c6 99 f7 fd 8a 5c 34 90 01 01 8b 44 24 90 01 01 46 0f be 14 02 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}