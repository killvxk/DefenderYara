
rule Trojan_O97M_Obfuse_J{
	meta:
		description = "Trojan:O97M/Obfuse.J,SIGNATURE_TYPE_MACROHSTR_EXT,0f 00 0f 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {20 3d 20 4c 65 6e 28 } //01 00 
		$a_02_1 = {2c 20 4c 65 6e 28 90 02 20 29 20 2b 20 90 00 } //01 00 
		$a_02_2 = {20 3c 20 4c 65 6e 28 90 02 20 29 20 54 68 65 6e 90 00 } //0a 00 
		$a_02_3 = {2c 20 42 79 52 65 66 20 90 02 15 29 0d 0a 90 02 15 20 3d 20 52 69 67 68 74 28 4c 65 66 74 28 90 02 15 2c 20 90 02 15 29 2c 20 31 29 0d 0a 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_02_4 = {53 75 62 20 90 02 20 28 42 79 52 65 66 20 90 02 20 2c 20 42 79 52 65 66 20 90 00 } //01 00 
		$a_00_5 = {0d 0a 53 68 65 6c 6c 20 } //00 00 
	condition:
		any of ($a_*)
 
}