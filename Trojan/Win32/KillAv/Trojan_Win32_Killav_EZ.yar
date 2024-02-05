
rule Trojan_Win32_Killav_EZ{
	meta:
		description = "Trojan:Win32/Killav.EZ,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 4d 00 53 00 4e 00 } //01 00 
		$a_01_1 = {5c 41 70 70 20 50 61 74 68 73 5c 33 36 30 53 61 66 65 2e 65 78 65 } //01 00 
		$a_01_2 = {5a 68 75 44 6f 6e 67 46 61 6e 67 59 75 2e 65 78 65 } //01 00 
		$a_01_3 = {5c 73 79 73 74 65 6d 5c 70 63 69 2e 73 79 } //03 00 
		$a_01_4 = {52 75 6e 64 6c 6c 2e 64 6c 6c 00 62 } //00 00 
	condition:
		any of ($a_*)
 
}