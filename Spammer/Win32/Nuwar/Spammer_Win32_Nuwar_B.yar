
rule Spammer_Win32_Nuwar_B{
	meta:
		description = "Spammer:Win32/Nuwar.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 38 31 2e 31 37 37 2e 32 36 2e 32 30 2f 61 79 61 79 61 79 00 } //01 00 
		$a_01_1 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 73 65 74 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d 20 22 25 73 22 20 65 6e 61 62 6c 65 00 } //01 00 
		$a_01_2 = {53 6d 74 70 53 65 72 76 65 72 3a 3a 77 6f 72 6b 65 72 2c 20 63 6f 6e 6e 65 63 74 69 6f 6e 20 69 73 20 63 6c 6f 73 65 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}