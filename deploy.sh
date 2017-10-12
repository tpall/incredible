#!/bin/sh

echo "ssh-add sucess?"
echo $?
echo "run ls"
ls
echo "list keyss"
ls -l ~/.ssh
# echo "Starting rsync"
# rsync -r -e --delete-after --quiet $TRAVIS_BUILD_DIR/public virt64551@credibleinterval.ee:~/domeenid/www.credibleinterval.ee/htdocs
# exit 0

