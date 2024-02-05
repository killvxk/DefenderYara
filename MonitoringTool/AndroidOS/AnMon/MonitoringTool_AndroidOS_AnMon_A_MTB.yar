
rule MonitoringTool_AndroidOS_AnMon_A_MTB{
	meta:
		description = "MonitoringTool:AndroidOS/AnMon.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 4e 44 52 4f 49 44 5f 4d 4f 4e 49 54 4f 52 5f 43 48 45 43 4b 45 52 } //01 00 
		$a_01_1 = {73 63 72 65 65 6e 5f 63 61 70 74 75 72 65 5f 72 65 71 75 65 73 74 } //01 00 
		$a_01_2 = {64 6f 77 6c 6f 61 64 5f 6d 6f 6e 69 74 6f 72 63 68 65 63 6b 65 72 } //01 00 
		$a_01_3 = {4b 65 79 4c 6f 67 67 65 72 41 70 70 73 } //01 00 
		$a_01_4 = {72 65 63 5f 73 63 72 65 65 6e 5f 63 61 6d 5f 77 68 61 74 63 68 } //01 00 
		$a_01_5 = {73 65 6e 64 5f 64 61 74 61 5f 74 6f 5f 73 65 72 76 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}