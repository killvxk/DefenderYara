
rule TrojanSpy_BAT_CoinSteal_F_bit{
	meta:
		description = "TrojanSpy:BAT/CoinSteal.F!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 00 4a 00 44 00 74 00 70 00 4b 00 38 00 73 00 4c 00 47 00 38 00 47 00 55 00 46 00 46 00 50 00 79 00 64 00 35 00 36 00 57 00 72 00 45 00 66 00 4d 00 54 00 78 00 55 00 39 00 53 00 46 00 44 00 77 00 51 00 } //01 00 
		$a_01_1 = {30 00 78 00 64 00 36 00 64 00 65 00 33 00 32 00 64 00 37 00 38 00 61 00 36 00 36 00 35 00 36 00 63 00 31 00 63 00 33 00 64 00 61 00 32 00 65 00 38 00 38 00 30 00 65 00 39 00 62 00 30 00 63 00 65 00 30 00 32 00 34 00 62 00 32 00 62 00 32 00 37 00 32 00 } //01 00 
		$a_01_2 = {4c 00 59 00 62 00 67 00 34 00 72 00 79 00 45 00 69 00 41 00 7a 00 7a 00 46 00 50 00 79 00 31 00 74 00 46 00 70 00 53 00 6b 00 48 00 73 00 48 00 61 00 54 00 38 00 6d 00 45 00 76 00 61 00 55 00 50 00 72 00 } //01 00 
		$a_01_3 = {69 73 56 61 6c 69 64 4c 54 43 41 64 64 72 65 73 73 } //01 00 
		$a_01_4 = {49 73 56 61 6c 69 64 45 54 48 41 64 64 72 65 73 73 } //01 00 
		$a_01_5 = {49 73 56 61 6c 69 64 42 69 74 63 6f 69 6e 41 64 64 72 65 73 73 } //00 00 
	condition:
		any of ($a_*)
 
}