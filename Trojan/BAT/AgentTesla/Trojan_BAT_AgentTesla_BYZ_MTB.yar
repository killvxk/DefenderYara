
rule Trojan_BAT_AgentTesla_BYZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BYZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_02_0 = {01 25 16 03 a2 14 14 14 28 90 01 03 0a 74 90 01 03 01 0a 02 06 6f 90 01 03 0a 1f 0a 9a 7d 90 01 03 04 2a 90 00 } //01 00 
		$a_81_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_2 = {47 65 74 52 65 73 6f 75 72 63 65 53 74 72 69 6e 67 } //01 00  GetResourceString
		$a_81_3 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_81_4 = {4e 65 77 4c 61 74 65 42 69 6e 64 69 6e 67 } //01 00  NewLateBinding
		$a_81_5 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_6 = {47 61 6d 65 44 6f 74 73 } //00 00  GameDots
	condition:
		any of ($a_*)
 
}