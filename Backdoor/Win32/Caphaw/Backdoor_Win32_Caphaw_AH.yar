
rule Backdoor_Win32_Caphaw_AH{
	meta:
		description = "Backdoor:Win32/Caphaw.AH,SIGNATURE_TYPE_PEHSTR_EXT,65 00 65 00 14 00 00 01 00 "
		
	strings :
		$a_03_0 = {db 04 24 85 c9 7d 06 dc 05 90 01 04 d9 90 03 01 01 fe ff 90 02 6f 89 04 24 8b 44 24 0c 40 89 44 24 0c 81 7c 24 0c 90 01 04 0f 82 90 00 } //01 00 
		$a_03_1 = {db 44 24 1c 7d 06 dc 05 90 01 04 d9 ff 90 02 0f 8b 54 24 18 83 c7 02 2b e8 66 03 6f fe 46 3b f3 66 89 6c 3a fe 0f 82 90 00 } //01 00 
		$a_03_2 = {db 44 24 0c 85 90 01 01 7d 06 d8 05 90 01 04 8b 44 24 0c 83 c0 02 99 90 02 2f 8b 44 24 0c 40 89 44 24 0c 81 7c 24 0c 90 01 04 90 03 01 02 72 0f 82 90 00 } //01 00 
		$a_03_3 = {db 44 24 1c 8b e8 7d 06 dc 05 90 01 04 d9 fe dc 0d 90 01 04 e8 90 02 1f f7 d8 1b c0 40 2b e8 66 03 2f 46 66 89 2c 3a 83 c7 02 3b f3 72 90 00 } //01 00 
		$a_03_4 = {db 44 24 1c 8b e8 7d 06 dc 05 90 01 04 d9 fe dc 0d 90 01 04 e8 90 01 02 00 00 99 b9 90 01 02 00 00 f7 f9 03 ea e8 90 01 02 00 00 66 8b 17 33 e8 8b 44 24 18 66 2b d5 66 89 14 38 46 83 c7 02 3b f3 72 90 00 } //01 00 
		$a_03_5 = {db 44 24 04 d9 90 17 03 01 01 01 fa fe ff db 90 01 01 24 90 02 01 7d 06 dc 05 90 02 1f 8b 90 01 01 24 0c 40 89 90 01 01 24 0c 81 7c 24 0c 90 01 04 72 90 00 } //01 00 
		$a_03_6 = {db 44 24 04 d9 90 03 01 01 fa ff dc 0d 90 02 2f 8b 54 24 0c 42 89 54 24 0c 81 7c 24 0c 90 01 04 72 90 00 } //01 00 
		$a_01_7 = {8b 44 24 0c 33 d2 be 09 03 00 00 f7 f6 85 d2 74 20 8b 44 24 0c 99 33 c2 2b c2 8d 14 85 10 00 00 00 8b 44 24 0c 33 d0 8b 44 24 04 33 d0 89 54 24 04 8b 54 24 0c 42 89 54 24 0c 39 4c 24 0c 72 c0 } //01 00 
		$a_03_8 = {db 44 24 04 d8 0d 90 01 04 d9 ff 90 02 1f db 44 24 0c 85 c0 7d 06 d8 05 90 02 3f 8b 4c 24 0c 41 89 4c 24 0c 81 7c 24 0c 90 01 04 0f 82 90 00 } //01 00 
		$a_03_9 = {db 44 24 04 7d 06 d8 05 90 01 04 d8 0d 90 01 04 d9 fe 90 02 3f 8b 4c 24 0c 41 89 4c 24 0c 81 7c 24 0c 90 01 04 72 90 00 } //01 00 
		$a_03_10 = {db 04 24 7d 06 dc 05 90 01 04 d9 fe e8 90 01 04 89 04 24 8b 54 24 08 42 89 54 24 08 81 7c 24 08 90 01 04 72 90 00 } //01 00 
		$a_03_11 = {db 44 24 04 7d 06 dc 05 90 02 08 d9 90 03 01 01 fe ff 90 02 2f 8b 90 01 01 24 0c 90 03 01 01 40 42 89 90 01 01 24 0c 81 7c 24 0c 90 01 04 72 90 00 } //01 00 
		$a_03_12 = {8b 14 24 de c9 85 d2 db 04 24 7d 06 dc 05 90 01 04 de c1 e8 90 01 04 89 04 24 8b 44 24 0c 40 89 44 24 0c 81 7c 24 0c 90 01 04 72 90 00 } //01 00 
		$a_03_13 = {db 44 24 04 d9 fa 90 02 2f 8b 54 24 0c 42 89 54 24 0c 81 7c 24 0c 90 01 04 0f 82 90 00 } //01 00 
		$a_03_14 = {db 44 24 04 7d 06 dc 05 90 02 07 d9 90 03 01 01 fa fe 90 02 3f 8b 90 01 01 24 0c 90 17 03 01 01 01 40 41 42 89 90 01 01 24 0c 81 7c 24 0c 90 01 04 90 03 01 02 72 0f 82 90 00 } //01 00 
		$a_03_15 = {db 44 24 0c 90 02 02 7d 06 dc 05 90 02 08 d9 90 03 01 01 fa fe 90 02 4f 8b 90 01 01 24 0c 90 17 03 01 01 01 40 41 42 89 90 01 01 24 0c 81 7c 24 0c 90 01 04 72 90 00 } //01 00 
		$a_03_16 = {db 04 24 7d 06 90 01 06 de c9 e8 90 01 02 00 00 89 04 24 90 13 8b 54 24 0c 42 89 54 24 0c 81 7c 24 0c 90 01 04 0f 82 90 00 } //01 00 
		$a_03_17 = {db 44 24 10 90 02 02 7d 06 dc 05 90 01 04 d9 90 03 01 01 fa fe 90 02 2f 89 44 24 04 8b 44 24 10 40 89 44 24 10 81 7c 24 10 90 01 04 0f 82 90 00 } //01 00 
		$a_01_18 = {8d 49 00 8b 4c 24 08 03 0c 24 89 0c 24 8b 54 24 08 42 89 54 24 08 39 44 24 08 72 e7 } //64 00 
		$a_01_19 = {03 f1 9b 8b 03 85 c0 8d 1c 08 75 02 8b de } //00 00 
	condition:
		any of ($a_*)
 
}