
rule Trojan_BAT_Lazy_NL_MTB{
	meta:
		description = "Trojan:BAT/Lazy.NL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 7b 00 00 0a 02 6f 90 01 01 00 00 0a 28 90 01 01 00 00 0a 03 6f 90 01 01 00 00 0a 0a 73 90 01 01 00 00 0a 06 6f 90 01 01 00 00 0a 28 28 00 00 06 90 00 } //01 00 
		$a_01_1 = {4b 65 79 41 75 74 68 20 4c 6f 61 64 65 72 20 57 69 6e 66 6f 72 6d 20 45 78 61 6d 70 6c 65 } //00 00  KeyAuth Loader Winform Example
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_Lazy_NL_MTB_2{
	meta:
		description = "Trojan:BAT/Lazy.NL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {72 95 01 00 70 06 73 90 01 03 0a 0b 07 6f 90 01 03 0a 0c 08 6f 90 01 03 0a 90 00 } //01 00 
		$a_01_1 = {43 4f 4c 4c 45 43 54 42 49 4f 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  COLLECTBIO.Properties.Resources.resources
		$a_01_2 = {43 4f 4c 4c 45 43 54 42 49 4f } //00 00  COLLECTBIO
	condition:
		any of ($a_*)
 
}