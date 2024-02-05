
rule Trojan_Win32_Buer_PA_MTB{
	meta:
		description = "Trojan:Win32/Buer.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 68 65 6c 6c 63 6f 64 65 } //01 00 
		$a_00_1 = {75 61 63 62 79 70 61 73 73 } //01 00 
		$a_00_2 = {6c 6f 63 61 6c 73 63 72 69 70 74 } //01 00 
		$a_00_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 22 00 2d 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 22 00 20 00 22 00 69 00 66 00 28 00 28 00 47 00 65 00 74 00 2d 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 29 00 20 00 2d 00 6e 00 65 00 20 00 20 00 27 00 41 00 6c 00 6c 00 53 00 69 00 67 00 6e 00 65 00 64 00 27 00 29 00 20 00 20 00 7b 00 20 00 53 00 65 00 74 00 2d 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 2d 00 53 00 63 00 6f 00 70 00 65 00 20 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 42 00 79 00 70 00 61 00 73 00 73 00 20 00 7d 00 3b 00 20 00 26 00 20 00 27 00 } //01 00 
		$a_02_4 = {0f b6 c1 03 c6 0f b6 f0 8a 84 35 90 01 03 ff 88 84 3d 90 01 03 ff 8b 45 fc 88 8c 35 90 01 03 ff 0f b6 94 3d 90 01 03 ff 0f b6 c9 03 d1 0f b6 ca 8a 8c 0d 90 01 03 ff 30 08 40 89 45 fc 83 eb 01 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}