
rule Trojan_BAT_Crysan_ABEY_MTB{
	meta:
		description = "Trojan:BAT/Crysan.ABEY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 08 09 6f 90 01 03 0a 7e 90 01 03 04 73 90 01 03 0a 13 06 11 06 02 7e 90 01 03 04 02 8e 69 6f 90 01 03 0a 11 06 6f 90 01 03 0a dd 90 01 03 00 11 06 39 90 01 03 00 11 06 6f 90 01 03 0a dc 90 0a 49 00 09 7e 90 01 03 04 6f 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00 
		$a_01_2 = {49 00 73 00 44 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 50 00 72 00 65 00 73 00 65 00 6e 00 74 00 } //01 00 
		$a_01_3 = {43 00 41 00 44 00 31 00 30 00 39 00 34 00 33 00 38 00 38 00 38 00 37 00 35 00 } //00 00 
	condition:
		any of ($a_*)
 
}