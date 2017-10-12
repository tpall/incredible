#!/bin/sh

echo "Starting rsync"

rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/public/ $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH
