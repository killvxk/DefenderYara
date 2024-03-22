
rule Trojan_Win32_Zenpack_MBKE_MTB{
	meta:
		description = "Trojan:Win32/Zenpack.MBKE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {76 4c 81 3d 90 01 06 00 00 a1 90 01 04 8a 84 30 90 01 04 8b 0d 90 01 04 88 04 31 75 90 00 } //01 00 
		$a_01_1 = {72 75 6a 65 68 75 6c 61 79 61 66 61 6c 69 67 75 62 6f 76 6f 74 6f 64 65 68 6f } //01 00  rujehulayafaligubovotodeho
		$a_01_2 = {5a 75 70 6f 77 75 20 6e 61 6c 65 74 75 79 61 6c 65 6a 6f 7a 6f 6e } //01 00  Zupowu naletuyalejozon
		$a_01_3 = {4a 00 75 00 66 00 75 00 70 00 75 00 70 00 65 00 7a 00 75 00 6e 00 69 00 6c 00 65 00 20 00 67 00 61 00 78 00 65 00 6b 00 65 00 6d 00 75 00 74 00 75 00 78 00 65 00 76 00 } //00 00  Jufupupezunile gaxekemutuxev
	condition:
		any of ($a_*)
 
}