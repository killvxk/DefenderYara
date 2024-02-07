
rule Worm_Win32_Autorun_CW{
	meta:
		description = "Worm:Win32/Autorun.CW,SIGNATURE_TYPE_PEHSTR_EXT,ffffffca 00 ffffffca 00 14 00 00 0a 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 43 61 63 68 65 5c 53 70 65 63 69 61 6c 20 50 61 74 68 73 5c 4d 79 50 61 74 68 } //0a 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Cache\Special Paths\MyPath
		$a_00_1 = {5f 46 4f 52 5f 42 49 41 4e 44 4f 55 45 52 } //0a 00  _FOR_BIANDOUER
		$a_00_2 = {47 65 74 48 6f 6f 6b 50 72 6f 76 69 64 65 72 } //0a 00  GetHookProvider
		$a_00_3 = {4c 41 4e 4d 41 4e 4e 54 } //0a 00  LANMANNT
		$a_00_4 = {5c 64 72 69 76 65 72 63 61 73 68 65 } //0a 00  \drivercashe
		$a_00_5 = {5c 77 69 6e 6d 69 6e 65 2e 65 78 65 } //0a 00  \winmine.exe
		$a_00_6 = {6d 73 77 73 6f 63 6b 32 2e 64 6c 6c } //0a 00  mswsock2.dll
		$a_00_7 = {5c 77 73 6d 5f 33 32 } //0a 00  \wsm_32
		$a_00_8 = {5b 41 75 74 6f 52 75 6e 5d } //05 00  [AutoRun]
		$a_02_9 = {6f 70 65 6e 3d 90 02 10 2e 70 69 66 90 00 } //05 00 
		$a_02_10 = {73 68 65 6c 6c 65 78 65 63 75 74 65 3d 90 02 10 2e 70 69 66 90 00 } //01 00 
		$a_00_11 = {4e 65 74 64 6c 6c 2d } //01 00  Netdll-
		$a_00_12 = {4b 65 79 42 6f 61 72 64 64 6c 6c 2d } //01 00  KeyBoarddll-
		$a_00_13 = {53 63 72 65 65 6e 64 6c 6c 2d } //01 00  Screendll-
		$a_00_14 = {41 75 64 69 6f 64 6c 6c 2d } //01 00  Audiodll-
		$a_00_15 = {56 69 64 65 6f 64 6c 6c 2d } //01 00  Videodll-
		$a_00_16 = {53 65 61 72 63 68 64 6c 6c 2d } //01 00  Searchdll-
		$a_00_17 = {53 68 61 72 65 49 6e 66 65 63 74 64 6c 6c 2d } //01 00  ShareInfectdll-
		$a_00_18 = {4d 6f 64 75 6c 65 5f 4d 61 69 6e 5f } //64 00  Module_Main_
		$a_00_19 = {8b 44 24 10 8d 0c 06 8b c6 99 f7 fb 8a 44 3a 04 30 01 46 3b 74 24 14 7c e7 } //00 00 
	condition:
		any of ($a_*)
 
}