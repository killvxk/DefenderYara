
rule Trojan_MacOS_Reshell_A_MTB{
	meta:
		description = "Trojan:MacOS/Reshell.A!MTB,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {48 65 6c 6c 52 61 69 73 65 72 20 4d 61 73 74 65 72 } //01 00 
		$a_00_1 = {52 65 70 72 6f 67 43 6c 6f 6e 65 } //01 00 
		$a_00_2 = {48 65 6c 6c 52 61 69 73 65 72 20 68 61 73 20 62 65 65 6e 20 69 6e 73 74 61 6c 6c 65 64 } //01 00 
		$a_00_3 = {44 45 42 55 47 5f 4c 4f 47 5f 50 52 49 56 41 54 45 2e 74 78 74 } //00 00 
		$a_00_4 = {5d 04 00 } //00 49 
	condition:
		any of ($a_*)
 
}