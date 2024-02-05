
rule Trojan_Win32_RedLine_MBCP_MTB{
	meta:
		description = "Trojan:Win32/RedLine.MBCP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 75 00 74 00 69 00 76 00 6f 00 64 00 69 00 72 00 69 00 20 00 68 00 65 00 6e 00 6f 00 6c 00 69 00 74 00 65 00 6a 00 20 00 6d 00 69 00 6d 00 65 00 67 00 6f 00 6a 00 75 00 68 00 65 00 67 00 65 00 68 00 6f 00 20 00 76 00 75 00 70 00 69 00 6e 00 75 00 74 00 6f 00 76 00 6f 00 67 00 61 00 6e 00 75 00 72 00 } //01 00 
		$a_01_1 = {4b 00 75 00 77 00 75 00 74 00 6f 00 72 00 65 00 62 00 75 00 76 00 75 00 76 00 61 00 68 00 } //01 00 
		$a_01_2 = {4d 00 61 00 7a 00 75 00 68 00 75 00 6a 00 75 00 6a 00 61 00 6d 00 6f 00 20 00 62 00 69 00 77 00 75 00 6a 00 61 00 73 00 75 00 20 00 62 00 75 00 6e 00 75 00 62 00 75 00 62 00 6f 00 74 00 75 00 6e 00 61 00 62 00 69 00 6d 00 } //01 00 
		$a_01_3 = {4d 00 65 00 76 00 69 00 76 00 20 00 6e 00 75 00 76 00 6f 00 72 00 6f 00 63 00 75 00 66 00 69 00 6c 00 75 00 } //01 00 
		$a_01_4 = {42 00 65 00 79 00 75 00 6c 00 61 00 6a 00 65 00 6b 00 61 00 6e 00 20 00 72 00 69 00 68 00 69 00 20 00 63 00 75 00 68 00 75 00 6b 00 61 00 67 00 65 00 7a 00 61 00 77 00 61 00 68 00 61 00 77 00 20 00 6b 00 6f 00 62 00 61 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}