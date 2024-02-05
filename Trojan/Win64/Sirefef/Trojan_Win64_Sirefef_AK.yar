
rule Trojan_Win64_Sirefef_AK{
	meta:
		description = "Trojan:Win64/Sirefef.AK,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 38 30 30 30 30 30 30 30 2e 40 00 } //01 00 
		$a_00_1 = {5c 00 72 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 00 00 } //0a 00 
		$a_03_2 = {89 46 10 b8 47 4e 4f 4c 31 06 d1 c0 90 02 04 83 c2 ff 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}