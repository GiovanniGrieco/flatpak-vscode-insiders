#!/usr/bin/env bash

flatpak-builder --user --install --force-clean ./build/ com.visualstudio.code.insiders.yaml
