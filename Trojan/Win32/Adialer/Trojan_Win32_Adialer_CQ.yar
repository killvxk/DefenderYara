
rule Trojan_Win32_Adialer_CQ{
	meta:
		description = "Trojan:Win32/Adialer.CQ,SIGNATURE_TYPE_PEHSTR_EXT,2e 00 2d 00 09 00 00 0a 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 70 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 5c 52 75 6e } //0a 00  Software\Microsoft\Windows\CurrentVersion\policies\Explorer\Run
		$a_00_1 = {6d 6f 64 65 6d } //0a 00  modem
		$a_01_2 = {52 41 53 41 50 49 33 32 2e 44 4c 4c } //0a 00  RASAPI32.DLL
		$a_02_3 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 90 02 08 33 32 2e 65 78 65 90 00 } //05 00 
		$a_00_4 = {40 43 53 40 69 6e 73 74 61 6e 74 } //05 00  @CS@instant
		$a_00_5 = {64 69 61 6c 65 72 30 } //01 00  dialer0
		$a_00_6 = {30 30 38 38 31 39 33 39 31 38 30 30 38 } //01 00  0088193918008
		$a_00_7 = {30 30 38 38 31 38 33 39 39 37 38 34 } //01 00  008818399784
		$a_00_8 = {30 30 38 38 31 39 33 39 31 31 32 32 30 } //00 00  0088193911220
	condition:
		any of ($a_*)
 
}