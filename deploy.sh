#!/bin/bash
git checkout master
git branch -D gh-pages 
cp -R htck/dist/ /tmp/
git checkout --orphan gh-pages
rm -rf *
rm .gitignore
mv /tmp/dist/* .
git add content/ images/ index.html  scripts/ styles/ views/
git commit -am "Deploying to gh-pages"
git push --delete origin gh-pages
git push --set-upstream
git checkout master