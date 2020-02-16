#!/bin/bash
cd ${WORK_DIR}
git pull origin master：master --tags -f
git reset --hard ${VERSION_TAG}
gclient sync --force --nohooks --with_branch_heads
gclient runhooks
# You can get latest chromium release tags here:https://omahaproxy.appspot.com/
