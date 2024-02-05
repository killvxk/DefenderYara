
rule TrojanDownloader_Win32_Hitbrovi_A_dha{
	meta:
		description = "TrojanDownloader:Win32/Hitbrovi.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {4c 00 6f 00 77 00 20 00 52 00 69 00 67 00 68 00 74 00 73 00 5c 00 45 00 6c 00 65 00 76 00 61 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 5c 00 7b 00 35 00 38 00 35 00 32 00 46 00 35 00 45 00 44 00 2d 00 38 00 42 00 46 00 34 00 2d 00 31 00 31 00 44 00 34 00 2d 00 41 00 32 00 34 00 35 00 2d 00 30 00 30 00 38 00 30 00 43 00 36 00 46 00 37 00 34 00 32 00 38 00 34 00 7d 00 } //02 00 
		$a_01_1 = {45 00 58 00 45 00 5f 00 4e 00 41 00 4d 00 45 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 } //02 00 
		$a_01_2 = {45 00 58 00 45 00 5f 00 55 00 52 00 4c 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 } //02 00 
		$a_01_3 = {53 00 43 00 4f 00 55 00 54 00 5f 00 54 00 45 00 4d 00 50 00 5f 00 4e 00 41 00 4d 00 45 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 } //02 00 
		$a_01_4 = {44 00 4f 00 43 00 5f 00 54 00 45 00 4d 00 50 00 5f 00 4e 00 41 00 4d 00 45 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 } //02 00 
		$a_01_5 = {4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 34 00 2e 00 30 00 20 00 28 00 63 00 6f 00 6d 00 70 00 61 00 74 00 69 00 62 00 6c 00 65 00 3b 00 20 00 4d 00 53 00 49 00 45 00 20 00 37 00 2e 00 30 00 3b 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 20 00 35 00 2e 00 31 00 29 00 } //00 00 
		$a_00_6 = {5d 04 00 00 01 40 03 80 } //5c 26 
	condition:
		any of ($a_*)
 
}