#!/bin/bash
# To encrypt accounts folder

SOURCE=/mnt/c/Users/josh/Documents/
ZIPNAME=accounts.7z
ENCRYPT=accounts

cd $SOURCE && 7z a -p -mx=9 -mhe -t7z $ZIPNAME $ENCRYPT && rm -r $ENCRYPT

