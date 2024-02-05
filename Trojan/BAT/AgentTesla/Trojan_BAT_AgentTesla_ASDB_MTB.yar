
rule Trojan_BAT_AgentTesla_ASDB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASDB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 20 00 53 00 44 00 41 00 53 00 53 00 41 00 53 00 41 00 53 } //01 00 
		$a_81_1 = {46 69 6e 61 6c 50 72 6f 6a 65 63 74 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_01_2 = {24 39 32 35 33 63 63 66 63 2d 34 38 34 62 2d 34 64 38 34 2d 62 32 37 64 2d 65 32 61 63 37 66 31 31 61 31 33 61 } //00 00 
	condition:
		any of ($a_*)
 
}