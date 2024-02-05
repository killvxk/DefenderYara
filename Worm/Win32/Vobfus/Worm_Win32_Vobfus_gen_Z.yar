
rule Worm_Win32_Vobfus_gen_Z{
	meta:
		description = "Worm:Win32/Vobfus.gen!Z,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {38 00 42 00 34 00 43 00 32 00 34 00 30 00 38 00 35 00 31 00 3c 00 50 00 41 00 54 00 43 00 48 00 31 00 3e 00 45 00 38 00 3c 00 50 00 41 00 54 00 43 00 48 00 32 00 3e 00 35 00 39 00 38 00 39 00 30 00 31 00 36 00 36 00 33 00 31 00 43 00 30 00 43 00 33 00 } //01 00 
		$a_01_1 = {73 00 62 00 69 00 65 00 64 00 6c 00 6c 00 0d 00 0a 00 64 00 62 00 67 00 68 00 65 00 6c 00 70 00 0d 00 0a 00 73 00 6e 00 78 00 68 00 6b 00 } //01 00 
		$a_01_2 = {5c 00 57 00 69 00 6e 00 52 00 41 00 52 00 5c 00 52 00 61 00 72 00 2e 00 65 00 78 00 65 00 0d 00 0a 00 20 00 61 00 20 00 2d 00 79 00 20 00 2d 00 65 00 70 00 20 00 2d 00 49 00 42 00 43 00 4b 00 } //01 00 
		$a_01_3 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 74 00 61 00 73 00 6b 00 6c 00 69 00 73 00 74 00 26 00 26 00 64 00 65 00 6c 00 } //01 00 
		$a_01_4 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 0d 00 0a 00 2e 00 65 00 78 00 65 00 0d 00 0a 00 3a 00 2e 00 64 00 6c 00 } //01 00 
		$a_01_5 = {78 00 2e 00 6d 00 70 00 65 00 67 00 0d 00 0a 00 53 00 65 00 63 00 72 00 65 00 74 00 0d 00 0a 00 53 00 65 00 78 00 79 00 0d 00 0a 00 50 00 6f 00 72 00 6e 00 } //01 00 
		$a_01_6 = {6f 00 71 00 32 00 2a 00 6d 00 63 00 6b 00 78 00 6a 00 62 00 6e 00 6f 00 66 00 7d 00 } //00 00 
		$a_00_7 = {5d 04 00 00 } //c0 f9 
	condition:
		any of ($a_*)
 
}