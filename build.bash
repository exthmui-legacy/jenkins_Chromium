#!/bin/bash
cd ${WORK_DIR}
autoninja -C out/${TARGET_CPU}-${BUILDTYPE} ${TARGET}
