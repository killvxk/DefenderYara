
rule Trojan_BAT_Spynoon_AABO_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.AABO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 03 00 "
		
	strings :
		$a_03_0 = {04 16 06 7b 90 01 01 00 00 04 6f 90 01 01 00 00 0a 28 90 01 01 00 00 0a 7e 90 01 01 00 00 04 25 2d 17 26 7e 90 01 01 00 00 04 fe 90 01 02 00 00 06 73 90 01 01 00 00 0a 25 80 90 01 01 00 00 04 28 90 01 01 00 00 2b 06 fe 90 01 02 00 00 06 73 90 01 01 00 00 0a 28 90 01 01 00 00 2b 28 90 01 01 00 00 2b 0b 90 00 } //01 00 
		$a_01_1 = {34 37 36 61 32 37 34 66 2d 66 64 62 65 2d 34 30 34 32 2d 39 62 34 62 2d 61 31 38 35 32 65 37 34 39 30 39 63 } //00 00 
	condition:
		any of ($a_*)
 
}