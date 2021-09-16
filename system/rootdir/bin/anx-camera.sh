#!/system/bin/sh

SYSTEM_PATH="/system/etc"
ANX_PATH="/sdcard/.ANXCamera"

if [ -d "$ANX_PATH" ];
    then
        mkdir -p $ANX_PATH/cheatcodes && cp -rf $SYSTEM_PATH/ANXCamera/cheatcodes/* $ANX_PATH/cheatcodes
        mkdir -p $ANX_PATH/cheatcodes_reference && cp-rf $SYSTEM_PATH/ANXCamera/cheatcodes/* $ANX_PATH/cheatcodes_reference
        mkdir -p $ANX_PATH/features && cp -rf $SYSTEM_PATH/device_features/* $ANX_PATH/features
        mkdir -p $ANX_PATH/features_reference && cp -rf $SYSTEM_PATH/device_features/* $ANX_PATH/features_reference
fi

mkdir -p /sdcard/DCIM/Camera/Lab_options_visible
