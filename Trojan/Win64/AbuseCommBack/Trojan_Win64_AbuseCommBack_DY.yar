
rule Trojan_Win64_AbuseCommBack_DY{
	meta:
		description = "Trojan:Win64/AbuseCommBack.DY,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 37 00 46 00 45 00 42 00 45 00 37 00 44 00 41 00 35 00 45 00 33 00 46 00 41 00 44 00 46 00 36 00 39 00 31 00 41 00 42 00 43 00 36 00 30 00 44 00 45 00 30 00 46 00 31 00 35 00 44 00 34 00 45 00 45 00 43 00 30 00 42 00 46 00 30 00 38 00 39 00 38 00 34 00 35 00 34 00 38 00 37 00 36 00 33 00 31 00 35 00 39 00 34 00 38 00 32 00 32 00 46 00 34 00 46 00 35 00 31 00 36 00 32 00 32 00 32 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>7FEBE7DA5E3FADF691ABC60DE0F15D4EEC0BF089845487631594822F4F516222</p>
		$a_01_1 = {37 46 45 42 45 37 44 41 35 45 33 46 41 44 46 36 39 31 41 42 43 36 30 44 45 30 46 31 35 44 34 45 45 43 30 42 46 30 38 39 38 34 35 34 38 37 36 33 31 35 39 34 38 32 32 46 34 46 35 31 36 32 32 32 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 37 46 45 42 45 37 44 41 35 45 33 46 41 44 46 36 39 31 41 42 43 36 30 44 45 30 46 31 35 44 34 45 45 43 30 42 46 30 38 39 38 34 35 34 38 37 36 33 31 35 39 34 38 32 32 46 34 46 35 31 36 32 32 32 69 64 } //01 00  tableid7FEBE7DA5E3FADF691ABC60DE0F15D4EEC0BF089845487631594822F4F516222id
	condition:
		any of ($a_*)
 
}