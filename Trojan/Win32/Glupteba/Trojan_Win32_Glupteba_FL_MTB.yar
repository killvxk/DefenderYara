
rule Trojan_Win32_Glupteba_FL_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.FL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_02_0 = {31 3e 48 81 c6 04 00 00 00 39 ce 75 ee 01 c0 43 c3 00 39 d7 75 e7 81 c6 90 01 04 c3 81 c1 90 01 04 39 c7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}