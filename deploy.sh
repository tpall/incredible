#!/bin/sh

# set -e
# 
# [ -z "${GITHUB_PAT}" ] && exit 0
# [ "${TRAVIS_BRANCH}" != "master" ] && exit 0
# 
# git config --global user.email "tapa741@gmail.com"
# git config --global user.name "Taavi Päll"

echo "Starting rsync"
rsync -e "ssh -o StrictHostKeyChecking=no" -r --timeout=600 --delete-after --quiet $TRAVIS_BUILD_DIR/public virt64551@credibleinterval.ee:~/domeenid/www.credibleinterval.ee/htdocs

exit 0
