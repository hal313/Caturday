#!/bin/bash

## Publishes the extension to the Chrome Web Store if on the master branch
if [[ 'master' == $TRAVIS_BRANCH ]]; then
  echo "Publishing on branch $TRAVIS_BRANCH"
  grunt release
  ls package/
  grunt publish --clientId=$CLIENT_ID --clientSecret=$CLIENT_SECRET --refreshToken=$REFRESH_TOKEN
else
  echo "Skipping deploy on branch $TRAVIS_BRANCH"
fi