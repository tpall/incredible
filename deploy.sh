#!/bin/sh

echo "whoami"
whoami

echo "ls ssh"
ls -l ~/.ssh

echo "run ssh host"
ssh virt64551@credibleinterval.ee

echo "whoami"
whoami

echo "Starting rsync"

rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/public virt64551@credibleinterval.ee:~/domeenid/www.credibleinterval.ee/htdocs
