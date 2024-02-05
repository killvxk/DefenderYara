
rule Worm_Win32_Emerleox_K{
	meta:
		description = "Worm:Win32/Emerleox.K,SIGNATURE_TYPE_PEHSTR,36 01 36 01 1c 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 61 73 2e 65 78 65 } //01 00 
		$a_01_1 = {61 76 70 2e 63 6f 6d } //01 00 
		$a_01_2 = {61 76 70 2e 65 78 65 } //01 00 
		$a_01_3 = {72 75 6e 69 65 70 2e 65 78 65 } //01 00 
		$a_01_4 = {50 46 57 2e 65 78 65 } //01 00 
		$a_01_5 = {46 59 46 69 72 65 57 61 6c 6c 2e 65 78 65 } //01 00 
		$a_01_6 = {72 66 77 6d 61 69 6e 2e 65 78 65 } //01 00 
		$a_01_7 = {72 66 77 73 72 76 2e 65 78 65 } //01 00 
		$a_01_8 = {4b 41 56 50 46 2e 65 78 65 } //01 00 
		$a_01_9 = {4b 50 46 57 33 32 2e 65 78 65 } //01 00 
		$a_01_10 = {6e 6f 64 33 32 6b 75 69 2e 65 78 65 } //01 00 
		$a_01_11 = {6e 6f 64 33 32 2e 65 78 65 } //01 00 
		$a_01_12 = {4e 61 76 61 70 73 76 63 2e 65 78 65 } //01 00 
		$a_01_13 = {4e 61 76 61 70 77 33 32 2e 65 78 65 } //01 00 
		$a_01_14 = {61 76 63 6f 6e 73 6f 6c 2e 65 78 65 } //01 00 
		$a_01_15 = {77 65 62 73 63 61 6e 78 2e 65 78 65 } //01 00 
		$a_01_16 = {4e 50 46 4d 6e 74 6f 72 2e 65 78 65 } //01 00 
		$a_01_17 = {76 73 73 74 61 74 2e 65 78 65 } //01 00 
		$a_01_18 = {4b 50 66 77 53 76 63 2e 65 78 65 } //01 00 
		$a_01_19 = {52 61 76 54 61 73 6b 2e 65 78 65 } //01 00 
		$a_01_20 = {52 61 76 2e 65 78 65 } //01 00 
		$a_01_21 = {52 61 76 4d 6f 6e 2e 65 78 65 } //01 00 
		$a_01_22 = {6d 6d 73 6b 2e 65 78 65 } //01 00 
		$a_01_23 = {57 6f 70 74 69 43 6c 65 61 6e 2e 65 78 65 } //01 00 
		$a_01_24 = {51 51 4b 61 76 2e 65 78 65 } //64 00 
		$a_01_25 = {63 6d 64 20 2f 63 20 65 63 68 6f 20 59 7c 20 63 61 63 6c 73 } //64 00 
		$a_01_26 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //64 00 
		$a_01_27 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6d 61 67 65 20 46 69 6c 65 20 45 78 65 63 75 74 69 6f 6e 20 4f 70 74 69 6f 6e 73 5c } //00 00 
	condition:
		any of ($a_*)
 
}