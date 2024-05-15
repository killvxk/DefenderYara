
rule Trojan_Win64_AbuseCommBack_EO{
	meta:
		description = "Trojan:Win64/AbuseCommBack.EO,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 36 00 35 00 32 00 30 00 41 00 37 00 39 00 46 00 35 00 41 00 38 00 33 00 32 00 46 00 39 00 44 00 34 00 32 00 33 00 38 00 43 00 32 00 43 00 32 00 38 00 34 00 31 00 44 00 38 00 39 00 41 00 33 00 32 00 34 00 36 00 46 00 37 00 45 00 46 00 32 00 42 00 30 00 31 00 38 00 35 00 43 00 37 00 33 00 35 00 32 00 36 00 37 00 44 00 37 00 44 00 34 00 31 00 46 00 35 00 44 00 39 00 31 00 32 00 39 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>6520A79F5A832F9D4238C2C2841D89A3246F7EF2B0185C735267D7D41F5D9129</p>
		$a_01_1 = {36 35 32 30 41 37 39 46 35 41 38 33 32 46 39 44 34 32 33 38 43 32 43 32 38 34 31 44 38 39 41 33 32 34 36 46 37 45 46 32 42 30 31 38 35 43 37 33 35 32 36 37 44 37 44 34 31 46 35 44 39 31 32 39 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 36 35 32 30 41 37 39 46 35 41 38 33 32 46 39 44 34 32 33 38 43 32 43 32 38 34 31 44 38 39 41 33 32 34 36 46 37 45 46 32 42 30 31 38 35 43 37 33 35 32 36 37 44 37 44 34 31 46 35 44 39 31 32 39 69 64 } //01 00  tableid6520A79F5A832F9D4238C2C2841D89A3246F7EF2B0185C735267D7D41F5D9129id
	condition:
		any of ($a_*)
 
}