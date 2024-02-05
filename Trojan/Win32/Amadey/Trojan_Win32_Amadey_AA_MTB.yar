
rule Trojan_Win32_Amadey_AA_MTB{
	meta:
		description = "Trojan:Win32/Amadey.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,65 00 65 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //64 00 
		$a_03_1 = {83 f8 10 b9 90 01 04 a1 90 01 04 0f 43 ca 03 c1 3b f0 74 90 01 01 8b 45 90 01 01 8b 57 10 8a 0c 30 32 0e 88 4d f0 3b 57 14 73 90 01 01 83 7f 14 10 8d 42 01 89 47 10 8b c7 72 90 01 01 8b 07 88 0c 10 46 c6 44 10 01 00 a1 90 01 04 8b 15 90 01 04 eb 90 00 } //00 00 
		$a_00_2 = {5d 04 00 00 75 64 05 80 5c 29 00 00 76 64 05 80 00 00 01 00 08 00 13 00 ac 21 41 6d 61 64 65 79 2e 41 41 21 4d 54 42 21 73 6d 73 00 00 01 40 05 82 70 00 04 00 ce 09 00 00 12 6d 61 a2 78 71 00 00 7b 5d 04 00 00 76 64 05 80 5c 33 00 00 77 64 05 80 00 00 01 00 08 00 1d 00 54 72 6f 6a 61 6e 3a 41 6e 64 } //72 6f 
	condition:
		any of ($a_*)
 
}