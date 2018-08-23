#!/bin/bash

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH==$(dirname "$0")

THIS_BRANCH=`${CURRENT_SCRIPT_FULL_PATH}/current_branch.sh`

if [ "${THIS_BRANCH}" = "master" ]; then
  echo "You are on master branch, cannot be deleted"
  exit 1
else
  ${CURRENT_SCRIPT_FULL_PATH}/clean_branch.sh `${CURRENT_SCRIPT_FULL_PATH}/current_branch.sh`
fi
