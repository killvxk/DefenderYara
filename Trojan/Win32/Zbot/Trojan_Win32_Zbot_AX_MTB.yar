
rule Trojan_Win32_Zbot_AX_MTB{
	meta:
		description = "Trojan:Win32/Zbot.AX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 65 00 6d 00 70 00 5c 00 6a 00 5a 00 69 00 70 00 5c 00 6a 00 5a 00 69 00 70 00 32 00 33 00 32 00 44 00 45 00 5c 00 6a 00 5a 00 69 00 70 00 43 00 33 00 44 00 38 00 5c 00 58 00 65 00 72 00 6f 00 78 00 5f 00 53 00 63 00 61 00 6e 00 5f 00 30 00 30 00 32 00 5f 00 32 00 30 00 31 00 31 00 32 00 30 00 31 00 33 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {43 00 3a 00 5c 00 47 00 37 00 79 00 44 00 57 00 67 00 34 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {43 00 3a 00 5c 00 68 00 52 00 54 00 69 00 33 00 56 00 4e 00 45 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {43 00 3a 00 5c 00 54 00 6e 00 48 00 4e 00 48 00 6e 00 5a 00 78 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_4 = {43 00 3a 00 5c 00 57 00 61 00 46 00 4f 00 62 00 45 00 6b 00 39 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}