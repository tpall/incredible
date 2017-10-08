#!/bin/sh

USER=virt64551
HOST=credibleinterval.ee
DIR=domeenid/www.credibleinterval.ee/htdocs/   # might sometimes be empty!

hugo && rsync -avz --delete public/ ${USER}@${HOST}:~/${DIR}

exit 0