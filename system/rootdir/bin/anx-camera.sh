#!/vendor/bin/sh

SYSTEM_PATH="/system/etc"
ANX_PATH="/sdcard/.ANXCamera"
DEVICE_NAME=$(getprop ro.product.device)


if [ -d $ANX_PATH ];
    then
        mkdir -p $ANX_PATH/cheatcodes
	cp -rf $SYSTEM_PATH/ANXCamera/cheatcodes/cheatcodes.json $ANX_PATH/cheatcodes
        mkdir -p $ANX_PATH/cheatcodes_reference
	cp-rf $SYSTEM_PATH/ANXCamera/cheatcodes/cheatcodes.json $ANX_PATH/cheatcodes_reference
        mkdir -p $ANX_PATH/features
	cp -rf $SYSTEM_PATH/device_features/$DEVICE_NAME $ANX_PATH/features
        mkdir -p $ANX_PATH/features_reference
	cp -rf $SYSTEM_PATH/device_features/$DEVICE_NAME $ANX_PATH/features_reference
fi

mkdir -p /sdcard/DCIM/Camera/Lab_options_visible
