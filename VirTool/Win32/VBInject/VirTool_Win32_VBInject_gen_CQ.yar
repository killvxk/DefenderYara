
rule VirTool_Win32_VBInject_gen_CQ{
	meta:
		description = "VirTool:Win32/VBInject.gen!CQ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {f5 08 c5 bb 6c c7 1c ee 01 } //01 00 
		$a_01_1 = {f5 88 6a 3f 24 f5 00 00 00 00 08 08 00 06 40 00 a3 00 13 f5 d3 08 a3 85 f5 01 00 00 00 08 08 00 06 40 00 a3 00 13 f5 2e 8a 19 13 } //01 00 
		$a_00_2 = {34 00 45 00 37 00 34 00 35 00 37 00 37 00 32 00 36 00 39 00 37 00 34 00 36 00 35 00 35 00 36 00 36 00 39 00 37 00 32 00 37 00 34 00 37 00 35 00 36 00 31 00 36 00 43 00 34 00 44 00 36 00 35 00 36 00 44 00 36 00 46 00 37 00 32 00 37 00 39 00 } //01 00 
		$a_00_3 = {38 00 42 00 34 00 43 00 32 00 34 00 30 00 38 00 35 00 31 00 3c 00 50 00 41 00 54 00 43 00 48 00 31 00 3e 00 45 00 38 00 3c 00 50 00 41 00 54 00 43 00 48 00 32 00 3e 00 35 00 39 00 38 00 39 00 30 00 31 00 36 00 36 00 33 00 31 00 43 00 30 00 43 00 33 00 } //00 00 
	condition:
		any of ($a_*)
 
}