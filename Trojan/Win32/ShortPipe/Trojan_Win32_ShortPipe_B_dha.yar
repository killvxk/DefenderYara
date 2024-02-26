
rule Trojan_Win32_ShortPipe_B_dha{
	meta:
		description = "Trojan:Win32/ShortPipe.B!dha,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 01 00 00 04 00 "
		
	strings :
		$a_02_0 = {2d 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 74 00 79 00 6c 00 65 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 20 00 24 00 28 00 67 00 63 00 90 02 10 7c 00 6f 00 75 00 74 00 2d 00 73 00 74 00 72 00 69 00 6e 00 67 00 29 00 7c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 6e 00 6f 00 70 00 72 00 6f 00 66 00 69 00 6c 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}