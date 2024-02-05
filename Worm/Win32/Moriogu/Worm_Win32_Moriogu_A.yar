
rule Worm_Win32_Moriogu_A{
	meta:
		description = "Worm:Win32/Moriogu.A,SIGNATURE_TYPE_PEHSTR,19 00 19 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {5c 00 56 00 69 00 72 00 75 00 73 00 5c 00 52 00 6f 00 6d 00 65 00 6f 00 2e 00 76 00 62 00 70 00 } //05 00 
		$a_01_1 = {43 00 3a 00 5c 00 42 00 6f 00 6f 00 74 00 2e 00 69 00 6e 00 69 00 } //05 00 
		$a_01_2 = {5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //05 00 
		$a_01_3 = {5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 4d 00 44 00 } //05 00 
		$a_01_4 = {5c 00 57 00 69 00 6e 00 32 00 78 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_5 = {6d 00 75 00 6c 00 74 00 69 00 28 00 30 00 29 00 64 00 69 00 73 00 6b 00 28 00 30 00 29 00 72 00 64 00 69 00 73 00 6b 00 28 00 30 00 29 00 70 00 61 00 72 00 74 00 69 00 74 00 69 00 6f 00 6e 00 28 00 31 00 29 00 5c 00 52 00 6f 00 6d 00 65 00 6f 00 3d 00 22 00 53 00 75 00 20 00 50 00 43 00 20 00 65 00 73 00 74 00 61 00 20 00 69 00 6e 00 66 00 65 00 73 00 74 00 61 00 64 00 61 00 20 00 70 00 6f 00 72 00 20 00 75 00 6e 00 20 00 76 00 69 00 72 00 75 00 73 00 20 00 64 00 65 00 20 00 75 00 6c 00 74 00 69 00 6d 00 61 00 20 00 67 00 65 00 6e 00 65 00 72 00 61 00 63 00 69 00 6f 00 6e 00 22 00 } //00 00 
	condition:
		any of ($a_*)
 
}