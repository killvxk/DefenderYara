
rule Trojan_Win32_Zlob_AW{
	meta:
		description = "Trojan:Win32/Zlob.AW,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c4 10 48 78 16 2b fe 8a 8c 07 90 01 04 32 4c 24 90 01 01 48 88 88 90 01 04 79 ec 90 00 } //01 00 
		$a_01_1 = {75 11 8d 84 24 1c 01 00 00 50 55 ff 54 24 1c 85 c0 } //00 00 
	condition:
		any of ($a_*)
 
}