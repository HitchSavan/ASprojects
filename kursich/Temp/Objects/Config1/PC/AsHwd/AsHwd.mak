$(AS_CPU_PATH)/ashwd.br: \
	$(AS_PROJECT_CONFIG_PATH)/Hardware.hw \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.ConfigurationBuilder.exe"  "$(AS_PROJECT_CONFIG_PATH)/Hardware.hw" -v V1.00.0 -S "PC" -o "$(AS_CPU_PATH)/ashwd.br" -T SG4 -B D4.26 -P "$(AS_PROJECT_PATH)" -c "$(AS_CONFIGURATION)" -zip -s PC -hwd -secret "$(AS_PROJECT_PATH)_br.as.configurationbuilder.exe"


FORCE:
