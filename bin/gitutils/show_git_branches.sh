#!/bin/bash

CURRENT_BRANCH=`git branch | grep '^*' | sed 's/^* //g'`

LIST_BRANCHES=`git branch | grep '^  '`

ALL_BRANCH=`git branch | sed 's/^* //g'`

NUM_BRANCHES=`git branch | wc -l`

if [ "x$NUM_BRANCHES" = "x0" ]; then
  exit;
fi

function print_usage() {
  echo ""
  echo "Uage : `basename ${0}` n"
  echo "	n : branch number in the list below"
  echo ""
  git branch  | sed 's/.* //g' | nl
  echo ""
}

if [ "x" = "x$1" ]; then
#  BRANCH_NO=`echo "${RANDOM} % ${NUM_BRANCHES} + 1 " | bc`
#  echo "Selecting Random branch, else select branch number from following list";
  print_usage;
  exit -1;
else
  BRANCH_NO=$1;
fi


ITER=0;
for BRANCH in $ALL_BRANCH
do
  ITER=$((ITER + 1))	
  if [ $ITER -eq $BRANCH_NO ]; then
    git checkout "${BRANCH}"
  fi
done

