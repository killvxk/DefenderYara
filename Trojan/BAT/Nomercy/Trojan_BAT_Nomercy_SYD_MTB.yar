
rule Trojan_BAT_Nomercy_SYD_MTB{
	meta:
		description = "Trojan:BAT/Nomercy.SYD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 15 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 00 6f 00 4d 00 65 00 72 00 63 00 79 00 2d 00 76 00 31 00 2e 00 30 00 } //01 00 
		$a_01_1 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 4b 00 65 00 72 00 6e 00 65 00 6c 00 44 00 72 00 69 00 76 00 65 00 72 00 73 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {73 00 69 00 78 00 2d 00 63 00 6c 00 6f 00 77 00 6e 00 73 00 2d 00 73 00 69 00 6e 00 67 00 2d 00 31 00 30 00 33 00 2d 00 31 00 31 00 39 00 2d 00 32 00 34 00 30 00 2d 00 31 00 36 00 36 00 2e 00 6c 00 6f 00 63 00 61 00 2e 00 6c 00 74 00 } //01 00 
		$a_01_3 = {61 00 70 00 69 00 2e 00 69 00 70 00 69 00 66 00 79 00 2e 00 6f 00 72 00 67 00 } //01 00 
		$a_01_4 = {48 74 74 70 57 65 62 52 65 71 75 65 73 74 } //01 00 
		$a_01_5 = {48 74 74 70 57 65 62 52 65 73 70 6f 6e 73 65 } //01 00 
		$a_01_6 = {47 65 74 52 65 73 70 6f 6e 73 65 } //01 00 
		$a_01_7 = {50 6f 73 74 55 49 44 } //01 00 
		$a_01_8 = {2f 00 61 00 3f 00 75 00 69 00 64 00 3d 00 } //01 00 
		$a_01_9 = {26 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3d 00 } //01 00 
		$a_01_10 = {55 00 49 00 44 00 20 00 61 00 6e 00 64 00 20 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 73 00 65 00 6e 00 74 00 } //01 00 
		$a_01_11 = {43 6f 6c 6c 65 63 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 5f 43 4c 49 } //01 00 
		$a_01_12 = {77 00 68 00 6f 00 61 00 6d 00 69 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 69 00 6e 00 66 00 6f 00 3a 00 } //01 00 
		$a_01_13 = {61 00 72 00 70 00 20 00 2d 00 61 00 20 00 69 00 6e 00 66 00 6f 00 3a 00 } //01 00 
		$a_01_14 = {69 00 70 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 69 00 6e 00 66 00 6f 00 3a 00 } //01 00 
		$a_01_15 = {6e 00 65 00 74 00 20 00 76 00 69 00 65 00 77 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 69 00 6e 00 66 00 6f 00 3a 00 } //01 00 
		$a_01_16 = {6e 00 65 00 74 00 73 00 74 00 61 00 74 00 20 00 2d 00 6e 00 61 00 6f 00 20 00 69 00 6e 00 66 00 6f 00 3a 00 20 00 } //01 00 
		$a_01_17 = {72 00 6f 00 75 00 74 00 65 00 20 00 70 00 72 00 69 00 6e 00 74 00 20 00 69 00 6e 00 66 00 6f 00 3a 00 } //01 00 
		$a_01_18 = {73 00 79 00 73 00 74 00 65 00 6d 00 69 00 6e 00 66 00 6f 00 20 00 69 00 6e 00 66 00 6f 00 3a 00 } //01 00 
		$a_01_19 = {54 00 6f 00 6f 00 6b 00 20 00 77 00 65 00 62 00 63 00 61 00 6d 00 20 00 73 00 6e 00 61 00 70 00 73 00 68 00 6f 00 74 00 } //01 00 
		$a_01_20 = {53 00 65 00 6e 00 64 00 69 00 6e 00 67 00 20 00 77 00 65 00 62 00 63 00 61 00 6d 00 20 00 73 00 6e 00 61 00 70 00 73 00 68 00 6f 00 74 00 2e 00 2e 00 2e 00 } //00 00 
	condition:
		any of ($a_*)
 
}