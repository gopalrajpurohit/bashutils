#!/bin/bash -x

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH=$(dirname "$0")

source ${CURRENT_SCRIPT_FULL_PATH}/gitrefresh_tree.rc

for BRANCH in $BRANCHES
do
  git checkout $BRANCH || exit
done

for BRANCH in $BRANCHES
do
  git checkout $BRANCH || exit
  ${CURRENT_SCRIPT_FULL_PATH}/gitupdate.sh || exit
done
