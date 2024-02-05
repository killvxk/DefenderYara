
rule Trojan_BAT_AveMaria_NEAG_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NEAG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 02 00 00 05 00 "
		
	strings :
		$a_01_0 = {6f 98 00 00 0a 13 05 72 43 01 00 70 28 57 00 00 0a 13 06 28 b2 00 00 0a 11 06 6f 98 00 00 0a 13 07 28 b3 00 00 0a 6f b4 00 00 0a 13 08 08 28 b5 00 00 0a 13 09 19 8d 02 00 00 01 13 0b 11 0b 16 11 08 a2 11 0b } //03 00 
		$a_01_1 = {55 00 48 00 56 00 69 00 62 00 47 00 6c 00 7a 00 61 00 47 00 56 00 79 00 53 00 57 00 52 00 6c 00 62 00 6e 00 52 00 70 00 64 00 48 00 6c 00 51 00 5a 00 58 00 4a 00 74 00 61 00 58 00 4e 00 7a 00 61 00 57 00 39 00 75 00 51 00 58 00 52 00 30 00 63 00 6d 00 6c 00 69 00 64 00 58 00 52 00 6c 00 4c 00 6b 00 6c 00 56 00 62 00 6e 00 4a 00 6c 00 63 00 33 00 52 00 79 00 61 00 57 00 4e 00 30 00 5a 00 57 00 52 00 51 00 5a 00 58 00 4a 00 74 00 61 00 58 00 4e 00 7a 00 61 00 57 00 39 00 75 00 } //00 00 
	condition:
		any of ($a_*)
 
}