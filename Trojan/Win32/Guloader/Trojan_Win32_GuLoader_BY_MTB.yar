
rule Trojan_Win32_GuLoader_BY_MTB{
	meta:
		description = "Trojan:Win32/GuLoader.BY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 00 65 00 67 00 75 00 6c 00 65 00 72 00 69 00 6e 00 67 00 73 00 74 00 69 00 6c 00 6c 00 67 00 67 00 65 00 6e 00 65 00 5c 00 42 00 6c 00 69 00 6e 00 64 00 65 00 64 00 6c 00 79 00 5c 00 52 00 75 00 6d 00 66 00 6c 00 79 00 76 00 6e 00 69 00 6e 00 67 00 65 00 6e 00 } //01 00 
		$a_01_1 = {41 00 69 00 64 00 65 00 64 00 5c 00 48 00 69 00 65 00 72 00 75 00 72 00 67 00 69 00 63 00 61 00 6c 00 2e 00 42 00 69 00 63 00 31 00 35 00 37 00 } //01 00 
		$a_01_2 = {41 00 66 00 73 00 74 00 61 00 6e 00 64 00 65 00 73 00 5c 00 54 00 72 00 61 00 6e 00 73 00 62 00 61 00 69 00 6b 00 61 00 6c 00 31 00 38 00 33 00 5c 00 70 00 61 00 73 00 74 00 69 00 63 00 68 00 65 00 72 00 73 00 5c 00 55 00 64 00 73 00 76 00 65 00 6a 00 66 00 6e 00 69 00 6e 00 67 00 65 00 6e 00 73 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_3 = {43 00 6f 00 72 00 61 00 6e 00 74 00 6f 00 5c 00 43 00 65 00 6e 00 74 00 72 00 61 00 6c 00 62 00 61 00 6e 00 6b 00 63 00 68 00 65 00 66 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_4 = {54 00 45 00 4d 00 50 00 5c 00 52 00 65 00 67 00 75 00 6c 00 65 00 72 00 69 00 6e 00 67 00 73 00 74 00 69 00 6c 00 6c 00 67 00 67 00 65 00 6e 00 65 00 5c 00 42 00 6c 00 69 00 6e 00 64 00 65 00 64 00 6c 00 79 00 5c 00 52 00 75 00 6d 00 66 00 6c 00 79 00 76 00 6e 00 69 00 6e 00 67 00 65 00 6e 00 } //01 00 
		$a_01_5 = {53 00 76 00 76 00 65 00 66 00 6c 00 79 00 65 00 74 00 2e 00 75 00 6e 00 70 00 } //01 00 
		$a_01_6 = {45 00 6e 00 6e 00 65 00 61 00 73 00 74 00 79 00 6c 00 61 00 72 00 5c 00 47 00 65 00 6e 00 6f 00 70 00 74 00 61 00 67 00 65 00 6c 00 73 00 65 00 5c 00 56 00 61 00 73 00 6f 00 63 00 6f 00 6e 00 73 00 74 00 72 00 69 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_7 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 52 00 61 00 67 00 68 00 6f 00 75 00 73 00 65 00 5c 00 47 00 65 00 6e 00 69 00 75 00 73 00 65 00 6e 00 73 00 5c 00 44 00 6f 00 72 00 73 00 61 00 6c 00 5c 00 73 00 69 00 67 00 6e 00 61 00 74 00 61 00 72 00 6d 00 61 00 67 00 74 00 65 00 72 00 6e 00 65 00 } //01 00 
		$a_01_8 = {54 00 65 00 6d 00 70 00 6c 00 61 00 74 00 65 00 73 00 5c 00 45 00 6e 00 6e 00 65 00 61 00 73 00 74 00 79 00 6c 00 61 00 72 00 5c 00 47 00 65 00 6e 00 6f 00 70 00 74 00 61 00 67 00 65 00 6c 00 73 00 65 00 5c 00 56 00 61 00 73 00 6f 00 63 00 6f 00 6e 00 73 00 74 00 72 00 69 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 69 00 6e 00 69 00 } //00 00 
	condition:
		any of ($a_*)
 
}