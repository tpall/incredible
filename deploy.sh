#!/bin/sh

ls -l "~/.ssh"

echo "Starting rsync"

rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/public virt64551@credibleinterval.ee:~/domeenid/www.credibleinterval.ee/htdocs
