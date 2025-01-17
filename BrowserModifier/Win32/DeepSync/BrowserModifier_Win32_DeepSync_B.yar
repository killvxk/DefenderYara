
rule BrowserModifier_Win32_DeepSync_B{
	meta:
		description = "BrowserModifier:Win32/DeepSync.B,SIGNATURE_TYPE_PEHSTR,04 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 41 70 70 4d 61 73 74 65 72 2e 70 64 62 } //01 00  \AppMaster.pdb
		$a_01_1 = {66 00 6f 00 72 00 63 00 65 00 3a 00 2f 00 2f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 } //01 00  force://install
		$a_01_2 = {66 00 6f 00 72 00 63 00 65 00 3a 00 2f 00 2f 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 3f 00 67 00 75 00 69 00 64 00 3d 00 } //01 00  force://uninstall?guid=
		$a_01_3 = {66 00 6f 00 72 00 63 00 65 00 3a 00 2f 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 66 00 72 00 6f 00 6d 00 74 00 65 00 6d 00 70 00 3f 00 } //01 00  force://updatefromtemp?
		$a_01_4 = {66 00 6f 00 72 00 63 00 65 00 3a 00 2f 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 3f 00 66 00 72 00 6f 00 6d 00 3d 00 73 00 74 00 61 00 72 00 74 00 75 00 70 00 } //01 00  force://update?from=startup
		$a_01_5 = {66 00 6f 00 72 00 63 00 65 00 3a 00 2f 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 3f 00 66 00 72 00 6f 00 6d 00 3d 00 73 00 63 00 68 00 65 00 64 00 } //00 00  force://update?from=sched
	condition:
		any of ($a_*)
 
}