#!/bin/bash

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH==$(dirname "$0")

BRANCH=$1

if [ -z "${BRANCH}" ]; then
  exit;
fi

${CURRENT_SCRIPT_FULL_PATH}/create_local_branch.sh ${BRANCH} && ${CURRENT_SCRIPT_FULL_PATH}/push_local_branch.sh `${CURRENT_SCRIPT_FULL_PATH}/current_branch.sh`

