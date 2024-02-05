
rule Trojan_Win32_StartPage_PVQ_bit{
	meta:
		description = "Trojan:Win32/StartPage.PVQ!bit,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 51 00 75 00 69 00 63 00 6b 00 20 00 4c 00 61 00 75 00 6e 00 63 00 68 00 5c 00 55 00 73 00 65 00 72 00 20 00 50 00 69 00 6e 00 6e 00 65 00 64 00 5c 00 54 00 61 00 73 00 6b 00 42 00 61 00 72 00 } //01 00 
		$a_01_1 = {48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 50 00 61 00 67 00 65 00 } //01 00 
		$a_01_2 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 5f 00 50 00 61 00 67 00 65 00 5f 00 55 00 52 00 4c 00 } //01 00 
		$a_01_3 = {48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 20 00 50 00 61 00 6e 00 65 00 6c 00 5c 00 48 00 6f 00 6d 00 65 00 50 00 61 00 67 00 65 00 } //01 00 
		$a_01_4 = {62 00 72 00 6f 00 77 00 73 00 65 00 72 00 2e 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 2e 00 68 00 6f 00 6d 00 65 00 70 00 61 00 67 00 65 00 } //01 00 
		$a_03_5 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 20 00 2f 00 74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 90 02 10 2f 00 70 00 72 00 69 00 6f 00 72 00 69 00 74 00 79 00 20 00 68 00 69 00 67 00 68 00 90 00 } //01 00 
		$a_01_6 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 43 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 53 00 54 00 } //00 00 
	condition:
		any of ($a_*)
 
}