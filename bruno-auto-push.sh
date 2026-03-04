#!/bin/bash

git add .

if [ -n "$(git status --porcelain)" ]; then
    git add .
    git commit -m "auto backup $(date '+%Y-%m-%d %H:%M:%S')"
    git push
fi
