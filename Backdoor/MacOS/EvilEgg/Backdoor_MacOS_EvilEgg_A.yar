
rule Backdoor_MacOS_EvilEgg_A{
	meta:
		description = "Backdoor:MacOS/EvilEgg.A,SIGNATURE_TYPE_MACHOHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {2d 6b 20 31 31 31 31 31 31 71 71 3b 20 70 79 74 68 6f 6e 20 2f 74 6d 70 2f 2e 69 6e 66 6f 2e 70 79 00 2f 2e 65 73 70 6c 2e 70 6c 69 73 74 00 } //01 00 
		$a_00_1 = {74 63 70 2f 39 34 2e 31 35 36 2e 31 38 39 2e 37 37 2f 32 32 38 30 20 30 3e 26 31 00 66 69 6c 65 } //01 00 
		$a_00_2 = {69 6e 73 74 61 6c 6c 50 65 72 73 69 73 74 65 6e 63 65 00 69 6e 73 74 61 6c 6c 45 76 69 6c 00 70 72 65 66 65 72 65 6e 63 65 73 00 73 65 74 50 72 65 66 65 72 65 6e 63 65 73 3a 00 73 74 61 74 75 73 4d 65 6e } //00 00 
	condition:
		any of ($a_*)
 
}