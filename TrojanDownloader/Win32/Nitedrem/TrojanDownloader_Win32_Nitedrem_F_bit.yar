
rule TrojanDownloader_Win32_Nitedrem_F_bit{
	meta:
		description = "TrojanDownloader:Win32/Nitedrem.F!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 00 61 00 69 00 6e 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 00 00 5a 00 00 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_01_1 = {00 00 66 00 75 00 63 00 6b 00 69 00 6e 00 67 00 00 00 } //01 00 
		$a_01_2 = {2f 00 64 00 6f 00 77 00 6e 00 2e 00 61 00 73 00 70 00 3f 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 6e 00 65 00 77 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 26 00 75 00 3d 00 } //01 00 
		$a_01_3 = {00 00 37 00 45 00 37 00 30 00 37 00 32 00 30 00 32 00 42 00 31 00 35 00 39 00 34 00 41 00 37 00 42 00 42 00 46 00 44 00 30 00 45 00 32 00 42 00 45 00 45 00 41 00 46 00 41 00 41 00 37 00 30 00 33 00 00 00 } //01 00 
		$a_01_4 = {00 00 30 00 33 00 38 00 35 00 42 00 31 00 36 00 39 00 42 00 34 00 46 00 42 00 34 00 36 00 44 00 46 00 39 00 33 00 41 00 31 00 34 00 41 00 46 00 33 00 39 00 46 00 34 00 35 00 46 00 34 00 30 00 42 00 00 00 } //01 00 
		$a_03_5 = {2e 00 63 00 6c 00 6f 00 75 00 64 00 66 00 72 00 6f 00 6e 00 74 00 2e 00 6e 00 65 00 74 00 2f 00 90 02 10 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}