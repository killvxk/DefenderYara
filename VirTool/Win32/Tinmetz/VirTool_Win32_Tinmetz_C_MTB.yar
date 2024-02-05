
rule VirTool_Win32_Tinmetz_C_MTB{
	meta:
		description = "VirTool:Win32/Tinmetz.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {48 89 c1 e8 90 01 04 48 89 05 90 01 04 48 8b 05 90 01 04 ff d0 90 00 } //01 00 
		$a_02_1 = {41 b9 00 00 00 00 41 b8 04 00 00 00 48 8d 90 02 05 48 89 c1 48 8b 05 90 01 04 ff d0 90 02 07 83 c0 05 90 02 01 89 c0 41 b9 40 00 00 00 41 b8 00 10 00 00 48 89 c2 b9 00 00 00 00 48 8b 05 90 01 04 ff d0 90 00 } //01 00 
		$a_02_2 = {41 b8 00 00 00 00 ba 01 00 00 00 b9 02 00 00 00 48 8b 05 90 01 04 ff d0 48 89 85 90 01 04 48 83 bd 90 1b 01 ff 90 02 20 48 8d 45 90 01 01 48 8b 8d 90 1b 01 41 b8 10 00 00 00 48 89 c2 48 8b 05 90 01 04 ff d0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}