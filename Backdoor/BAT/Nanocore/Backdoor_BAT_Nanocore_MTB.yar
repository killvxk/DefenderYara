
rule Backdoor_BAT_Nanocore_MTB{
	meta:
		description = "Backdoor:BAT/Nanocore!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {58 00 59 7e 90 01 03 04 61 d1 2a 90 0a 40 00 20 90 01 03 00 13 90 01 01 20 90 01 04 20 90 01 04 20 90 01 04 61 20 90 01 04 40 90 01 04 20 90 01 04 13 90 01 01 20 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_BAT_Nanocore_MTB_2{
	meta:
		description = "Backdoor:BAT/Nanocore!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {28 82 00 00 0a 00 16 28 83 00 00 0a 00 28 84 00 00 0a 28 08 00 00 06 6f 85 00 00 0a 0a 06 72 90 01 01 07 00 70 6f 86 00 00 0a 0b 07 72 90 01 01 08 00 70 6f 87 00 00 0a 0c 07 28 88 00 00 0a 0d 73 32 00 00 06 13 04 1f 09 8d 38 00 00 01 25 90 00 } //01 00 
		$a_02_1 = {28 89 00 00 0a 13 05 08 14 72 90 01 01 08 00 70 18 8d 14 00 00 01 25 16 09 a2 25 17 17 8d 14 00 00 01 25 16 11 05 a2 a2 14 14 28 8a 00 00 0a 00 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_BAT_Nanocore_MTB_3{
	meta:
		description = "Backdoor:BAT/Nanocore!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 52 4f 43 45 53 53 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e } //01 00  PROCESS_INFORMATION
		$a_01_1 = {53 54 41 52 54 55 50 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e } //01 00  STARTUP_INFORMATION
		$a_01_2 = {53 65 74 54 68 72 65 61 64 } //01 00  SetThread
		$a_01_3 = {46 69 6c 65 41 63 63 65 73 73 } //01 00  FileAccess
		$a_01_4 = {49 57 73 68 53 68 65 6c 6c } //01 00  IWshShell
		$a_01_5 = {43 6f 6e 76 65 72 74 } //01 00  Convert
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_7 = {73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //01 00  set_CreateNoWindow
		$a_01_8 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //03 00  set_UseShellExecute
		$a_01_9 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //03 00  CheckRemoteDebuggerPresent
		$a_01_10 = {56 69 72 74 75 61 6c 4d 61 63 68 69 6e 65 44 65 74 65 63 74 6f 72 } //00 00  VirtualMachineDetector
	condition:
		any of ($a_*)
 
}
rule Backdoor_BAT_Nanocore_MTB_4{
	meta:
		description = "Backdoor:BAT/Nanocore!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 74 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 } //01 00  NtSetInformationProcess
		$a_01_1 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_01_2 = {49 43 6c 69 65 6e 74 4e 65 74 77 6f 72 6b } //01 00  IClientNetwork
		$a_01_3 = {4c 6f 63 6b 52 65 73 6f 75 72 63 65 } //01 00  LockResource
		$a_01_4 = {47 65 74 4b 65 72 6e 65 6c 4f 62 6a 65 63 74 53 65 63 75 72 69 74 79 } //01 00  GetKernelObjectSecurity
		$a_01_5 = {4e 61 6e 6f 43 6f 72 65 20 43 6c 69 65 6e 74 2e 65 78 65 } //01 00  NanoCore Client.exe
		$a_01_6 = {45 6e 71 75 65 75 65 } //01 00  Enqueue
		$a_01_7 = {43 6c 69 65 6e 74 4c 6f 61 64 65 72 46 6f 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //01 00  ClientLoaderForm.resources
		$a_01_8 = {43 6c 69 65 6e 74 55 6e 69 6e 73 74 61 6c 6c 69 6e 67 } //01 00  ClientUninstalling
		$a_01_9 = {4c 6f 67 43 6c 69 65 6e 74 4d 65 73 73 61 67 65 } //01 00  LogClientMessage
		$a_01_10 = {4e 61 6e 6f 43 6f 72 65 2e 43 6c 69 65 6e 74 50 6c 75 67 69 6e } //01 00  NanoCore.ClientPlugin
		$a_01_11 = {44 69 73 61 62 6c 65 50 72 6f 74 65 63 74 69 6f 6e } //00 00  DisableProtection
	condition:
		any of ($a_*)
 
}
rule Backdoor_BAT_Nanocore_MTB_5{
	meta:
		description = "Backdoor:BAT/Nanocore!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 65 5a 65 72 30 2e 50 72 6f 70 65 72 74 69 65 73 } //01 00  ReZer0.Properties
		$a_01_1 = {52 65 5a 65 72 30 56 32 } //01 00  ReZer0V2
		$a_01_2 = {53 79 73 74 65 6d 2e 43 6f 64 65 44 6f 6d 2e 43 6f 6d 70 69 6c 65 72 } //01 00  System.CodeDom.Compiler
		$a_01_3 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //00 00  DownloadFile
	condition:
		any of ($a_*)
 
}
rule Backdoor_BAT_Nanocore_MTB_6{
	meta:
		description = "Backdoor:BAT/Nanocore!MTB,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 53 75 62 4b 65 79 } //01 00  CreateSubKey
		$a_01_1 = {53 65 74 56 61 6c 75 65 } //01 00  SetValue
		$a_01_2 = {73 65 74 5f 46 69 6c 65 4e 61 6d 65 } //01 00  set_FileName
		$a_01_3 = {73 65 74 5f 41 72 67 75 6d 65 6e 74 73 } //01 00  set_Arguments
		$a_01_4 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //01 00  set_UseShellExecute
		$a_01_5 = {73 65 74 5f 52 65 64 69 72 65 63 74 53 74 61 6e 64 61 72 64 4f 75 74 70 75 74 } //01 00  set_RedirectStandardOutput
		$a_01_6 = {73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //01 00  set_CreateNoWindow
		$a_01_7 = {73 65 74 5f 53 74 61 72 74 49 6e 66 6f } //01 00  set_StartInfo
		$a_01_8 = {67 65 74 5f 53 74 61 6e 64 61 72 64 4f 75 74 70 75 74 } //01 00  get_StandardOutput
		$a_01_9 = {52 65 5a 65 72 30 56 32 2e 65 78 65 } //00 00  ReZer0V2.exe
	condition:
		any of ($a_*)
 
}
rule Backdoor_BAT_Nanocore_MTB_7{
	meta:
		description = "Backdoor:BAT/Nanocore!MTB,SIGNATURE_TYPE_PEHSTR,0f 00 0f 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //01 00  set_CreateNoWindow
		$a_01_1 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //01 00  set_UseShellExecute
		$a_01_2 = {50 52 4f 43 45 53 53 5f 43 52 45 41 54 45 5f 50 52 4f 43 45 53 53 } //01 00  PROCESS_CREATE_PROCESS
		$a_01_3 = {50 52 4f 43 45 53 53 5f 44 55 50 5f 48 41 4e 44 4c 45 } //01 00  PROCESS_DUP_HANDLE
		$a_01_4 = {50 52 4f 43 45 53 53 5f 56 4d 5f 4f 50 45 52 41 54 49 4f 4e } //01 00  PROCESS_VM_OPERATION
		$a_01_5 = {50 52 4f 43 45 53 53 5f 56 4d 5f 52 45 41 44 } //01 00  PROCESS_VM_READ
		$a_01_6 = {50 52 4f 43 45 53 53 5f 56 4d 5f 57 52 49 54 45 } //01 00  PROCESS_VM_WRITE
		$a_01_7 = {50 52 4f 43 45 53 53 5f 41 4c 4c 5f 41 43 43 45 53 53 } //01 00  PROCESS_ALL_ACCESS
		$a_01_8 = {53 55 53 50 45 4e 44 5f 52 45 53 55 4d 45 } //01 00  SUSPEND_RESUME
		$a_01_9 = {44 49 52 45 43 54 5f 49 4d 50 45 52 53 4f 4e 41 54 49 4f 4e } //01 00  DIRECT_IMPERSONATION
		$a_01_10 = {53 59 4e 43 48 52 4f 4e 49 5a 45 } //01 00  SYNCHRONIZE
		$a_01_11 = {53 54 41 4e 44 41 52 44 5f 52 49 47 48 54 53 5f 52 45 51 55 49 52 45 44 } //01 00  STANDARD_RIGHTS_REQUIRED
		$a_01_12 = {54 48 52 45 41 44 5f 41 4c 4c 5f 41 43 43 45 53 53 } //07 00  THREAD_ALL_ACCESS
		$a_01_13 = {2e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 2e 00 65 00 78 00 65 00 } //00 00  .crypted.exe
	condition:
		any of ($a_*)
 
}