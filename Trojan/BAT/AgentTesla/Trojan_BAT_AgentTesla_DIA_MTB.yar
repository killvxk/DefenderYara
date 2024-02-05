
rule Trojan_BAT_AgentTesla_DIA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DIA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {09 11 04 11 05 6f 90 01 03 0a 13 06 09 11 04 11 05 6f 90 01 03 0a 13 07 11 07 28 90 01 03 0a 13 08 08 07 11 08 d2 9c 00 11 05 17 58 13 05 11 05 17 fe 04 13 09 11 09 2d c6 90 00 } //01 00 
		$a_01_1 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //01 00 
		$a_01_2 = {00 47 65 74 50 69 78 65 6c 00 } //01 00 
		$a_01_3 = {00 54 6f 57 69 6e 33 32 00 } //00 00 
	condition:
		any of ($a_*)
 
}