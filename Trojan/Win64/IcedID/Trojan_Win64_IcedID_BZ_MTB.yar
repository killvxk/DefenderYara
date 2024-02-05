
rule Trojan_Win64_IcedID_BZ_MTB{
	meta:
		description = "Trojan:Win64/IcedID.BZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4c 8b c1 8b ca 48 33 15 81 cc 06 00 83 e1 3f 48 d3 ca 48 85 d2 75 03 } //01 00 
		$a_01_1 = {41 39 78 73 51 41 50 32 43 63 71 } //01 00 
		$a_01_2 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //00 00 
	condition:
		any of ($a_*)
 
}