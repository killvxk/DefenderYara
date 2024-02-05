
rule Spammer_BAT_Misnt_A{
	meta:
		description = "Spammer:BAT/Misnt.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {75 6e 6c 75 63 6b 79 49 6e 64 65 78 00 67 6f 6f 64 4d 61 69 6c } //01 00 
		$a_01_1 = {72 65 61 64 79 54 6f 57 6f 72 6b 00 61 72 67 73 00 73 65 74 43 6f 6e 66 69 67 } //01 00 
		$a_01_2 = {6f 77 6e 44 6f 6d 61 69 6e 00 6b 65 79 00 6d 61 69 6c 65 72 } //01 00 
		$a_01_3 = {63 66 67 00 6c 67 63 00 } //01 00 
		$a_01_4 = {26 00 67 00 61 00 74 00 65 00 3d 00 } //01 00 
		$a_01_5 = {2e 00 72 00 75 00 } //05 00 
		$a_01_6 = {73 72 63 5c 6d 62 5f 62 74 5c } //01 00 
		$a_01_7 = {73 35 6c 69 73 74 5f 70 72 6f 64 } //00 00 
		$a_00_8 = {5d 04 00 00 05 } //40 03 
	condition:
		any of ($a_*)
 
}