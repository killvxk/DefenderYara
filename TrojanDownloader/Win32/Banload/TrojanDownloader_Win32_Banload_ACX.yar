
rule TrojanDownloader_Win32_Banload_ACX{
	meta:
		description = "TrojanDownloader:Win32/Banload.ACX,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 0c } //01 00 
		$a_01_1 = {63 68 65 63 6b 0c } //01 00 
		$a_01_2 = {65 6d 70 74 79 0c } //01 00 
		$a_01_3 = {46 6c 61 73 68 20 50 6c 61 79 65 72 } //02 00 
		$a_03_4 = {68 2f 21 00 00 66 b9 67 24 b2 01 a1 90 01 04 e8 90 00 } //02 00 
		$a_02_5 = {36 32 34 46 38 37 38 31 90 02 04 38 42 37 35 00 90 00 } //02 00 
		$a_00_6 = {36 32 34 46 38 37 38 45 31 32 34 35 38 42 37 35 } //00 00 
	condition:
		any of ($a_*)
 
}