
rule Trojan_BAT_AgentTesla_PSYE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSYE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {06 20 65 0d d3 63 28 90 01 01 01 00 06 28 90 01 01 00 00 0a 20 46 0d d3 63 28 90 01 01 01 00 06 28 90 01 01 00 00 0a 6f 45 05 00 0a 13 04 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}