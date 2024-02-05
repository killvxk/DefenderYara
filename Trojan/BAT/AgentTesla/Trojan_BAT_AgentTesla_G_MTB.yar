
rule Trojan_BAT_AgentTesla_G_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 03 00 "
		
	strings :
		$a_00_0 = {4d 41 41 51 71 56 54 40 } //03 00 
		$a_00_1 = {44 65 6c 70 68 69 6e 65 44 65 6c 70 68 69 6e 65 44 65 6c 70 68 69 6e 65 } //04 00 
		$a_00_2 = {00 11 00 28 b0 03 00 06 72 55 3a 00 70 72 67 3a 00 70 6f 35 00 00 0a 28 36 00 00 0a 28 37 00 00 0a 0a 72 6f 3a 00 70 72 b9 3a 00 70 72 c7 3a 00 70 28 35 00 00 0a 28 38 00 00 0a 7e 19 03 00 04 20 00 01 00 00 14 14 17 } //04 00 
		$a_03_3 = {02 00 06 20 90 01 04 28 18 04 00 06 20 90 01 04 28 18 04 00 06 6f b0 00 00 0a 28 b1 00 00 0a 28 b2 00 00 0a 0a 20 90 01 04 28 18 04 00 06 20 90 01 04 28 18 04 00 06 20 90 01 04 28 18 04 00 06 28 b0 00 00 0a 28 b3 00 00 0a 7e cd 01 00 04 20 00 01 00 00 14 14 17 90 00 } //01 00 
		$a_02_4 = {52 65 70 6c 61 63 65 90 02 03 53 74 72 52 65 76 65 72 73 65 90 02 03 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 90 02 03 49 6e 76 6f 6b 65 4d 65 6d 62 65 72 90 02 03 43 61 6c 6c 42 79 4e 61 6d 65 90 00 } //01 00 
		$a_00_5 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //01 00 
		$a_02_6 = {61 64 64 5f 4b 65 79 44 6f 77 6e 90 02 03 61 64 64 5f 4b 65 79 55 70 90 02 03 61 64 64 5f 4d 6f 75 73 65 44 6f 77 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}