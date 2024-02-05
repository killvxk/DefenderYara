
rule TrojanSpy_BAT_Chisal_A{
	meta:
		description = "TrojanSpy:BAT/Chisal.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {79 00 5a 00 54 00 49 00 68 00 4b 00 6c 00 42 00 34 00 2b 00 30 00 31 00 50 00 79 00 53 00 6d 00 57 00 56 00 69 00 68 00 68 00 41 00 3d 00 3d 00 } //01 00 
		$a_01_1 = {70 00 6b 00 2f 00 45 00 59 00 30 00 6e 00 6f 00 72 00 4f 00 6f 00 45 00 71 00 63 00 6e 00 31 00 35 00 46 00 44 00 39 00 55 00 41 00 3d 00 3d 00 } //01 00 
		$a_01_2 = {64 00 51 00 2b 00 46 00 75 00 70 00 71 00 4b 00 4e 00 67 00 2b 00 61 00 52 00 37 00 55 00 54 00 53 00 2f 00 54 00 32 00 67 00 3d 00 3d 00 } //01 00 
		$a_01_3 = {55 00 71 00 65 00 43 00 43 00 45 00 63 00 51 00 76 00 74 00 48 00 75 00 62 00 33 00 2b 00 44 00 4f 00 42 00 39 00 57 00 57 00 67 00 3d 00 3d 00 } //01 00 
		$a_00_4 = {44 64 41 52 00 44 64 41 52 32 00 44 64 55 53 } //01 00 
		$a_00_5 = {41 74 00 63 68 72 6f 6d 65 00 63 61 62 75 00 49 4e 4f 00 4b 59 } //01 00 
		$a_00_6 = {63 68 69 6e 61 20 6c 6f 76 65 } //01 00 
		$a_00_7 = {66 75 63 6b } //00 00 
		$a_00_8 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}