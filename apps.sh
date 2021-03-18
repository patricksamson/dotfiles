#!/usr/bin/env bash

###############################################################################
# Install applications using brew cask                                        #
###############################################################################

# brew cask install alfred
brew cask install anydesk
brew cask install appcleaner
brew cask install balenaetcher
# brew cask install beardedspice
brew cask install bettertouchtool
brew cask install cakebrew
brew cask install calibre
brew cask install copay
brew cask install docker-edge
brew cask install firefox-developer-edition
# brew cask install google-chrome
brew cask install google-cloud-sdk
brew cask install gswitch
# brew cask install mounty # Mount NTFS drives
brew cask install iina
brew cask install imageoptim
# brew cask install insomnia
brew cask install intel-power-gadget
brew cask install microsoft-teams
# brew cask install notion
# brew cask install openemu
brew cask install postman
brew cask install quickbooks-online
brew cask install rescuetime
brew cask install safari-technology-preview # From caskroom/versions
# brew cask install smooze
brew cask install sublime-text-dev # From caskroom/versions
# brew cask install steam
brew cask install tableplus
# brew cask install teamviewer
brew cask install the-unarchiver
brew cask install tower
brew cask install transmission
brew cask install ultimaker-cura
brew cask install visual-studio-code
# brew cask install vmware-fusion
# brew cask install wireshark
# brew cask install xld # X Lossless Decoder, converts FLAC to ALAC for iTunes playback
brew cask install zoom


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
mas install 425264550		# Blackmagic Speed Test
mas install 1236045954		# Canary Mail
mas install 1364502317      # Clockify
mas install 290986013       # Deliveries
mas install 975937182       # Fantastical
mas install 1544743900      # Hush
mas install 1039633667		# Irvue
mas install 1475897096      # Jira
mas install 409183694		# Keynote
mas install 926036361       # LastPass
mas install 1295203466		# Microsoft Remote Desktop
mas install 409203825		# Numbers
mas install 409201541		# Pages
mas install 639968404		# Parcel
mas install 1518036000      # Sequel Ace
mas install 803453959		# Slack
mas install 1509611686      # Spaces
mas install 747648890		# Telegram
mas install 425424353		# The Unarchiver
mas install 1284863847		# Unsplash Wallpapers
# mas install 461369673		# Vox
mas install 1000397973		# Wallcat
# mas install 497799835		# Xcode


###############################################################################
# Cleanup                                                                     #
###############################################################################

brew cleanup
brew cask cleanup
