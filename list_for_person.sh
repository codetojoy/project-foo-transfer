#!/bin/bash

set -e 

if [ -n "$1" ]; then
TARGET_PERSON=$1 
else
  echo "usage: teammate"
  exit -1
fi

git pull 

cat `find $TARGET_PERSON -type f -exec stat -f '%a %N' {} \; | sort -nr | awk 'NR==1,NR==3 {print $2}'`
