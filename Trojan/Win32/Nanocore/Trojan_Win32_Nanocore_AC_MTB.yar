
rule Trojan_Win32_Nanocore_AC_MTB{
	meta:
		description = "Trojan:Win32/Nanocore.AC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,52 00 52 00 0d 00 00 0a 00 "
		
	strings :
		$a_00_0 = {77 00 69 00 6e 00 72 00 61 00 72 00 73 00 66 00 78 00 6d 00 61 00 70 00 70 00 69 00 6e 00 67 00 66 00 69 00 6c 00 65 00 2e 00 74 00 6d 00 70 00 } //0a 00 
		$a_00_1 = {47 00 45 00 54 00 50 00 41 00 53 00 53 00 57 00 4f 00 52 00 44 00 31 00 } //0a 00 
		$a_00_2 = {5f 00 5f 00 74 00 6d 00 70 00 5f 00 72 00 61 00 72 00 5f 00 73 00 66 00 78 00 5f 00 61 00 63 00 63 00 65 00 73 00 73 00 5f 00 63 00 68 00 65 00 63 00 6b 00 5f 00 25 00 75 00 } //0a 00 
		$a_01_3 = {2e 76 62 73 } //01 00 
		$a_80_4 = {2e 70 70 74 } //.ppt  01 00 
		$a_80_5 = {2e 69 63 6d } //.icm  01 00 
		$a_80_6 = {2e 63 70 6c } //.cpl  0a 00 
		$a_80_7 = {2e 6d 70 33 } //.mp3  01 00 
		$a_80_8 = {2e 70 64 66 } //.pdf  01 00 
		$a_80_9 = {2e 6d 73 63 } //.msc  0a 00 
		$a_00_10 = {53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 77 00 61 00 72 00 6e 00 69 00 6e 00 67 00 4b 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 72 00 65 00 6d 00 6f 00 76 00 65 00 20 00 25 00 73 00 20 00 66 00 72 00 6f 00 6d 00 20 00 66 00 6f 00 6c 00 64 00 65 00 72 00 20 00 25 00 73 00 2e 00 20 00 49 00 74 00 20 00 69 00 73 00 20 00 75 00 6e 00 73 00 65 00 63 00 75 00 72 00 65 00 20 00 74 00 6f 00 20 00 72 00 75 00 6e 00 20 00 25 00 73 00 20 00 75 00 6e 00 74 00 69 00 6c 00 20 00 69 00 74 00 20 00 69 00 73 00 20 00 64 00 6f 00 6e 00 65 00 } //0a 00 
		$a_00_11 = {41 00 52 00 61 00 72 00 48 00 74 00 6d 00 6c 00 43 00 6c 00 61 00 73 00 73 00 4e 00 61 00 6d 00 65 00 } //0a 00 
		$a_00_12 = {43 00 72 00 79 00 70 00 74 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 20 00 66 00 61 00 69 00 6c 00 65 00 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}