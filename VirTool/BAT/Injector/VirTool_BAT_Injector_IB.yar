
rule VirTool_BAT_Injector_IB{
	meta:
		description = "VirTool:BAT/Injector.IB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {65 00 6e 00 61 00 62 00 6c 00 65 00 66 00 61 00 6b 00 65 00 90 01 02 65 00 6e 00 61 00 62 00 6c 00 65 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 90 01 02 66 00 61 00 6b 00 65 00 6d 00 65 00 73 00 73 00 61 00 67 00 65 00 90 00 } //01 00 
		$a_03_1 = {41 00 6e 00 61 00 6c 00 79 00 7a 00 65 00 72 00 90 01 02 53 00 62 00 69 00 65 00 53 00 76 00 63 00 90 01 02 61 00 6e 00 75 00 62 00 69 00 73 00 90 00 } //01 00 
		$a_03_2 = {7b 00 30 00 7d 00 2e 00 65 00 78 00 65 00 90 01 02 2a 00 2e 00 65 00 78 00 65 00 90 01 02 72 00 65 00 67 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_03_3 = {5c 00 52 00 75 00 6e 00 22 00 20 00 2f 00 66 00 20 00 2f 00 76 00 20 00 22 00 90 01 02 22 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 53 00 5a 00 20 00 2f 00 64 00 90 00 } //01 00 
		$a_01_4 = {64 00 30 00 59 00 30 00 63 00 46 00 74 00 41 00 41 00 77 00 55 00 43 00 4e 00 41 00 6f 00 49 00 41 00 77 00 41 00 65 00 41 00 77 00 3d 00 3d 00 } //00 00 
		$a_00_5 = {87 10 00 } //00 b6 
	condition:
		any of ($a_*)
 
}