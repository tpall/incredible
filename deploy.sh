#!/bin/sh

echo "whoami"
whoami

echo "ls ssh"
ls -l ~/.ssh

echo "run ssh host"
ssh -i ~/.ssh/deploy_rsa
ssh $DEPLOY_USER@$DEPLOY_HOST

echo "whoami"
whoami

echo "Starting rsync"

rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/public $DEPLOY_USER@$DEPLOY_HOST:$DEPLOY_PATH
