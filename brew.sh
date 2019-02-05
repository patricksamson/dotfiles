#!/usr/bin/env bash

source ./utils.sh

###############################################################################
# Install command-line tools using Homebrew                                   #
###############################################################################

# Install Homebrew
if type_exists 'brew'; then
	e_success "Homebrew good to go."
else
	e_error "Git should be installed. It isn't. Aborting."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	exit 1
fi

# Update sources and already-installed formulae.
e_arrow "Updating Homebrew."
brew update
brew upgrade

# Tap sources
brew tap "caskroom/cask"
brew tap "caskroom/fonts"
brew tap "caskroom/versions"
brew tap "caskroom/drivers"
brew tap "buo/cask-upgrade"

# Install tools
brew install wget
brew install zsh
brew install zsh-completions
brew install youtube-dl
brew install mpv
brew install darksky-weather

# Install Network Tools
brew install arp-scan
brew install iperf3
brew install prettyping
brew install speedtest-cli
brew install wakeonlan

# Install Git
brew install git
brew install git-lfs
git lfs install

# Copy config files
rm ~/.gitignore_global
cp ./.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
cp ./.editorconfig ~/.editorconfig

# Install PHP
brew install php
brew install composer
brew install phpunit
brew install php-code-sniffer
brew install php-cs-fixer

# Install Composer utilities
composer global require hirak/prestissimo
composer global require laravel/installer laravel/valet laravel/envoy

export PATH="$PATH:$HOME/.composer/vendor/bin"
valet install
mkdir -p ~/Projects
valet park ~/Projects

# Install Java
# brew install java

# Install databases
brew install mariadb
sudo brew services restart mariadb # Run at boot, not at login
ln -sfv /usr/local/opt/mariadb/*.plist ~/Library/LaunchAgents # Autostart using LaunchAgent

# Install Node.js
brew install node
brew install yarn

# Fonts
brew cask install font-hack
brew cask install font-fira-code

# Media players
brew install mpv

# Remove outdated versions from the cellar.
brew cleanup


###############################################################################
# Configure Zsh                                                               #
###############################################################################

# Switch to Zsh to run the following commands
zsh

# Install Prezto
git clone --recursive https://github.com/Lykegenes/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Create configuration files
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Make Zsh the default shell
chsh -s /bin/zsh
