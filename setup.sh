# Format
# Shell script to run after formatting a machine or getting a new one.

# Define some colors for funzies.
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
reset=`tput sgr0`
echo "${yellow}★★★ ${green} Let's install some software! ${yellow}★★★${reset}"
sleep 2

# Prompt for SUDO before starting the waterfall :)
sudo -l

# Setup OhMyZSH
curl -L http://install.ohmyz.sh | sh
echo -e "${green}✓ Epic! OhMyZSH installed.${reset}"
sleep 2

# Get Homebrew and Node/NPM installed
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install node
brew install nvm
brew install mongodb
brew install git
brew install git-extras
brew install yarn

echo -e "${green}✓ Homebrew, Node, and NVM installed.${reset}"
sleep 2

# Install Cask to automate application installs
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
echo -e "${green}✓ Cask installed.${reset}"
sleep 2

brew cask install google-chrome

echo -e "${green}✓ Browsers installed.${reset}"
sleep 2

# Install applications via Cask
# Remember some apps are better left managed on the app store
brew cask install 1password
brew cask install airtable
brew cask install dropbox
brew cask install iterm2
brew cask install numi
brew cask install sketch
brew cask install slack
brew cask install spotify
brew cask install zoomus

echo -e "${green}✓ Awesome OSX applications installed.${reset}"
sleep 2

# Source symlinks *after* installing dependencies that may error out.
source symlinks

echo -e "${green}✓Symlinks copied.${reset}"
sleep 2

# Install Meteor
curl https://install.meteor.com/ | sh

echo -e "${green}✓ Meteor installed.${reset}"
sleep 2

# Install NPM packages.
npm install -g eslint
npm install -g gatsby
npm install -g grunt
npm install -g grunt-cli
npm install -g gulp

echo -e "${green}✓NPM packages installed.${reset}"
sleep 2

# Complete!
echo -e "${yellow}★★★ ${green}Done! A whole mornings first from a single script. Nice job :) ! ${yellow}★★★${reset}"
