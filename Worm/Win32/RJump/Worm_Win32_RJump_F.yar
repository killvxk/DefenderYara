
rule Worm_Win32_RJump_F{
	meta:
		description = "Worm:Win32/RJump.F,SIGNATURE_TYPE_PEHSTR,5c 00 57 00 13 00 00 28 00 "
		
	strings :
		$a_01_0 = {63 68 61 63 65 6e 74 2e 63 6e } //14 00  chacent.cn
		$a_01_1 = {52 61 76 4d 6f 6e 2e 65 78 65 } //0f 00  RavMon.exe
		$a_01_2 = {68 61 63 65 6e 74 2e 63 6e 2f 75 70 64 61 74 65 2e 61 73 70 3f 69 70 3d } //0f 00  hacent.cn/update.asp?ip=
		$a_01_3 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 56 43 48 4f 53 54 2e 45 58 45 } //05 00  C:\WINDOWS\SVCHOST.EXE
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 41 64 76 61 6e 63 65 64 5c 46 6f 6c 64 65 72 5c 48 69 64 64 65 6e 5c 53 48 4f 57 41 4c 4c } //05 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL
		$a_01_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_6 = {43 68 65 63 6b 65 64 56 61 6c 75 65 } //01 00  CheckedValue
		$a_01_7 = {48 69 64 64 65 6e } //01 00  Hidden
		$a_01_8 = {73 68 65 6c 6c 5c 41 75 74 6f 5c 63 6f 6d 6d 61 6e 64 } //01 00  shell\Auto\command
		$a_01_9 = {73 68 65 6c 6c 5c 65 78 70 6c 6f 72 65 5c 43 6f 6d 6d 61 6e 64 } //01 00  shell\explore\Command
		$a_01_10 = {41 75 74 6f 52 75 6e 2e 69 6e 66 } //01 00  AutoRun.inf
		$a_01_11 = {5c 53 56 43 48 4f 53 54 2e 49 4e 49 } //01 00  \SVCHOST.INI
		$a_01_12 = {5c 53 56 43 48 4f 53 54 2e 45 58 45 } //01 00  \SVCHOST.EXE
		$a_01_13 = {48 6f 73 74 3a } //01 00  Host:
		$a_01_14 = {64 6f 77 6e 74 61 73 6b 3d } //01 00  downtask=
		$a_01_15 = {73 65 72 69 61 6c 3d } //01 00  serial=
		$a_01_16 = {76 65 72 73 69 6f 6e 3d } //01 00  version=
		$a_01_17 = {74 61 73 6b 2e 45 58 45 } //01 00  task.EXE
		$a_01_18 = {5c 4d 44 4d 2e 45 58 45 } //00 00  \MDM.EXE
	condition:
		any of ($a_*)
 
}