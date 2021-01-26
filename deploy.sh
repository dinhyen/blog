#!/bin/sh
# Usage ./deploy.sh ["Commit message"]

# git submodule add --force -b master git@github.com:dinhyen/dinhyen.github.io.git public

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Clean up deployment directory from past deployments
cd public
git reset HEAD --hard
git clean -fd


# Build the project.
cd ../
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

# Add changes to git.
git add -A .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
  msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master