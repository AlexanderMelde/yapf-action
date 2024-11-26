#!/bin/sh
set -e
echo "Checking formatting for $GITHUB_REPOSITORY"
cd "$GITHUB_WORKSPACE"
sh -c "yapf --diff --recursive . $*"
