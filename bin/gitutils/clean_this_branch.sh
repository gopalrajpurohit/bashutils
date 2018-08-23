#!/bin/bash

THIS_BRANCH=`current_branch.sh`

if [ "${THIS_BRANCH}" = "master" ]; then
  echo "You are on master branch, cannot be deleted"
  exit 1
else
  clean_branch.sh `current_branch.sh`
fi
