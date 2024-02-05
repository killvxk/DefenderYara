
rule Trojan_BAT_Autorun_J_ibt{
	meta:
		description = "Trojan:BAT/Autorun.J!ibt,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 20 00 90 02 ff 20 00 20 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_02_1 = {53 00 68 00 61 00 72 00 65 00 64 00 20 00 4d 00 75 00 73 00 69 00 63 00 20 00 20 00 20 00 90 02 ff 20 00 20 00 20 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_00_2 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 52 00 65 00 63 00 6f 00 76 00 65 00 72 00 79 00 5c 00 72 00 65 00 63 00 6d 00 67 00 6d 00 74 00 2e 00 63 00 6d 00 64 00 } //01 00 
		$a_00_3 = {6f 00 70 00 65 00 6e 00 3d 00 4b 00 42 00 } //00 00 
	condition:
		any of ($a_*)
 
}