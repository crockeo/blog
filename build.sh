#!/usr/bin/env bash

# Cloning the repo if it does not exist
if [ ! -d "crockeo.github.io" ];
then
  git clone git@github.com:crockeo/crockeo.github.io.git
fi

# Building the static files
hugo

# Placing them into the GH pages repo
rm -r crockeo.github.io/*
mv public/* crockeo.github.io/

# Pushing a blog post
cd crockeo.github.io
git add .
git commit -m "Build at $(date +"%Y-%m-%d %H:%M:%S")"
git push
