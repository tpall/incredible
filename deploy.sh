#!/bin/sh

echo "Starting rsync"
rsync -r -e --delete-after --quiet $TRAVIS_BUILD_DIR/public virt64551@credibleinterval.ee:~/domeenid/www.credibleinterval.ee/htdocs
