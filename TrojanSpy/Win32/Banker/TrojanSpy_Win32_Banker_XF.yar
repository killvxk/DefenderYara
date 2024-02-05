
rule TrojanSpy_Win32_Banker_XF{
	meta:
		description = "TrojanSpy:Win32/Banker.XF,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {8b 37 85 db 74 15 8a 02 3c 61 72 06 3c 7a 77 02 2c 20 88 06 42 46 4b } //01 00 
		$a_00_1 = {45 72 72 6f 20 61 6f 20 61 62 72 69 72 20 61 72 71 75 69 76 6f 20 6f 75 20 70 61 73 74 61 } //01 00 
		$a_00_2 = {2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 66 00 6f 00 74 00 6f 00 73 00 } //01 00 
		$a_00_3 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 55 00 70 00 64 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_4 = {35 37 43 33 41 38 35 34 45 37 30 33 36 32 45 44 37 31 46 41 37 44 39 44 42 32 32 35 41 33 35 46 38 37 43 42 37 41 46 45 32 35 43 38 37 39 44 39 30 39 30 30 32 42 45 45 31 37 } //07 00 
		$a_01_5 = {34 38 45 39 30 42 32 45 44 32 33 46 35 44 43 37 37 33 44 38 36 33 44 35 37 42 45 35 36 33 39 46 34 34 39 30 42 42 31 34 33 46 33 30 33 33 35 30 42 36 44 33 37 32 41 46 35 34 44 41 36 36 39 39 33 31 31 35 33 36 45 37 35 36 45 39 30 45 44 35 30 38 33 38 44 37 37 37 41 36 34 37 33 34 32 39 36 45 44 46 33 41 46 37 33 42 46 38 } //00 00 
	condition:
		any of ($a_*)
 
}