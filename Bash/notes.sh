#!/bin/sh
cd /home/zhangjikai/GitBook/Library/zhangjk/notes 
gitbook build
cd /home/zhangjikai/文档/source_new/git/github/notes
git checkout gh-pages
yes | cp -rf /home/zhangjikai/GitBook/Library/zhangjk/notes/_book/* /home/zhangjikai/文档/source_new/git/github/notes/
git add -A .
git commit -m "update"
git push
git checkout master