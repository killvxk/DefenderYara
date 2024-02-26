
rule Trojan_Win32_NSISInject_GC_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.GC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {6a 04 68 00 30 00 00 68 00 65 cd 1d 8b f8 56 ff d7 } //01 00 
		$a_03_1 = {c0 c8 03 32 86 90 01 04 88 81 90 01 04 8d 46 01 99 41 f7 fb 8b f2 81 f9 90 01 04 72 90 09 06 00 8a 81 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}