
rule TrojanDownloader_O97M_Obfuse_PRT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PRT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {3d 20 22 46 5a 2e 74 6d 70 22 } //01 00 
		$a_00_1 = {3d 20 22 72 65 67 73 76 22 } //01 00 
		$a_00_2 = {66 72 6d 2e 66 66 66 20 22 68 74 74 70 3a 2f 2f 38 30 34 67 74 64 2e 63 6f 6d 2f 68 62 6f 6e 65 62 2f 73 6f 6c 39 35 2e 70 68 70 3f 6c 3d 70 75 6f 6d 39 2e 63 61 62 } //01 00 
		$a_00_3 = {50 4c 2e 65 78 65 63 20 58 64 20 2b 20 22 72 33 32 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_PRT_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PRT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {30 30 31 31 30 30 30 31 2c 30 30 31 31 31 30 30 31 2c 30 30 31 31 30 30 31 30 2c 30 30 31 30 31 31 31 30 2c 30 30 31 31 30 30 31 30 2c 30 30 31 31 30 30 31 30 2c 30 30 31 31 30 31 31 31 2c 30 30 31 30 31 31 31 30 2c 30 30 31 31 30 30 30 31 2c 30 30 31 31 30 31 30 31 2c 30 30 31 31 31 30 30 30 2c 30 30 31 30 31 31 31 30 2c 30 30 31 31 30 30 30 31 2c 30 30 31 31 30 30 30 31 2c 30 30 31 31 30 30 30 31 2c 30 30 31 30 31 31 31 31 2c 30 31 30 30 30 30 30 31 2c 30 31 31 30 30 30 31 31 2c 30 31 31 31 30 30 31 30 2c 30 31 31 30 31 31 31 31 2c 30 31 31 30 30 30 31 30 2c 30 31 31 30 30 30 30 31 2c 30 31 31 31 30 31 30 30 2c 30 31 30 30 30 31 30 30 2c 30 31 30 30 30 30 31 31 2c 30 30 31 30 31 31 31 30 2c 30 31 31 30 30 31 30 31 2c 30 31 31 31 31 30 30 30 2c } //01 00 
		$a_01_1 = {30 30 31 30 31 31 30 30 2c 30 30 31 30 30 31 30 30 2c 30 31 31 30 30 31 30 31 2c 30 31 31 30 31 31 31 30 2c 30 31 31 31 30 31 31 30 2c 30 30 31 31 31 30 31 30 2c 30 31 31 31 30 31 30 30 2c 30 31 31 30 30 31 30 31 2c 30 31 31 30 31 31 30 31 2c 30 31 31 31 30 30 30 30 2c 30 30 31 30 31 30 31 31 2c 30 30 31 30 30 31 31 31 2c 30 30 31 30 30 31 31 31 2c 30 31 30 31 31 31 30 30 2c 30 31 31 30 30 30 30 31 2c 30 31 31 30 30 30 31 31 2c 30 31 31 30 30 31 30 30 2c 30 30 31 30 31 31 31 30 2c 30 31 31 30 30 31 30 31 2c 30 31 31 31 31 30 30 30 2c } //00 00 
	condition:
		any of ($a_*)
 
}