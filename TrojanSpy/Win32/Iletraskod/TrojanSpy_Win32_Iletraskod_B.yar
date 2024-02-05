
rule TrojanSpy_Win32_Iletraskod_B{
	meta:
		description = "TrojanSpy:Win32/Iletraskod.B,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 45 54 61 73 6b 2e 64 6c 6c 00 41 63 74 69 76 65 } //01 00 
		$a_01_1 = {43 6f 6e 6e 65 63 74 42 61 6e 6b 00 44 69 73 63 6f 6e 6e 65 63 74 } //01 00 
		$a_01_2 = {23 56 45 52 53 49 4f 4e 2d 50 57 2d 32 2e 30 2e 30 2e 30 00 } //01 00 
		$a_01_3 = {23 00 49 00 44 00 43 00 6c 00 49 00 45 00 4e 00 54 00 2d 00 00 00 } //01 00 
		$a_01_4 = {23 00 42 00 41 00 4e 00 4b 00 2d 00 00 00 } //01 00 
		$a_01_5 = {23 00 55 00 53 00 45 00 52 00 2d 00 00 00 } //01 00 
		$a_01_6 = {23 00 42 00 52 00 4f 00 57 00 53 00 45 00 52 00 2d 00 00 00 } //01 00 
		$a_01_7 = {23 00 50 00 4c 00 55 00 47 00 49 00 4e 00 2d 00 00 00 } //01 00 
		$a_01_8 = {23 00 50 00 43 00 4e 00 41 00 4d 00 45 00 2d 00 00 00 } //01 00 
		$a_01_9 = {8b 45 08 8b d0 8b 45 0c f0 87 02 5d c2 08 00 } //00 00 
		$a_00_10 = {5d 04 00 00 fb 65 } //03 80 
	condition:
		any of ($a_*)
 
}