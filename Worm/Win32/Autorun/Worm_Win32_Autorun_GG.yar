
rule Worm_Win32_Autorun_GG{
	meta:
		description = "Worm:Win32/Autorun.GG,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 69 6e 65 31 20 3d 20 22 5b 61 75 74 6f 72 75 6e 5d 22 20 26 26 20 6c 69 6e 65 32 20 3d 20 22 6f 70 65 6e 20 3d 20 53 79 73 74 65 6d 5c 44 72 69 76 65 47 75 61 72 64 5c 44 72 69 76 65 50 72 6f 74 65 63 74 2e 65 78 65 20 2d 72 75 6e a0 22 20 26 26 } //01 00 
		$a_00_1 = {5f 5f 0d 0a 0d 0a 54 68 69 73 20 74 6f 6f 6c 20 69 73 20 74 6f 20 70 72 6f 74 65 63 74 20 72 65 6d 6f 76 61 62 6c 65 20 73 74 6f 72 61 67 65 0d 0a 64 65 76 69 63 65 73 20 66 72 6f 6d 20 6d 61 6c 77 61 72 65 73 2e 0d 0a 5f 5f } //01 00 
		$a_00_2 = {66 69 6c 65 73 65 74 61 74 74 72 69 62 2c 20 2d 52 41 53 48 2c 20 25 74 68 73 64 72 76 25 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 } //01 00 
		$a_00_3 = {4c 6f 6f 70 2c 20 25 75 73 65 72 70 72 6f 66 69 6c 65 25 5c 4c 6f 63 61 6c 20 53 65 74 74 69 6e 67 73 5c 54 65 6d 70 6f 72 61 72 79 20 49 6e 74 65 72 6e 65 74 20 46 69 6c 65 73 5c 2a 2e 6a 70 67 2c 31 2c 31 0d 0a 7b 0d 0a 49 66 20 41 5f 4c 6f 6f 70 66 69 6c 65 6e 61 6d 65 20 63 6f 6e 74 61 69 6e 73 20 55 70 64 61 74 65 4b 42 } //00 00 
	condition:
		any of ($a_*)
 
}