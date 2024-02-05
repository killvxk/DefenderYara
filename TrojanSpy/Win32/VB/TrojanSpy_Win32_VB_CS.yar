
rule TrojanSpy_Win32_VB_CS{
	meta:
		description = "TrojanSpy:Win32/VB.CS,SIGNATURE_TYPE_PEHSTR,09 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 2e 00 61 00 73 00 70 00 3f 00 6d 00 73 00 67 00 3d 00 } //03 00 
		$a_01_1 = {5c 00 50 00 75 00 73 00 6d 00 69 00 6e 00 74 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 73 00 68 00 61 00 72 00 65 00 64 00 61 00 63 00 63 00 65 00 73 00 73 00 } //01 00 
		$a_01_3 = {66 00 74 00 70 00 20 00 2d 00 69 00 20 00 2d 00 73 00 3a 00 } //03 00 
		$a_01_4 = {5c 00 50 00 75 00 73 00 6d 00 69 00 6e 00 74 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 44 00 69 00 72 00 2e 00 62 00 61 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}