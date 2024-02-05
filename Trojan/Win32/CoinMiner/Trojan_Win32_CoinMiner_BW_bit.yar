
rule Trojan_Win32_CoinMiner_BW_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.BW!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {8b 75 14 33 c9 85 f6 7e 1e 53 8b 5d 0c 57 8b 7d 10 8b c1 8b 75 08 99 f7 fb 8a 04 32 30 04 39 41 3b 4d 14 7c ec 5f 5b } //02 00 
		$a_01_1 = {8b 5d 0c 33 c9 56 33 f6 57 bf 01 00 00 00 85 db 74 27 8b 45 08 33 d2 0f b6 04 06 46 03 c7 bf f1 ff 00 00 f7 f7 8b fa 33 d2 8d 04 39 b9 f1 ff 00 00 f7 f1 8b ca 3b f3 72 d9 c1 e1 10 0b cf } //01 00 
		$a_01_2 = {5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 } //01 00 
		$a_03_3 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 77 00 75 00 61 00 70 00 70 00 2e 00 65 00 78 00 65 00 90 02 04 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_4 = {2d 00 61 00 20 00 63 00 72 00 79 00 70 00 74 00 6f 00 6e 00 69 00 67 00 68 00 74 00 20 00 2d 00 6f 00 20 00 73 00 74 00 72 00 61 00 74 00 75 00 6d 00 2b 00 74 00 63 00 70 00 3a 00 2f 00 2f 00 } //00 00 
	condition:
		any of ($a_*)
 
}