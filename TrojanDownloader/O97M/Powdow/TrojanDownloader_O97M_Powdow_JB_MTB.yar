
rule TrojanDownloader_O97M_Powdow_JB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.JB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 90 02 0f 2c 20 90 02 0f 2c 20 32 29 29 29 90 00 } //01 00 
		$a_03_1 = {41 73 63 28 4d 69 64 28 90 02 19 2c 20 69 2c 20 31 29 29 90 00 } //01 00 
		$a_01_2 = {37 30 36 66 37 37 36 35 37 32 37 33 36 38 36 35 36 63 36 63 32 65 36 35 37 38 36 35 32 30 32 64 34 65 36 66 34 35 37 38 36 39 37 34 32 30 32 64 36 33 32 30 34 37 36 35 37 34 32 64 35 33 36 35 37 32 37 36 36 39 36 33 36 35 32 30 32 64 34 34 36 39 37 33 37 30 36 63 36 31 37 39 34 65 36 31 36 64 36 35 32 30 32 37 32 61 36 65 36 35 37 34 37 37 36 66 37 32 36 62 32 61 32 37 } //01 00 
		$a_01_3 = {34 34 36 66 37 37 36 65 36 63 36 66 36 31 36 34 35 33 37 34 37 32 36 39 36 65 36 37 32 38 32 37 36 38 37 34 37 34 37 30 33 61 32 66 32 66 33 31 33 35 33 39 32 65 33 36 33 35 32 65 33 31 33 34 33 36 32 65 33 33 33 38 32 66 37 32 36 35 37 36 32 65 37 30 37 33 33 31 32 37 32 39 } //01 00 
		$a_01_4 = {37 30 36 66 37 37 36 35 37 32 37 33 36 38 36 35 36 63 36 63 32 65 36 35 37 38 36 35 32 30 32 64 36 65 36 66 36 35 37 38 36 39 37 34 32 30 32 64 36 35 37 30 32 30 36 32 37 39 37 30 36 31 37 33 37 33 32 30 32 64 36 33 32 30 34 39 34 35 35 38 } //00 00 
	condition:
		any of ($a_*)
 
}