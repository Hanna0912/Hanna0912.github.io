#!/bin/bash
set -e
set -x

./generate.sh
rm -rf .deploy_git/
git clone https://github.com/Hanna0912/Hanna0912.github.io.git -b main .deploy_git
cp -r _site/* .deploy_git/
cd .deploy_git/
git add -A
git commit -m "Update $(date)"
git push
rm -rf .deploy_git/