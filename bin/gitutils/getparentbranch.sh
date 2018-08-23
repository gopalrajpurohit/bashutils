#!/bin/bash

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH=$(dirname "$0")

source ${CURRENT_SCRIPT_FULL_PATH}/my_branches.rc

if [ "x${1}" == "x" ]; then
  CURRENT_BRANCH=`${CURRENT_SCRIPT_FULL_PATH}/current_branch.sh`
else
  CURRENT_BRANCH="${1}"
fi

for BRANCH_NAME in $BRANCH_NAMES
do
	CHILD_BRANCH=`echo $BRANCH_NAME | sed 's/:.*//g'`
	PARENT_BRANCH=`echo $BRANCH_NAME | sed 's/.*://g'`

	if [ "${CHILD_BRANCH}" == "${CURRENT_BRANCH}" ]; then
		echo ${PARENT_BRANCH};
		exit;
	fi
done
