
rule Trojan_Win32_SmokeLoader_AAAK_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.AAAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4c 24 10 30 04 0e 83 ff 0f 75 12 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 ff 15 90 01 04 46 3b f7 7c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}