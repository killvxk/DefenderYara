
rule Trojan_Win32_VB_ABR{
	meta:
		description = "Trojan:Win32/VB.ABR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {71 00 76 00 2d 00 71 00 71 00 2e 00 63 00 6f 00 6d 00 2f 00 47 00 65 00 74 00 55 00 49 00 44 00 2e 00 61 00 73 00 70 00 } //01 00 
		$a_01_1 = {67 00 7a 00 68 00 74 00 63 00 6d 00 73 00 61 00 75 00 2e 00 62 00 6c 00 6f 00 67 00 2e 00 31 00 36 00 33 00 2e 00 63 00 6f 00 6d 00 2f 00 76 00 6f 00 74 00 65 00 2f 00 33 00 34 00 31 00 34 00 30 00 31 00 36 00 2f 00 } //01 00 
		$a_01_2 = {41 00 6c 00 69 00 49 00 4d 00 2e 00 65 00 78 00 65 00 2f 00 62 00 65 00 74 00 61 00 2f 00 71 00 71 00 2e 00 65 00 78 00 65 00 3e 00 61 00 62 00 63 00 64 00 } //01 00 
		$a_03_3 = {2a 00 5c 00 41 00 45 00 3a 00 5c 00 36 00 33 00 39 00 39 00 5c 00 90 02 5a 5c 00 4d 00 53 00 47 00 2e 00 76 00 62 00 70 00 90 00 } //01 00 
		$a_01_4 = {51 00 51 00 3a 00 00 00 0e 00 00 00 52 00 30 00 52 00 2e 00 74 00 78 00 74 } //00 00 
	condition:
		any of ($a_*)
 
}