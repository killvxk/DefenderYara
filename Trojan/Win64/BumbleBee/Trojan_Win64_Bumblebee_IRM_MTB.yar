
rule Trojan_Win64_Bumblebee_IRM_MTB{
	meta:
		description = "Trojan:Win64/Bumblebee.IRM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {0f af c1 89 43 90 01 01 8b 83 90 01 04 05 90 01 04 01 43 90 01 01 8b 8b 90 01 04 8d 41 90 01 01 31 43 90 01 01 8d 04 4d 90 01 04 89 83 90 01 04 8b 43 90 01 01 48 8b 8b 90 01 04 42 31 04 90 01 01 49 83 90 01 01 04 8b 83 90 01 04 01 43 90 01 01 8b 43 08 2b 83 90 01 04 2d 90 01 04 09 83 90 01 04 49 81 90 01 05 7c 90 00 } //01 00 
		$a_01_1 = {53 65 6e 64 44 61 74 61 } //01 00  SendData
		$a_01_2 = {4a 6f 71 39 37 35 } //00 00  Joq975
	condition:
		any of ($a_*)
 
}