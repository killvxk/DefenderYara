
rule TrojanSpy_Win32_Bancos_YX{
	meta:
		description = "TrojanSpy:Win32/Bancos.YX,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 03 00 "
		
	strings :
		$a_01_0 = {61 6c 65 72 74 28 22 53 65 6e 68 61 20 64 6f 20 43 61 72 74 } //02 00 
		$a_01_1 = {73 65 6e 68 61 36 20 3d 20 3a 70 73 65 6e 68 61 36 2c } //02 00 
		$a_01_2 = {69 6d 67 54 65 63 6c 61 64 6f 30 36 5f 4f 6e 43 6c 69 63 6b } //04 00 
		$a_01_3 = {75 70 64 61 74 65 20 4e 45 20 73 65 74 20 73 74 5f 65 6e 76 69 61 64 6f 20 3d 3a 70 53 54 5f 45 4e 56 49 41 44 4f 2c 20 4e 4d 5f 54 4f 4b 45 4e 20 3d 3a 70 4e 4d 5f 54 4f 4b 45 4e 2c 20 64 73 5f 63 72 74 20 3d 3a 70 64 73 5f 63 72 74 2c 20 64 73 5f 6b 65 79 } //00 00 
	condition:
		any of ($a_*)
 
}