
rule TrojanDownloader_O97M_Obfuse_KB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {20 3d 20 45 6e 76 69 72 6f 6e 28 22 77 69 6e 64 69 72 22 29 20 2b 20 22 5c 53 79 73 57 4f 57 36 34 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 22 20 2b 20 22 20 22 22 22 20 2b 20 90 02 20 20 2b 20 22 22 22 2c 5f 6c 73 20 48 69 22 90 00 } //01 00 
		$a_03_1 = {20 3d 20 45 6e 76 69 72 6f 6e 28 22 77 69 6e 64 69 72 22 29 20 2b 20 22 5c 53 79 73 74 65 6d 33 32 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 22 20 2b 20 22 20 22 22 22 20 2b 20 90 02 20 20 2b 20 22 22 22 2c 5f 6c 73 20 48 69 22 90 00 } //01 00 
		$a_03_2 = {28 42 79 56 61 6c 20 30 2c 20 42 79 56 61 6c 20 56 61 72 50 74 72 28 90 02 20 28 30 29 29 2c 20 42 79 56 61 6c 20 30 26 2c 20 42 79 56 61 6c 20 30 26 2c 20 30 2c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}