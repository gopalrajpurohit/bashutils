#!/bin/bash

WHICH_SHA=$1
if [ -z "$1" ]; then
  echo "No sha provided"
  exit -1;
fi

git show ${WHICH_SHA}
