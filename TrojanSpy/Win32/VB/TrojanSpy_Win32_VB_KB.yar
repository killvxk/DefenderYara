
rule TrojanSpy_Win32_VB_KB{
	meta:
		description = "TrojanSpy:Win32/VB.KB,SIGNATURE_TYPE_PEHSTR,1e 00 19 00 0d 00 00 05 00 "
		
	strings :
		$a_01_0 = {6e 00 2d 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //05 00 
		$a_01_1 = {74 79 70 65 33 32 } //01 00 
		$a_01_2 = {7b 00 53 00 63 00 72 00 6f 00 6c 00 6c 00 4c 00 6f 00 63 00 6b 00 7d 00 } //01 00 
		$a_01_3 = {7b 00 50 00 72 00 69 00 6e 00 74 00 53 00 63 00 72 00 65 00 65 00 6e 00 7d 00 } //01 00 
		$a_01_4 = {7b 00 42 00 61 00 63 00 6b 00 53 00 70 00 61 00 63 00 65 00 7d 00 } //01 00 
		$a_01_5 = {7b 00 46 00 2d 00 31 00 7d 00 } //01 00 
		$a_01_6 = {7b 00 46 00 2d 00 31 00 32 00 7d 00 } //05 00 
		$a_01_7 = {53 00 55 00 42 00 4a 00 45 00 43 00 54 00 3a 00 20 00 54 00 61 00 72 00 69 00 68 00 3a 00 } //05 00 
		$a_01_8 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 74 00 79 00 70 00 65 00 33 00 32 00 2e 00 65 00 78 00 65 00 3a 00 2a 00 3a 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 3a 00 74 00 79 00 70 00 65 00 33 00 32 00 } //01 00 
		$a_01_9 = {63 00 6b 00 69 00 65 00 20 00 76 00 20 00 6d 00 73 00 } //01 00 
		$a_01_10 = {42 00 69 00 6c 00 67 00 69 00 73 00 61 00 79 00 61 00 72 00 20 00 61 00 64 00 } //01 00 
		$a_01_11 = {20 00 76 00 65 00 20 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 6c 00 65 00 72 00 20 00 } //05 00 
		$a_01_12 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 6f 00 70 00 74 00 72 00 76 00 65 00 73 00 2e 00 73 00 79 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}