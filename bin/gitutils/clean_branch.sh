#!/bin/bash -x

BRANCH=$1

if [ -z "${BRANCH}" ]; then
  exit;
fi

BRANCH=$1

git checkout master || exit
git branch -D "${BRANCH}" 
git branch -D -r "origin/${BRANCH}"
git push origin ":${BRANCH}"
