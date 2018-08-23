#!/bin/bash

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH=$(dirname "$0")

BRANCH=$1
SHA_REF=$2

if [ -z "${BRANCH}" ]; then
  exit;
fi
if [ -z "${SHA_REF}" ]; then
  exit;
fi

${CURRENT_SCRIPT_FULL_PATH}/create_local_branch_from_sha.sh ${BRANCH} ${SHA_REF} && ${CURRENT_SCRIPT_FULL_PATH}/push_local_branch.sh `${CURRENT_SCRIPT_FULL_PATH}/current_branch.sh`
