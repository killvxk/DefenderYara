
rule Trojan_Win64_CobaltStrike_JZ_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.JZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 d2 8b c1 b9 90 01 04 48 f7 f1 48 8b c2 0f b6 44 04 90 01 01 48 8b 4c 24 90 01 01 48 8b 54 24 90 01 01 0f be 0c 11 33 c8 8b c1 8b 0c 24 48 8b 54 24 90 01 01 88 04 0a eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}