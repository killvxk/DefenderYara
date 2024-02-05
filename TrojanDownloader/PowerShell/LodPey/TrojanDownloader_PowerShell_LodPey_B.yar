
rule TrojanDownloader_PowerShell_LodPey_B{
	meta:
		description = "TrojanDownloader:PowerShell/LodPey.B,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 0d 00 00 01 00 "
		
	strings :
		$a_02_0 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 6e 00 65 00 74 00 63 00 61 00 74 00 6b 00 69 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //01 00 
		$a_02_1 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 73 00 71 00 6c 00 6e 00 65 00 74 00 63 00 61 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //01 00 
		$a_02_2 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 61 00 6d 00 79 00 6e 00 78 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //01 00 
		$a_02_3 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 7a 00 65 00 72 00 32 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //01 00 
		$a_02_4 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 7a 00 7a 00 33 00 72 00 30 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //01 00 
		$a_02_5 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 7a 00 65 00 72 00 39 00 67 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //01 00 
		$a_02_6 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 61 00 77 00 63 00 6e 00 61 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //01 00 
		$a_02_7 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 61 00 63 00 6b 00 6e 00 67 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //01 00 
		$a_02_8 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 62 00 36 00 39 00 6b 00 71 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //01 00 
		$a_02_9 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 62 00 64 00 64 00 70 00 2e 00 6e 00 65 00 74 00 2f 00 90 00 } //01 00 
		$a_02_10 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 74 00 72 00 32 00 71 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //01 00 
		$a_02_11 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 37 00 37 00 36 00 36 00 2e 00 6f 00 72 00 67 00 2f 00 90 00 } //01 00 
		$a_02_12 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 10 2e 00 65 00 61 00 74 00 75 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}