
rule Trojan_BAT_Taskun_KAH_MTB{
	meta:
		description = "Trojan:BAT/Taskun.KAH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 05 00 "
		
	strings :
		$a_01_0 = {11 01 11 0d 91 11 02 11 05 1f 16 5d 91 61 13 09 } //05 00 
		$a_03_1 = {11 09 11 01 11 05 17 58 11 04 5d 91 59 20 00 90 01 01 00 00 58 20 00 90 01 01 00 00 5d 13 0a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}