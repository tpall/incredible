#!/bin/sh

echo "Starting rsync"
ls
ls $TRAVIS_BUILD_DIR/public
rsync -qr --delete-after --quiet $TRAVIS_BUILD_DIR/public virt64551@credibleinterval.ee:~/domeenid/www.credibleinterval.ee/htdocs
