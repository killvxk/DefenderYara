
rule Trojan_BAT_AgentTesla_GAY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GAY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_81_0 = {24 30 65 37 64 61 32 66 32 2d 31 66 34 37 2d 34 61 66 65 2d 61 61 39 35 2d 30 34 39 38 35 39 37 35 39 62 38 64 } //01 00 
		$a_01_1 = {6d 00 61 00 69 00 6c 00 74 00 6f 00 3a 00 46 00 75 00 68 00 72 00 65 00 72 00 4b 00 69 00 6e 00 67 00 42 00 72 00 61 00 64 00 6c 00 79 00 40 00 6f 00 75 00 74 00 6c 00 6f 00 6f 00 6b 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 69 00 6e 00 68 00 6f 00 73 00 74 00 73 00 6d 00 61 00 6e 00 61 00 67 00 65 00 72 00 2e 00 63 00 6f 00 64 00 65 00 70 00 6c 00 65 00 78 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_3 = {61 00 6c 00 69 00 2e 00 62 00 61 00 68 00 72 00 61 00 6d 00 69 00 6e 00 65 00 7a 00 68 00 61 00 64 00 40 00 6f 00 75 00 74 00 6c 00 6f 00 6f 00 6b 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_4 = {57 00 69 00 6e 00 48 00 6f 00 73 00 74 00 73 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00 
		$a_01_5 = {23 00 20 00 43 00 72 00 65 00 61 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 57 00 69 00 6e 00 48 00 6f 00 73 00 74 00 73 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 } //01 00 
		$a_01_6 = {49 00 6e 00 66 00 69 00 6e 00 69 00 74 00 65 00 4c 00 6f 00 6f 00 70 00 2e 00 49 00 52 00 } //00 00 
	condition:
		any of ($a_*)
 
}