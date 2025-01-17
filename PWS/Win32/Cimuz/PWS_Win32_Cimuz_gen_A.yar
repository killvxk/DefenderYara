
rule PWS_Win32_Cimuz_gen_A{
	meta:
		description = "PWS:Win32/Cimuz.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0d 00 ffffffbc 00 00 02 00 "
		
	strings :
		$a_00_0 = {4e 6f 20 69 6e 73 74 61 6c 6c 65 72 2a 2e 65 78 65 20 66 6f 75 6e 64 21 20 65 78 69 74 69 6e 67 2e 2e 2e } //05 00  No installer*.exe found! exiting...
		$a_00_1 = {3a 2a 3a 45 6e 61 62 6c 65 64 3a 00 53 79 73 74 65 6d 5c 43 75 72 72 65 6e } //01 00 
		$a_00_2 = {43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 6c 6f 61 64 } //02 00  CurrentVersion\Control Panel\load
		$a_00_3 = {54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 } //02 00  Type: application/x-www-form-urlencoded
		$a_00_4 = {46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 5c 41 75 74 68 6f 72 69 7a 65 64 41 70 70 6c 69 63 61 74 69 6f 6e 73 5c 4c 69 73 74 } //01 00  FirewallPolicy\StandardProfile\AuthorizedApplications\List
		$a_00_5 = {5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 } //03 00  \CurrentVersion\Explorer\Browser Helper Objects
		$a_01_6 = {62 72 6f 77 73 65 72 20 68 65 6c 70 65 72 20 6f 62 4a 65 63 74 73 } //01 00  browser helper obJects
		$a_00_7 = {45 6e 61 62 6c 65 20 42 72 6f 77 73 65 72 20 45 78 74 65 6e 73 69 6f 6e 73 } //02 00  Enable Browser Extensions
		$a_01_8 = {37 38 33 36 7a 34 44 39 39 2d } //02 00  7836z4D99-
		$a_01_9 = {37 38 33 36 34 44 39 39 2d } //02 00  78364D99-
		$a_01_10 = {41 70 70 49 44 5c 5c 00 7a 7b 37 33 33 36 34 44 } //02 00  灁䥰屄\筺㌷㘳䐴
		$a_00_11 = {52 54 5f 4b 45 59 4c 4f 47 47 45 52 } //03 00  RT_KEYLOGGER
		$a_02_12 = {21 20 65 78 69 74 69 6e 67 2e 2e 2e 90 02 0f 45 52 52 4f 52 5f 49 4e 5f 50 41 52 41 4d 53 5f 49 44 90 00 } //02 00 
		$a_00_13 = {50 41 52 41 4d 53 5f 49 44 00 00 7a 2d } //02 00 
		$a_00_14 = {25 73 28 73 65 6c 65 63 74 29 3a 20 25 73 20 5b 63 68 65 63 6b 65 64 5d } //01 00  %s(select): %s [checked]
		$a_00_15 = {64 61 65 6d 6f 6e } //02 00  daemon
		$a_01_16 = {57 41 49 20 43 6f 6e 66 6f 72 6d 61 6e 63 65 20 72 61 6e 6b 69 6e 67 } //02 00  WAI Conformance ranking
		$a_01_17 = {57 65 62 20 41 63 63 65 73 73 69 62 69 6c 69 74 79 20 49 6e 69 74 69 61 74 69 76 65 20 28 57 41 49 29 20 57 } //02 00  Web Accessibility Initiative (WAI) W
		$a_01_18 = {63 69 76 69 6c 69 61 6e 73 20 69 66 20 69 74 20 72 65 6a 65 63 74 73 20 6f 75 74 73 69 64 65 20 68 65 6c 70 2e } //01 00  civilians if it rejects outside help.
		$a_00_19 = {25 73 28 74 65 78 74 61 72 65 61 29 3a 20 25 73 } //01 00  %s(textarea): %s
		$a_00_20 = {32 32 30 64 35 63 63 31 } //01 00  220d5cc1
		$a_00_21 = {35 65 37 65 38 31 30 30 } //01 00  5e7e8100
		$a_00_22 = {41 63 74 69 6f 6e 3a 20 25 73 } //01 00  Action: %s
		$a_00_23 = {62 39 38 31 39 63 35 32 } //01 00  b9819c52
		$a_00_24 = {65 31 36 31 32 35 35 61 } //01 00  e161255a
		$a_00_25 = {69 66 25 64 20 3a 20 25 73 } //01 00  if%d : %s
		$a_00_26 = {49 6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 } //01 00  Internet Account Manager\Accounts
		$a_00_27 = {50 72 6f 74 65 63 74 65 64 20 73 74 6f 72 61 67 65 20 73 65 72 76 69 63 65 20 6e 6f 74 20 73 74 61 72 74 65 64 } //01 00  Protected storage service not started
		$a_00_28 = {74 65 78 74 61 72 65 61 29 3a 20 25 73 } //01 00  textarea): %s
		$a_00_29 = {53 4b 49 50 50 45 44 20 54 41 4e } //02 00  SKIPPED TAN
		$a_01_30 = {34 30 34 20 4e 6f 74 20 46 6f 75 6e 64 } //01 00  404 Not Found
		$a_00_31 = {65 3b 65 6c 65 6d 65 6e 74 } //01 00  e;element
		$a_00_32 = {61 3b 61 64 64 72 65 73 73 } //01 00  a;address
		$a_00_33 = {73 68 6f 74 2e 68 74 6d 6c } //01 00  shot.html
		$a_00_34 = {61 70 70 3b 61 70 70 65 6e 64 } //01 00  app;append
		$a_00_35 = {6d 3b 6d 65 73 73 61 67 65 } //01 00  m;message
		$a_00_36 = {72 65 70 3b 72 65 70 6c 61 63 65 } //01 00  rep;replace
		$a_00_37 = {61 64 64 3b 61 64 64 69 74 69 6f 6e 61 6c } //01 00  add;additional
		$a_00_38 = {65 3b 65 71 75 61 6c 73 } //01 00  e;equals
		$a_00_39 = {6d 65 73 73 61 67 65 3b 6d 65 73 73 61 67 65 62 6f 78 } //01 00  message;messagebox
		$a_00_40 = {5b 50 4f 50 55 50 5d 20 3d 20 } //02 00  [POPUP] = 
		$a_00_41 = {3b 20 6c 6f 67 69 6e 64 61 74 61 3a 20 } //01 00  ; logindata: 
		$a_00_42 = {69 6e 70 75 74 20 2d 72 20 6e 61 6d 65 } //01 00  input -r name
		$a_00_43 = {65 78 63 6c 3b 65 78 63 6c 75 64 65 } //01 00  excl;exclude
		$a_00_44 = {70 6f 73 74 62 61 6e 6b 2e 64 65 } //01 00  postbank.de
		$a_00_45 = {74 61 6e 63 75 74 65 72 } //01 00  tancuter
		$a_00_46 = {62 3b 62 61 63 6b 3b 62 61 63 6b 67 72 6f 75 6e 64 } //01 00  b;back;background
		$a_00_47 = {2d 65 20 74 69 74 6c 65 } //01 00  -e title
		$a_00_48 = {6e 3b 6e 61 76 69 67 61 74 65 } //01 00  n;navigate
		$a_00_49 = {6e 61 76 69 67 61 74 65 } //01 00  navigate
		$a_00_50 = {77 61 73 65 73 73 61 67 65 } //01 00  wasessage
		$a_00_51 = {43 6f 6d 70 49 44 3a 20 25 73 } //02 00  CompID: %s
		$a_00_52 = {74 61 6e 3b 54 72 61 6e 73 61 6b 74 69 6f 6e 73 6e 75 6d 6d 65 72 } //01 00  tan;Transaktionsnummer
		$a_00_53 = {42 75 74 74 6f 6e 73 20 70 72 65 73 73 65 64 3a 20 } //01 00  Buttons pressed: 
		$a_00_54 = {2d 65 20 69 6e 70 75 74 20 2d 72 20 6e 61 6d 65 3d } //01 00  -e input -r name=
		$a_00_55 = {74 61 6c 6f 69 6e 61 74 61 } //01 00  taloinata
		$a_00_56 = {46 49 50 50 5d 3a 20 55 52 4c } //02 00  FIPP]: URL
		$a_00_57 = {54 61 73 73 69 6d 6f 20 68 6f 74 20 64 72 69 6e 6b 20 6d 61 73 68 69 6e 65 20 53 68 6f 70 70 69 6e 67 20 61 6e 64 20 50 72 69 63 65 } //02 00  Tassimo hot drink mashine Shopping and Price
		$a_00_58 = {50 61 73 73 70 72 6f 74 20 73 69 74 65 73 } //01 00  Passprot sites
		$a_00_59 = {3c 3e 2d 20 4d 69 63 72 6f 73 6f 66 74 20 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 } //01 00  <>- Microsoft Internet Explorer
		$a_00_60 = {5b 65 2d 67 6f 6c 64 20 6d 61 69 6c 5d 3a 20 } //01 00  [e-gold mail]: 
		$a_00_61 = {65 20 74 64 20 2d 73 20 31 20 2d 68 20 27 65 2d 6d 61 69 6c 3a 27 20 2d 6c 20 33 30 30 20 2d 66 } //01 00  e td -s 1 -h 'e-mail:' -l 300 -f
		$a_00_62 = {41 63 63 6f 75 6e 74 49 44 } //01 00  AccountID
		$a_00_63 = {65 2d 67 6f 6c 64 2e 63 6f 6d 2f 61 63 63 74 2f 61 63 63 74 2e 61 73 70 } //03 00  e-gold.com/acct/acct.asp
		$a_00_64 = {41 75 74 6f 43 6f 6d 70 6c 65 74 65 50 61 73 73 77 6f 72 64 73 3a } //03 00  AutoCompletePasswords:
		$a_00_65 = {49 45 41 75 74 6f 43 6f 6d 70 6c 65 74 65 46 69 65 6c 64 73 } //03 00  IEAutoCompleteFields
		$a_00_66 = {76 65 72 3d 25 73 26 6c 67 3d 25 73 } //01 00  ver=%s&lg=%s
		$a_00_67 = {41 3a 53 20 2f 51 20 2f 46 20 63 } //01 00  A:S /Q /F c
		$a_00_68 = {64 65 6c 20 2f 41 3a 53 20 2f 51 20 2f 46 20 63 } //01 00  del /A:S /Q /F c
		$a_00_69 = {64 65 6c 20 2f 53 20 2f 51 20 25 53 59 53 54 45 4d 52 4f 4f 54 } //01 00  del /S /Q %SYSTEMROOT
		$a_00_70 = {6e 65 74 5f 69 6e 73 6c 6c } //05 00  net_insll
		$a_00_71 = {6c 67 3d 25 73 26 70 68 69 64 3d 25 73 } //02 00  lg=%s&phid=%s
		$a_00_72 = {61 6e 20 61 6e 67 75 6c 61 72 20 64 69 73 70 6c 61 79 20 66 61 63 65 20 74 68 61 74 20 73 68 6f 77 73 20 77 69 74 74 79 } //02 00  an angular display face that shows witty
		$a_00_73 = {61 6e 64 20 62 6f 75 67 68 74 20 74 69 74 20 61 6e 64 20 63 6c 69 74 20 73 75 63 6b 69 6e 67 20 74 6f 6f 6c 73 20 66 6f 72 20 75 73 65 64 20 63 6f 70 79 69 6e 67 20 6d 61 73 68 69 6e 65 } //02 00  and bought tit and clit sucking tools for used copying mashine
		$a_00_74 = {61 6e 64 20 63 6c 69 74 20 73 75 63 6b 69 6e 67 20 74 6f 6f 6c 73 20 66 6f 72 20 75 73 65 64 20 63 6f 70 79 69 6e 67 20 6d 61 73 68 69 6e 65 20 73 75 70 70 6c 69 65 72 20 64 69 72 65 63 74 6f 72 79 } //02 00  and clit sucking tools for used copying mashine supplier directory
		$a_00_75 = {61 72 74 20 6f 66 20 6d 61 6b 69 6e 67 20 6d 75 73 69 63 20 77 69 74 68 20 4d 61 63 73 2e 20 4d 61 73 68 69 6e 65 20 69 73 20 61 6e 20 61 6e 67 75 6c 61 72 } //02 00  art of making music with Macs. Mashine is an angular
		$a_00_76 = {62 65 20 6f 66 20 73 65 72 76 69 63 65 20 69 6e 20 79 6f 75 72 20 71 75 65 73 74 20 74 6f 20 6d 61 73 74 65 72 20 74 68 65 20 61 72 74 20 6f 66 20 6d 61 6b 69 6e 67 20 6d 75 73 69 63 } //02 00  be of service in your quest to master the art of making music
		$a_00_77 = {33 32 39 34 75 30 33 75 30 38 39 79 37 64 66 79 65 66 72 } //02 00  3294u03u089y7dfyefr
		$a_00_78 = {34 75 72 33 34 6a 30 75 38 72 65 75 38 67 75 39 38 65 72 66 67 } //02 00  4ur34j0u8reu8gu98erfg
		$a_00_79 = {7a 75 39 33 30 39 75 72 38 75 33 38 39 72 64 68 65 73 } //02 00  zu9309ur8u389rdhes
		$a_00_80 = {63 61 6e 20 65 78 70 65 63 74 20 74 6f 20 73 65 65 20 72 65 67 75 6c 61 72 20 75 73 65 20 6f 66 20 6f 75 72 20 74 69 74 20 73 75 63 6b 65 72 73 20 2d 20 77 65 20 77 65 72 65 20 73 6f 20 70 6c 65 61 73 65 64 } //02 00  can expect to see regular use of our tit suckers - we were so pleased
		$a_00_81 = {63 6f 70 79 69 6e 67 20 6d 61 73 68 69 6e 65 20 73 75 70 70 6c 69 65 72 73 20 66 72 6f 6d 20 43 68 69 6e 61 20 61 6e 64 20 61 72 6f 75 6e 64 20 74 68 65 20 77 6f 72 6c 64 } //02 00  copying mashine suppliers from China and around the world
		$a_00_82 = {44 61 76 69 64 27 73 20 77 6f 72 6b 2e 20 4d 65 6d 62 65 72 20 70 61 67 65 73 20 63 6f 6e 74 61 69 6e 20 76 61 6c 75 61 62 6c 65 } //02 00  David's work. Member pages contain valuable
		$a_00_83 = {64 69 72 65 63 74 6f 72 79 20 2d 20 6f 76 65 72 20 33 30 30 30 30 30 30 20 72 65 67 69 73 74 65 72 65 64 20 69 6d 70 6f 72 74 65 72 73 20 61 6e 64 20 65 78 70 6f 72 74 65 72 73 } //02 00  directory - over 3000000 registered importers and exporters
		$a_00_84 = {65 6a 69 66 6a 38 34 39 33 79 39 66 79 33 34 79 66 37 79 79 38 34 72 } //02 00  ejifj8493y9fy34yf7yy84r
		$a_00_85 = {79 39 66 79 33 34 79 66 37 79 79 38 34 72 } //02 00  y9fy34yf7yy84r
		$a_00_86 = {61 64 72 65 73 73 65 64 20 6d 61 73 68 69 6e 65 20 73 61 79 69 6e 67 20 22 68 65 72 65 20 49 20 61 6d 21 20 2e 2e 2e 20 45 78 61 63 74 6c 79 } //02 00  adressed mashine saying "here I am! ... Exactly
		$a_00_87 = {61 68 72 69 6e 6b 20 6d 61 73 68 69 6e 65 20 61 73 68 72 69 6e 6b 20 6d 61 73 68 69 6e 65 20 73 61 68 72 69 6e 6b 20 6d 61 73 68 69 6e 65 20 77 68 72 69 6e 6b } //02 00  ahrink mashine ashrink mashine sahrink mashine whrink
		$a_00_88 = {61 6e 64 20 63 65 6e 73 75 73 20 64 61 74 61 20 2f 20 53 74 61 74 69 73 74 69 71 75 65 20 43 61 6e 61 64 61 20 28 77 77 77 2e 73 74 61 74 63 61 6e } //02 00  and census data / Statistique Canada (www.statcan
		$a_00_89 = {61 6e 64 20 54 72 61 6e 73 6c 61 74 69 6f 6e 20 3c 64 6f 63 20 61 74 20 61 72 61 62 65 79 65 73 20 64 6f 74 20 6f 72 67 3e 3b 20 53 75 62 6a 65 63 74 3a 20 74 68 65 20 6d 61 73 68 69 6e 65 } //02 00  and Translation <doc at arabeyes dot org>; Subject: the mashine
		$a_00_90 = {41 72 61 66 61 74 20 4d 65 64 69 6e 69 20 3c 6c 75 6d 69 6e 61 20 61 74 20 73 69 6c 76 65 72 70 65 6e 20 64 6f 74 20 64 65 3e 3b 20 44 61 74 65 3a 20 54 75 65 2c 20 20 68 61 70 70 79 } //02 00  Arafat Medini <lumina at silverpen dot de>; Date: Tue,  happy
		$a_00_91 = {53 68 6f 70 2c 20 70 75 72 65 20 43 6f 73 74 61 20 52 69 63 61 20 62 65 61 6e 2c 20 73 69 6e 67 6c 65 20 66 61 72 6d 20 67 6f 75 72 6d 65 74 } //02 00  Shop, pure Costa Rica bean, single farm gourmet
		$a_00_92 = {53 68 72 69 6e 6b 2e 20 61 6e 69 6d 61 6c 20 73 75 72 70 72 69 73 65 20 6d 75 67 20 2e 2e 2e 20 73 68 72 69 6e 6b 20 6d 61 73 68 69 6e 65 34 20 73 68 72 69 6e 6b 20 6d 61 73 68 69 6e 65 } //02 00  Shrink. animal surprise mug ... shrink mashine4 shrink mashine
		$a_00_93 = {75 6e 64 65 72 73 74 61 6e 64 20 77 68 79 20 32 20 4e 49 43 27 73 20 6f 6e 20 3e 20 6f 6e 65 20 6d 61 73 68 69 6e 65 20 6e 65 65 64 20 74 77 6f 20 73 75 62 6e 65 74 73 } //02 00  understand why 2 NIC's on > one mashine need two subnets
		$a_00_94 = {61 6e 64 20 57 69 6e 64 63 68 69 6c 6c 20 50 44 4d 4c 69 6e 6b 2e 20 50 54 43 27 73 20 50 4c 4d 20 73 6f 66 74 77 61 72 65 } //02 00  and Windchill PDMLink. PTC's PLM software
		$a_00_95 = {64 65 20 56 65 6e 2c 20 68 6f 6f 66 64 20 4e 61 74 69 6f 6e 61 6c 65 20 72 65 6b 65 6e 69 6e 67 65 6e 20 62 69 6e 6e 65 6e 20 68 65 74 20 43 42 53 } //02 00  de Ven, hoofd Nationale rekeningen binnen het CBS
		$a_00_96 = {26 75 73 65 72 3d 34 35 36 } //03 00  &user=456
		$a_00_97 = {64 65 6c 20 2f 53 20 2f 51 20 25 53 59 53 54 45 4d 52 4f 4f 54 25 20 20 25 50 52 4f 47 52 41 4d 46 49 4c 45 53 } //02 00  del /S /Q %SYSTEMROOT%  %PROGRAMFILES
		$a_00_98 = {61 64 64 69 74 69 6f 6e 61 6c 20 69 6e 66 6f 72 6d 61 74 69 6f 6e 20 61 62 6f 75 74 20 74 68 65 20 41 2d 50 72 6f 6d 70 74 } //02 00  additional information about the A-Prompt
		$a_00_99 = {41 2d 50 72 6f 6d 70 74 20 6f 6e 20 4a 61 6e 2e 20 33 31 2c 20 32 30 30 32 2e 20 54 68 65 20 43 41 4d 4f 2c 20 61 20 46 72 61 6e 63 6f 70 68 6f 6e 65 20 6c 61 62 6f 75 72 } //02 00  A-Prompt on Jan. 31, 2002. The CAMO, a Francophone labour
		$a_00_100 = {6c 61 20 6d 61 69 6e 2d 64 27 6f 65 75 76 72 65 20 70 6f 75 72 20 70 65 72 73 6f 6e 6e 65 73 20 68 61 6e 64 69 63 61 70 65 65 73 20 28 43 41 4d 4f 29 2c 20 69 6e 74 72 6f 64 75 63 65 64 } //02 00  la main-d'oeuvre pour personnes handicapees (CAMO), introduced
		$a_00_101 = {63 3a 5c 63 6c 65 61 72 73 64 69 6e 67 64 72 66 69 76 65 } //02 00  c:\clearsdingdrfive
		$a_00_102 = {64 6a 72 67 6a 65 69 67 6a 65 6f 69 72 67 6a 65 72 69 72 67 2e 74 78 74 } //03 00  djrgjeigjeoirgjerirg.txt
		$a_00_103 = {7a 43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 } //01 00  zContent-Type: application/x-www-form-urlencoded
		$a_00_104 = {48 54 54 50 4d 61 69 6c 20 50 61 73 73 77 6f 72 64 } //01 00  HTTPMail Password
		$a_00_105 = {65 6d 61 69 6c 61 64 64 72 } //01 00  emailaddr
		$a_00_106 = {70 6f 70 75 73 65 72 6e 61 6d } //01 00  popusernam
		$a_00_107 = {70 68 69 64 3d 25 73 26 65 62 } //01 00  phid=%s&eb
		$a_00_108 = {46 4f 52 4d 3a 20 75 73 65 72 3a 20 25 73 2c 20 70 61 73 73 3a 20 25 73 } //02 00  FORM: user: %s, pass: %s
		$a_00_109 = {70 68 69 64 3d 25 73 26 65 62 3d 46 4f 52 4d 3a 20 25 73 3b 49 4e 46 4f 3a 20 25 73 } //01 00  phid=%s&eb=FORM: %s;INFO: %s
		$a_00_110 = {68 74 74 70 73 3a 2f 2f 73 69 67 6e 69 6e 2e 65 62 61 79 2a 2f 77 73 2f 65 42 61 79 49 53 41 50 49 2e 64 6c 6c } //02 00  https://signin.ebay*/ws/eBayISAPI.dll
		$a_00_111 = {75 73 65 72 3a 20 25 73 2c 20 70 61 73 73 3a 20 25 73 3b 49 4e 46 4f 3a 20 25 73 } //01 00  user: %s, pass: %s;INFO: %s
		$a_00_112 = {47 65 74 55 73 65 72 44 65 66 61 75 6c 74 4c 61 6e 67 49 44 } //01 00  GetUserDefaultLangID
		$a_00_113 = {63 3a 5c 74 65 78 74 2e 74 73 74 } //01 00  c:\text.tst
		$a_00_114 = {63 3a 5c 77 6f 70 2e 72 65 70 } //01 00  c:\wop.rep
		$a_00_115 = {63 3a 5c 7a 2e 77 77 77 } //02 00  c:\z.www
		$a_00_116 = {70 68 69 64 3d 25 73 26 76 65 72 3d 25 73 26 6c 67 3d 25 73 } //01 00  phid=%s&ver=%s&lg=%s
		$a_00_117 = {31 31 3a 33 30 3a 33 33 } //02 00  11:30:33
		$a_00_118 = {2d 62 64 65 63 3d 25 2e 32 66 20 2d 68 6e 61 6d 65 3d 25 73 20 2d 6e 65 77 3d 25 73 20 2d 6f 6c 64 3d 25 73 20 2d 63 6f 6d 73 3d 25 73 } //01 00  -bdec=%.2f -hname=%s -new=%s -old=%s -coms=%s
		$a_00_119 = {63 3a 5c 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a 7a } //02 00  c:\zzzzzzzzzzzzzzzzzzzzzzz
		$a_00_120 = {66 20 2d 68 6e 61 6d 65 3d 25 73 20 2d 6e 65 77 3d 25 73 20 2d 6f 6c 64 3d 25 73 20 2d 63 6f 6d 73 } //01 00  f -hname=%s -new=%s -old=%s -coms
		$a_00_121 = {66 69 6e 61 6e 7a 73 74 61 74 75 73 } //01 00  finanzstatus
		$a_00_122 = {66 75 6e 64 20 74 72 61 6e 73 66 65 72 } //01 00  fund transfer
		$a_00_123 = {68 6e 61 6d 65 3d 25 73 20 2d 6e 65 77 } //01 00  hname=%s -new
		$a_00_124 = {68 74 74 70 73 3a 2f 2f 62 61 6e 6b 69 6e 67 } //02 00  https://banking
		$a_00_125 = {73 26 63 6f 6e 66 69 72 6d 3d 25 73 26 73 75 6d 3d 25 73 } //02 00  s&confirm=%s&sum=%s
		$a_00_126 = {65 20 69 6e 70 75 74 20 2d 72 20 6e 61 6d 65 3d 62 65 74 72 61 67 } //02 00  e input -r name=betrag
		$a_00_127 = {63 63 63 63 63 63 63 6f 65 6d 72 63 69 65 72 6d 69 63 6f 6d 65 72 69 6f 63 6d 65 69 6f 72 6d 63 69 6f 65 72 6d 6f } //02 00  cccccccoemrciermicomeriocmeiormcioermo
		$a_00_128 = {3b 20 62 61 6c 6c 61 6e 63 65 3a 20 } //01 00  ; ballance: 
		$a_00_129 = {6d 61 78 74 72 61 6e 73 66 65 72 3a 20 } //02 00  maxtransfer: 
		$a_00_130 = {70 68 69 64 3d 25 73 26 73 75 6d 3d 25 73 } //01 00  phid=%s&sum=%s
		$a_00_131 = {61 70 70 2f 75 65 62 65 72 77 65 69 73 75 6e 67 2e 69 6e 70 75 74 } //01 00  app/ueberweisung.input
		$a_00_132 = {70 6f 73 74 62 61 6e 6b 2e 64 65 2f 61 70 70 } //01 00  postbank.de/app
		$a_00_133 = {72 20 6e 61 6d 65 3d 65 6d 70 66 61 65 6e 67 65 72 42 6c 7a } //01 00  r name=empfaengerBlz
		$a_00_134 = {72 20 6e 61 6d 65 3d 65 6d 70 66 61 65 6e 67 65 72 4b 6f 6e 74 6f 6e 75 6d 6d 65 72 } //01 00  r name=empfaengerKontonummer
		$a_00_135 = {75 65 62 65 72 77 65 69 73 75 6e 67 2e 69 6e 70 75 74 2e 64 6f } //01 00  ueberweisung.input.do
		$a_00_136 = {75 65 62 65 72 77 65 69 73 75 6e 67 2e 70 72 65 70 2e 64 6f } //01 00  ueberweisung.prep.do
		$a_00_137 = {61 70 70 2f 6b 6f 6e 74 6f 75 6d 73 61 74 7a 2e 75 6d 73 61 74 7a 2e 69 6e 69 74 2e 64 6f } //01 00  app/kontoumsatz.umsatz.init.do
		$a_00_138 = {64 65 2f 61 70 70 2f 6b 6f 6e 74 6f 75 6d 73 61 74 7a 2e 75 6d 73 61 74 7a 2e 69 6e 69 74 2e 64 6f } //01 00  de/app/kontoumsatz.umsatz.init.do
		$a_00_139 = {64 65 2f 61 70 70 2f 77 65 6c 63 6f 6d 65 2e 64 6f } //01 00  de/app/welcome.do
		$a_00_140 = {6e 61 6d 65 3d 65 6d 70 66 61 65 6e 67 65 72 42 6c 7a } //01 00  name=empfaengerBlz
		$a_00_141 = {6e 61 6d 65 3d 65 6d 70 66 61 65 6e 67 65 72 4b 6f 6e 74 6f 6e 75 6d 6d 65 72 } //01 00  name=empfaengerKontonummer
		$a_00_142 = {65 6d 70 66 61 65 6e 67 65 72 4b 6f 6e 74 6f 6e 75 6d 6d 65 72 2a 65 6d 70 66 61 65 6e 67 65 72 42 6c 7a } //01 00  empfaengerKontonummer*empfaengerBlz
		$a_00_143 = {65 6d 70 66 61 65 6e 67 65 72 4e 61 6d 65 2a 65 6d 70 66 61 65 6e 67 65 72 4b 6f 6e 74 6f 6e 75 6d 6d 65 72 } //01 00  empfaengerName*empfaengerKontonummer
		$a_00_144 = {76 65 72 77 65 6e 64 75 6e 67 73 7a 77 65 63 6b } //01 00  verwendungszweck
		$a_00_145 = {6b 6f 6e 74 6f 75 6d 73 61 74 7a 2e 75 6d 73 61 74 7a 2e 69 6e 69 74 2e 64 6f } //01 00  kontoumsatz.umsatz.init.do
		$a_00_146 = {70 6f 73 74 62 61 6e 6b 2e 64 65 2f 61 70 70 2f 77 65 6c 63 6f 6d 65 2e 64 6f } //01 00  postbank.de/app/welcome.do
		$a_00_147 = {72 20 6e 61 6d 65 3d 65 6d 70 66 61 65 6e 67 65 72 4e 61 6d 65 } //01 00  r name=empfaengerName
		$a_00_148 = {72 20 6e 61 6d 65 3d 76 65 72 77 65 6e 64 75 6e 67 73 7a 77 65 63 6b } //01 00  r name=verwendungszweck
		$a_00_149 = {75 6d 73 61 74 7a 2e 69 6e 69 74 2e 64 6f } //01 00  umsatz.init.do
		$a_00_150 = {50 4f 50 33 20 50 61 73 73 77 6f 72 64 } //01 00  POP3 Password
		$a_00_151 = {50 4f 50 33 20 55 73 65 72 } //01 00  POP3 User
		$a_00_152 = {65 72 67 6b 6f 70 65 72 6b 20 67 65 72 6b 67 70 72 6b 20 67 6b 65 72 } //01 00  ergkoperk gerkgprk gker
		$a_00_153 = {63 3b 63 6f 6d 6d 65 6e 74 73 } //01 00  c;comments
		$a_00_154 = {68 3b 68 6f 6c 64 65 72 6e 61 6d 65 } //01 00  h;holdername
		$a_00_155 = {6b 3b 6b 6f 6e 74 6f 6e 75 6d 6d 65 72 } //02 00  k;kontonummer
		$a_00_156 = {3c 66 6f 6e 74 20 63 6f 6c 6f 72 3d 22 23 30 30 39 39 30 30 22 3e 25 2e 32 66 26 6e 62 73 70 3b 3c 2f 66 6f 6e 74 3e } //01 00  <font color="#009900">%.2f&nbsp;</font>
		$a_00_157 = {61 70 70 2f 75 65 62 65 72 77 65 69 73 75 6e 67 2e 71 75 69 74 74 75 6e 67 2e 64 6f } //01 00  app/ueberweisung.quittung.do
		$a_00_158 = {63 72 65 61 74 75 72 65 73 20 61 72 65 20 64 65 73 65 61 72 74 69 6e 67 } //01 00  creatures are desearting
		$a_00_159 = {44 65 6c 65 74 65 64 20 4f 45 20 41 63 63 6f 75 6e 74 } //01 00  Deleted OE Account
		$a_00_160 = {49 45 3a 50 61 73 73 77 6f 72 64 2d 50 72 6f 74 65 63 74 65 64 20 73 69 74 65 73 } //01 00  IE:Password-Protected sites
		$a_00_161 = {3c 66 6f 6e 74 20 63 6f 6c 6f 72 3d 22 23 30 30 39 39 30 30 22 3e 25 2e 32 66 26 6e 62 73 70 3b 26 65 75 72 6f 3b 3c 2f 66 6f 6e 74 3e } //01 00  <font color="#009900">%.2f&nbsp;&euro;</font>
		$a_00_162 = {61 70 70 2f 66 69 6e 61 6e 7a 73 74 61 74 75 73 2e 72 65 64 75 7a 69 65 72 74 } //01 00  app/finanzstatus.reduziert
		$a_00_163 = {73 70 61 6e 20 63 6c 61 73 73 3d 22 64 69 67 69 74 22 3e 20 3c 2f 73 70 61 6e } //01 00  span class="digit"> </span
		$a_00_164 = {6a 77 69 65 30 66 39 33 6a } //01 00  jwie0f93j
		$a_00_165 = {70 68 69 64 3d 25 73 26 73 75 6d 3d 25 73 26 73 74 72 3d 25 73 } //01 00  phid=%s&sum=%s&str=%s
		$a_00_166 = {2e 20 66 75 6e 64 20 74 72 61 6e 73 66 65 72 3a 20 } //01 00  . fund transfer: 
		$a_00_167 = {2a 70 69 6e 4e 75 6d 62 65 72 2a } //02 00  *pinNumber*
		$a_00_168 = {63 6f 6e 66 69 72 6d 3d 25 73 26 73 75 6d 3d 25 73 26 61 63 63 } //01 00  confirm=%s&sum=%s&acc
		$a_00_169 = {68 69 67 68 6c 69 67 68 74 65 64 20 77 6f 72 64 73 } //02 00  highlighted words
		$a_01_170 = {63 6f 6e 64 75 63 74 65 64 20 69 6e 20 4d 45 47 41 33 2e 20 54 68 65 20 44 4e 41 20 73 65 71 75 65 6e 63 65 20 61 6e 64 20 6f 74 68 65 72 } //02 00  conducted in MEGA3. The DNA sequence and other
		$a_00_171 = {63 6f 6d 70 69 64 00 00 52 54 5f 44 4c } //02 00 
		$a_00_172 = {7a 7a 7a 32 32 32 00 00 00 63 3a 5c 64 6a 72 67 } //03 00 
		$a_02_173 = {5b 4b 45 59 4c 4f 47 47 45 52 5d 3a 90 02 08 2d 2d 2d 2d 2d 2d 2d 2d 90 00 } //02 00 
		$a_01_174 = {5c 68 6f 6f 6b 2e 64 6c 6c } //02 00  \hook.dll
		$a_00_175 = {3c 45 73 63 3e } //02 00  <Esc>
		$a_00_176 = {3c 42 6b 53 70 3e } //02 00  <BkSp>
		$a_01_177 = {5f 5f 4d 79 4b 65 79 4c 6f 67 67 65 72 } //03 00  __MyKeyLogger
		$a_00_178 = {53 65 74 48 6f 6f 6b 00 00 00 53 65 74 48 6f 6f } //03 00 
		$a_00_179 = {70 68 70 00 65 78 65 00 5c } //01 00 
		$a_00_180 = {6b 79 72 70 61 } //02 00  kyrpa
		$a_02_181 = {0f b7 c7 ff 34 85 40 a0 40 00 56 e8 90 01 02 00 00 83 c4 0c 85 c0 74 0f 47 66 81 ff 06 01 76 d8 90 00 } //02 00 
		$a_00_182 = {83 f8 14 72 2a 80 7f 09 06 75 24 0f b7 4f 02 8b d1 c1 ea 08 c1 e1 08 03 d1 83 fa 28 7e 11 39 ae } //02 00 
		$a_00_183 = {80 f9 19 88 4d ff 73 3c 0f b6 c1 03 c7 8a 04 18 3c 2e 72 1e 3c 7a 77 1a 3c 2f 74 16 3c 39 76 04 } //03 00 
		$a_00_184 = {59 3d 27 92 98 00 59 75 08 6a 59 } //02 00 
		$a_00_185 = {ff 58 b9 80 01 00 00 89 4d 0c 8b 45 0c 40 40 8d 04 40 c1 e0 07 39 45 0c 75 } //02 00 
		$a_02_186 = {8d 45 b4 6a 32 50 ff 15 90 01 02 40 00 8d 45 e8 89 5d ec 50 8d 45 ec 50 53 68 3f 00 0f 00 53 53 53 90 00 } //9c ff 
		$a_03_187 = {68 74 74 70 90 02 01 3a 2f 2f 77 77 77 2e 67 74 6f 70 61 6c 61 2e 63 6f 6d 2f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}