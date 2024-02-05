
rule Trojan_Win32_FormBook_BE_MTB{
	meta:
		description = "Trojan:Win32/FormBook.BE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 00 46 00 43 00 35 00 47 00 31 00 37 00 36 00 } //01 00 
		$a_01_1 = {49 00 4c 00 58 00 75 00 32 00 42 00 62 00 51 00 62 00 57 00 65 00 4c 00 71 00 6e 00 44 00 4a 00 63 00 67 00 43 00 62 00 5a 00 48 00 61 00 37 00 43 00 4a 00 78 00 54 00 50 00 4b 00 31 00 32 00 33 00 } //01 00 
		$a_01_2 = {50 00 4a 00 67 00 54 00 74 00 49 00 4e 00 34 00 52 00 59 00 53 00 70 00 6c 00 6b 00 47 00 49 00 77 00 4b 00 4c 00 43 00 42 00 74 00 33 00 46 00 57 00 62 00 30 00 4d 00 55 00 41 00 37 00 50 00 59 00 31 00 36 00 34 00 } //01 00 
		$a_01_3 = {4e 00 4d 00 68 00 51 00 43 00 54 00 78 00 79 00 68 00 4b 00 43 00 45 00 65 00 6f 00 72 00 62 00 55 00 4e 00 39 00 77 00 4b 00 30 00 47 00 46 00 6b 00 77 00 43 00 31 00 39 00 35 00 } //01 00 
		$a_00_4 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00 
	condition:
		any of ($a_*)
 
}