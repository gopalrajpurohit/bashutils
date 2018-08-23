#!/bin/bash

BRANCH=$1

if [ -z "${BRANCH}" ]; then
  exit;
fi

create_local_branch.sh ${BRANCH} && push_local_branch.sh `current_branch.sh`

