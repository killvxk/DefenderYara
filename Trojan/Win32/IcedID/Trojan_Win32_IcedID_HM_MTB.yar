
rule Trojan_Win32_IcedID_HM_MTB{
	meta:
		description = "Trojan:Win32/IcedID.HM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {89 ce 83 e6 90 01 01 75 90 01 01 8b 5d 90 01 01 66 01 da f6 da 6b d2 90 01 01 c1 ca 90 01 01 89 55 90 01 01 30 10 40 e2 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}