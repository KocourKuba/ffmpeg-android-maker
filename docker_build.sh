#!/bin/bash
LOCAL_FAM_PATH=`pwd`

sudo docker run --rm \
  -v ${LOCAL_FAM_PATH}:/mnt/ffmpeg-android-maker \
  -e FAM_ARGS="-abis=arm -android=28 -all" \
  javernaut/ffmpeg-android-maker
