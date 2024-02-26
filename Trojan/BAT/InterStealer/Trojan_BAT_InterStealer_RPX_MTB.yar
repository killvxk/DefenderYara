
rule Trojan_BAT_InterStealer_RPX_MTB{
	meta:
		description = "Trojan:BAT/InterStealer.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 00 23 00 43 00 23 00 23 00 72 00 23 00 65 00 23 00 23 00 61 00 23 00 74 00 23 00 23 00 65 00 23 00 49 00 23 00 23 00 6e 00 23 00 73 00 23 00 23 00 74 00 23 00 61 00 23 00 23 00 6e 00 23 00 63 00 23 00 23 00 65 00 23 00 } //01 00  ##C##r#e##a#t##e#I##n#s##t#a##n#c##e#
		$a_01_1 = {26 00 53 00 79 00 26 00 26 00 26 00 26 00 26 00 } //01 00  &Sy&&&&&
		$a_01_2 = {26 00 26 00 74 00 65 00 6d 00 2e 00 41 00 26 00 26 00 26 00 26 00 26 00 26 00 26 00 } //01 00  &&tem.A&&&&&&&
		$a_01_3 = {26 00 26 00 26 00 26 00 26 00 63 00 74 00 69 00 26 00 26 00 26 00 26 00 26 00 26 00 } //01 00  &&&&&cti&&&&&&
		$a_01_4 = {26 00 26 00 26 00 26 00 76 00 61 00 26 00 26 00 26 00 26 00 26 00 26 00 26 00 } //00 00  &&&&va&&&&&&&
	condition:
		any of ($a_*)
 
}