
rule Worm_Win32_Autorun_CR{
	meta:
		description = "Worm:Win32/Autorun.CR,SIGNATURE_TYPE_PEHSTR,ffffffa6 01 ffffffa6 01 0a 00 00 64 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //64 00 
		$a_01_1 = {2a 00 41 00 63 00 74 00 69 00 76 00 65 00 4d 00 53 00 4e 00 50 00 2a 00 } //64 00 
		$a_01_2 = {5c 00 50 00 61 00 62 00 6c 00 6f 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 6f 00 73 00 5c 00 56 00 69 00 73 00 75 00 61 00 6c 00 5c 00 70 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 73 00 5c 00 4c 00 69 00 76 00 65 00 55 00 70 00 64 00 61 00 74 00 65 00 65 00 2e 00 76 00 62 00 70 00 } //64 00 
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 75 00 73 00 75 00 61 00 72 00 69 00 6f 00 73 00 2e 00 6c 00 79 00 63 00 6f 00 73 00 2e 00 65 00 73 00 2f 00 73 00 76 00 63 00 70 00 61 00 67 00 65 00 } //0a 00 
		$a_01_4 = {41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //0a 00 
		$a_01_5 = {5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 } //01 00 
		$a_01_6 = {2f 00 75 00 70 00 64 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_7 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 62 00 73 00 75 00 2e 00 64 00 61 00 74 00 } //01 00 
		$a_01_8 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 69 00 6e 00 66 00 5c 00 69 00 6e 00 66 00 64 00 61 00 74 00 61 00 2e 00 69 00 6e 00 66 00 } //01 00 
		$a_01_9 = {43 00 3a 00 2f 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2f 00 73 00 79 00 73 00 74 00 65 00 6d 00 2f 00 73 00 65 00 72 00 76 00 69 00 64 00 6f 00 72 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}