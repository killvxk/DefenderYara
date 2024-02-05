
rule Ransom_Win32_Ergop_A_{
	meta:
		description = "Ransom:Win32/Ergop.A!!Ergop.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {64 65 6c 20 44 65 66 61 75 6c 74 2e 72 64 70 } //01 00 
		$a_00_1 = {76 73 73 61 64 6d 69 6e 2e 65 78 65 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 41 6c 6c 20 2f 51 75 69 65 74 } //01 00 
		$a_00_2 = {66 6f 72 20 2f 46 20 22 74 6f 6b 65 6e 73 3d 2a 22 20 25 31 20 69 6e 20 28 27 77 65 76 74 75 74 69 6c 2e 65 78 65 20 65 6c 27 29 20 44 4f 20 77 65 76 74 75 74 69 6c 2e 65 78 65 20 63 6c 20 22 25 31 22 } //01 00 
		$a_00_3 = {72 65 67 20 64 65 6c 65 74 65 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 54 65 72 6d 69 6e 61 6c 20 53 65 72 76 65 72 20 43 6c 69 65 6e 74 5c 44 65 66 61 75 6c 74 22 20 2f 76 61 20 2f 66 } //01 00 
		$a_02_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 90 02 08 43 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 43 00 68 00 65 00 63 00 6b 00 90 00 } //01 00 
		$a_03_5 = {55 56 57 68 41 00 00 80 ff 15 90 01 04 bf 00 08 00 00 bd 90 01 04 57 55 33 db 53 ff 15 90 00 } //02 00 
		$a_03_6 = {50 bd 00 01 00 00 55 68 90 01 04 56 ff d7 85 c0 0f 84 90 01 02 ff ff 39 6c 24 90 01 01 0f 85 90 01 02 ff ff 6a 01 53 6a 02 56 ff 15 90 01 04 53 8d 44 24 90 01 01 50 68 00 04 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}