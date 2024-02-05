
rule TrojanDownloader_O97M_Qakbot_RQQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.RQQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 68 74 74 70 73 3a 2f 2f 64 22 26 22 75 6b 22 26 22 75 6c 2e 63 22 26 22 6f 22 26 22 6d 2f 76 65 22 26 22 30 61 30 22 26 22 38 43 22 26 22 67 2f 76 22 26 22 62 68 22 26 22 4e 68 22 26 22 6e 2e 70 6e 67 22 } //01 00 
		$a_01_1 = {22 68 74 74 70 22 26 22 73 3a 2f 2f 64 22 26 22 70 61 22 26 22 75 6c 61 22 26 22 66 6f 22 26 22 6f 64 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2e 62 22 26 22 72 2f 66 6c 74 22 26 22 4b 71 64 22 26 22 57 22 26 22 50 33 76 22 26 22 68 2f 76 62 68 22 26 22 4e 68 6e 2e 70 6e 67 22 } //01 00 
		$a_01_2 = {22 68 74 74 70 73 3a 2f 2f 61 72 22 26 22 64 65 6e 22 26 22 74 73 70 22 26 22 6f 72 74 2e 63 22 26 22 6f 22 26 22 6d 2f 6c 50 22 26 22 61 71 65 22 26 22 69 44 22 26 22 35 6a 22 26 22 55 59 2f 76 62 22 26 22 68 22 26 22 4e 68 22 26 22 6e 2e 70 6e 67 22 } //00 00 
	condition:
		any of ($a_*)
 
}