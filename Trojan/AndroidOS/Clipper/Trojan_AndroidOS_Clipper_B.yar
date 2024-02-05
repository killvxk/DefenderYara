
rule Trojan_AndroidOS_Clipper_B{
	meta:
		description = "Trojan:AndroidOS/Clipper.B,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {2a 2a 46 72 6f 6d 20 4d 65 74 61 20 4d 61 73 6b 20 41 70 70 2a 2a } //01 00 
		$a_00_1 = {2a 2a 52 65 73 74 6f 72 65 20 41 63 63 6f 75 6e 74 2a 2a } //01 00 
		$a_00_2 = {61 63 63 5f 69 64 6a } //01 00 
		$a_00_3 = {6d 65 74 61 6d 61 73 6b 2f 55 74 69 6c 2f 43 6c 69 70 62 6f 61 72 64 4d 6f 6e 69 74 6f 72 53 65 72 76 69 63 65 } //00 00 
		$a_00_4 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}