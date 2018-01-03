#!/usr/bin/env bash

source ./utils.sh

# Install command-line tools using Homebrew.

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
brew tap "homebrew/php"
brew tap "caskroom/cask"
brew tap "caskroom/fonts"
brew tap "caskroom/versions"
brew tap "caskroom/drivers"
brew tap "buo/cask-upgrade"

# Install tools
brew install wget
brew install zsh
brew install zsh-completions
brew install speedtest-cli
# brew install youtube-dl

# Install binaries
brew install git
brew install git-lfs
git lfs install

# Install PHP
brew install php72
brew install composer
brew install php-cs-fixer
brew install php-code-sniffer

# Install Composer utilities
composer global require hirak/prestissimo
composer global require laravel/installer laravel/valet laravel/envoy
valet install
mkdir -p ~/Projects
valet park ~/Projects

# Install Java
# brew install java

# Install databases
brew install mariadb

# Install Node.js
brew install node
brew install yarn

# Fonts
brew cask install font-hack
brew cask install font-fira-code

# Remove outdated versions from the cellar.
brew cleanup



# Configure Zsh

#switch to Zsh
zsh

# install Prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Create configuration files
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Make Zsh the default shell
chsh -s /bin/zsh
