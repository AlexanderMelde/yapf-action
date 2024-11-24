#!/bin/sh
set -e
echo "Checking formatting for $GITHUB_REPOSITORY"
cd "$GITHUB_WORKSPACE"
echo "Now running in:"
pwd
ls
sh -c "yapf --diff --recursive . $*"
