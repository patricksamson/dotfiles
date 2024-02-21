#!/bin/sh

echo "Setting up your Mac..."

# Switch to Zsh to run the following commands
zsh

# Install Prezto
git clone --recursive https://github.com/patricksamson/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Create configuration files
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
#brew tap homebrew/bundle
#brew bundle --file ./Brewfile

# Set default MySQL root password and auth type
# mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"

# Create a projects directories
mkdir $HOME/Projects

# Symlink the Mackup config file to the home directory
ln -s ./.mackup.cfg $HOME/.mackup.cfg
ln -s ./.mackup $HOME/.mackup

# Set macOS preferences - we will run this last because this will reload the shell
source ./macos.sh
