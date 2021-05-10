#!/bin/bash
# To decrypt the ideas folder

SOURCE=/mnt/c/Users/josh/Documents/dagbok/
ZIPNAME=ideas.7z
DIR=ideas

cd $SOURCE && 7za e $ZIPNAME && mv *md $DIR && rm $ZIPNAME
