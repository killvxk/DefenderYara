
rule VirTool_Win32_Obfuscator_AJG{
	meta:
		description = "VirTool:Win32/Obfuscator.AJG,SIGNATURE_TYPE_PEHSTR_EXT,05 00 02 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 8b 15 30 00 00 00 8b 52 0c 8b 52 14 8b 72 28 b9 18 00 00 00 33 ff 33 c0 ac 3c 61 7c 02 2c 20 c1 cf 0d 03 f8 e2 f0 81 ff 5b bc 4a 6a } //01 00 
		$a_03_1 = {c1 e1 04 8b 55 90 01 01 c1 ea 05 33 ca 03 4d 90 01 01 89 4d 90 01 01 8b 45 90 01 01 c1 e8 0b 83 e0 03 90 00 } //01 00 
		$a_03_2 = {c1 e1 04 8b 55 90 01 01 c1 ea 05 33 ca 03 4d 90 01 01 8b 45 90 01 01 c1 e8 0b 83 e0 03 90 00 } //01 00 
		$a_03_3 = {33 d2 b9 09 00 00 00 f7 f1 8b 54 95 90 01 01 52 68 04 01 00 00 68 90 01 04 e8 90 01 04 83 c4 10 85 c0 74 06 90 00 } //01 00 
		$a_01_4 = {51 8b 55 08 83 c2 04 52 68 00 00 20 00 8b 45 fc 50 68 02 01 00 00 ff 55 24 89 45 } //00 00 
	condition:
		any of ($a_*)
 
}