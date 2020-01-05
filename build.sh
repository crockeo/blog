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
