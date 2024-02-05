
rule Trojan_Win32_BHO_AS{
	meta:
		description = "Trojan:Win32/BHO.AS,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 4c 53 49 44 20 3d 20 73 20 27 7b 38 46 46 34 30 43 38 33 2d 39 46 33 41 2d 34 34 39 43 2d 38 38 37 34 2d 34 43 38 36 37 39 33 31 44 35 45 41 7d 27 } //01 00 
		$a_01_1 = {49 45 2e 49 45 45 2e 31 20 3d 20 73 20 27 49 45 } //01 00 
		$a_01_2 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00 
		$a_01_3 = {44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 49 45 2e 44 4c 4c } //01 00 
		$a_01_4 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}