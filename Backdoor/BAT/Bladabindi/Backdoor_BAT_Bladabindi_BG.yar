
rule Backdoor_BAT_Bladabindi_BG{
	meta:
		description = "Backdoor:BAT/Bladabindi.BG,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {38 00 34 00 90 01 02 38 00 36 00 90 01 02 31 00 31 00 33 00 90 01 02 38 00 31 00 90 01 02 36 00 35 00 90 00 } //01 00 
		$a_03_1 = {36 00 35 00 90 01 02 36 00 39 00 90 01 02 38 00 35 00 90 01 02 36 00 35 00 90 01 02 38 00 34 00 90 01 02 31 00 30 00 33 00 90 01 02 36 00 36 00 90 01 02 38 00 35 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}