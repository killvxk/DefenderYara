
rule Trojan_Win32_Redline_CAA_MTB{
	meta:
		description = "Trojan:Win32/Redline.CAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 04 00 "
		
	strings :
		$a_03_0 = {0f be 04 10 69 c0 90 02 04 c1 e0 05 6b c0 90 01 01 99 bf 90 02 04 f7 ff 83 e0 90 01 01 33 f0 03 ce 8b 55 0c 03 55 fc 88 0a 0f be 45 fb 8b 4d 0c 03 4d fc 0f b6 11 2b d0 8b 45 0c 03 45 fc 88 10 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}