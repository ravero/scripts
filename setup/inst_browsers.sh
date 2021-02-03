#!/bin/bash

brew install --cask firefox
brew install --cask microsoft-edge
brew install --cask brave-browser
brew install --cask choosy

# Import Choosy config automatically
source "${PWD}/../scripts/choosy_import"