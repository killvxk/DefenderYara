
rule TrojanDownloader_BAT_Fsysna_SQ_MTB{
	meta:
		description = "TrojanDownloader:BAT/Fsysna.SQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {00 02 7b 12 00 00 04 6f 90 01 03 06 00 17 28 90 01 03 0a 00 00 06 17 58 0a 06 20 f4 01 00 00 fe 04 0b 07 2d db 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}