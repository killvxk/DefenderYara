
rule Trojan_Win32_Pabueri_A{
	meta:
		description = "Trojan:Win32/Pabueri.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {2b c2 8b 4d e0 03 4d 90 01 01 88 01 8b 55 e0 03 55 90 01 01 0f b6 02 8b 4d 90 01 01 0f be 54 0d c0 90 03 00 03 90 01 04 33 c2 8b 4d e0 03 4d 90 01 01 88 01 eb 90 00 } //01 00 
		$a_01_1 = {5e 10 69 4c e4 41 60 d5 72 71 67 a2 d1 e4 03 3c 47 d4 04 4b fd 85 0d d2 6b b5 0a a5 fa a8 b5 35 6c 98 b2 42 d6 c9 bb db 40 f9 bc ac e3 6c d8 32 } //01 00 
		$a_00_2 = {53 74 61 72 74 3a 3a 57 69 6e 64 6f 77 73 46 69 72 65 77 61 6c 6c 41 64 64 41 70 70 28 29 } //01 00  Start::WindowsFirewallAddApp()
		$a_00_3 = {48 6a 62 6f 74 69 64 3a } //00 00  Hjbotid:
	condition:
		any of ($a_*)
 
}