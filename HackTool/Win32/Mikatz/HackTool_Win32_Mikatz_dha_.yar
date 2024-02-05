
rule HackTool_Win32_Mikatz_dha_{
	meta:
		description = "HackTool:Win32/Mikatz!dha!!Mikatz.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,67 00 67 00 0d 00 00 64 00 "
		
	strings :
		$a_01_0 = {6d 69 6d 69 6b 61 74 7a } //01 00 
		$a_00_1 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 5f 00 6c 00 5f 00 63 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 20 00 3b 00 20 00 43 00 72 00 79 00 70 00 74 00 47 00 65 00 74 00 55 00 73 00 65 00 72 00 4b 00 65 00 79 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //01 00 
		$a_00_2 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 5f 00 6c 00 5f 00 63 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 20 00 3b 00 20 00 6b 00 65 00 79 00 53 00 70 00 65 00 63 00 20 00 3d 00 3d 00 20 00 43 00 45 00 52 00 54 00 5f 00 4e 00 43 00 52 00 59 00 50 00 54 00 5f 00 4b 00 45 00 59 00 5f 00 53 00 50 00 45 00 43 00 20 00 77 00 69 00 74 00 68 00 6f 00 75 00 74 00 20 00 43 00 4e 00 } //01 00 
		$a_00_3 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 5f 00 6c 00 5f 00 63 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 20 00 3b 00 20 00 43 00 72 00 79 00 70 00 74 00 41 00 63 00 71 00 75 00 69 00 72 00 65 00 43 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 4b 00 65 00 79 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //01 00 
		$a_00_4 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 5f 00 6c 00 5f 00 63 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 20 00 3b 00 20 00 43 00 65 00 72 00 74 00 47 00 65 00 74 00 43 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 79 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //01 00 
		$a_00_5 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 5f 00 6c 00 5f 00 63 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 20 00 3b 00 20 00 43 00 65 00 72 00 74 00 47 00 65 00 74 00 4e 00 61 00 6d 00 65 00 53 00 74 00 72 00 69 00 6e 00 67 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //ec ff 
		$a_80_6 = {77 69 6e 64 6f 77 73 5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 } //windows\kevlar-api\kevlarsigs  ec ff 
		$a_80_7 = {5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 36 34 5c 78 36 34 5c 72 65 6c 65 61 73 65 5c 48 49 50 48 61 6e 64 6c 65 72 73 36 34 2e 70 64 62 } //\kevlar-api\kevlarsigs64\x64\release\HIPHandlers64.pdb  ec ff 
		$a_80_8 = {5c 6d 63 61 66 65 65 5c 68 6f 73 74 20 69 6e 74 72 75 73 69 6f 6e 20 70 72 65 76 65 6e 74 69 6f 6e 5c 68 69 70 } //\mcafee\host intrusion prevention\hip  ec ff 
		$a_80_9 = {5c 73 64 6b 2e 70 72 6f 74 65 63 74 6f 72 5c 6d 69 6e 6f 72 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 36 34 2e 70 64 62 } //\sdk.protector\minor\x64\Release\Protector64.pdb  ec ff 
		$a_80_10 = {6d 6f 72 70 68 69 73 65 63 5f 64 6c 6c 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_dll_version_s  ec ff 
		$a_80_11 = {6d 6f 72 70 68 69 73 65 63 5f 70 72 6f 64 75 63 74 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_product_version_s  ec ff 
		$a_80_12 = {5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 53 65 72 76 69 63 65 36 34 2e 70 64 62 } //\x64\Release\ProtectorService64.pdb  00 00 
	condition:
		any of ($a_*)
 
}