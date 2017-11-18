#!/usr/bin/env bash

# Install applications using brew cask
brew cask install appcleaner
brew cask install beardespice
brew cask install bettertouchtool
brew cask install calibre
brew cask install cakebrew
brew cask install imageoptim
brew cask install iina
brew cask install insomnia
brew cask install keeweb
# brew cask install mpv
brew cask install onyx
brew cask install otp-auth
brew cask install rescuetime
brew cask install safari-technology-preview # From caskroom/versions
brew cask install sequel-pro
brew cask install sublime-text-dev # From caskroom/versions
brew cask install steam
brew cask install steveschow-gfxcardstatus # gfxcardstatus is not maintained anymore
brew cask install teamviewer
brew cask install the-unarchiver
brew cask install tower

# Install various drivers. Uncomment as needed
# brew cask install displaylink
# brew cask install logitech-control-center
# brew cask install nvidia-web-driver
# brew cask install tomtom-sports-connect

# Install applications from the mac app store
# https://github.com/mas-cli/mas
brew install mas

# Print the Apple account currently in use, or log into one?
mas account

mas install 477670270	# 2Do
mas install 1055307502	# 2STP Companion
mas install 918858936	# Airmail 3
mas install 1091189122	# Bear
mas install 1039633667	# Irvue
mas install 402989379	# iStudiez Pro
mas install 409183694	# Keynote
mas install 1039598025	# Lockdown
mas install 715768417	# Microsoft Remote Desktop
mas install 409203825	# Numbers
mas install 409201541	# Pages
mas install 803453959	# Slack
mas install 1278508951 	# Trello
mas install 1284863847	# Unsplash Wallpapers
mas install 461369673	# Vox
mas install 1000397973	# Wallcat
mas install 410628904	# Wunderlist
# mas install 497799835	# Xcode

# Cleanup
brew cleanup
brew cask cleanup
