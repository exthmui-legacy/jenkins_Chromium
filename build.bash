#!/bin/bash
cd ${WORK_DIR}
rm -rf out/${TARGET_CPU}-${BUILDTYPE}/apks
autoninja -C out/${TARGET_CPU}-${BUILDTYPE} ${TARGET}
if [ -f out/${TARGET_CPU}-${BUILDTYPE}/apks/*.apk ];then
    echo Found Artifacts
    exit 0
else
    exit 1
fi

