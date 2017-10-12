#!/bin/sh

echo "whoami"
whoami

echo "ls ssh"
ls -l ~/.ssh
ls -l /tmp/

echo "Starting rsync"

rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/public $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH
