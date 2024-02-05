
rule Ransom_MSIL_FileCrypter_MA_MTB{
	meta:
		description = "Ransom:MSIL/FileCrypter.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 61 73 6f 6d 77 61 72 65 32 2e 30 } //01 00 
		$a_01_1 = {52 61 6e 73 6f 6d 77 61 72 65 32 5f 4c 6f 61 64 } //01 00 
		$a_00_2 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //01 00 
		$a_00_3 = {6d 00 69 00 6e 00 65 00 67 00 61 00 6d 00 65 00 73 00 33 00 32 00 31 00 } //01 00 
		$a_00_4 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 46 00 69 00 6c 00 65 00 73 00 20 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 77 00 69 00 74 00 68 00 20 00 41 00 68 00 6d 00 65 00 64 00 20 00 6d 00 69 00 6e 00 65 00 67 00 61 00 6d 00 65 00 73 00 20 00 52 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 } //01 00 
		$a_00_5 = {79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 2c 00 70 00 68 00 6f 00 74 00 6f 00 73 00 2c 00 65 00 78 00 65 00 20 00 66 00 69 00 6c 00 65 00 73 00 2c 00 20 00 61 00 6c 00 6c 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 6d 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00 
		$a_01_6 = {52 61 73 6f 6d 77 61 72 65 32 2e 5f 30 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //00 00 
		$a_00_7 = {5d 04 00 00 08 } //52 04 
	condition:
		any of ($a_*)
 
}