
rule Trojan_BAT_Downloader_CAC_MTB{
	meta:
		description = "Trojan:BAT/Downloader.CAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 64 66 61 30 37 63 34 38 2d 39 36 66 64 2d 34 30 65 62 2d 61 65 61 39 2d 66 61 65 30 61 61 38 65 64 37 37 38 } //0a 00  $dfa07c48-96fd-40eb-aea9-fae0aa8ed778
		$a_01_1 = {24 34 63 36 34 30 66 62 38 2d 63 33 61 32 2d 34 62 63 33 2d 61 36 36 61 2d 30 39 30 61 66 37 64 66 65 32 30 64 } //01 00  $4c640fb8-c3a2-4bc3-a66a-090af7dfe20d
		$a_01_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_4 = {48 61 6e 64 6c 65 72 2e 65 78 65 } //01 00  Handler.exe
		$a_01_5 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_01_6 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_7 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_8 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  ToBase64String
	condition:
		any of ($a_*)
 
}