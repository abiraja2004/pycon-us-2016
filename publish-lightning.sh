#!/bin/bash

jupyter-nbconvert --to slides lightning-talk-slides.ipynb --reveal-prefix=reveal.js
mv slides.slides.html  lightning.html
cp lightning.html /tmp/
cp -r images /tmp/
git add -A .
git commit -m "Update"
git checkout gh-pages
mv /tmp/lightning.html lightning.html
cp  /tmp/images/* images/
git add -A .
git commit -m "new version"
git push origin master gh-pages
git checkout master
