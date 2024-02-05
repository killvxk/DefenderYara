
rule Virus_Win32_Hipak_A{
	meta:
		description = "Virus:Win32/Hipak.A,SIGNATURE_TYPE_PEHSTR_EXT,75 00 75 00 09 00 00 64 00 "
		
	strings :
		$a_02_0 = {55 8b ec 6a ff 68 90 01 04 68 90 01 04 64 a1 00 00 00 00 50 64 89 25 00 00 00 00 83 ec 68 53 56 57 89 65 e8 33 db 89 5d fc 6a 02 5f 57 ff 15 90 01 04 59 83 0d 90 01 04 ff 83 0d 90 01 04 ff ff 15 90 01 04 8b 0d 90 01 04 89 08 ff 15 90 01 04 8b 0d 90 01 04 89 08 a1 90 01 04 8b 00 a3 90 01 04 e8 f4 01 00 00 39 1d 90 01 04 75 0c 68 90 01 04 ff 15 90 01 04 59 e8 c0 01 00 00 68 90 00 } //0a 00 
		$a_00_1 = {5f 49 6e 73 74 61 6c 6c 46 69 6c 74 65 72 40 38 00 00 00 00 68 00 6b 00 61 00 70 00 69 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 00 00 00 00 00 00 2f 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 00 00 00 00 00 00 00 00 6f 70 65 6e 00 00 00 00 2f 61 75 74 6f 72 75 6e 00 00 00 00 66 69 72 65 77 61 6c 6c 00 00 00 00 02 00 00 00 2e 72 65 6c 6f 63 00 00 5c 00 00 00 2a 2e 2a 00 61 3a 5c 00 53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 00 2d 00 00 00 2e 65 78 65 } //01 00 
		$a_00_2 = {4d 61 70 56 69 65 77 4f 66 46 69 6c 65 } //01 00 
		$a_00_3 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //01 00 
		$a_00_4 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //01 00 
		$a_00_5 = {43 72 65 61 74 65 54 68 72 65 61 64 } //01 00 
		$a_00_6 = {53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 } //01 00 
		$a_00_7 = {57 53 32 5f 33 32 2e 64 6c 6c } //01 00 
		$a_00_8 = {4d 46 43 34 32 75 2e 44 4c 4c } //00 00 
	condition:
		any of ($a_*)
 
}