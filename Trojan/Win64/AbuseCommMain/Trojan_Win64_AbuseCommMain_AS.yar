
rule Trojan_Win64_AbuseCommMain_AS{
	meta:
		description = "Trojan:Win64/AbuseCommMain.AS,SIGNATURE_TYPE_PEHSTR,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 6f 00 78 00 3a 00 32 00 30 00 36 00 35 00 33 00 30 00 37 00 41 00 34 00 35 00 32 00 32 00 45 00 42 00 46 00 41 00 39 00 43 00 38 00 36 00 32 00 44 00 42 00 37 00 43 00 32 00 30 00 30 00 33 00 33 00 42 00 37 00 31 00 44 00 38 00 38 00 32 00 45 00 42 00 41 00 31 00 31 00 44 00 30 00 45 00 31 00 34 00 32 00 30 00 38 00 37 00 32 00 31 00 42 00 44 00 31 00 45 00 43 00 36 00 34 00 35 00 35 00 31 00 43 00 } //01 00 
		$a_01_1 = {32 30 36 35 33 30 37 41 34 35 32 32 45 42 46 41 39 43 38 36 32 44 42 37 43 32 30 30 33 33 42 37 31 44 38 38 32 45 42 41 31 31 44 30 45 31 34 32 30 38 37 32 31 42 44 31 45 43 36 34 35 35 31 43 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {32 30 36 35 33 30 37 41 34 35 32 32 45 42 46 41 39 43 38 36 32 44 42 37 43 32 30 30 33 33 42 37 31 44 38 38 32 45 42 41 31 31 44 30 45 31 34 32 30 38 37 32 31 42 44 31 45 43 36 34 35 35 31 43 90 01 0c 4c 00 00 00 } //01 00 
		$a_01_3 = {5c 74 6f 78 5c 32 30 36 35 33 30 37 41 34 35 32 32 45 42 46 41 39 43 38 36 32 44 42 37 43 32 30 30 33 33 42 37 31 44 38 38 32 45 42 41 31 31 44 30 45 31 34 32 30 38 37 32 31 42 44 31 45 43 36 34 35 35 31 43 2e 68 73 74 72 } //00 00 
	condition:
		any of ($a_*)
 
}