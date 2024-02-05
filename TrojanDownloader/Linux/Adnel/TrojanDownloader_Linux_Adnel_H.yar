
rule TrojanDownloader_Linux_Adnel_H{
	meta:
		description = "TrojanDownloader:Linux/Adnel.H,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 68 72 28 31 30 34 29 20 26 20 43 68 72 28 31 31 36 29 20 26 20 22 74 22 20 26 20 43 68 72 28 31 31 32 29 20 26 20 43 68 72 28 35 38 29 20 26 20 22 2f 22 20 26 20 22 2f 22 } //01 00 
		$a_01_1 = {43 68 72 28 37 31 29 20 26 20 22 45 22 20 26 20 43 68 72 28 38 34 29 2c } //01 00 
		$a_01_2 = {26 20 43 68 72 28 34 36 29 20 26 20 22 65 22 20 26 20 43 68 72 28 31 32 30 29 20 26 20 22 65 22 2c 20 46 61 6c 73 65 } //01 00 
		$a_01_3 = {2e 45 6e 76 69 72 6f 6e 6d 65 6e 74 28 43 68 72 28 38 30 29 20 26 20 43 68 72 28 31 31 34 29 20 26 20 22 6f 22 20 26 20 43 68 72 28 39 39 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 22 73 22 20 26 20 22 73 22 29 } //01 00 
		$a_01_4 = {22 54 22 20 26 20 43 68 72 28 36 39 29 20 26 20 43 68 72 28 37 37 29 20 26 20 43 68 72 28 38 30 29 29 } //01 00 
		$a_01_5 = {43 68 72 28 36 35 29 20 26 20 22 64 6f 22 20 26 20 43 68 72 28 31 30 30 29 20 26 20 43 68 72 28 39 38 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 38 33 29 20 26 20 43 68 72 28 31 31 36 29 20 26 20 43 68 72 28 31 31 34 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 22 61 22 20 26 20 43 68 72 28 31 30 39 29 } //00 00 
		$a_00_6 = {5d 04 00 } //00 90 
	condition:
		any of ($a_*)
 
}