
rule Trojan_Win32_Ekstak_DSK_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.DSK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 02 00 "
		
	strings :
		$a_02_0 = {29 f8 5f 57 bf 90 01 04 81 f7 90 01 04 81 c7 90 01 04 81 c7 90 01 04 81 ef 90 01 04 81 f7 90 01 04 81 ef 90 01 04 81 ef 90 01 04 81 f7 90 01 04 29 f8 5f 31 c3 90 00 } //02 00 
		$a_02_1 = {31 d8 5b 51 b9 90 01 04 81 f1 90 01 04 81 e9 90 01 04 81 f1 90 01 04 81 e9 90 01 04 81 c1 90 01 04 e9 90 00 } //02 00 
		$a_02_2 = {29 c7 58 53 bb 90 01 04 81 eb 90 01 04 81 eb 90 01 04 81 c3 90 01 04 81 eb 90 01 04 31 df 5b 50 90 00 } //02 00 
		$a_02_3 = {01 d9 5b 50 b8 90 01 04 81 f0 90 01 04 81 e8 90 01 04 81 c0 90 01 04 81 f0 90 01 04 31 c1 58 52 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}