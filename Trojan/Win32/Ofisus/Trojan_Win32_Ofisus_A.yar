
rule Trojan_Win32_Ofisus_A{
	meta:
		description = "Trojan:Win32/Ofisus.A,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {40 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //01 00 
		$a_00_2 = {27 00 2e 00 53 00 70 00 6c 00 69 00 74 00 28 00 27 00 40 00 27 00 29 00 3b 00 } //01 00 
		$a_00_3 = {2b 00 27 00 2e 00 65 00 78 00 65 00 27 00 3b 00 } //01 00 
		$a_00_4 = {7d 00 7d 00 63 00 61 00 74 00 63 00 68 00 7b 00 7d 00 7d 00 20 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ofisus_A_2{
	meta:
		description = "Trojan:Win32/Ofisus.A,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_2 = {29 00 2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 66 00 69 00 6c 00 65 00 28 00 24 00 } //01 00 
		$a_00_3 = {27 00 27 00 25 00 74 00 6d 00 70 00 25 00 5c 00 } //01 00 
		$a_00_4 = {27 00 27 00 29 00 3b 00 73 00 74 00 61 00 72 00 74 00 2d 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ofisus_A_3{
	meta:
		description = "Trojan:Win32/Ofisus.A,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_02_1 = {2f 00 63 00 90 02 10 73 00 65 00 54 00 20 00 90 00 } //01 00 
		$a_02_2 = {26 00 26 00 90 02 10 50 00 4f 00 77 00 45 00 72 00 53 00 68 00 65 00 4c 00 4c 00 90 00 } //01 00 
		$a_02_3 = {2d 00 66 00 90 02 08 27 00 90 00 } //01 00 
		$a_00_4 = {29 00 2e 00 49 00 6e 00 76 00 6f 00 6b 00 65 00 28 00 } //01 00 
		$a_00_5 = {3a 00 3a 00 66 00 72 00 6f 00 6d 00 42 00 41 00 53 00 65 00 36 00 34 00 53 00 54 00 52 00 49 00 6e 00 47 00 28 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ofisus_A_4{
	meta:
		description = "Trojan:Win32/Ofisus.A,SIGNATURE_TYPE_CMDHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_02_0 = {3b 00 29 00 27 00 40 00 27 00 28 00 74 00 69 00 6c 00 70 00 53 00 2e 00 27 00 90 02 60 2f 00 2f 00 3a 00 70 00 74 00 74 00 68 00 40 00 90 00 } //01 00 
		$a_00_1 = {7d 00 7d 00 7b 00 68 00 63 00 74 00 61 00 63 00 7d 00 7d 00 } //01 00 
		$a_02_2 = {27 00 65 00 78 00 65 00 2e 00 27 00 2b 00 90 02 10 24 00 2b 00 27 00 5c 00 27 00 2b 00 70 00 6d 00 65 00 74 00 3a 00 76 00 6e 00 65 00 24 00 3d 00 90 00 } //01 00 
		$a_02_3 = {27 00 65 00 78 00 65 00 2e 00 90 02 10 5c 00 27 00 2b 00 29 00 28 00 68 00 74 00 61 00 50 00 70 00 6d 00 65 00 54 00 74 00 65 00 47 00 3a 00 3a 00 5d 00 68 00 74 00 61 00 50 00 2e 00 4f 00 49 00 2e 00 6d 00 65 00 74 00 73 00 79 00 53 00 5b 00 28 00 3d 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ofisus_A_5{
	meta:
		description = "Trojan:Win32/Ofisus.A,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {26 00 20 00 2f 00 4b 00 20 00 43 00 44 00 20 00 43 00 3a 00 20 00 26 00 20 00 50 00 6f 00 77 00 65 00 72 00 53 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 45 00 6e 00 63 00 6f 00 64 00 65 00 64 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 64 00 41 00 42 00 79 00 41 00 48 00 6b 00 41 00 } //02 00 
		$a_00_2 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 00 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2d 00 4e 00 6f 00 50 00 20 00 2d 00 45 00 78 00 65 00 63 00 20 00 42 00 79 00 70 00 61 00 73 00 73 00 20 00 2d 00 45 00 43 00 20 00 4a 00 41 00 42 00 70 00 41 00 47 00 34 00 41 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ofisus_A_6{
	meta:
		description = "Trojan:Win32/Ofisus.A,SIGNATURE_TYPE_CMDHSTR_EXT,0c 00 0c 00 05 00 00 0a 00 "
		
	strings :
		$a_02_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 63 00 3a 00 5c 00 90 02 20 5c 00 90 02 20 5c 00 90 02 20 5c 00 2e 00 2e 00 5c 00 2e 00 2e 00 5c 00 2e 00 2e 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 25 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 3a 00 7e 00 30 00 2c 00 31 00 25 00 25 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 3a 00 7e 00 39 00 2c 00 32 00 25 00 20 00 2f 00 56 00 3a 00 90 02 08 2f 00 43 00 73 00 90 00 } //01 00 
		$a_00_1 = {26 00 26 00 66 00 6f 00 72 00 20 00 } //01 00 
		$a_02_2 = {29 00 64 00 6f 00 20 00 73 00 65 00 74 00 20 00 90 02 08 3d 00 21 00 90 02 08 21 00 21 00 90 02 08 3a 00 7e 00 25 00 90 01 02 2c 00 31 00 21 00 26 00 26 00 69 00 66 00 20 00 25 00 90 00 } //01 00 
		$a_02_3 = {3a 00 7e 00 25 00 5e 00 90 01 02 2c 00 31 00 21 00 26 00 26 00 90 00 } //01 00 
		$a_00_4 = {24 00 26 00 26 00 5e 00 66 00 5e 00 6f 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ofisus_A_7{
	meta:
		description = "Trojan:Win32/Ofisus.A,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_1 = {63 00 4d 00 64 00 2e 00 45 00 58 00 45 00 20 00 2f 00 63 00 20 00 70 00 6f 00 57 00 65 00 72 00 53 00 68 00 65 00 6c 00 4c 00 2e 00 65 00 78 00 65 00 20 00 2d 00 65 00 63 00 20 00 4b 00 41 00 42 00 4f 00 41 00 47 00 55 00 41 00 64 00 77 00 41 00 74 00 41 00 45 00 38 00 41 00 } //01 00 
		$a_00_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2d 00 4e 00 6f 00 50 00 20 00 2d 00 45 00 43 00 20 00 4a 00 41 00 42 00 70 00 41 00 47 00 34 00 41 00 63 00 77 00 42 00 30 00 41 00 47 00 45 00 41 00 } //01 00 
		$a_00_3 = {63 00 4d 00 64 00 2e 00 65 00 58 00 65 00 20 00 2f 00 63 00 20 00 70 00 5e 00 6f 00 5e 00 77 00 5e 00 65 00 5e 00 72 00 5e 00 73 00 5e 00 68 00 5e 00 45 00 5e 00 4c 00 5e 00 4c 00 5e 00 2e 00 5e 00 65 00 5e 00 78 00 5e 00 65 00 5e 00 20 00 5e 00 2d 00 5e 00 65 00 5e 00 63 00 5e 00 20 00 5e 00 4b 00 5e 00 41 00 5e 00 42 00 5e 00 4f 00 5e 00 } //00 00 
	condition:
		any of ($a_*)
 
}