#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# clean
rm -rf public
# build
npm install 
# migrate
bundle exec rake db:migrate
# postbuild
# cp -a build/. public/
# rails server