
rule Trojan_Win32_Buniq_A{
	meta:
		description = "Trojan:Win32/Buniq.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 53 00 74 00 61 00 62 00 69 00 6c 00 69 00 74 00 79 00 20 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 00 00 55 00 6e 00 69 00 71 00 } //01 00 
		$a_01_1 = {72 65 73 70 6f 6e 73 65 3d 00 00 26 76 61 6c 3d 00 00 00 26 75 70 3d } //01 00 
		$a_00_2 = {53 00 74 00 61 00 62 00 69 00 6c 00 69 00 74 00 79 00 4d 00 75 00 74 00 65 00 78 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //01 00 
		$a_01_3 = {50 6f 72 74 46 6f 72 77 61 72 64 69 6e 67 73 22 3d } //00 00 
	condition:
		any of ($a_*)
 
}