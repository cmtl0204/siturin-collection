#!/bin/bash

if [[ -n $(git status --porcelain) ]]; then
  git add .
  git commit -m "Auto commit $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
fi
