
rule HackTool_Win32_Sechack_A{
	meta:
		description = "HackTool:Win32/Sechack.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {53 65 63 48 61 63 6b 20 31 2e 30 20 62 79 20 4f 53 41 20 0a } //01 00 
		$a_00_1 = {22 4c 6f 67 6f 6e 49 64 22 3a 20 22 25 75 2d 25 75 22 2c 00 00 00 00 00 22 50 6b 67 41 75 74 68 22 3a 20 22 00 00 00 00 22 55 73 65 72 4e 61 6d 65 22 3a 20 22 00 00 00 22 44 6f 6d 61 69 6e 22 } //01 00 
		$a_00_2 = {4c 73 61 49 52 65 67 69 73 74 65 72 4e 6f 74 69 66 69 63 61 74 69 6f 6e 00 00 00 00 00 00 00 00 4c 73 61 49 43 61 6e 63 65 6c 4e 6f 74 69 66 69 63 61 74 69 6f 6e 00 00 6b 00 65 00 72 00 62 00 } //00 00 
		$a_00_3 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}