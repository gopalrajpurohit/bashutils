#!/bin/bash -x

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH=$(dirname "$0")


${CURRENT_SCRIPT_FULL_PATH}/gitlocalrefresh_tree.sh || exit

source ${CURRENT_SCRIPT_FULL_PATH}/gitrefresh_tree.rc
for BRANCH in $BRANCHES
do
  git push origin $BRANCH || exit
done
