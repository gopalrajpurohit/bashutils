#!/bin/bash

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH=$(dirname "$0")

source ${CURRENT_SCRIPT_FULL_PATH}/my_branches.rc

for ROOT_BRANCH in $ROOT_BRANCHES
do
 # git update and merge with parent 
 git checkout ${ROOT_BRANCH} || exit
done

for BRANCH_NAME in $BRANCH_NAMES
do
	CHILD_BRANCH=`echo $BRANCH_NAME | sed 's/:.*//g'`
	PARENT_BRANCH=`echo $BRANCH_NAME | sed 's/.*://g'`

        echo "${CHILD_BRANCH} -> ${PARENT_BRANCH}"
	BRANCH=${CHILD_BRANCH}
        git checkout ${BRANCH} || exit;
done
