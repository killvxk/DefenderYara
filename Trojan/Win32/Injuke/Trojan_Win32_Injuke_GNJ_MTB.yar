
rule Trojan_Win32_Injuke_GNJ_MTB{
	meta:
		description = "Trojan:Win32/Injuke.GNJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {2a 01 00 00 00 a4 a4 90 01 04 2c 00 00 ae 90 01 04 28 5f 15 cc 2b 00 00 2a 90 00 } //0a 00 
		$a_01_1 = {00 18 00 4e 23 00 00 01 00 30 30 } //00 00 
	condition:
		any of ($a_*)
 
}