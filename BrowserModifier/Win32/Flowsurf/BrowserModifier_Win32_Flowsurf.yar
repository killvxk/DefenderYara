
rule BrowserModifier_Win32_Flowsurf{
	meta:
		description = "BrowserModifier:Win32/Flowsurf,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5a 00 44 00 44 00 4c 00 4c 00 00 00 } //01 00 
		$a_01_1 = {37 44 43 44 36 41 33 34 2d 30 46 41 38 2d 34 45 43 39 2d 42 32 30 44 2d 32 36 33 35 33 37 46 44 35 34 43 39 } //01 00 
		$a_01_2 = {33 37 36 44 43 35 46 41 2d 35 30 33 46 2d 34 31 41 44 2d 38 45 43 44 2d 45 41 33 31 43 33 45 41 36 33 41 44 } //01 00 
		$a_03_3 = {48 83 c9 ff b8 34 00 00 00 66 89 84 24 90 01 01 01 00 00 b8 6a 00 00 00 ba 36 00 00 00 66 89 84 24 90 01 01 01 00 00 66 89 94 24 90 01 01 01 00 00 ba 69 00 00 00 66 89 94 24 90 01 01 01 00 00 66 89 94 24 90 01 01 01 00 00 b8 2e 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Flowsurf_2{
	meta:
		description = "BrowserModifier:Win32/Flowsurf,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 33 39 34 46 36 35 31 2d 33 30 38 39 2d 34 35 34 42 2d 39 30 30 44 2d 38 35 38 46 32 41 41 33 33 34 31 33 } //01 00 
		$a_01_1 = {37 33 31 31 34 43 30 44 2d 39 43 41 41 2d 34 30 35 31 2d 42 46 36 32 2d 42 41 44 33 46 46 44 39 44 42 35 30 } //01 00 
		$a_01_2 = {37 44 43 44 36 41 33 34 2d 30 46 41 38 2d 34 45 43 39 2d 42 32 30 44 2d 32 36 33 35 33 37 46 44 35 34 43 39 } //01 00 
		$a_01_3 = {33 37 36 44 43 35 46 41 2d 35 30 33 46 2d 34 31 41 44 2d 38 45 43 44 2d 45 41 33 31 43 33 45 41 36 33 41 44 } //03 00 
		$a_03_4 = {83 c4 0c 8d 84 24 90 01 01 02 00 00 50 8b c8 51 c6 84 24 90 01 01 02 00 00 62 88 9c 24 90 01 01 02 00 00 c6 84 24 90 01 01 02 00 00 63 c6 84 24 90 01 01 02 00 00 79 c6 84 24 90 01 01 02 00 00 63 c6 84 24 90 01 01 02 00 00 70 c6 84 24 90 01 01 02 00 00 61 c6 84 24 90 01 01 02 00 00 4a 88 9c 24 90 01 01 02 00 00 c6 84 24 90 01 01 02 00 00 73 c6 84 24 90 01 01 02 00 00 42 c6 84 24 90 01 01 02 00 00 4c c6 84 24 90 01 01 02 00 00 73 c6 84 24 90 01 01 02 00 00 55 ff d6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}