
rule Trojan_BAT_Nanocore_ABPW_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.ABPW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {01 0b 06 72 90 01 03 70 6f 90 01 03 0a 74 90 01 03 1b 16 07 16 20 90 01 03 00 28 90 01 03 0a 00 06 72 90 01 03 70 6f 90 01 03 0a 74 90 01 03 1b 16 07 20 90 01 03 00 20 90 01 03 00 28 90 01 03 0a 00 06 72 90 01 03 70 6f 90 01 03 0a 74 90 01 03 1b 16 07 20 90 01 03 00 20 90 01 03 00 28 90 01 03 0a 00 02 90 00 } //01 00 
		$a_01_1 = {43 00 61 00 63 00 68 00 65 00 5f 00 53 00 69 00 6d 00 75 00 6c 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}