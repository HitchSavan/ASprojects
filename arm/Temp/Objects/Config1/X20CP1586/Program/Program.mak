UnmarkedObjectFolder := D:/ASprojects/arm/Logical/Program
MarkedObjectFolder := D:/ASprojects/arm/Logical/Program

$(AS_CPU_PATH)/Program.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	FORCE \
	$(AS_CPU_PATH)/Program/Program.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/Program/Program.ox" -o "$(AS_CPU_PATH)/Program.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B D4.26 -extConstants -d "runtime: V* - V*,asieccon: V* - V*" -r Cyclic2 -p 2 -s "Program" -L "AsIecCon: V*, astime: V*, operator: V*, robot: V*, runtime: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/Program/Program.ox: \
	$(AS_CPU_PATH)/Program/a.out \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/Program/a.out" -o "$(AS_CPU_PATH)/Program/Program.ox" -T SG4 -r Cyclic2   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/Program/a.out: \
	$(AS_CPU_PATH)/Program/Cyclic.ab.o \
	$(AS_CPU_PATH)/Program/Init.ab.o \
	$(AS_CPU_PATH)/Program/Exit.ab.o \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/Program/Cyclic.ab.o" "$(AS_CPU_PATH)/Program/Init.ab.o" "$(AS_CPU_PATH)/Program/Exit.ab.o"  -o "$(AS_CPU_PATH)/Program/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_PLC)/librobot.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libastime.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libruntime.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/liboperator.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -nostdlib -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Program/Cyclic.ab.o: \
	$(AS_PROJECT_PATH)/Logical/Program/Cyclic.ab \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Program/Cyclic.ab" -o "$(AS_CPU_PATH)/Program/Cyclic.ab.o"  -T SG4  -M IA32  -G V4.1.2  -s "Program" -t "$(AS_TEMP_PATH)" -pointers -extComments -extBitAccess -extConstants -D _SG4 -l "$(AS_PROJECT_PATH)/Logical/Program/Types.typ" "$(AS_PROJECT_PATH)/Logical/Program/Variables.var" -g "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/Types.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/robot.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.var" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.var" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/Constants.var" "$(AS_PROJECT_PATH)/Logical/Global.typ" "$(AS_PROJECT_PATH)/Logical/Global.var"  -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/Program/Init.ab.o: \
	$(AS_PROJECT_PATH)/Logical/Program/Init.ab \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Program/Init.ab" -o "$(AS_CPU_PATH)/Program/Init.ab.o"  -T SG4  -M IA32  -G V4.1.2  -s "Program" -t "$(AS_TEMP_PATH)" -pointers -extComments -extBitAccess -extConstants -D _SG4 -l "$(AS_PROJECT_PATH)/Logical/Program/Types.typ" "$(AS_PROJECT_PATH)/Logical/Program/Variables.var" -g "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/Types.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/robot.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.var" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.var" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/Constants.var" "$(AS_PROJECT_PATH)/Logical/Global.typ" "$(AS_PROJECT_PATH)/Logical/Global.var"  -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/Program/Exit.ab.o: \
	$(AS_PROJECT_PATH)/Logical/Program/Exit.ab \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Program/Exit.ab" -o "$(AS_CPU_PATH)/Program/Exit.ab.o"  -T SG4  -M IA32  -G V4.1.2  -s "Program" -t "$(AS_TEMP_PATH)" -pointers -extComments -extBitAccess -extConstants -D _SG4 -l "$(AS_PROJECT_PATH)/Logical/Program/Types.typ" "$(AS_PROJECT_PATH)/Logical/Program/Variables.var" -g "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/Types.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/robot.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.var" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.var" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/Constants.var" "$(AS_PROJECT_PATH)/Logical/Global.typ" "$(AS_PROJECT_PATH)/Logical/Global.var"  -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 



FORCE: