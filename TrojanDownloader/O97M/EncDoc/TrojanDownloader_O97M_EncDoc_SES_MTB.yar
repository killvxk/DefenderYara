
rule TrojanDownloader_O97M_EncDoc_SES_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SES!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 22 6e 65 77 3a 31 33 37 30 39 36 32 30 2d 43 32 37 39 2d 31 31 43 45 2d 41 34 39 45 2d 34 34 34 35 35 33 35 34 30 30 30 30 22 29 } //01 00 
		$a_03_1 = {2e 4e 61 6d 65 73 70 61 63 65 28 90 01 05 29 2e 53 65 6c 66 2e 49 6e 76 6f 6b 65 56 65 72 62 20 22 50 61 73 74 65 22 90 00 } //01 00 
		$a_03_2 = {2e 4f 70 65 6e 20 28 90 01 05 20 2b 20 22 5c 90 02 0a 2e 6a 73 22 29 90 00 } //01 00 
		$a_01_3 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 57 61 69 74 20 28 4e 6f 77 20 2b 20 54 69 6d 65 56 61 6c 75 65 28 22 30 3a 30 30 3a 30 32 22 29 29 } //01 00 
		$a_03_4 = {2b 20 22 5c 90 02 0a 2e 74 78 74 22 20 41 73 20 90 01 05 20 2b 20 22 5c 90 02 0a 2e 6a 73 22 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}