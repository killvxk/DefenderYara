
rule Trojan_Win32_Tracur_BE{
	meta:
		description = "Trojan:Win32/Tracur.BE,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 15 00 0c 00 00 0a 00 "
		
	strings :
		$a_03_0 = {89 45 f8 83 ee 01 72 0e 74 20 4e 0f 84 a2 00 00 00 e9 ac 00 00 00 a1 90 01 03 00 89 45 f4 c7 45 f8 e9 05 00 00 e9 98 00 00 00 a1 90 00 } //0a 00 
		$a_03_1 = {80 38 78 75 3f 80 78 01 31 75 39 80 78 02 3d 75 33 8b 45 ec e8 90 01 02 fe ff 8b d0 4a 83 ea 02 7c 3e 90 00 } //0a 00 
		$a_01_2 = {8d 55 ef 8a 18 30 1a 4a 48 41 75 f7 8d 55 d8 8d 45 e8 b9 08 00 00 00 e8 } //02 00 
		$a_01_3 = {5c 78 33 31 5c 78 33 38 5c 78 33 34 5c 78 32 45 5c 78 33 31 5c 78 33 37 5c 78 33 33 5c 78 32 45 5c 78 33 31 5c 78 33 38 5c 78 33 31 5c 78 32 45 5c 78 33 35 5c 78 33 35 5c 78 32 46 } //02 00 
		$a_01_4 = {ce 3f 82 f6 6a 03 49 54 8f 93 fb 87 71 1d 7a fd } //02 00 
		$a_01_5 = {ec c3 92 33 31 2e 93 06 e4 a6 53 03 ae 29 35 2e } //02 00 
		$a_01_6 = {ff 5a 36 f2 c6 b2 03 d6 c8 44 0b 16 b0 3a e8 21 66 83 c8 b6 7b 92 71 5a } //01 00 
		$a_01_7 = {31 42 ca 9e 4c f6 cb 82 99 24 ed c4 05 0f 99 cf 07 } //01 00 
		$a_01_8 = {ae 9d 28 87 f6 f4 5a e8 ae 1d 99 80 b5 d6 2a e9 } //01 00 
		$a_01_9 = {3d 9c 5a c0 52 6d 4b da 0a 8e df 8c 45 1f c4 78 } //01 00 
		$a_01_10 = {cb e4 49 97 25 49 85 78 4d 26 80 6b 60 e2 bc 01 } //01 00 
		$a_01_11 = {8e 2a e2 71 6e 1e 11 b3 cf 0e 64 6d 6d ab e1 0b } //00 00 
		$a_00_12 = {80 10 } //00 00 
	condition:
		any of ($a_*)
 
}