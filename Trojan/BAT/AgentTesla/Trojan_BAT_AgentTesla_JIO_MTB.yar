
rule Trojan_BAT_AgentTesla_JIO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JIO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {01 25 17 73 90 01 03 0a 13 04 06 6f 90 01 03 0a 1f 0d 6a 59 13 05 07 06 11 04 11 05 09 6f 90 00 } //01 00 
		$a_01_1 = {6d 5f 49 73 4d 61 74 63 68 44 65 63 6f 64 65 72 73 } //01 00  m_IsMatchDecoders
		$a_01_2 = {66 64 73 66 64 73 } //01 00  fdsfds
		$a_00_3 = {43 6f 70 79 42 6c 6f 63 6b 00 50 75 74 42 79 74 65 00 47 65 74 42 79 74 65 } //01 00 
		$a_01_4 = {44 65 63 72 79 70 74 } //01 00  Decrypt
		$a_01_5 = {44 65 63 6f 6d 70 72 65 73 73 } //01 00  Decompress
		$a_01_6 = {52 65 76 65 72 73 65 44 65 63 6f 64 65 } //01 00  ReverseDecode
		$a_01_7 = {44 65 63 6f 64 65 44 69 72 65 63 74 42 69 74 73 } //00 00  DecodeDirectBits
	condition:
		any of ($a_*)
 
}