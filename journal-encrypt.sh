#!/bin/bash
# To encrypt the journal folder & remove original

SOURCE=/mnt/c/Users/josh/Documents/dagbok/
ZIPNAME=journal.7z
ENCRYPT=journal

cd $SOURCE && 7z a -p -mx=9 -mhe -t7z $ZIPNAME $ENCRYPT && rm -r $ENCRYPT

