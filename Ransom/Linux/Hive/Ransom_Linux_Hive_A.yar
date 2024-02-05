
rule Ransom_Linux_Hive_A{
	meta:
		description = "Ransom:Linux/Hive.A,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {66 89 84 24 90 90 01 00 00 48 8b 90 01 01 24 78 01 00 00 48 83 90 01 01 03 48 8b 90 01 01 24 80 01 00 00 75 21 0f b7 90 01 01 66 33 84 24 90 90 01 00 00 8a 90 01 01 02 32 8c 24 92 01 00 00 0f b6 c9 66 09 c1 0f 84 90 00 } //01 00 
		$a_03_1 = {48 89 44 24 50 48 8b 44 24 50 8b 80 90 01 04 b9 90 01 04 31 c8 89 44 24 08 48 83 90 01 01 04 75 0c 8b 90 01 01 3b 44 24 08 0f 84 90 00 } //01 00 
		$a_01_2 = {76 6d 64 6b } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}