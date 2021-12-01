SHELL = cmd.exe
CYGWIN=nontsec
export PATH := D:\Program Files (x86)\VMware\VMware Player\bin\;C:\Program Files\Eclipse Foundation\jdk-11.0.12.7-hotspot\bin;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\iCLS\;C:\Program Files\Intel\Intel(R) Management Engine Components\iCLS\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\Program Files\Git\cmd;C:\Program Files\apache-maven-3.8.3\bin;D:\Program Files\nodejs;C:\Users\temny\AppData\Local\Programs\Python\Python310\Scripts\;C:\Users\temny\AppData\Local\Programs\Python\Python310\;C:\Users\temny\AppData\Local\Microsoft\WindowsApps;C:\Users\temny\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\temny\AppData\Local\GitHubDesktop\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\temny\AppData\Local\Programs\Python\Python310\Scripts\;C:\Users\temny\AppData\Local\Programs\Python\Python310\;C:\Users\temny\AppData\Local\Microsoft\WindowsApps;C:\Users\temny\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\temny\AppData\Local\GitHubDesktop\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_BUILD_MODE := Rebuild
export AS_VERSION := 4.2.10.53 SP
export AS_COMPANY_NAME :=  
export AS_USER_NAME := temny
export AS_PATH := D:/BrAutomation/AS42
export AS_BIN_PATH := D:/BrAutomation/AS42/Bin-en
export AS_PROJECT_PATH := D:/ASprojects/kursich
export AS_PROJECT_NAME := kursich
export AS_SYSTEM_PATH := D:/BrAutomation/AS/System
export AS_VC_PATH := D:/BrAutomation/AS42/AS/VC
export AS_TEMP_PATH := D:/ASprojects/kursich/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := D:/ASprojects/kursich/Binaries
export AS_GNU_INST_PATH := D:/BrAutomation/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := D:/BrAutomation/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := D:/BrAutomation/AS42
export WIN32_AS_PATH := "D:\BrAutomation\AS42"
export WIN32_AS_BIN_PATH := "D:\BrAutomation\AS42\Bin-en"
export WIN32_AS_PROJECT_PATH := "D:\ASprojects\kursich"
export WIN32_AS_SYSTEM_PATH := "D:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "D:\BrAutomation\AS42\AS\VC"
export WIN32_AS_TEMP_PATH := "D:\ASprojects\kursich\Temp"
export WIN32_AS_BINARIES_PATH := "D:\ASprojects\kursich\Binaries"
export WIN32_AS_GNU_INST_PATH := "D:\BrAutomation\AS42\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "D:\BrAutomation\AS42"

.suffixes:

ProjectMakeFile:

	@"$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe" "$(AS_PROJECT_PATH)/kursich.apj" -t "$(AS_TEMP_PATH)" -c "$(AS_CONFIGURATION)" -o "$(AS_BINARIES_PATH)"   -sfas -buildMode "Rebuild"  

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'D:/ASprojects/kursich/Temp/Objects/$(AS_CONFIGURATION)/PC/#cpu.mak' -k 

