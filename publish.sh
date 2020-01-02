#!/usr/bin/env bash

export GPG_TTY=$(tty)

rm -rf docs/*
git restore docs/CNAME
hugo
mv public/* docs/
git status -s
git add .
git commit -S
git push origin master
