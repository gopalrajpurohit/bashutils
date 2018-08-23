#!/bin/bash

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH=$(dirname "$0")

source ${CURRENT_SCRIPT_FULL_PATH}/my_branches.rc

for BRANCH_NAME in $BRANCH_NAMES
do
	CHILD_BRANCH=`echo $BRANCH_NAME | sed 's/:.*//g'`
	PARENT_BRANCH=`echo $BRANCH_NAME | sed 's/.*://g'`

        echo "${CHILD_BRANCH} -> ${PARENT_BRANCH}"
	BRANCH=${CHILD_BRANCH}
done

exit;

