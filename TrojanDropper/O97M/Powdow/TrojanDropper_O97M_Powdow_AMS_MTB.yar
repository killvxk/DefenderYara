
rule TrojanDropper_O97M_Powdow_AMS_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.AMS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 46 69 6e 64 2e 45 78 65 63 75 74 65 28 46 69 6e 64 54 65 78 74 3a 3d 22 90 02 0a 22 2c 20 52 65 70 6c 61 63 65 57 69 74 68 3a 3d 22 22 2c 20 52 65 70 6c 61 63 65 3a 3d 90 00 } //01 00 
		$a_03_1 = {47 65 74 4f 62 6a 65 63 74 28 22 22 2c 20 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 2e 65 78 65 63 20 90 02 0a 28 22 90 02 0a 22 29 20 2b 20 22 20 22 20 2b 90 00 } //01 00 
		$a_03_2 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 61 76 65 41 73 32 20 46 69 6c 65 4e 61 6d 65 3a 3d 90 02 0f 2c 20 46 69 6c 65 46 6f 72 6d 61 74 3a 3d 90 00 } //01 00 
		$a_03_3 = {3d 20 54 72 69 6d 28 22 90 02 ff 2e 68 22 20 26 20 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 90 02 0a 28 22 90 02 0a 29 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDropper_O97M_Powdow_AMS_MTB_2{
	meta:
		description = "TrojanDropper:O97M/Powdow.AMS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {65 6e 76 69 72 6f 6e 28 90 02 0f 26 22 72 22 26 90 02 0f 26 22 65 22 29 26 22 5c 22 26 22 6c 22 26 22 69 6e 6b 22 26 22 73 5c 22 90 02 0f 3d 61 63 74 69 76 65 77 6f 72 6b 62 6f 6f 6b 2e 62 75 69 6c 74 69 6e 64 6f 63 75 6d 65 6e 74 70 72 6f 70 65 72 74 69 65 73 2e 69 74 65 6d 28 31 30 2f 32 29 90 00 } //01 00 
		$a_03_1 = {26 22 6c 69 6e 6b 22 2b 90 02 0f 2b 22 2e 70 22 2b 90 02 0f 2b 22 31 22 73 65 74 90 02 0f 3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 73 63 72 69 70 74 69 6e 67 2e 66 69 6c 65 73 79 73 74 65 6d 6f 62 6a 65 63 74 22 29 90 00 } //01 00 
		$a_03_2 = {2e 76 62 22 2b 90 02 0f 3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 73 63 72 69 70 74 69 6e 67 2e 66 69 6c 65 73 79 73 74 65 6d 6f 62 6a 65 63 74 22 29 90 00 } //01 00 
		$a_03_3 = {63 72 65 61 74 65 6f 62 6a 65 63 74 28 28 72 65 70 6c 61 63 65 28 6d 6f 64 75 6c 65 31 2e 90 02 0f 28 22 6c 6c 65 68 73 2a 74 70 69 72 63 73 77 22 29 2c 22 2a 22 2c 22 2e 22 29 90 00 } //01 00 
		$a_03_4 = {72 65 67 77 72 69 74 65 28 72 65 70 6c 61 63 65 28 90 02 0f 28 22 90 02 0f 2a 6e 75 72 2a 6e 6f 69 73 72 65 76 74 6e 65 72 72 75 63 2a 73 77 6f 64 6e 69 77 2a 74 66 6f 73 6f 72 63 69 6d 2a 65 72 61 77 74 66 6f 73 2a 72 65 73 75 5f 74 6e 65 72 72 75 63 5f 79 65 6b 68 22 29 2c 22 2a 22 2c 22 5c 22 29 29 2c 22 72 75 6e 64 6c 6c 33 32 2e 65 78 65 70 63 77 75 74 6c 2e 64 6c 6c 2c 6c 61 75 6e 63 68 61 70 70 6c 69 63 61 74 69 6f 6e 22 90 00 } //01 00 
		$a_03_5 = {72 6f 6e 28 90 02 0f 26 22 72 22 26 90 02 0f 26 22 65 22 29 26 22 5c 6c 69 6e 6b 73 5c 90 02 0f 2e 76 62 73 22 2c 28 72 65 70 6c 61 63 65 28 90 02 0f 28 90 02 0f 29 2c 22 2a 22 2c 22 5f 22 29 29 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 90 02 0f 28 90 02 0f 29 90 02 0f 3d 73 74 72 72 65 76 65 72 73 65 28 90 02 0f 29 65 6e 64 66 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}