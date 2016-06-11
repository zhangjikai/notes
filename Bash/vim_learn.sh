#!/bin/sh
cd /home/zhangjikai/GitBook/Library/zhangjk/vim 
gitbook build
cd /home/zhangjikai/文档/source_new/git/github/vim_learn
git checkout gh-pages
yes | cp -rf /home/zhangjikai/GitBook/Library/zhangjk/vim/_book/* /home/zhangjikai/文档/source_new/git/github/vim_learn/
git add -A .
git commit -m "update"
git push