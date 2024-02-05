
rule Trojan_BAT_Drokbk_A_dha{
	meta:
		description = "Trojan:BAT/Drokbk.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 3a 00 5c 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 64 00 61 00 74 00 61 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 44 00 69 00 73 00 74 00 72 00 69 00 62 00 75 00 74 00 69 00 6f 00 6e 00 } //01 00 
		$a_01_1 = {63 00 3a 00 5c 00 75 00 73 00 65 00 72 00 73 00 5c 00 70 00 75 00 62 00 6c 00 69 00 63 00 5c 00 70 00 6c 00 61 00 } //01 00 
		$a_01_2 = {53 00 65 00 73 00 73 00 69 00 6f 00 6e 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00 
		$a_01_3 = {50 00 72 00 6f 00 76 00 69 00 64 00 65 00 73 00 20 00 4b 00 65 00 72 00 6e 00 65 00 6c 00 20 00 43 00 6f 00 6d 00 70 00 61 00 74 00 69 00 62 00 69 00 6c 00 69 00 74 00 79 00 20 00 57 00 69 00 74 00 68 00 20 00 55 00 73 00 65 00 72 00 20 00 53 00 65 00 73 00 73 00 69 00 6f 00 6e 00 2d 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 } //00 00 
	condition:
		any of ($a_*)
 
}