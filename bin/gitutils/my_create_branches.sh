#!/bin/bash -x

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH=$(dirname "$0")

source ${CURRENT_SCRIPT_FULL_PATH}/my_branches.rc

for BRANCH_NAME in $CREATE_BRANCH_NAMES 
do
	CHILD_BRANCH=`echo $BRANCH_NAME | sed 's/:.*//g'`
	PARENT_BRANCH=`echo $BRANCH_NAME | sed 's/.*://g'`

	echo "${CHILD_BRANCH} -> ${PARENT_BRANCH}"

	BRANCH=${CHILD_BRANCH}

	# git checkout master && git fetch origin && git pull

	git checkout ${PARENT_BRANCH}	|| exit
        git branch --create ${BRANCH} || exit
        git checkout ${BRANCH} || exit
        git push origin ${BRANCH} || exit
        # git pull --rebase origin ${BRANCH} || exit
        git branch -u origin/${BRANCH} ${BRANCH} || exit
        git merge --no-ff ${PARENT_BRANCH} || exit

	# git checkout master && git fetch origin && git pull

done

