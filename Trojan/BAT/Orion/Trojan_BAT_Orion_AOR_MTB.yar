
rule Trojan_BAT_Orion_AOR_MTB{
	meta:
		description = "Trojan:BAT/Orion.AOR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 00 72 00 69 00 6f 00 6e 00 67 00 72 00 61 00 62 00 62 00 65 00 72 00 2e 00 78 00 79 00 7a 00 } //01 00 
		$a_01_1 = {4f 00 72 00 69 00 6f 00 6e 00 20 00 46 00 72 00 65 00 65 00 20 00 76 00 31 00 2e 00 33 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {4d 00 61 00 72 00 6b 00 73 00 20 00 74 00 68 00 65 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 61 00 73 00 20 00 63 00 72 00 69 00 74 00 69 00 63 00 61 00 6c 00 2c 00 20 00 6d 00 61 00 6b 00 69 00 6e 00 67 00 20 00 69 00 74 00 20 00 69 00 6d 00 70 00 6f 00 73 00 73 00 69 00 62 00 6c 00 65 00 20 00 74 00 6f 00 20 00 6b 00 69 00 6c 00 6c 00 20 00 75 00 73 00 69 00 6e 00 67 00 20 00 74 00 61 00 73 00 6b 00 20 00 6d 00 61 00 6e 00 61 00 67 00 65 00 72 00 } //01 00 
		$a_01_3 = {53 00 70 00 72 00 65 00 61 00 64 00 73 00 20 00 74 00 68 00 65 00 20 00 73 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 61 00 6c 00 6f 00 6e 00 67 00 20 00 77 00 69 00 74 00 68 00 20 00 74 00 68 00 65 00 20 00 6d 00 65 00 73 00 73 00 61 00 67 00 65 00 20 00 74 00 6f 00 20 00 61 00 6c 00 6c 00 20 00 66 00 72 00 69 00 65 00 6e 00 64 00 73 00 20 00 6f 00 6e 00 20 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 } //01 00 
		$a_01_4 = {45 00 78 00 69 00 74 00 73 00 20 00 77 00 68 00 65 00 6e 00 20 00 69 00 74 00 20 00 64 00 65 00 74 00 65 00 63 00 74 00 73 00 20 00 62 00 65 00 69 00 6e 00 67 00 20 00 69 00 6e 00 20 00 61 00 20 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 20 00 61 00 6e 00 61 00 6c 00 79 00 73 00 69 00 73 00 20 00 56 00 4d 00 } //01 00 
		$a_01_5 = {50 00 72 00 65 00 76 00 65 00 6e 00 74 00 73 00 20 00 74 00 68 00 65 00 20 00 73 00 61 00 6d 00 65 00 20 00 74 00 6f 00 6b 00 65 00 6e 00 20 00 66 00 72 00 6f 00 6d 00 20 00 62 00 65 00 69 00 6e 00 67 00 20 00 6c 00 6f 00 67 00 67 00 65 00 64 00 } //01 00 
		$a_01_6 = {53 00 65 00 6e 00 64 00 73 00 20 00 79 00 6f 00 75 00 20 00 74 00 68 00 65 00 20 00 6e 00 65 00 77 00 20 00 74 00 6f 00 6b 00 65 00 6e 00 20 00 61 00 6e 00 64 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 61 00 66 00 74 00 65 00 72 00 20 00 76 00 69 00 63 00 74 00 69 00 6d 00 20 00 63 00 68 00 61 00 6e 00 67 00 65 00 73 00 20 00 74 00 68 00 65 00 69 00 72 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00 
		$a_01_7 = {54 00 61 00 6b 00 65 00 73 00 20 00 73 00 61 00 76 00 65 00 64 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 20 00 66 00 72 00 6f 00 6d 00 20 00 74 00 68 00 65 00 69 00 72 00 20 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 73 00 } //01 00 
		$a_01_8 = {54 00 61 00 6b 00 65 00 73 00 20 00 73 00 61 00 76 00 65 00 64 00 20 00 77 00 69 00 66 00 69 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //01 00 
		$a_01_9 = {54 00 61 00 6b 00 65 00 73 00 20 00 73 00 61 00 76 00 65 00 64 00 20 00 72 00 6f 00 62 00 6c 00 6f 00 78 00 20 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 } //01 00 
		$a_01_10 = {43 00 68 00 61 00 6e 00 67 00 65 00 73 00 20 00 74 00 68 00 65 00 20 00 63 00 72 00 79 00 70 00 74 00 6f 00 20 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 20 00 69 00 6e 00 20 00 63 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 20 00 74 00 6f 00 20 00 79 00 6f 00 75 00 72 00 20 00 6f 00 77 00 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}