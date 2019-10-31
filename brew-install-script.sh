#!/bin/sh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing cask"
brew tap homebrew/cask-cask

# Install daily work softwares
brew cask install 1password
brew cask install alfred
brew cask install dash
brew cask install dropbox
brew cask install iterm2
brew cask install monodraw
brew cask install nally
brew cask install qq
brew cask install sogouinput
brew cask install spectacle
brew cask install sublime-text
brew cask install tweetbot
brew cask install wechat
brew cask install whatsapp
brew cask install xscope

# Install zsh plugins
brew install zsh-completions
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# Install powerlevel9k for Oh-My-ZSH
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
