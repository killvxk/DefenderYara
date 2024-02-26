
rule VirTool_Win64_RottenPot_A{
	meta:
		description = "VirTool:Win64/RottenPot.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 8b 43 10 83 78 08 ff 90 01 02 ff 90 01 05 48 8b c8 90 01 05 ba 28 00 00 00 ff 90 01 05 85 c0 90 00 } //01 00 
		$a_03_1 = {c7 44 24 60 01 00 00 00 c7 44 24 6c 02 00 00 00 48 89 7c 24 28 48 89 7c 24 20 45 33 c9 90 01 05 33 d2 48 8b 4c 24 50 ff 90 01 05 48 8b 4b 10 90 01 05 48 8b 09 ff 90 01 05 0f 57 c0 90 00 } //01 00 
		$a_03_2 = {48 89 44 24 40 90 01 08 48 89 44 24 38 48 89 7c 24 30 48 89 7c 24 28 c7 44 24 20 10 00 00 00 90 01 07 4c 90 01 06 33 d2 48 8b 4c 24 58 ff 90 01 05 85 c0 90 01 02 ff 90 01 05 8b d0 90 00 } //01 00 
		$a_03_3 = {4d 8b b4 f6 00 ec 01 00 33 d2 49 8b ce 41 b8 00 08 00 00 ff 90 01 05 48 8b d8 48 85 c0 90 01 06 ff 90 01 05 83 f8 57 90 01 05 49 8b ce 44 8b c3 90 01 07 e8 90 01 04 85 c0 90 01 02 44 8b c3 90 01 07 49 8b ce e8 90 01 04 85 c0 90 01 02 45 33 c0 33 d2 49 8b ce ff 90 01 05 48 8b d8 48 85 c0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}