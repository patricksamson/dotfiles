#!/usr/bin/env bash

###############################################################################
# Install applications using brew cask                                        #
###############################################################################

brew cask install anydesk
brew cask install appcleaner
brew cask install beardedspice
brew cask install bettertouchtool
brew cask install calibre
# brew cask install cakebrew
brew cask install google-cloud-sdk
# brew cask install mounty # Mount NTFS drives
brew cask install imageoptim
brew cask install iina
# brew cask install insomnia
brew cask install intel-power-gadget
brew cask install openemu
brew cask install rescuetime
brew cask install safari-technology-preview # From caskroom/versions
brew cask install sequel-pro-nightly
brew cask install smooze
brew cask install sublime-text-dev # From caskroom/versions
# brew cask install steam
brew cask install steveschow-gfxcardstatus # gfxcardstatus is not maintained anymore
# brew cask install teamviewer
brew cask install the-unarchiver
brew cask install tower
brew cask install vmware-fusion
# brew cask install xld # X Lossless Decoder

# Install various drivers. Uncomment as needed
# brew cask install displaylink
# brew cask install logitech-control-center
# brew cask install nvidia-web-driver
# brew cask install tomtom-sports-connect


###############################################################################
# Install applications from the mac app store                                 #
###############################################################################

# https://github.com/mas-cli/mas
brew install mas

# Print the Apple account currently in use, or log into one?
mas account

mas install 1333542190		# 1Password 7
mas install 477670270		# 2Do
mas install 1440147259		# AdGuard for Safari
mas install 918858936		# Airmail 3
# mas install 732710998		# Enpass
# mas install 1039633667	# Irvue
# mas install 402989379		# iStudiez Pro
# mas install 1335413823	# Ka-Block!
mas install 409183694		# Keynote
mas install 1295203466		# Microsoft Remote Desktop
mas install 409203825		# Numbers
mas install 409201541		# Pages
mas install 803453959		# Slack
mas install 747648890		# Telegram
mas install 1284863847		# Unsplash Wallpapers
mas install 461369673		# Vox
mas install 1000397973		# Wallcat
# mas install 497799835		# Xcode


###############################################################################
# Cleanup                                                                     #
###############################################################################

brew cleanup
brew cask cleanup
