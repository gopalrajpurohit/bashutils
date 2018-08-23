#!/bin/bash

CURRENT_SCRIPT_NAME=$0
CURRENT_SCRIPT_FULL_PATH=$(dirname "$0")

git push origin `${CURRENT_SCRIPT_FULL_PATH}/current_branch.sh`
