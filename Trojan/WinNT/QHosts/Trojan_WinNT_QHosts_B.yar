
rule Trojan_WinNT_QHosts_B{
	meta:
		description = "Trojan:WinNT/QHosts.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {b8 80 0f 05 fd 50 8d 45 d8 50 ff 15 } //01 00 
		$a_02_1 = {6f 70 65 72 61 2e 65 78 65 00 90 02 10 66 69 72 65 66 6f 78 2e 65 78 65 00 90 00 } //01 00 
		$a_02_2 = {68 6f 73 74 37 00 90 02 08 68 73 74 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}