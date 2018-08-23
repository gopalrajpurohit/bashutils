#!/bin/bash -x

BRANCH=$1

if [ -z "${BRANCH}" ]; then
  exit;
fi

git checkout master || exit
git checkout ${BRANCH} || exit
git pull --rebase origin ${BRANCH} || exit
git branch -u origin/${BRANCH} ${BRANCH} || exit
git push origin ${BRANCH} || exit
