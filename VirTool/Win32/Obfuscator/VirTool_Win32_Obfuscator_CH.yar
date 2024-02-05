
rule VirTool_Win32_Obfuscator_CH{
	meta:
		description = "VirTool:Win32/Obfuscator.CH,SIGNATURE_TYPE_PEHSTR_EXT,3c 00 37 00 0c 00 00 0a 00 "
		
	strings :
		$a_01_0 = {e9 01 00 00 00 } //0a 00 
		$a_01_1 = {e8 01 00 00 00 } //0a 00 
		$a_01_2 = {66 35 de c0 } //0a 00 
		$a_01_3 = {66 3d 93 9a } //0a 00 
		$a_01_4 = {24 8d 64 24 04 } //01 00 
		$a_01_5 = {03 7c 24 04 } //01 00 
		$a_01_6 = {03 74 24 04 } //01 00 
		$a_01_7 = {03 6c 24 04 } //01 00 
		$a_01_8 = {03 54 24 04 } //01 00 
		$a_01_9 = {03 4c 24 04 } //01 00 
		$a_01_10 = {03 5c 24 04 } //01 00 
		$a_01_11 = {03 44 24 04 } //00 00 
	condition:
		any of ($a_*)
 
}