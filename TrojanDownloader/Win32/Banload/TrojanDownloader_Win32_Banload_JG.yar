
rule TrojanDownloader_Win32_Banload_JG{
	meta:
		description = "TrojanDownloader:Win32/Banload.JG,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 6c 6c 73 73 73 2e 69 6e 66 6f 2f 63 75 74 65 2e 68 74 6d 6c } //01 00  lllsss.info/cute.html
		$a_01_1 = {66 69 66 61 2e 68 74 6d 6c } //01 00  fifa.html
		$a_01_2 = {67 69 72 6c 2e 68 74 6d 6c } //01 00  girl.html
		$a_01_3 = {6b 61 74 65 2e 68 74 6d 6c } //01 00  kate.html
		$a_01_4 = {69 65 66 72 61 6d 65 } //00 00  ieframe
	condition:
		any of ($a_*)
 
}