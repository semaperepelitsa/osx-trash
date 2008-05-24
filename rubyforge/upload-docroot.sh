#!/bin/sh

rsync ${DRYRUN} -azv rubyforge/docroot/ \
    rubyforge.org:/var/www/gforge-projects/osx-trash/
