
rule Trojan_BAT_Bandra_AMBC_MTB{
	meta:
		description = "Trojan:BAT/Bandra.AMBC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {5d 91 04 03 1f 90 01 01 5d 91 61 28 90 01 04 05 03 17 58 05 8e 69 5d 91 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}