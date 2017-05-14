#!/bin/bash

ENCRYPTED_FILE_PATH=$1
if [ ! -f "$1" ]
then
    echo "Please specify an compressed encrypted file."
    exit 1
fi

echo "Decrypt and uncompress $ENCRYPTED_FILE_PATH"
gpg -d $ENCRYPTED_FILE_PATH | gunzip | tar -x
