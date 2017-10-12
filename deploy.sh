#!/bin/sh

echo "Starting rsync"
rsync -qr --delete-after $TRAVIS_BUILD_DIR/public virt64551@credibleinterval.ee:~/domeenid/www.credibleinterval.ee/htdocs
