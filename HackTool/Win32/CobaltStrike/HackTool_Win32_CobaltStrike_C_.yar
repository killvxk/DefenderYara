
rule HackTool_Win32_CobaltStrike_C_{
	meta:
		description = "HackTool:Win32/CobaltStrike.C!!CobaltStrike.C,SIGNATURE_TYPE_ARHSTR_EXT,0b 00 0b 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {00 01 00 01 00 02 90 01 02 00 02 00 01 00 02 90 00 } //01 00 
		$a_03_1 = {69 68 69 68 69 6b 90 01 02 69 6b 69 68 69 6b 90 00 } //01 00 
		$a_03_2 = {2e 2f 2e 2f 2e 2c 90 01 02 2e 2c 2e 2f 2e 2c 90 00 } //01 00 
		$a_03_3 = {75 da c9 c3 8b 0d 90 01 04 8b 04 d1 8b 54 d1 04 c3 90 00 } //0a 00 
		$a_03_4 = {40 3d 00 10 00 00 7c f1 90 09 07 00 80 90 01 05 90 03 01 01 2e 69 40 90 00 } //9c ff 
		$a_01_5 = {42 65 68 61 76 69 6f 72 3a } //9c ff  Behavior:
		$a_01_6 = {54 72 6f 6a 61 6e 3a } //9c ff  Trojan:
		$a_01_7 = {6d 70 61 74 74 72 69 62 75 74 65 } //9c ff  mpattribute
		$a_01_8 = {48 61 63 6b 54 6f 6f 6c 3a } //00 00  HackTool:
	condition:
		any of ($a_*)
 
}