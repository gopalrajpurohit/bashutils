#!/bin/bash

BRANCH=$1

if [ -z "${BRANCH}" ]; then
  exit;
fi

git checkout master || exit
git branch --create ${BRANCH} || exit
git checkout ${BRANCH} || exit
