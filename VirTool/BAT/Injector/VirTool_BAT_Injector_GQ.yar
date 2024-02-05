
rule VirTool_BAT_Injector_GQ{
	meta:
		description = "VirTool:BAT/Injector.GQ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 35 37 36 31 36 61 32 37 2d 63 64 33 37 2d 34 31 38 38 2d 62 30 33 39 2d 65 31 31 36 33 39 34 38 38 34 62 36 00 } //01 00 
		$a_01_1 = {43 6f 6e 74 6f 73 73 61 20 53 75 69 74 65 00 } //01 00 
		$a_01_2 = {62 61 72 69 63 6d 2e 65 78 65 00 } //01 00 
		$a_01_3 = {43 6f 6e 74 6f 73 73 61 20 43 6f 72 70 6f 72 61 74 69 6f 6e 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 a0 
	condition:
		any of ($a_*)
 
}