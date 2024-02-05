
rule Trojan_O97M_FalseCobra_A_dha{
	meta:
		description = "Trojan:O97M/FalseCobra.A!dha,SIGNATURE_TYPE_MACROHSTR_EXT,1e 00 1e 00 08 00 00 14 00 "
		
	strings :
		$a_03_0 = {46 6f 72 20 90 02 20 20 3d 20 31 20 54 6f 20 4c 65 6e 28 90 02 20 29 0d 0a 90 02 30 20 3d 20 90 02 20 20 26 20 43 68 72 28 41 73 63 28 4d 69 64 28 90 02 20 2c 20 90 02 20 2c 20 31 29 29 20 2d 20 90 02 20 29 0d 0a 90 02 10 4e 65 78 74 20 90 02 20 0d 0a 90 02 30 20 3d 20 90 02 20 0d 0a 90 02 10 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //0a 00 
		$a_03_1 = {22 0d 0a 0d 0a 20 90 02 20 20 3d 20 90 02 20 20 26 20 90 02 20 20 26 20 90 02 20 20 26 20 90 02 20 20 26 20 90 02 20 20 26 20 90 02 20 20 26 20 90 02 20 20 26 20 90 02 20 20 26 20 90 00 } //05 00 
		$a_03_2 = {53 65 74 20 90 02 20 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 20 28 90 02 20 29 29 0d 0a 90 02 30 20 3d 20 90 02 30 28 22 90 02 30 22 29 0d 0a 90 00 } //05 00 
		$a_03_3 = {2e 52 75 6e 20 90 02 20 2c 20 90 02 20 2c 20 54 72 75 65 0d 0a 90 02 10 45 6e 64 20 49 66 0d 0a 90 02 30 20 3d 20 22 90 02 20 22 0d 0a 90 00 } //e2 ff 
		$a_01_4 = {20 3d 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 28 } //e2 ff 
		$a_01_5 = {43 4f 70 65 6e 20 3d 20 73 74 72 54 65 6d 70 } //e2 ff 
		$a_01_6 = {53 65 6c 65 63 74 20 43 61 73 65 20 54 61 72 67 65 74 2e 41 64 64 72 65 73 73 } //e2 ff 
		$a_01_7 = {49 66 20 43 68 65 63 6b 42 6f 78 37 2e 56 61 6c 75 65 20 3d 20 54 72 75 65 20 41 6e 64 20 43 68 65 63 6b 42 6f 78 38 2e 56 61 6c 75 65 20 3d 20 54 72 75 65 } //00 00 
	condition:
		any of ($a_*)
 
}