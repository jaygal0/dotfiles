#!/bin/bash
# To encrypt the ideas folder & remove original

SOURCE=/mnt/c/Users/josh/Documents/dagbok/
ZIPNAME=ideas.7z
ENCRYPT=ideas

cd $SOURCE && 7z a -p -mx=9 -mhe -t7z $ZIPNAME $ENCRYPT && rm -r $ENCRYPT

