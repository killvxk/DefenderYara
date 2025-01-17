
rule Trojan_BAT_Downloader_BL_MTB{
	meta:
		description = "Trojan:BAT/Downloader.BL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 25 19 6f 90 01 03 0a 25 17 6f 90 01 03 0a 25 20 90 01 04 6f 90 01 03 0a 25 20 90 01 04 6f 90 01 03 0a 7e 90 01 03 04 28 90 01 03 0a 0a 7e 90 01 03 04 28 90 00 } //01 00 
		$a_03_1 = {0b 06 07 6f 90 01 03 0a 0c 28 90 01 03 0a 25 8e 69 8d 90 01 03 01 0d 73 90 01 03 0a 08 16 73 90 01 03 0a 09 16 09 8e 69 6f 90 01 03 0a 26 28 90 01 03 0a 09 6f 90 01 03 0a 72 90 01 03 70 72 90 01 03 70 28 90 00 } //01 00 
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //01 00  DownloadFile
		$a_01_3 = {44 65 63 72 79 70 74 53 74 72 69 6e 67 } //01 00  DecryptString
		$a_01_4 = {45 6e 63 72 79 70 74 53 74 72 69 6e 67 } //01 00  EncryptString
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerNonUserCodeAttribute
	condition:
		any of ($a_*)
 
}