
rule Trojan_BAT_Stimilini_N{
	meta:
		description = "Trojan:BAT/Stimilini.N,SIGNATURE_TYPE_PEHSTR,1a 00 1a 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 65 74 5f 50 61 73 73 77 6f 72 64 } //05 00 
		$a_01_1 = {3a 00 2f 00 2f 00 67 00 65 00 2e 00 74 00 74 00 2f 00 61 00 70 00 69 00 2f 00 31 00 2f 00 66 00 69 00 6c 00 65 00 73 00 2f 00 38 00 69 00 4c 00 50 00 6d 00 72 00 39 00 32 00 2f 00 30 00 2f 00 62 00 6c 00 6f 00 62 00 3f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 } //05 00 
		$a_01_2 = {3a 00 2f 00 2f 00 67 00 65 00 2e 00 74 00 74 00 2f 00 61 00 70 00 69 00 2f 00 31 00 2f 00 66 00 69 00 6c 00 65 00 73 00 2f 00 32 00 30 00 38 00 41 00 67 00 72 00 39 00 32 00 2f 00 30 00 2f 00 62 00 6c 00 6f 00 62 00 3f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 } //05 00 
		$a_01_3 = {3a 00 2f 00 2f 00 67 00 65 00 2e 00 74 00 74 00 2f 00 61 00 70 00 69 00 2f 00 31 00 2f 00 66 00 69 00 6c 00 65 00 73 00 2f 00 34 00 6f 00 4f 00 42 00 48 00 72 00 39 00 32 00 2f 00 30 00 2f 00 62 00 6c 00 6f 00 62 00 3f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 } //14 00 
		$a_01_4 = {48 00 6f 00 6c 00 6c 00 79 00 4d 00 6f 00 6c 00 6c 00 79 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}