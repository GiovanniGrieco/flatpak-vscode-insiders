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

flatpak remove --assumeyes com.visualstudio.code.insiders
./build.sh
./install.sh
