
rule Trojan_BAT_Xmrig_NE_MTB{
	meta:
		description = "Trojan:BAT/Xmrig.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 58 00 63 00 72 00 63 00 75 00 72 00 65 00 5c 00 78 00 6d 00 72 00 69 00 67 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {4d 00 73 00 44 00 74 00 73 00 53 00 65 00 72 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {4e 00 65 00 77 00 53 00 74 00 61 00 72 00 74 00 55 00 70 00 2e 00 6c 00 6e 00 6b 00 } //00 00 
	condition:
		any of ($a_*)
 
}