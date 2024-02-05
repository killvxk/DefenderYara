
rule TrojanDownloader_Win32_Small_ZZR{
	meta:
		description = "TrojanDownloader:Win32/Small.ZZR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 68 6b 41 6e 64 52 75 6e 20 42 65 67 69 6e } //01 00 
		$a_01_1 = {36 34 36 39 36 31 36 45 37 38 36 39 36 45 32 45 36 34 36 31 36 46 36 38 36 31 36 45 36 37 33 31 33 32 33 33 33 34 32 45 36 33 36 46 36 44 } //01 00 
		$a_01_2 = {36 38 37 34 37 34 37 30 33 41 32 46 32 46 36 34 36 31 37 34 36 31 32 45 36 34 36 31 36 46 36 38 36 31 36 45 36 37 33 31 33 32 33 33 33 34 32 45 36 33 36 46 36 44 32 46 36 34 36 31 37 34 36 31 32 45 37 34 37 38 37 34 } //01 00 
		$a_01_3 = {36 38 37 34 37 34 37 30 33 41 32 46 32 46 36 34 36 39 36 31 36 45 37 38 36 39 36 45 32 45 36 34 36 31 36 46 36 38 36 31 36 45 36 37 33 31 33 32 33 33 33 34 32 45 36 33 36 46 36 44 32 46 36 33 37 30 36 31 32 45 36 38 37 34 36 44 33 46 } //00 00 
	condition:
		any of ($a_*)
 
}