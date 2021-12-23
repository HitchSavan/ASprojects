UnmarkedObjectFolder := D:/ASprojects/kursich/Logical/Libraries/Library_C
MarkedObjectFolder := D:/ASprojects/kursich/Logical/Libraries/Library_C

$(AS_CPU_PATH)/Library_C.br: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library_C/ANSIC.lby \
	FORCE \
	$(AS_CPU_PATH)/Library_C/Library_C.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/Library_C/Library_C.ox" -o "$(AS_CPU_PATH)/Library_C.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B D4.26 -extConstants -r Library -s "Libraries.Library_C" -L "AsIecCon: V*, astime: V*, Library_C: V*, operator: V*, runtime: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/Library_C/Library_C.ox: \
	$(AS_CPU_PATH)/Library_C/a.out \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/Library_C/a.out" -o "$(AS_CPU_PATH)/Library_C/Library_C.ox" -T SG4 -r Library   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/Library_C/a.out: \
	$(AS_CPU_PATH)/Library_C/Engine.c.o \
	$(AS_CPU_PATH)/Library_C/Valve.c.o \
	$(AS_CPU_PATH)/Library_C/Solval.c.o \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/Library_C/Engine.c.o" "$(AS_CPU_PATH)/Library_C/Valve.c.o" "$(AS_CPU_PATH)/Library_C/Solval.c.o"  -o "$(AS_CPU_PATH)/Library_C/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libastime.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libruntime.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/liboperator.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Library_C/Engine.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library_C/Engine.c \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/Library_C/Engine.c" -o "$(AS_CPU_PATH)/Library_C/Engine.c.o"  -T SG4  -M IA32  -B D4.26 -G V4.1.2  -s "Libraries.Library_C" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/Library_C" "$(AS_TEMP_PATH)/Includes/Libraries/Library_C" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _LIBRARY_C_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Library_C/Valve.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library_C/Valve.c \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/Library_C/Valve.c" -o "$(AS_CPU_PATH)/Library_C/Valve.c.o"  -T SG4  -M IA32  -B D4.26 -G V4.1.2  -s "Libraries.Library_C" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/Library_C" "$(AS_TEMP_PATH)/Includes/Libraries/Library_C" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _LIBRARY_C_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Library_C/Solval.c.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/Library_C/Solval.c \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/Library_C/Solval.c" -o "$(AS_CPU_PATH)/Library_C/Solval.c.o"  -T SG4  -M IA32  -B D4.26 -G V4.1.2  -s "Libraries.Library_C" -t "$(AS_TEMP_PATH)" -r Library -I "$(AS_PROJECT_PATH)/Logical/Libraries/Library_C" "$(AS_TEMP_PATH)/Includes/Libraries/Library_C" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -D _LIBRARY_C_EXPORT -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 



FORCE: