#!/bin/bash

set -e

git pull public beta
flatpak remove --assumeyes com.visualstudio.code.insiders
./build.sh
./install.sh

