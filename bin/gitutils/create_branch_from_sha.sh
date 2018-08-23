#!/bin/bash

BRANCH=$1
SHA_REF=$2

if [ -z "${BRANCH}" ]; then
  exit;
fi
if [ -z "${SHA_REF}" ]; then
  exit;
fi

create_local_branch_from_sha.sh ${BRANCH} ${SHA_REF} && push_local_branch.sh `current_branch.sh`
