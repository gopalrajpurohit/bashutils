#!/bin/bash

BRANCH=$1

if [ -z "${BRANCH}" ]; then
  exit;
fi

git push origin ${BRANCH} || exit
git branch -u origin/${BRANCH} ${BRANCH} || exit
git checkout master || exit
git reset --hard origin/master || exit
git checkout ${BRANCH} || exit
