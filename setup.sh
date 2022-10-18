#!/usr/bin/env bash
# Setup script for setting up a new macos machine
echo "Starting setup"

# install xcode CLI
xcode-select --install

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

sudo softwareupdate --install-rosetta
