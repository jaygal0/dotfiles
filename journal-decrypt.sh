#!/bin/bash
# To decrypt the journal folder

SOURCE=/mnt/c/Users/josh/Documents/dagbok/
ZIPNAME=journal.7z
DIR=journal

cd $SOURCE && 7za e $ZIPNAME && mv *md $DIR && rm $ZIPNAME
