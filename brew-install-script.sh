#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install daily work softwares
brew cask install whatsapp
brew cask install dropbox
brew cask install iterm2
brew cask install qq
brew cask install spectacle
brew cask install sublime-text
brew cask install wechat
brew cask install tweetbot
brew cask install nally
brew cask install xscope
brew cask install monodraw
brew cask install dash
brew cask install 1password
