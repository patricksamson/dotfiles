#!/usr/bin/env bash

source ./utils.sh

###############################################################################
# Install command-line tools using Homebrew                                   #
###############################################################################

# Install Homebrew
if type_exists 'brew'; then
	e_success "Homebrew good to go."
else
	e_error "Homebrew should be installed. It isn't. Aborting."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	exit 1
fi

# Update sources and already-installed formulae.
e_arrow "Updating Homebrew."
brew update
brew upgrade

# Tap sources
brew tap 'homebrew/cask-fonts'
brew tap 'homebrew/cask-versions'
brew tap 'homebrew/bundle'
brew tap 'nicoverbruggen/homebrew-cask'
brew tap 'stripe/stripe-cli'
brew tap 'buo/cask-upgrade'
brew tap 'cjbassi/gotop'
brew tap 'teamookla/speedtest'

# Install CLI tools
brew install 'coreutils'
brew install 'gotop'
brew install 'wget'
brew install 'zsh'
brew install 'zsh-completions'

# Install Network Tools
brew install 'arp-scan'
brew install 'iperf3'
brew install 'namebench'
brew install 'ngrok'
brew install 'nmap'		# port scanning
brew install 'prettyping'
brew install 'speedtest'
brew install 'wakeonlan'

# DevOps
brew install \
	'ansible' \
	'ansible-lint' \
	'azure-cli'

# Install Git
brew install 'git' \
	'git-lfs' \
	'gpg' \
	'gh' \	# GitHub CLI tool

# Install Misc utilities
brew install 'cointop'
brew tap 'tarkah/tickrs' && brew install 'tickrs'

# Copy config files
rm ~/.gitignore_global
cp ./.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
cp ./.editorconfig ~/.editorconfig
# git config --global init.templatedir '~/.git_template' # Place RescueTime's post-commit hook here
# git config --global core.hooksPath ~/.git_template/hooks

# Install PHP
brew install 'php' \
	'composer' \
	'phpunit' \
	'php-code-sniffer' \
	'php-cs-fixer'

# Install Composer utilities
composer global require laravel/installer laravel/envoy

export PATH="$PATH:$HOME/.composer/vendor/bin"
brew install 'herd'
mkdir -p ~/Projects
herd park ~/Projects

# Install databases
brew install 'dbngin'
#brew install mariadb
#sudo brew services restart mariadb # Run at boot, not at login
#ln -sfv /usr/local/opt/mariadb/*.plist ~/Library/LaunchAgents # Autostart using LaunchAgent

# Install Node.js
#brew install node
#brew install yarn

# Fonts
brew install 'font-hack-nerd-font' # Hack Font patched with multiple icons and Powerline
brew install 'font-fira-code'
brew install 'font-iosevka' # View all variants : `brew search font-iosevka`
brew install 'font-iosevka-nerd-font' # Iosevka patched for Powerline

# Media players
brew install 'mpv'
brew install 'yt-dlp' # Better youtube-dl

# Remove outdated versions from the cellar.
brew cleanup


###############################################################################
# Configure Zsh                                                               #
###############################################################################

# Switch to Zsh to run the following commands
zsh

# Install Prezto
git clone --recursive https://github.com/patricksamson/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Create configuration files
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
