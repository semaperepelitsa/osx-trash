#!/bin/sh

rsync ${DRYRUN} -azv rdoc/ \
    rubyforge.org:/var/www/gforge-projects/osx-trash/api/
