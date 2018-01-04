#!/bin/sh
git add .
git commit -m "update"
git push
cd /home/zhangjikai/文档/source_new/git-new/github/notes
git checkout master
git add -A .
git commit -m "update"
git pull
git checkout gh-pages
git pull
cd /home/zhangjikai/GitBook/Library/zhangjk/notes
gitbook build
yes | cp -rf /home/zhangjikai/GitBook/Library/zhangjk/notes/_book/* /home/zhangjikai/文档/source_new/git-new/github/notes/
cd /home/zhangjikai/文档/source_new/git-new/github/notes
git add -A .
git commit -m "update"
git push
git checkout master
rsync -av --exclude='_book' --exclude='.git' --exclude='node_modules' --exclude='README.md' /home/zhangjikai/GitBook/Library/zhangjk/notes/* .
cp SUMMARY.md README.md
git add -A .
git commit -m "update"
git push
