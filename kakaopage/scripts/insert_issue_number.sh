#!/bin/bash

COMMIT_MSG_FILE=$1
ISSUE_NUMBER_TAG='ISSUE-NUMBER'

branch_name=`git rev-parse --abbrev-ref HEAD`
issue_number=`echo ${branch_name} | sed -n 's/^feature\/\(.*-[0-9]*\)-.*/\1/p'`

if [ -n "$issue_number" ]; then
  sed -i ".bak" "s/${ISSUE_NUMBER_TAG}/${issue_number}/g" ${COMMIT_MSG_FILE}
fi
