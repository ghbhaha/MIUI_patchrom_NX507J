
################################  common copy ##########################################################

#thememanager
$(shell mkdir -p --mode=755 $(TARGET_OUT)/media/theme/thememanager;)
$(shell cp -a ./zte_vendor/IdleCommonResources/theme/* $(TARGET_OUT)/media/theme/thememanager/.;)

################################## common copy end ####################################################