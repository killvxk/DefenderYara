
rule VirTool_Win32_DupDumz_A_MTB{
	meta:
		description = "VirTool:Win32/DupDumz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {52 74 6c 41 64 6a 75 73 74 50 72 69 76 69 6c 65 67 65 90 02 50 44 49 6e 76 6f 6b 65 90 02 20 44 79 6e 61 6d 69 63 41 50 49 49 6e 76 6f 6b 65 90 02 20 44 49 6e 76 6f 6b 65 2e 44 79 6e 61 6d 69 63 49 6e 76 6f 6b 65 90 00 } //01 00 
		$a_03_1 = {47 65 74 4c 73 61 73 73 48 61 6e 64 6c 65 90 02 20 50 72 6f 63 65 73 73 48 61 6e 64 6c 65 90 02 20 68 46 69 6c 65 90 02 20 47 65 74 41 72 67 75 6d 65 6e 74 73 46 72 6f 6d 46 69 6c 65 90 02 20 69 6e 46 69 6c 65 90 02 20 64 75 6d 70 46 69 6c 65 90 00 } //01 00 
		$a_81_2 = {4d 69 6e 69 44 75 6d 70 57 72 69 74 65 44 75 6d 70 } //01 00 
		$a_81_3 = {4d 69 6e 69 44 75 6d 70 54 6f 4d 65 6d 53 68 61 72 70 } //01 00 
		$a_03_4 = {4c 73 61 73 73 90 02 50 68 50 72 6f 63 65 73 73 90 02 20 47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}