
rule Trojan_BAT_AsyncRAT_KAK_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.KAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8e 69 5d 1f 90 01 01 58 1f 90 01 01 58 1f 90 01 01 59 91 61 06 09 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}