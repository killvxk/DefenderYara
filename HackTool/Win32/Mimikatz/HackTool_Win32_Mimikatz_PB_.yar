
rule HackTool_Win32_Mimikatz_PB_{
	meta:
		description = "HackTool:Win32/Mimikatz.PB!!Mikatz.gen!D,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 05 00 00 03 00 "
		
	strings :
		$a_00_0 = {6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 6d 00 69 00 73 00 63 00 5f 00 70 00 72 00 69 00 6e 00 74 00 6e 00 69 00 67 00 68 00 74 00 6d 00 61 00 72 00 65 00 } //01 00 
		$a_02_1 = {63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 70 00 72 00 69 00 6e 00 74 00 5c 00 90 02 e0 71 00 6d 00 73 00 20 00 38 00 31 00 30 00 90 00 } //01 00 
		$a_00_2 = {52 00 70 00 63 00 42 00 69 00 6e 00 64 00 69 00 6e 00 67 00 53 00 65 00 74 00 4f 00 62 00 6a 00 65 00 63 00 74 00 3a 00 20 00 30 00 78 00 25 00 30 00 38 00 78 00 } //01 00 
		$a_00_3 = {70 00 72 00 69 00 6e 00 74 00 6e 00 69 00 67 00 68 00 74 00 6d 00 61 00 72 00 65 00 5f 00 43 00 61 00 6c 00 6c 00 41 00 64 00 64 00 50 00 72 00 69 00 6e 00 74 00 65 00 72 00 44 00 72 00 69 00 76 00 65 00 72 00 } //01 00 
		$a_00_4 = {70 00 72 00 69 00 6e 00 74 00 6e 00 69 00 67 00 68 00 74 00 6d 00 61 00 72 00 65 00 5f 00 43 00 61 00 6c 00 6c 00 45 00 6e 00 75 00 6d 00 50 00 72 00 69 00 6e 00 74 00 65 00 72 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}