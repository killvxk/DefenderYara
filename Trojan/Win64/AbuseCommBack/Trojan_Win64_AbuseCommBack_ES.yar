
rule Trojan_Win64_AbuseCommBack_ES{
	meta:
		description = "Trojan:Win64/AbuseCommBack.ES,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 32 00 37 00 39 00 33 00 44 00 30 00 30 00 39 00 38 00 37 00 32 00 41 00 46 00 38 00 30 00 45 00 44 00 39 00 42 00 31 00 41 00 34 00 36 00 31 00 46 00 37 00 42 00 39 00 42 00 44 00 36 00 32 00 30 00 39 00 37 00 34 00 34 00 30 00 34 00 37 00 44 00 43 00 31 00 37 00 30 00 37 00 41 00 34 00 32 00 43 00 42 00 36 00 32 00 32 00 30 00 35 00 33 00 37 00 31 00 36 00 41 00 44 00 34 00 42 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>2793D009872AF80ED9B1A461F7B9BD6209744047DC1707A42CB622053716AD4B</p>
		$a_01_1 = {32 37 39 33 44 30 30 39 38 37 32 41 46 38 30 45 44 39 42 31 41 34 36 31 46 37 42 39 42 44 36 32 30 39 37 34 34 30 34 37 44 43 31 37 30 37 41 34 32 43 42 36 32 32 30 35 33 37 31 36 41 44 34 42 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 32 37 39 33 44 30 30 39 38 37 32 41 46 38 30 45 44 39 42 31 41 34 36 31 46 37 42 39 42 44 36 32 30 39 37 34 34 30 34 37 44 43 31 37 30 37 41 34 32 43 42 36 32 32 30 35 33 37 31 36 41 44 34 42 69 64 } //01 00  tableid2793D009872AF80ED9B1A461F7B9BD6209744047DC1707A42CB622053716AD4Bid
	condition:
		any of ($a_*)
 
}