
rule Trojan_Win32_CHTong{
	meta:
		description = "Trojan:Win32/CHTong,SIGNATURE_TYPE_PEHSTR_EXT,28 00 28 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {5c 00 41 00 75 00 74 00 6f 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 76 00 62 00 73 00 } //0a 00  \Autosystem.vbs
		$a_00_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 62 00 61 00 69 00 64 00 75 00 2e 00 77 00 78 00 62 00 6a 00 79 00 2e 00 69 00 6e 00 66 00 6f 00 } //0a 00  http://baidu.wxbjy.info
		$a_00_2 = {57 00 53 00 48 00 53 00 68 00 65 00 6c 00 6c 00 2e 00 52 00 75 00 6e 00 } //05 00  WSHShell.Run
		$a_00_3 = {5c 00 74 00 65 00 6e 00 63 00 65 00 6e 00 74 00 5c 00 71 00 7a 00 6f 00 6e 00 65 00 2e 00 65 00 78 00 65 00 } //05 00  \tencent\qzone.exe
		$a_02_4 = {5c 00 74 00 65 00 6e 00 63 00 65 00 6e 00 74 00 5c 00 90 02 04 2e 00 62 00 61 00 74 00 90 00 } //05 00 
		$a_00_5 = {5c 00 74 00 65 00 6e 00 63 00 65 00 6e 00 74 00 5c 00 73 00 6d 00 6d 00 2e 00 65 00 78 00 65 00 } //00 00  \tencent\smm.exe
	condition:
		any of ($a_*)
 
}