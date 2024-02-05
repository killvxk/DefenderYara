
rule Worm_Win32_Cissi_gen{
	meta:
		description = "Worm:Win32/Cissi.gen,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {36 33 2e 32 35 31 2e 32 31 36 2e 31 31 } //01 00 
		$a_01_1 = {31 35 32 2e 31 36 33 2e 31 35 39 2e 32 33 32 } //01 00 
		$a_01_2 = {31 34 39 2e 31 37 34 2e 32 31 31 2e 38 } //01 00 
		$a_01_3 = {36 34 2e 31 32 2e 35 31 2e 31 33 32 } //01 00 
		$a_01_4 = {32 31 36 2e 31 30 39 2e 31 31 36 2e 31 37 } //01 00 
		$a_01_5 = {63 69 73 73 69 40 79 61 68 6f 6f 2e 63 6f 6d } //01 00 
		$a_01_6 = {50 6f 65 6d 5f 63 6f 6c 6c 65 63 74 69 6f 6e 2e 70 69 66 } //00 00 
	condition:
		any of ($a_*)
 
}