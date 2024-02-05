
rule Ransom_Win32_Moloci_A{
	meta:
		description = "Ransom:Win32/Moloci.A,SIGNATURE_TYPE_PEHSTR,02 00 02 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 63 72 79 70 74 2f 67 61 74 65 2e 70 68 70 00 00 31 2e 30 2e 30 2e 31 00 25 73 3f 63 6d 64 3d 25 64 26 76 65 72 3d 25 73 26 75 69 64 3d 25 73 } //01 00 
		$a_01_1 = {4c 6f 63 6b 65 72 53 74 61 74 65 00 4c 6f 63 6b 65 72 46 69 6c 65 73 43 6f 75 6e 74 00 00 00 00 4c 6f 63 6b 65 72 50 61 79 6d 65 6e 74 4d 65 74 68 6f 64 00 } //01 00 
		$a_01_2 = {49 6e 63 6f 72 72 65 63 74 20 50 61 79 53 61 66 65 43 61 72 64 20 76 6f 75 63 68 65 72 21 00 00 45 72 72 6f 72 00 00 00 56 61 6c 69 64 20 55 6b 61 73 68 20 76 6f 75 63 68 65 72 20 6d 75 73 74 20 63 6f 6e 74 61 69 6e 20 6f 6e 6c 79 20 64 69 67 69 74 73 21 00 } //01 00 
		$a_01_3 = {2e 78 6c 73 6d 00 00 00 2e 78 6c 73 78 00 00 00 25 73 2e 63 72 79 70 74 65 64 00 00 52 53 41 00 52 53 41 00 2e 63 72 79 70 74 65 64 00 } //01 00 
		$a_01_4 = {4c 6f 63 6b 65 72 53 74 61 74 65 00 44 65 63 72 79 70 74 69 6e 67 20 66 69 6c 65 73 2e 2e 2e 00 } //00 00 
	condition:
		any of ($a_*)
 
}