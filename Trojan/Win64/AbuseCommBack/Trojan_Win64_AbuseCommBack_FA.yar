
rule Trojan_Win64_AbuseCommBack_FA{
	meta:
		description = "Trojan:Win64/AbuseCommBack.FA,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 44 00 43 00 42 00 42 00 39 00 44 00 44 00 45 00 41 00 36 00 34 00 30 00 41 00 36 00 41 00 36 00 38 00 46 00 44 00 38 00 32 00 30 00 35 00 42 00 37 00 43 00 31 00 36 00 30 00 44 00 36 00 46 00 39 00 31 00 46 00 46 00 39 00 43 00 33 00 42 00 30 00 41 00 45 00 37 00 33 00 41 00 42 00 44 00 42 00 36 00 44 00 34 00 32 00 36 00 35 00 34 00 33 00 42 00 43 00 41 00 46 00 41 00 37 00 41 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>DCBB9DDEA640A6A68FD8205B7C160D6F91FF9C3B0AE73ABDB6D426543BCAFA7A</p>
		$a_01_1 = {44 43 42 42 39 44 44 45 41 36 34 30 41 36 41 36 38 46 44 38 32 30 35 42 37 43 31 36 30 44 36 46 39 31 46 46 39 43 33 42 30 41 45 37 33 41 42 44 42 36 44 34 32 36 35 34 33 42 43 41 46 41 37 41 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 44 43 42 42 39 44 44 45 41 36 34 30 41 36 41 36 38 46 44 38 32 30 35 42 37 43 31 36 30 44 36 46 39 31 46 46 39 43 33 42 30 41 45 37 33 41 42 44 42 36 44 34 32 36 35 34 33 42 43 41 46 41 37 41 69 64 } //01 00  tableidDCBB9DDEA640A6A68FD8205B7C160D6F91FF9C3B0AE73ABDB6D426543BCAFA7Aid
	condition:
		any of ($a_*)
 
}