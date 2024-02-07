
rule TrojanDownloader_O97M_Obfuse_RA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 68 72 28 39 32 29 20 26 20 52 6e 64 20 26 20 22 2e 6a 73 65 22 } //01 00  Chr(92) & Rnd & ".jse"
		$a_03_1 = {3d 20 45 6e 76 69 72 6f 6e 28 4d 69 64 28 22 90 02 18 22 2c 20 90 02 05 29 20 26 20 4d 69 64 28 90 02 25 29 20 26 90 00 } //01 00 
		$a_03_2 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 54 61 62 6c 65 73 28 90 02 01 29 2e 43 65 6c 6c 28 90 02 05 29 2e 72 61 6e 67 65 2e 54 65 78 74 90 00 } //01 00 
		$a_01_3 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 4d 69 64 28 } //01 00  CreateObject(Mid(
		$a_01_4 = {2e 43 6c 6f 73 65 } //01 00  .Close
		$a_01_5 = {54 72 69 6d 28 4c 65 66 74 28 73 74 72 2c 20 4c 65 6e 28 73 74 72 29 20 2d 20 32 29 29 29 } //00 00  Trim(Left(str, Len(str) - 2)))
	condition:
		any of ($a_*)
 
}