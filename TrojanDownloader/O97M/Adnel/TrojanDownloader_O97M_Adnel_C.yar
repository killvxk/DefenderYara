
rule TrojanDownloader_O97M_Adnel_C{
	meta:
		description = "TrojanDownloader:O97M/Adnel.C,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_00_0 = {45 49 4d 51 68 4e 44 61 58 33 67 20 3d 20 73 6d 55 57 34 77 6a 6c 66 5a 28 43 68 72 28 37 37 29 20 26 20 43 68 72 28 31 30 35 29 20 26 20 22 63 22 20 26 20 43 68 72 28 31 31 34 29 20 26 20 22 6f 22 20 26 20 43 68 72 28 31 31 35 29 20 26 20 43 68 72 28 31 31 31 29 20 26 20 22 66 22 20 26 20 22 74 22 20 26 20 22 2e 22 20 26 20 22 58 22 20 26 20 22 4d 22 20 26 20 43 68 72 28 37 36 29 20 26 20 43 68 72 28 37 32 29 20 26 20 43 68 72 28 38 34 29 20 26 20 22 54 22 20 26 20 22 50 22 29 } //00 00 
	condition:
		any of ($a_*)
 
}