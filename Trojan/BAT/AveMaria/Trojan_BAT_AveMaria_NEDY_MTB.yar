
rule Trojan_BAT_AveMaria_NEDY_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NEDY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2d 00 2d 00 0d 00 00 05 00 "
		
	strings :
		$a_01_0 = {25 00 25 00 74 00 5c 00 44 00 24 00 5c 00 64 00 65 00 62 00 75 00 67 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_1 = {25 00 25 00 74 00 5c 00 65 00 24 00 5c 00 73 00 68 00 61 00 72 00 65 00 64 00 5c 00 64 00 65 00 62 00 75 00 67 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_2 = {25 00 25 00 74 00 5c 00 50 00 52 00 49 00 4e 00 54 00 24 00 5c 00 64 00 65 00 62 00 75 00 67 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_3 = {25 00 25 00 74 00 5c 00 41 00 44 00 4d 00 49 00 4e 00 24 00 5c 00 64 00 65 00 62 00 75 00 67 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_4 = {25 00 25 00 74 00 5c 00 49 00 50 00 43 00 24 00 5c 00 64 00 65 00 62 00 75 00 67 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_5 = {5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //05 00 
		$a_01_6 = {6e 00 65 00 74 00 20 00 76 00 69 00 65 00 77 00 20 00 3e 00 6c 00 6f 00 67 00 2e 00 74 00 78 00 74 00 } //05 00 
		$a_01_7 = {4b 00 6c 00 65 00 70 00 61 00 73 00 73 00 66 00 69 00 6c 00 65 00 } //01 00 
		$a_01_8 = {67 65 74 5f 50 72 6f 63 65 73 73 4e 61 6d 65 } //01 00 
		$a_01_9 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00 
		$a_01_10 = {53 79 73 74 65 6d 2e 57 69 6e 64 6f 77 73 2e 46 6f 72 6d 73 } //01 00 
		$a_01_11 = {49 6e 76 6f 6b 65 } //01 00 
		$a_01_12 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}