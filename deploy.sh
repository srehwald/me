#!/bin/sh

mkdir -p dist/css
cp index.html dist/ && cp -r css/ dist/css
rsync --dry-run -az --force --delete --progress -e "ssh -p22" ./dist/ $DEPLOY