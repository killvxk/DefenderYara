
rule Trojan_BAT_Hawkeye_AHW_MTB{
	meta:
		description = "Trojan:BAT/Hawkeye.AHW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {7e 36 00 00 04 08 07 6f c3 00 00 0a 28 c5 00 00 0a 13 04 28 71 00 00 0a 11 04 16 11 04 8e 69 6f c3 00 00 0a 28 54 01 00 0a 13 05 7e 38 00 00 04 39 18 00 00 00 7e 37 00 00 04 02 11 05 } //01 00 
		$a_01_1 = {38 00 64 00 36 00 38 00 39 00 66 00 39 00 62 00 2d 00 66 00 34 00 33 00 35 00 2d 00 34 00 33 00 65 00 36 00 2d 00 38 00 66 00 34 00 33 00 2d 00 36 00 65 00 34 00 65 00 62 00 36 00 32 00 35 00 37 00 66 00 38 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}