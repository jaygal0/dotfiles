#!/bin/bash
# To copy photos and videos to the server

SOURCEPHOTOS=/mnt/c/Users/josh/Documents/images/*jpg
SOURCEVIDEOS=/mnt/c/Users/josh/Documents/images/*mp4
SERVERPHOTOS=/mnt/server/josh/media/gallery/photos/
SERVERVIDEOS=/mnt/server/josh/media/gallery/videos/

sudo cp -v $SOURCEPHOTOS $SERVERPHOTOS && sudo cp -v $SOURCEVIDEOS $SERVERVIDEOS
