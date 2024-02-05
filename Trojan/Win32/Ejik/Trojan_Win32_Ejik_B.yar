
rule Trojan_Win32_Ejik_B{
	meta:
		description = "Trojan:Win32/Ejik.B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {eb f0 5f 5e 5b 59 5d c3 00 00 ff ff ff ff 04 00 00 00 2e 64 6c 6c 00 } //01 00 
		$a_02_1 = {45 58 45 46 49 4c 45 00 ff ff ff ff 10 00 00 00 52 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 90 09 04 00 90 0f 03 00 00 90 00 } //02 00 
		$a_02_2 = {45 58 45 46 49 4c 45 00 ff ff ff ff 90 09 04 00 90 0f 03 00 00 90 01 0d 00 00 00 90 12 10 00 2e 64 6c 6c 00 90 05 04 01 00 ff ff ff ff 10 00 00 00 52 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 20 90 00 } //05 00 
		$a_02_3 = {eb eb 5e 5b 59 59 5d c3 90 05 04 01 00 ff ff ff ff 90 01 01 00 00 00 90 12 10 00 2e 69 6e 69 00 90 05 04 01 00 ff ff ff ff 02 00 00 00 49 44 00 90 05 04 01 00 ff ff ff ff 08 00 00 00 73 65 74 74 69 6e 67 73 00 90 05 04 01 00 90 03 03 03 55 8b ec 53 8b d8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}