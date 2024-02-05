
rule VirTool_WinNT_Cutwail_J{
	meta:
		description = "VirTool:WinNT/Cutwail.J,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 08 00 00 02 00 "
		
	strings :
		$a_03_0 = {89 45 f8 8b 55 0c 52 a1 90 01 04 8b 4d fc 03 08 51 e8 90 01 02 00 00 83 c4 08 85 c0 75 04 b0 01 eb 02 32 c0 90 00 } //02 00 
		$a_03_1 = {83 7d 08 00 74 63 83 7d 0c 00 74 5d 68 90 01 02 00 00 8d 8d 90 01 02 ff ff 51 8d 95 90 01 02 ff ff 52 e8 90 00 } //01 00 
		$a_03_2 = {24 08 9d 74 17 81 7d 90 01 01 40 24 08 9d 90 00 } //01 00 
		$a_01_3 = {45 00 58 00 45 00 52 00 45 00 53 00 4f 00 55 00 52 00 43 00 45 00 } //01 00 
		$a_01_4 = {5c 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00 
		$a_01_5 = {57 00 69 00 6e 00 4e 00 74 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_6 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 50 00 72 00 6f 00 74 00 32 00 } //01 00 
		$a_01_7 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 50 00 72 00 6f 00 74 00 32 00 } //00 00 
	condition:
		any of ($a_*)
 
}