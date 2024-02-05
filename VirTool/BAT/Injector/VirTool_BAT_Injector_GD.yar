
rule VirTool_BAT_Injector_GD{
	meta:
		description = "VirTool:BAT/Injector.GD,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 6f 49 6b 61 72 75 73 20 2b 20 49 6e 6a 65 63 74 69 6f 6e 73 5c 4d 73 69 5c 4d 73 69 } //01 00 
		$a_01_1 = {57 69 6e 64 6f 77 73 5c 45 46 53 2e 65 78 65 } //01 00 
		$a_01_2 = {53 65 66 75 6c 65 2e 65 78 65 } //00 00 
		$a_01_3 = {00 67 } //16 00 
	condition:
		any of ($a_*)
 
}