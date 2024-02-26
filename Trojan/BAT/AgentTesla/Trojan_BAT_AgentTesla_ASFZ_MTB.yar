
rule Trojan_BAT_AgentTesla_ASFZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASFZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {5a 00 42 00 41 00 50 00 45 00 50 00 50 00 42 00 34 00 50 00 39 00 43 00 44 00 32 00 31 00 42 00 38 00 50 00 31 00 34 00 43 00 43 00 44 00 32 00 31 00 35 00 34 00 36 00 38 00 36 00 39 00 37 00 33 00 32 00 50 00 37 00 50 00 37 00 32 00 36 00 5a 00 36 00 37 00 37 00 32 00 36 00 31 00 36 00 44 00 32 00 50 00 36 00 33 00 36 00 31 00 36 00 45 00 36 00 45 00 36 00 5a 00 37 00 34 } //01 00 
		$a_01_1 = {32 00 37 00 42 00 31 00 34 00 50 00 50 00 50 00 50 00 50 00 41 00 37 00 33 00 31 00 32 00 50 00 50 00 50 00 50 00 50 00 41 00 32 00 35 00 50 00 33 00 36 00 5a 00 31 00 33 00 50 00 50 00 50 00 50 00 50 00 41 00 50 00 50 00 32 00 35 00 50 00 32 00 37 00 42 00 31 00 34 00 50 00 50 00 50 00 50 00 50 00 41 00 36 00 5a 00 31 00 35 00 50 00 50 00 50 00 50 00 50 00 41 00 50 00 50 00 36 00 5a } //00 00 
	condition:
		any of ($a_*)
 
}