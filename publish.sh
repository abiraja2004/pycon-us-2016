#!/bin/bash

jupyter-nbconvert --to slides slides.ipynb --reveal-prefix=reveal.js
mv slides.slides.html  index.html
cp index.html /tmp/
git add -A .
git commit -m "Update"
git checkout gh-pages
mv /tmp/index.html .
git add -A .
git commit -m "new version"
git push origin master gh-pages
git checkout master
