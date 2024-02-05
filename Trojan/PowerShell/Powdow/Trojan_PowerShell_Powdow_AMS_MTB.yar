
rule Trojan_PowerShell_Powdow_AMS_MTB{
	meta:
		description = "Trojan:PowerShell/Powdow.AMS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 6f 77 65 72 73 68 65 6c 6c 20 2d 57 69 6e 64 6f 77 73 74 79 6c 65 20 48 69 64 64 65 6e 20 2d 65 6e 63 6f 64 65 64 43 6f 6d 6d 61 6e 64 20 64 77 42 6e 41 47 55 41 64 41 41 67 41 47 67 41 64 41 42 30 41 48 41 41 4f 67 41 76 41 43 38 41 4d 51 41 35 41 44 49 41 4c 67 41 78 41 44 59 41 4f 41 41 75 41 44 45 41 4c 67 41 32 41 43 38 41 63 41 42 76 41 48 63 41 5a 51 42 79 41 48 4d 41 61 41 42 6c 41 47 77 41 62 41 41 75 41 48 41 41 63 77 41 78 41 43 41 41 4c 51 42 50 41 48 55 41 64 41 42 47 41 47 6b 41 62 41 42 6c 41 43 41 41 51 77 41 36 41 46 77 41 56 51 42 7a 41 47 55 41 63 } //01 00 
		$a_01_1 = {6f 62 6a 53 68 65 6c 6c 2e 52 75 6e 20 28 22 70 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 20 2d 65 6e 63 6f 64 65 64 43 6f 6d 6d 61 6e 64 20 4c 51 42 46 41 48 67 41 5a 51 42 6a 41 48 55 41 64 41 42 70 41 47 38 41 62 67 42 51 41 47 38 41 62 41 42 70 41 47 4d 41 65 51 41 67 41 45 49 41 65 51 42 77 41 47 45 41 63 77 42 7a 41 43 41 } //01 00 
		$a_01_2 = {20 3d 20 57 73 68 53 68 65 6c 6c 45 78 65 63 2e 53 74 64 4f 75 74 2e 52 65 61 64 41 6c 6c } //01 00 
		$a_01_3 = {53 75 62 20 52 75 6e 41 6e 64 47 65 74 43 6d 64 28 29 } //00 00 
	condition:
		any of ($a_*)
 
}