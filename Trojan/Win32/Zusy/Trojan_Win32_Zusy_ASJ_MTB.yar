
rule Trojan_Win32_Zusy_ASJ_MTB{
	meta:
		description = "Trojan:Win32/Zusy.ASJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 78 63 64 6c 71 } //01 00  Program Files\xcdlq
		$a_01_1 = {57 69 6e 64 6f 77 73 5c 64 69 73 6b 70 74 2e 64 61 74 } //01 00  Windows\diskpt.dat
		$a_01_2 = {68 61 73 68 3d 64 35 35 64 31 62 34 38 63 33 32 65 66 63 65 31 36 62 62 38 61 30 32 37 65 66 64 72 35 36 61 32 } //01 00  hash=d55d1b48c32efce16bb8a027efdr56a2
		$a_01_3 = {73 6e 3d 32 34 47 41 57 2d 37 38 53 46 43 2d 44 53 50 45 47 2d 45 33 31 55 33 2d 5a 33 54 44 37 } //01 00  sn=24GAW-78SFC-DSPEG-E31U3-Z3TD7
		$a_01_4 = {65 61 d4 a3 59 72 6e 6a 66 62 5e 59 5a 77 73 6f 6b 67 63 5f 59 5b 78 74 70 6c 68 64 60 59 5c ec dc f0 e0 f4 e4 f8 17 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Zusy_ASJ_MTB_2{
	meta:
		description = "Trojan:Win32/Zusy.ASJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 45 41 35 41 44 31 39 39 45 32 30 31 44 41 42 42 44 45 33 32 32 36 39 43 36 42 36 39 30 43 46 } //01 00  BEA5AD199E201DABBDE32269C6B690CF
		$a_01_1 = {77 61 6c 6c 65 74 2e 74 65 6e 70 61 79 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 76 31 2e 30 2f 71 75 65 72 79 71 62 2e 63 67 69 } //01 00  wallet.tenpay.com/cgi-bin/v1.0/queryqb.cgi
		$a_01_2 = {45 35 20 42 38 20 39 30 20 45 35 20 38 46 20 42 37 20 45 36 20 38 38 20 39 36 20 45 35 20 41 46 20 38 36 20 45 37 20 41 30 20 38 31 20 45 39 20 39 34 20 39 39 20 45 38 20 41 46 20 41 46 } //01 00  E5 B8 90 E5 8F B7 E6 88 96 E5 AF 86 E7 A0 81 E9 94 99 E8 AF AF
		$a_01_3 = {31 30 20 30 31 20 32 43 20 33 36 20 30 30 20 34 30 20 30 42 20 35 30 20 30 31 20 36 30 20 30 31 20 37 30 20 30 31 20 38 43 20 39 43 20 41 43 20 42 43 20 43 30 20 30 31 } //01 00  10 01 2C 36 00 40 0B 50 01 60 01 70 01 8C 9C AC BC C0 01
		$a_01_4 = {30 38 20 30 30 20 30 31 20 30 36 20 30 46 20 35 32 20 36 35 20 37 31 20 34 37 20 36 35 20 37 34 20 34 32 20 36 43 20 36 31 20 36 33 20 36 42 20 34 43 20 36 39 20 37 33 20 37 34 20 31 38 20 30 30 20 30 31 } //01 00  08 00 01 06 0F 52 65 71 47 65 74 42 6C 61 63 6B 4C 69 73 74 18 00 01
		$a_01_5 = {30 36 20 31 39 20 34 31 20 36 33 20 36 33 20 36 46 20 37 33 20 37 34 20 35 33 20 37 36 20 36 33 20 32 45 20 35 32 20 36 35 20 37 31 20 34 37 20 36 35 20 37 34 20 34 32 20 36 43 20 36 31 20 36 33 20 36 42 20 34 43 20 36 39 20 37 33 20 37 34 20 31 44 20 30 30 } //01 00  06 19 41 63 63 6F 73 74 53 76 63 2E 52 65 71 47 65 74 42 6C 61 63 6B 4C 69 73 74 1D 00
		$a_01_6 = {31 43 20 32 43 20 33 36 20 30 30 20 34 30 20 31 35 20 35 43 20 36 30 20 30 31 20 37 30 20 30 31 20 38 43 20 39 43 20 41 31 20 30 32 20 35 45 } //01 00  1C 2C 36 00 40 15 5C 60 01 70 01 8C 9C A1 02 5E
		$a_01_7 = {37 34 20 34 46 20 36 32 20 36 41 20 36 36 20 31 31 20 34 33 20 34 44 20 34 34 20 35 46 20 34 37 20 34 35 20 35 34 20 35 46 20 34 32 20 36 43 } //01 00  74 4F 62 6A 66 11 43 4D 44 5F 47 45 54 5F 42 6C
		$a_01_8 = {69 77 6f 66 65 6e 67 2e 63 6f 6d 2f 74 63 2e 74 78 74 } //00 00  iwofeng.com/tc.txt
	condition:
		any of ($a_*)
 
}