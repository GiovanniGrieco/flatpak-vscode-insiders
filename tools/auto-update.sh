#!/bin/bash

set -e

# Download new updates from upstream
git checkout beta
git pull public beta
git push

# Rebase wayland_support branch
git checkout wayland_support
git rebase beta
git push --force

./tools/uninstall.sh
./tools/build.sh
./tools/install.sh
