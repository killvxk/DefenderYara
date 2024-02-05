
rule TrojanDropper_Win32_VB_BG{
	meta:
		description = "TrojanDropper:Win32/VB.BG,SIGNATURE_TYPE_PEHSTR,10 00 0f 00 10 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 42 35 21 36 26 76 62 36 63 68 73 2e 64 6c 6c } //01 00 
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 76 62 36 6d 69 6e 69 5c 56 42 36 2e 4f 4c 42 } //01 00 
		$a_01_2 = {50 53 41 50 49 2e 44 4c 4c } //01 00 
		$a_01_3 = {54 65 72 6d 69 6e 61 74 65 50 72 6f 63 65 73 73 } //01 00 
		$a_01_4 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00 
		$a_01_5 = {53 48 47 65 74 50 61 74 68 46 72 6f 6d 49 44 4c 69 73 74 41 } //01 00 
		$a_01_6 = {33 00 36 00 30 00 73 00 61 00 66 00 65 00 2e 00 65 00 78 00 65 00 5e 00 33 00 36 00 30 00 74 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 5e 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 55 00 49 00 2e 00 65 00 78 00 65 00 5e 00 61 00 76 00 70 00 2e 00 65 00 78 00 65 00 5e 00 4d 00 63 00 73 00 68 00 69 00 65 00 6c 00 64 00 2e 00 65 00 78 00 65 00 5e 00 56 00 73 00 54 00 73 00 6b 00 4d 00 67 00 72 00 2e 00 65 00 78 00 65 00 5e 00 6e 00 61 00 50 00 72 00 64 00 4d 00 67 00 72 00 2e 00 65 00 78 00 65 00 5e 00 54 00 42 00 4d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 5e 00 73 00 63 00 61 00 6e 00 33 00 32 00 2e 00 65 00 78 00 65 00 5e 00 43 00 43 00 65 00 6e 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 5e 00 52 00 61 00 76 00 54 00 61 00 73 00 6b 00 } //01 00 
		$a_01_7 = {52 00 61 00 76 00 54 00 61 00 73 00 6b 00 2e 00 65 00 78 00 65 00 5e 00 52 00 61 00 76 00 2e 00 65 00 78 00 65 00 5e 00 52 00 61 00 76 00 4d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 5e 00 52 00 61 00 76 00 6d 00 6f 00 6e 00 44 00 2e 00 65 00 78 00 65 00 5e 00 52 00 61 00 76 00 53 00 74 00 75 00 62 00 2e 00 65 00 78 00 65 00 5e 00 6b 00 76 00 78 00 70 00 2e 00 6b 00 78 00 70 00 5e 00 4b 00 56 00 4d 00 6f 00 6e 00 58 00 50 00 2e 00 6b 00 78 00 70 00 5e 00 4b 00 56 00 43 00 65 00 6e 00 74 00 65 00 72 00 2e 00 6b 00 78 00 70 00 5e 00 6b 00 76 00 73 00 72 00 76 00 78 00 70 00 2e 00 65 00 78 00 65 00 5e 00 4b 00 52 00 65 00 67 00 45 00 78 00 2e 00 65 00 78 00 65 00 5e 00 6b 00 61 00 76 00 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 5e 00 55 00 49 00 48 00 } //01 00 
		$a_01_8 = {55 00 49 00 48 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 5e 00 54 00 72 00 6f 00 6a 00 44 00 69 00 65 00 2e 00 65 00 78 00 65 00 5e 00 46 00 72 00 6f 00 67 00 41 00 67 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 5e 00 6b 00 61 00 76 00 2e 00 65 00 78 00 65 00 5e 00 6b 00 61 00 76 00 33 00 32 00 2e 00 65 00 78 00 65 00 5e 00 6b 00 61 00 76 00 73 00 74 00 61 00 72 00 74 00 2e 00 65 00 78 00 65 00 5e 00 6b 00 61 00 74 00 6d 00 61 00 69 00 6e 00 2e 00 65 00 78 00 65 00 5e 00 6b 00 70 00 66 00 77 00 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 5e 00 6b 00 70 00 66 00 77 00 33 00 32 00 2e 00 65 00 78 00 65 00 5e 00 72 00 66 00 77 00 6d 00 61 00 69 00 6e 00 2e 00 65 00 78 00 65 00 5e 00 72 00 66 00 77 00 70 00 72 00 6f 00 78 00 79 00 } //01 00 
		$a_01_9 = {72 00 66 00 77 00 70 00 72 00 6f 00 78 00 79 00 2e 00 65 00 78 00 65 00 5e 00 72 00 66 00 77 00 73 00 72 00 76 00 2e 00 65 00 78 00 65 00 5e 00 54 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 5e 00 52 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 5e 00 4d 00 73 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 65 00 78 00 65 00 5e 00 33 00 36 00 30 00 74 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 5e 00 69 00 63 00 65 00 73 00 77 00 6f 00 72 00 64 00 2e 00 65 00 78 00 65 00 5e 00 6d 00 6d 00 63 00 2e 00 65 00 78 00 65 00 5e 00 4b 00 57 00 61 00 74 00 63 00 68 00 2e 00 65 00 78 00 65 00 5e 00 53 00 6e 00 69 00 70 00 65 00 53 00 77 00 6f 00 72 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_10 = {6b 00 69 00 6c 00 6c 00 6d 00 65 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_11 = {77 00 69 00 6e 00 64 00 69 00 72 00 } //01 00 
		$a_01_12 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 77 00 73 00 63 00 6e 00 74 00 66 00 79 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_13 = {64 00 65 00 6c 00 20 00 25 00 30 00 } //01 00 
		$a_01_14 = {3a 00 72 00 65 00 64 00 65 00 6c 00 } //01 00 
		$a_01_15 = {70 00 61 00 63 00 6b 00 69 00 6e 00 66 00 6f 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}