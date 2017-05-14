#!/bin/bash

if [ ! -e "$1" ]
then
    echo "Please specify a dir or an file to compress and encrypt."
    exit 1
fi

if [ ! -d "$2" ]
then
    echo "Please specify a target dir."
    exit 1
fi

FILE_TO_ENCRYPT=$1
TARGET_DIR=$2
ENCRYPTED_FILE_NAME=$(basename $FILE_TO_ENCRYPT).tar.gz.gpg
RECIPIENT=***REMOVED***

tar -c $FILE_TO_ENCRYPT | gzip | gpg -o $TARGET_DIR/$ENCRYPTED_FILE_NAME --recipient $RECIPIENT -e -c
