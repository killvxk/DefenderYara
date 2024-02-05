
rule Trojan_Win32_NSISInject_NV_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.NV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c4 08 8b f8 6a 40 68 00 30 00 00 68 90 01 04 56 ff 15 90 01 01 20 40 00 90 00 } //01 00 
		$a_03_1 = {57 6a 01 8b d8 68 90 01 04 53 ff 15 90 01 01 20 40 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}