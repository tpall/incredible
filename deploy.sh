#!/bin/sh

echo "test ssh"
ssh -vT $DEPLOY_USER@$DEPLOY_HOST

echo "Starting rsync"

rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/public/ $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH
