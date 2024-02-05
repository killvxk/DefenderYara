
rule Backdoor_Win32_NetWiredRC_C{
	meta:
		description = "Backdoor:Win32/NetWiredRC.C,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 65 6c 65 63 74 20 2a 20 20 66 72 6f 6d 20 6d 6f 7a 5f 6c 6f 67 69 6e 73 00 } //01 00 
		$a_01_1 = {25 73 5c 4f 70 65 72 61 5c 4f 70 65 72 61 5c 70 72 6f 66 69 6c 65 5c 77 61 6e 64 2e 64 61 74 00 } //01 00 
		$a_01_2 = {25 73 5c 2e 70 75 72 70 6c 65 5c 61 63 63 6f 75 6e 74 73 2e 78 6d 6c 00 } //01 00 
		$a_01_3 = {57 69 6e 64 6f 77 73 4c 69 76 65 3a 6e 61 6d 65 3d 2a 00 } //01 00 
		$a_01_4 = {61 62 65 32 38 36 39 66 2d 39 62 34 37 2d 34 63 64 39 2d 61 33 35 38 2d 63 32 32 39 30 34 64 62 61 37 66 37 00 } //01 00 
		$a_01_5 = {25 73 5c 43 68 72 6f 6d 69 75 6d 5c 55 73 65 72 20 44 61 74 61 5c 44 65 66 61 75 6c 74 5c 4c 6f 67 69 6e 20 44 61 74 61 00 } //01 00 
		$a_01_6 = {5b 42 61 63 6b 73 70 61 63 65 5d 00 5b 45 6e 74 65 72 5d 00 5b 54 61 62 5d 00 } //01 00 
		$a_01_7 = {25 73 07 25 73 07 25 73 07 25 49 36 34 75 07 25 49 36 34 75 07 25 49 36 34 75 07 } //01 00 
		$a_01_8 = {57 49 4e 4e 54 00 4c 41 4e 4d 41 4e 4e 54 00 53 45 52 56 45 52 4e 54 00 } //01 00 
		$a_03_9 = {5b 25 2e 32 64 2f 25 2e 32 64 2f 25 64 90 01 01 25 2e 32 64 3a 25 2e 32 64 3a 25 2e 32 64 5d 90 00 } //00 00 
		$a_00_10 = {7e 15 00 00 2b 55 6e 28 } //d7 43 
	condition:
		any of ($a_*)
 
}