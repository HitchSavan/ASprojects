UnmarkedObjectFolder := D:/ASprojects/arm/Logical/Libraries/robot
MarkedObjectFolder := D:/ASprojects/arm/Logical/Libraries/robot

$(AS_CPU_PATH)/robot.br: \
	$(AS_PROJECT_PATH)/Logical/Libraries/robot/IEC.lby \
	FORCE \
	$(AS_CPU_PATH)/robot/robot.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/robot/robot.ox" -o "$(AS_CPU_PATH)/robot.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B D4.26 -extConstants -d "runtime: V* - V*,asieccon: V* - V*" -r Library -s "Libraries.robot" -L "AsIecCon: V*, astime: V*, operator: V*, robot: V*, runtime: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/robot/robot.ox: \
	$(AS_CPU_PATH)/robot/a.out \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/robot/a.out" -o "$(AS_CPU_PATH)/robot/robot.ox" -T SG4 -r Library   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/robot/a.out: \
	$(AS_CPU_PATH)/robot/Q_PositionAnimator.ab.o \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/robot/Q_PositionAnimator.ab.o"  -o "$(AS_CPU_PATH)/robot/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libastime.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/libruntime.a" "-Wl,$(AS_SYSTEM_PATH)/D0426/SG4/IA32/liboperator.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -nostdlib -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/robot/Q_PositionAnimator.ab.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/robot/Q_PositionAnimator.ab \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/Q_PositionAnimator.ab" -o "$(AS_CPU_PATH)/robot/Q_PositionAnimator.ab.o"  -T SG4  -M IA32  -G V4.1.2  -s "Libraries.robot" -t "$(AS_TEMP_PATH)" -pointers -extComments -extBitAccess -extConstants -r Library -D _SG4 -g "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/Types.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/robot.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/operator/operator.var" "$(AS_PROJECT_PATH)/Logical/Libraries/runtime/runtime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.var" "$(AS_PROJECT_PATH)/Logical/Libraries/robot/Constants.var"  -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 



FORCE: