#!/bin/bash

GOOD_STATUS_COUNT=`curl -silent -o - https://status.github.com/api/status.json | grep '"status":"good"' | wc -l`

if [ $GOOD_STATUS_COUNT == "1" ]
  then
    exit 0
fi

echo "Github not ok"
exit 1
