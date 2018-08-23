#!/bin/bash

BRANCH=$1
SHA_REF=$2

if [ -z "${BRANCH}" ]; then
  exit;
fi
if [ -z "${SHA_REF}" ]; then
  exit;
fi

git checkout master || exit
git checkout -b ${BRANCH} ${SHA_REF} || exit
git checkout ${BRANCH} || exit
