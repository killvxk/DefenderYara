
rule TrojanDownloader_O97M_Obfuse_ND_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.ND!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 45 6e 76 69 72 6f 6e 28 22 74 65 6d 70 22 29 20 26 20 22 5c 90 02 20 2e 78 73 22 20 26 20 90 02 20 28 29 2c 20 54 72 75 65 2c 20 54 72 75 65 29 90 00 } //01 00 
		$a_01_1 = {3d 20 43 68 72 28 22 26 68 22 20 26 20 4d 69 64 28 } //01 00  = Chr("&h" & Mid(
		$a_01_2 = {2e 74 65 78 74 29 } //01 00  .text)
		$a_01_3 = {2e 43 6c 6f 73 65 } //01 00  .Close
		$a_01_4 = {44 65 62 75 67 2e 50 72 69 6e 74 20 45 72 72 6f 72 28 } //01 00  Debug.Print Error(
		$a_01_5 = {22 57 73 63 72 69 70 74 2e 53 68 65 6c 6c 22 } //00 00  "Wscript.Shell"
	condition:
		any of ($a_*)
 
}