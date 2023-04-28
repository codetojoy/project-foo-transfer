#!/bin/bash

WHO_AM_I=mozart

FILE=$1 

TODAY=`date +%Y.%m.%d-%H.%M.%S`
TARGET_DIR=./$WHO_AM_I/$TODAY
TARGET_FILE=./$TARGET_DIR/$FILE

mkdir -p $TARGET_DIR
touch $TARGET_FILE
vim $TARGET_FILE

git add $TARGET_FILE

git status -uno

