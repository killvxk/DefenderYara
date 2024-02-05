
rule Ransom_Win32_Lember_PB_MTB{
	meta:
		description = "Ransom:Win32/Lember.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 6c 65 6d 62 65 72 } //01 00 
		$a_01_1 = {66 69 6c 65 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //01 00 
		$a_01_2 = {65 72 61 73 65 20 79 6f 75 20 66 69 6c 65 73 } //01 00 
		$a_01_3 = {25 64 65 73 6b 74 6f 70 25 5c 52 65 61 64 4d 65 2e 74 78 74 } //01 00 
		$a_01_4 = {75 6e 6c 6f 63 6b 20 79 6f 75 72 20 66 69 6c 65 } //00 00 
	condition:
		any of ($a_*)
 
}