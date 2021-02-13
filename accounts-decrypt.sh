#!/bin/bash
# To decrypt the accounts folder

SOURCE=/mnt/c/Users/josh/Documents/
ZIPNAME=accounts.7z
DIR=accounts

cd $SOURCE && 7za e $ZIPNAME && mv *ods $DIR && rm $ZIPNAME
