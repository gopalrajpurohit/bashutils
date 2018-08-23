#!/bin/bash

BRANCH=$1

if [ -z "${BRANCH}" ]; then
  exit;
fi

BRANCH=$1

git checkout master || exit
git branch -D "${BRANCH}" || exit 
git branch -D -r "origin/${BRANCH}" || exit
git push origin ":${BRANCH}" || exit
