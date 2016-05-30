#!/bin/bash

set -o errexit -o nounset

if [ "$TRAVIS_BRANCH" != "master" ]
then
  echo "This commit was made against the $TRAVIS_BRANCH and not the master! No deploy!"
  exit 0
fi

rev=$(git rev-parse --short HEAD)

git config --global user.name "Niranjan Rajendran"
git config --global user.email "niranjan94@yahoo.com"

git clone "https://$GH_TOKEN@github.com/niranjan94/spa-deploy-demo.git" gh-pages
cd gh-pages
git checkout gh-pages
git rm -rf ./* && rm -rf ./*
yes | cp -rf  ../dist/* ./
git add .
git commit -m "[${rev}] Updated"
git push -q origin gh-pages