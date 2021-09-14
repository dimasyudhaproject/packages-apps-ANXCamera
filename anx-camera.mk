ANX_PATH := packages/apps/ANXCamera/system

PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/etc,system/etc) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/framework,system/framework) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/lib,system/lib) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/lib64,system/lib64) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/priv-app/ANXCamera/lib/arm,system/priv-app/ANXCamera/lib/arm) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/priv-app/ANXCamera/lib/arm64,system/priv-app/ANXCamera/lib/arm64) \
	$(call find-copy-subdir-files,*,$(ANX_PATH)/priv-app/ANXScanner/lib/arm,system/priv-app/ANXScanner/lib/arm) \
	$(ANX_PATH)/rootdir/etc/anx-camera.rc,system/etc/init/anx-camera.rc \
	$(ANX_PATH)/rootdir/bin/anx-camera.sh,system/bin/anx-camera.sh

PRODUCT_PACKAGES += \
	anxres \
	miuisystem \
	miui \
	ANXCamera \
	ANXExtraPhoto \
	ANXScanner