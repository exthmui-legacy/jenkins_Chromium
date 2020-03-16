#!/bin/bash
cd ${WORK_DIR}
git fetch origin --tags
git reset --hard ${VERSION_TAG}
gclient sync --force --nohooks --with_branch_heads -D
gclient runhooks
# You can get latest chromium release tags here:https://omahaproxy.appspot.com/
