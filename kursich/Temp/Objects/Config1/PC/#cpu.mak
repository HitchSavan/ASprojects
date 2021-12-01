SHELL = cmd.exe
export AS_PLC := PC
export AS_TEMP_PLC := PC
export AS_CPU_PATH := $(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_PLC)
export AS_CPU_PATH_2 := D:/ASprojects/kursich/Temp//Objects/$(AS_CONFIGURATION)/$(AS_PLC)
export AS_PROJECT_CONFIG_PATH := $(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)
export AS_PROJECT_CPU_PATH := $(AS_PROJECT_CONFIG_PATH)/$(AS_PLC)
export AS_STATIC_ARCHIVES_PATH := $(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_PLC)
export WIN32_AS_CPU_PATH := $(WIN32_AS_TEMP_PATH)\Objects\$(AS_CONFIGURATION)\$(AS_PLC)
export WIN32_AS_ACTIVE_CONFIG_PATH := $(WIN32_AS_PROJECT_PATH)\Physical\$(AS_CONFIGURATION)\$(AS_PLC)


CpuMakeFile: \
$(AS_CPU_PATH)/ashwd.br \
$(AS_CPU_PATH)/asfw.br \
$(AS_CPU_PATH)/sysconf.br \
$(AS_CPU_PATH)/arconfig.br \
$(AS_CPU_PATH)/Library_C.br \
$(AS_CPU_PATH)/Program.br \
$(AS_CPU_PATH)/iomap.br \
$(AS_CPU_PATH)/Role.br \
$(AS_CPU_PATH)/User.br \
$(AS_CPU_PATH)/TCData.br \
$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/Transfer.lst


$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/Transfer.lst: \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.FinalizeBuild.exe" "$(AS_PROJECT_PATH)/kursich.apj" -t "$(AS_TEMP_PATH)" -o "$(AS_BINARIES_PATH)" -c "$(AS_CONFIGURATION)" -i "D:/BrAutomation/AS42" -S "PC"  -all -A "AR000" -pil   -swFiles "$(AS_PROJECT_PATH)/Physical/Config1/PC/Cpu.sw" -Z "GMC: 3.17.3, mapp: 1.61.0, TextSystem: n.d, Connectivity: n.d, AAS: n.d" -C "/RT=1000 /AM=* /DAIP=127.0.0.1 /REPO=11160 /ANSL=1" -D "/IF=tcpip /LOPO=11159 /SA=1" -M IA32 -T SG4

#nothing to do (just call module make files)

include $(AS_CPU_PATH)/TCData/TCData.mak
include $(AS_CPU_PATH)/User/User.mak
include $(AS_CPU_PATH)/Role/Role.mak
include $(AS_CPU_PATH)/iomap/iomap.mak
include $(AS_CPU_PATH)/Program/Program.mak
include $(AS_CPU_PATH)/Library_C/Library_C.mak
include $(AS_CPU_PATH)/arconfig/arconfig.mak
include $(AS_CPU_PATH)/sysconf/sysconf.mak
include $(AS_CPU_PATH)/asfw/asfw.mak
include $(AS_CPU_PATH)/ashwd/ashwd.mak

.DEFAULT:
#nothing to do (need this target for prerequisite files that don't exit)

FORCE:
