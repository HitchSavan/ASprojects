UnmarkedObjectFolder := D:/ASprojects/arm/Physical/Config1/X20CP1586/AccessAndSecurity/UserRoleSystem
MarkedObjectFolder := D:/ASprojects/arm/Physical/Config1/X20CP1586/AccessAndSecurity/UserRoleSystem

$(AS_CPU_PATH)/User.br: \
	$(AS_PROJECT_CPU_PATH)/AccessAndSecurity/UserRoleSystem/User.user \
 	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.SystemConfiguration.Builder.exe"   "$(AS_PROJECT_CPU_PATH)/AccessAndSecurity/UserRoleSystem/User.user" -o "$(AS_CPU_PATH)/User.br" -zip -B D4.26 -z n.d -P "$(AS_PROJECT_PATH)" -c "$(AS_CONFIGURATION)" -secret "$(AS_PROJECT_PATH)_br.as.systemconfiguration.builder.exe"

FORCE: