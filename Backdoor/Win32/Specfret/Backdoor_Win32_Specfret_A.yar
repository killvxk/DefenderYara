
rule Backdoor_Win32_Specfret_A{
	meta:
		description = "Backdoor:Win32/Specfret.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8d b5 6c f8 ff ff 8d bd d0 f8 ff ff f3 a5 68 10 27 00 00 e8 90 01 04 83 c4 08 05 00 78 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}