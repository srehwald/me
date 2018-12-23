#!/bin/sh

mkdir -p dist/css
cp index.html dist/ && cp .htaccess dist/ && cp -r css/ dist/
rsync -az --force --delete --progress -e "ssh -p22" ./dist/ $DEPLOY