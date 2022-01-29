#!/bin/bash
set -x
set -e

if [ ! -d "_site" ]; then
    rm -rf _site/
fi
cp -r resources/ _site
python2 jemdoc.py -o _site/index.html -c custom.conf index.jemdoc