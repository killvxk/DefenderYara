
rule Trojan_BAT_Zusy_PTHM_MTB{
	meta:
		description = "Trojan:BAT/Zusy.PTHM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {6f 78 00 00 0a 17 59 28 90 01 01 00 00 0a 16 7e 37 00 00 04 02 1a 28 90 01 01 00 00 0a 11 05 0d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}