#!/bin/bash

FOR_WHICH_USER=$1
if [ -z "$1" ]; then
  FOR_WHICH_USER=${USER}
fi

FOR_WHICH_BRANCH=$2
if [ -z "$2" ]; then
  FOR_WHICH_BRANCH=`current_branch.sh`
fi

git log --author=${FOR_WHICH_USER} ${FOR_WHICH_BRANCH}
