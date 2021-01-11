#!/bin/bash
# To backup Documents folder to the server

SOURCE=/mnt/c/Users/josh/Documents/
DEST=/mnt/server/josh/documentsBackup/

sudo rsync -azvP --delete $SOURCE $DEST
