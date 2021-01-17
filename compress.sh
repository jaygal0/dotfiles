#!/bin/bash
# To compress and move the photos

SOURCE=/mnt/c/Users/josh/Documents/images/*jpg
DEST=/mnt/c/Users/josh/Documents/dagbok/img/

jpegoptim -m80 $SOURCE && mv $SOURCE $DEST
