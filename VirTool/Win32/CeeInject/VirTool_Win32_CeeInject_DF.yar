
rule VirTool_Win32_CeeInject_DF{
	meta:
		description = "VirTool:Win32/CeeInject.DF,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0a 00 00 01 00 "
		
	strings :
		$a_03_0 = {66 8b 02 66 c1 e8 0c 66 25 0f 00 25 ff ff 00 00 89 85 90 01 02 ff ff 83 bd 90 01 02 ff ff 04 0f 87 90 01 02 00 00 8b 8d 90 01 02 ff ff ff 24 8d 90 01 03 00 90 00 } //01 00 
		$a_01_1 = {83 b8 8c 00 00 00 00 0f 84 } //01 00 
		$a_01_2 = {83 ba 8c 00 00 00 00 0f 84 } //01 00 
		$a_01_3 = {8b 4d 08 03 48 10 89 4d } //01 00 
		$a_01_4 = {8b 42 3c 8b 4d 08 8d 54 01 18 } //01 00 
		$a_03_5 = {8b 51 10 52 8b 45 90 01 01 8b 4d 08 03 48 14 51 8b 55 90 01 01 8b 45 0c 03 42 0c 50 90 03 01 01 e8 ff 90 00 } //01 00 
		$a_03_6 = {8b 48 10 51 8b 55 90 01 01 8b 45 08 03 42 14 50 8b 4d 90 01 01 8b 55 0c 03 51 0c 52 90 03 01 01 e8 ff 90 00 } //01 00 
		$a_03_7 = {8b 51 38 81 c2 00 10 00 00 52 6a 00 6a 04 6a 00 6a ff ff 95 90 01 02 ff ff 90 00 } //01 00 
		$a_01_8 = {8a 1c 10 03 cb 81 e1 ff 00 00 80 79 08 49 81 c9 00 ff ff ff 41 } //01 00 
		$a_01_9 = {4d 61 70 56 69 65 77 4f 66 46 69 6c 65 45 78 } //00 00 
	condition:
		any of ($a_*)
 
}