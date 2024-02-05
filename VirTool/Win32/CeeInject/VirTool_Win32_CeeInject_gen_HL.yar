
rule VirTool_Win32_CeeInject_gen_HL{
	meta:
		description = "VirTool:Win32/CeeInject.gen!HL,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {89 04 24 ff d5 83 ec 28 85 c0 0f 84 90 01 02 00 00 c7 44 24 0c 04 00 00 00 c7 44 24 08 00 10 00 00 c7 44 24 04 04 00 00 00 c7 04 24 00 00 00 00 ff 54 24 90 01 01 83 ec 10 a3 90 01 04 c7 00 07 00 01 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_CeeInject_gen_HL_2{
	meta:
		description = "VirTool:Win32/CeeInject.gen!HL,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f a2 0f 31 90 02 0a 0f a2 0f 31 90 02 08 29 f8 29 f2 89 45 fc 89 55 f8 83 7d fc 06 90 02 30 81 7d fc 56 01 00 00 90 00 } //01 00 
		$a_03_1 = {85 c9 74 06 30 17 49 47 eb f6 59 90 09 0c 00 00 00 00 ba 90 01 01 00 00 00 8b 7c 24 10 90 00 } //00 00 
		$a_00_2 = {78 } //67 01 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_CeeInject_gen_HL_3{
	meta:
		description = "VirTool:Win32/CeeInject.gen!HL,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {00 00 00 85 fb 8b 7c 24 0c 85 fb 83 ef 06 85 fb 85 c9 74 90 01 01 85 fb 30 17 85 fb 49 85 fb 4f 85 fb eb ee 90 09 07 00 b9 90 01 02 00 00 ba 90 00 } //01 00 
		$a_03_1 = {8b 7c 24 0c 90 90 90 90 83 ef 06 90 90 90 90 85 c9 74 10 90 90 90 90 30 17 90 90 90 90 49 90 90 90 90 4f 90 90 90 90 eb ee 90 09 0c 00 b9 90 01 02 00 00 ba 90 01 04 90 90 90 90 90 00 } //01 00 
		$a_03_2 = {84 e8 8b 7c 24 0c 84 e8 83 ef 06 84 e8 85 c9 74 10 84 e8 30 17 84 e8 49 84 e8 4f 84 e8 eb ee 90 09 0a 00 b9 90 01 02 00 00 ba 90 00 } //01 00 
		$a_03_3 = {84 f1 8b 7c 24 10 84 f1 85 c9 74 90 01 01 84 f1 30 17 84 f1 49 84 f1 47 84 f1 eb ee 90 09 0c 00 b9 90 01 01 00 00 00 84 f1 ba 90 00 } //01 00 
		$a_03_4 = {8b 7c 24 0c 90 90 90 90 85 c9 74 90 01 01 90 90 90 90 90 90 90 90 30 17 90 90 90 90 49 90 90 90 90 47 90 90 90 90 eb ec 90 09 0e 00 b9 90 01 01 00 00 00 90 90 90 90 ba 90 00 } //01 00 
		$a_01_5 = {84 f1 8b 7c 24 10 84 f1 83 ef 08 84 f1 85 c9 74 10 84 f1 30 17 84 f1 49 84 f1 4f 84 f1 eb ee } //01 00 
		$a_03_6 = {57 52 51 b9 90 01 02 00 00 ba 90 01 04 8b 7c 24 10 83 ef 08 85 c9 74 06 30 17 49 4f eb f6 59 5a 5f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_CeeInject_gen_HL_4{
	meta:
		description = "VirTool:Win32/CeeInject.gen!HL,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 0a 00 00 01 00 "
		
	strings :
		$a_03_0 = {89 45 08 8b 45 08 69 c0 90 01 04 29 90 17 03 01 01 01 c1 c2 c3 89 90 17 03 01 01 01 c8 d0 d8 89 45 08 90 00 } //01 00 
		$a_03_1 = {00 48 00 00 eb 90 14 ba 90 01 02 00 00 eb 90 00 } //01 00 
		$a_03_2 = {85 c0 eb 05 90 01 05 74 90 01 01 eb 90 14 30 90 01 01 eb 90 14 48 eb 90 14 90 03 01 01 42 47 eb 90 00 } //01 00 
		$a_03_3 = {85 db eb 05 90 01 05 74 90 01 01 eb 90 14 30 90 01 01 eb 90 14 4b eb 90 14 90 17 03 01 01 01 42 46 47 eb 90 00 } //01 00 
		$a_03_4 = {85 f6 eb 05 90 01 05 74 90 01 01 eb 90 14 30 90 01 01 eb 90 14 4e eb 90 14 90 17 04 01 01 01 01 41 42 46 47 eb 90 00 } //01 00 
		$a_03_5 = {ff 00 eb da a1 90 01 04 ff d0 90 09 0e 00 30 18 b8 90 01 04 ff 08 b8 90 00 } //01 00 
		$a_03_6 = {0f a2 0f 31 90 05 05 01 90 89 c6 90 05 05 01 90 89 d7 90 05 05 01 90 0f a2 0f 31 90 05 05 01 90 29 f0 90 05 05 01 90 29 fa 90 05 05 01 90 89 45 fc 90 05 05 01 90 89 55 f8 90 05 05 01 90 5f 90 05 05 01 90 5e 90 05 05 01 90 81 7d fc 90 00 } //01 00 
		$a_03_7 = {0f a2 0f 31 90 05 02 01 90 90 03 01 01 50 52 90 05 02 01 90 90 03 01 01 52 50 90 05 02 01 90 0f a2 90 05 02 01 90 0f 31 90 00 } //01 00 
		$a_03_8 = {0f a2 0f 31 90 05 08 01 90 90 02 06 90 05 08 01 90 50 90 05 08 01 90 90 02 04 0f a2 90 00 } //01 00 
		$a_03_9 = {0f a2 0f 31 90 02 04 52 50 90 02 04 0f a2 0f 31 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}