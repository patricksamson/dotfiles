#!/usr/bin/env bash

# Restore app settings using Mackup
brew install 'mackup'
mackup restore

###############################################################################
# Install applications using brew                                             #
###############################################################################

brew install 1password-cli
#brew install anydesk
brew install appcleaner
brew install autodesk-fusion360
brew install balenaetcher
brew install bettertouchtool
# brew install calibre
# brew install discord
# brew install docker --cask
brew install firefox-developer-edition
# brew install google-chrome
brew install google-cloud-sdk
#brew install gswitch
brew install iina
brew install imageoptim
brew install intel-power-gadget
brew install logitech-options
brew install logitech-unifying
brew install lunar
brew install microsoft-teams
brew install ngrok
# brew install openemu
brew install openscad
brew install orbstack
brew install orion
brew install postman
brew install prusaslicer
brew install rescuetime
brew install safari-technology-preview # From homebrew/versions
brew install setapp
brew install smooze
#brew install spotify
brew install sublime-text
brew install sublime-merge
#brew install steam
brew install tableplus
brew install the-unarchiver
#brew install tower
brew install transmission
# brew install ultimaker-cura
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

mas install 1365531024		# 1Blocker
mas install 1569813296		# 1Password for Safari
mas install 477670270		# 2Do
mas install 1440147259		# AdGuard for Safari
mas install 1601151613	  	# Baking Soda
mas install 425264550		# Blackmagic Speed Test
mas install 1364502317      # Clockify
mas install 1438243180 		# Dark Reader for Safari
mas install 290986013       # Deliveries
mas install 975937182       # Fantastical
mas install 1195676848		# Grocery
mas install 1544743900		# Hush
mas install 1136220934		# Infuse
mas install 409183694		# Keynote
mas install 1295203466		# Microsoft Remote Desktop
mas install 409203825		# Numbers
mas install 409201541		# Pages
mas install 639968404		# Parcel
mas install 1515445551		# Pi-hole Remote
mas install 1459275972 		# Playlisty
mas install 1578144015		# Privacy Redirect
mas install 803453959		# Slack
mas install 1509611686      # Spaces
mas install 1573461917 		# SponsorBlock
mas install 747648890		# Telegram
mas install 425424353		# The Unarchiver
mas install 1284863847		# Unsplash Wallpapers
mas install 1591303229		# Vinegar
mas install 1451685025		# WireGuard
# mas install 497799835		# Xcode


###############################################################################
# Cleanup                                                                     #
###############################################################################

brew cleanup
