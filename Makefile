XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates
VIPER_TEMPLATES_DIR=VIPER\ Templates

install_viper:
	rm -R -f $(XCODE_USER_TEMPLATES_DIR)/$(VIPER_TEMPLATES_DIR)
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	cp -R -f $(VIPER_TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)
	@echo "VIPER Templates installed successfully!! You can now access them using your Xcode\n"

uninstall_viper:
	rm -R $(XCODE_USER_TEMPLATES_DIR)/$(VIPER_TEMPLATES_DIR)
	@echo "VIPER Templates uninstalled successfully!! \n"
