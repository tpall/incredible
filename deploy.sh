#!/bin/sh

echo "whoami"
whoami

echo "ls ssh"
ls -l ~/.ssh

echo "run ssh host test"
ssh -i /tmp/deploy_rsa
ssh $DEPLOY_USER@$DEPLOY_HOST

echo "Starting rsync"

rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/public $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH
