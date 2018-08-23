#!/bin/bash

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH==$(dirname "$0")

FOR_WHICH_USER=$1
if [ -z "$1" ]; then
  FOR_WHICH_USER=${USER}
fi

FOR_WHICH_BRANCH=$2
if [ -z "$2" ]; then
  FOR_WHICH_BRANCH=`${CURRENT_SCRIPT_FULL_PATH}/current_branch.sh`
fi

git log --author=${FOR_WHICH_USER} ${FOR_WHICH_BRANCH}
