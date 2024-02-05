
rule TrojanDownloader_Win32_Unruy_D{
	meta:
		description = "TrojanDownloader:Win32/Unruy.D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0c 00 00 01 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 25 73 2f 64 75 70 65 2e 70 68 70 3f 71 3d 25 64 2e 25 64 2e 25 64 2e 25 64 2e 25 64 2e 25 73 2e 31 2e 25 64 } //01 00 
		$a_00_1 = {66 61 6b 65 72 5f 76 65 72 73 69 6f 6e 20 69 73 20 25 64 } //01 00 
		$a_00_2 = {64 74 64 5f 64 6c 6c 2e 64 6c 6c 00 61 00 61 64 64 4e 75 6d 62 65 72 00 } //01 00 
		$a_00_3 = {7b 46 41 35 33 31 42 43 31 2d 30 34 39 37 2d 31 31 64 33 2d 41 31 38 30 2d 33 33 33 39 30 35 32 32 38 36 43 33 45 7d } //01 00 
		$a_00_4 = {5c 61 63 72 6f 74 72 61 79 20 2e 65 78 65 } //01 00 
		$a_00_5 = {4e 65 74 53 63 68 65 64 75 6c 65 4a 6f 62 41 64 64 } //01 00 
		$a_00_6 = {51 75 65 72 79 50 65 72 66 6f 72 6d 61 6e 63 65 43 6f 75 6e 74 65 72 } //02 00 
		$a_03_7 = {8a 04 02 88 01 eb 98 a1 90 01 02 40 00 83 e8 04 a3 90 01 02 40 00 ff 35 90 01 02 41 00 68 90 01 02 40 00 ff 35 90 01 02 40 00 e8 a2 0c 00 00 83 c4 0c 89 85 90 01 04 a1 90 01 02 40 00 0f af 05 90 01 02 40 00 83 e8 03 a3 90 01 02 40 00 90 00 } //01 00 
		$a_00_8 = {25 73 2e 64 65 6c 6d 65 25 75 } //01 00 
		$a_00_9 = {2e 6d 65 67 61 77 65 62 66 69 6e 64 } //01 00 
		$a_01_10 = {68 74 74 70 3a 2f 2f 25 73 2f 62 61 6e 6e 65 72 33 2e 70 68 70 3f 71 3d 25 64 2e 25 64 2e 25 64 2e 25 64 2e 25 64 2e 25 73 2e 31 2e 25 64 2e 25 64 } //01 00 
		$a_01_11 = {47 6c 6f 62 61 6c 5c 61 63 72 6f 62 61 74 32 30 31 } //00 00 
	condition:
		any of ($a_*)
 
}