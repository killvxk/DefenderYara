
rule Ransom_Win32_Gandcrab_D_MTB{
	meta:
		description = "Ransom:Win32/Gandcrab.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {01 4c cd 21 54 68 69 73 20 90 19 01 01 70 90 19 01 01 72 90 19 01 01 6f 90 19 01 01 67 90 19 01 01 72 90 19 01 01 61 6d 20 63 61 6e 6e 6f 74 20 62 65 20 72 75 6e 20 69 6e 20 44 4f 53 20 6d 6f 64 65 90 00 } //01 00 
		$a_02_1 = {7d 08 6a 00 ff 15 90 01 04 e8 90 01 04 30 04 37 83 ee 01 79 90 01 01 5f 5e c2 04 00 90 00 } //01 00 
		$a_02_2 = {0e 6a 00 ff 15 90 01 04 ff 15 90 01 04 e8 90 01 04 30 04 37 83 ee 01 79 90 01 01 5f 5e c2 04 00 90 00 } //01 00 
		$a_00_3 = {00 40 3d 00 01 00 00 75 f2 33 ff 33 f6 89 3d } //01 00 
		$a_00_4 = {01 40 3d 00 01 00 00 75 f2 33 ff 33 f6 89 3d } //01 00 
		$a_02_5 = {8b 4c 24 10 89 3d 90 01 04 8a 87 90 01 04 88 86 90 01 04 46 88 9f 90 01 04 89 35 90 01 04 81 fe 00 01 00 00 75 90 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 8f 
	condition:
		any of ($a_*)
 
}