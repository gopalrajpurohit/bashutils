#!/bin/bash -x

#git pull --rebase origin ${BRANCH} && git submodule init && git submodule update && git pull --rebase origin ${BRANCH}

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH=$(dirname "$0")

PARENT_BRANCHES=`${CURRENT_SCRIPT_FULL_PATH}/getparentbranches.sh`
CURRENT_BRANCH=`${CURRENT_SCRIPT_FULL_PATH}/current_branch.sh`


git push origin "${CURRENT_BRANCH}" || exit
#git pull --rebase origin "${CURRENT_BRANCH}" || exit
git checkout master || exit
git reset --hard origin/master || exit
git checkout ${CURRENT_BRANCH} || exit

for PARENT_BRANCH in $PARENT_BRANCHES
do
    git merge --no-ff --no-edit "${PARENT_BRANCH}" || exit
    git push origin "${CURRENT_BRANCH}" || exit
#   git pull --rebase origin "${CURRENT_BRANCH}" || exit
    git checkout master || exit
    git reset --hard origin/master || exit
    git checkout ${CURRENT_BRANCH} || exit
done
