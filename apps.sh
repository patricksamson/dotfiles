#!/usr/bin/env bash

###############################################################################
# Install applications using brew                                             #
###############################################################################

# brew install alfred
brew install anydesk
brew install appcleaner
brew install autodesk-fusion360
# brew install balenaetcher
# brew install beardedspice
brew install bettertouchtool
# brew install cakebrew
# brew install calibre
# brew install discord
brew install docker-edge
brew install firefox-developer-edition
# brew install google-chrome
brew install google-cloud-sdk
brew install gswitch
# brew install mounty # Mount NTFS drives
brew install iina
brew install imageoptim
# brew install insomnia
brew install intel-power-gadget
brew install microsoft-teams
brew install ngrok
# brew install openemu
brew install openscad
brew install postman
brew install rescuetime
brew install safari-technology-preview # From homebrew/versions
brew install setapp
brew install smooze
brew install spotify
brew install sublime-text
brew install sublime-merge
# brew install steam
brew install tableplus
# brew install teamviewer
brew install the-unarchiver
brew install tower
brew install transmission
brew install ultimaker-cura
brew install visual-studio-code
# brew install vmware-fusion
# brew install wireshark
# brew install xld # X Lossless Decoder, converts FLAC to ALAC for iTunes playback
brew install zoom


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
mas install 409183694		# Keynote
mas install 926036361       # LastPass
mas install 1295203466		# Microsoft Remote Desktop
mas install 409203825		# Numbers
mas install 409201541		# Pages
mas install 639968404		# Parcel
mas install 1515445551		# Pi-hole Remote
mas install 1518036000      # Sequel Ace
mas install 803453959		# Slack
mas install 1509611686      # Spaces
mas install 747648890		# Telegram
mas install 425424353		# The Unarchiver
mas install 1284863847		# Unsplash Wallpapers
# mas install 461369673		# Vox
# mas install 1000397973	# Wallcat
# mas install 497799835		# Xcode


###############################################################################
# Cleanup                                                                     #
###############################################################################

brew cleanup
