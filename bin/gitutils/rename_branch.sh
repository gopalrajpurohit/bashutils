#!/bin/bash

OLD_BRANCH=$1

NEW_BRANCH=$2

echo $NEW_BRANCH

## Rename it locally
git branch -m $OLD_BRANCH $NEW_BRANCH && git push origin :$OLD_BRANCH && git push origin $NEW_BRANCH && git branch -u origin/$NEW_BRANCH $NEW_BRANCH
