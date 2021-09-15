ANX_PATH := packages/apps/ANXCamera/system
PRIV-APP_PATH := system/priv-app

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/etc,system/etc) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/framework,system/framework) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/lib,system/lib) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/lib64,system/lib64) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/priv-app/ANXCamera/lib/arm,$(PRIV-APP_PATH)/ANXCamera/lib/arm) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/priv-app/ANXExtraPhoto/lib/arm64,$(PRIV-APP_PATH)/ANXExtraPhoto/lib/arm64) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/priv-app/ANXScanner/lib/arm,$(PRIV-APP_PATH)/ANXScanner/lib/arm) \
	$(ANX_PATH)/rootdir/etc/anx-camera.rc,system/etc/init/anx-camera.rc \
	$(ANX_PATH)/rootdir/bin/anx-camera.sh,system/bin/anx-camera.sh

PRODUCT_PACKAGES += \
	anxres \
	miuisystem \
	miui \
	ANXCamera \
	ANXExtraPhoto \
	ANXScanner