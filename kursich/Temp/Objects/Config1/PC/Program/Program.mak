UnmarkedObjectFolder := D:/ASprojects/kursich/Logical/Program
MarkedObjectFolder := D:/ASprojects/kursich/Logical/Program

$(AS_CPU_PATH)/Program.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	FORCE \
	$(AS_CPU_PATH)/Program/Program.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/Program/Program.ox" -o "$(AS_CPU_PATH)/Program.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B D4.26 -extConstants -r Cyclic4 -p 2 -s "Program" -L "AsIecCon: V*, astime: V*, Library_C: V*, operator: V*, runtime: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/Program/Program.ox: \
	$(AS_CPU_PATH)/Program/a.out \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/Program/a.out" -o "$(AS_CPU_PATH)/Program/Program.ox" -T SG4 -r Cyclic4   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/Program/a.out: \
	$(AS_CPU_PATH)/Program/Main.c.o \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/Program/Main.c.o"  -o "$(AS_CPU_PATH)/Program/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_PLC)/libLibrary_C.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libastime.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libruntime.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/liboperator.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Program/Main.c.o: \
	$(AS_PROJECT_PATH)/Logical/Program/Main.c \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Program/Main.c" -o "$(AS_CPU_PATH)/Program/Main.c.o"  -T SG4  -M IA32  -B D4.26 -G V4.1.2  -s "Program" -t "$(AS_TEMP_PATH)" -I "$(AS_PROJECT_PATH)/Logical/Program" "$(AS_TEMP_PATH)/Includes/Program" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 



FORCE: