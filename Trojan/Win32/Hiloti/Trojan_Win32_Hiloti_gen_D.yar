
rule Trojan_Win32_Hiloti_gen_D{
	meta:
		description = "Trojan:Win32/Hiloti.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 03 00 16 00 00 02 00 "
		
	strings :
		$a_03_0 = {32 c2 88 04 90 01 01 42 3b 90 00 } //02 00 
		$a_03_1 = {30 04 38 40 3b 90 03 02 01 45 fc c6 72 90 00 } //02 00 
		$a_03_2 = {83 fe 64 73 18 66 83 78 08 01 75 0b 8b 48 18 89 8c b5 90 01 02 ff ff 46 8b 00 3b c3 75 e3 90 00 } //02 00 
		$a_03_3 = {6a 2f 8d 85 90 01 02 ff ff 50 ff 15 90 01 04 85 c0 74 04 66 83 20 00 8d 85 90 01 02 ff ff 50 ff 15 90 01 04 83 f8 04 7e 24 90 00 } //02 00 
		$a_01_4 = {66 81 3a 4d 5a 75 23 8b 4a 3c 03 ca 81 39 50 45 00 00 75 16 0f b7 49 16 f6 c1 02 74 0d 66 81 e1 00 20 66 81 f9 00 20 } //02 00 
		$a_01_5 = {66 81 3e 4d 5a 75 20 8b 46 3c 03 c6 81 38 50 45 00 00 75 13 0f b7 40 16 84 c2 74 0b 66 25 00 20 66 3d 00 20 0f 95 c1 f6 d9 1b c9 83 e1 04 } //02 00 
		$a_03_6 = {33 c0 0f a2 89 5d 90 01 01 89 55 90 01 01 89 4d 90 01 01 b8 01 00 00 00 0f a2 33 45 90 01 01 33 55 90 01 01 03 55 90 01 01 8b 4d 90 01 01 03 11 33 c2 89 45 90 01 01 61 90 00 } //02 00 
		$a_01_7 = {81 38 8b ff 55 8b 75 0a 80 78 04 ec 0f 84 51 01 00 00 } //01 00 
		$a_02_8 = {6c 00 64 00 90 01 02 5f 00 65 00 3d 00 25 00 31 00 64 00 26 00 63 00 6c 00 6e 00 74 00 5f 00 65 00 3d 00 25 00 31 00 64 00 90 00 } //01 00 
		$a_00_9 = {3f 00 6b 00 77 00 73 00 3d 00 25 00 25 00 73 00 26 00 71 00 3d 00 25 00 25 00 73 00 26 00 25 00 25 00 73 00 } //01 00 
		$a_00_10 = {26 00 74 00 69 00 63 00 6b 00 3d 00 25 00 30 00 31 00 30 00 64 00 } //01 00 
		$a_00_11 = {26 00 66 00 6c 00 61 00 67 00 73 00 3d 00 25 00 30 00 38 00 78 00 26 00 73 00 72 00 63 00 68 00 3d 00 25 00 30 00 38 00 78 00 26 00 63 00 6c 00 63 00 6b 00 3d 00 25 00 30 00 38 00 78 00 26 00 6e 00 65 00 77 00 74 00 61 00 62 00 77 00 69 00 6e 00 3d 00 25 00 73 00 } //01 00 
		$a_00_12 = {26 00 64 00 65 00 6c 00 61 00 79 00 3d 00 25 00 30 00 38 00 64 00 } //01 00 
		$a_02_13 = {6f 00 73 00 76 00 65 00 72 00 3d 00 25 00 64 00 90 01 02 25 00 64 00 90 00 } //01 00 
		$a_00_14 = {74 00 63 00 6b 00 3d 00 25 00 30 00 31 00 30 00 64 00 } //01 00 
		$a_00_15 = {76 00 65 00 72 00 3d 00 25 00 64 00 5f 00 25 00 64 00 } //01 00 
		$a_00_16 = {2f 00 67 00 65 00 74 00 32 00 2e 00 70 00 68 00 70 00 00 00 00 00 77 00 69 00 6e 00 73 00 74 00 61 00 30 00 5c 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 } //02 00 
		$a_01_17 = {50 66 c7 45 f0 61 00 66 c7 45 f2 65 00 66 c7 45 f4 69 00 66 c7 45 f6 6f 00 66 c7 45 f8 75 00 ff d6 } //02 00 
		$a_01_18 = {33 f6 66 c7 45 e8 73 00 66 c7 45 ea 61 00 66 c7 45 ec 76 00 66 c7 45 ee 65 00 66 c7 45 f0 6f 00 66 c7 45 f2 6c 00 66 c7 45 f4 64 00 66 89 75 f6 } //01 00 
		$a_01_19 = {30 04 38 40 3b c1 76 f8 } //02 00 
		$a_01_20 = {80 f1 10 c0 f9 04 80 e1 0f 80 f9 09 0f be c9 7e 05 83 c1 37 eb 03 83 c1 30 } //01 00 
		$a_03_21 = {0f b6 cd 03 c1 99 59 f7 f9 90 02 12 8b da 83 c3 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}