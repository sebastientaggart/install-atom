#!/bin/bash
begin=$(date +"%s")

# Atom editor is awesome, and having the correct plugins makes a big difference
# This script makes it simple to add all the recommended plugins for Bluewater

# Utility Variables
OK=$(tput setaf 2)'[OK]'$(tput sgr0) # pretty green [OK]
FAIL=$(tput setaf 1)'[FAIL]'$(tput sgr0) # ugly red [FAIL]
INFO='' # TODO: light green [INFO]

# TODO: it's apparently possible to install Atom via HomeBrew
#   brew install atom
# or maybe
# brew install caskroom/cask/brew-cask -> brew tap caskroom/cask
# brew cask install -> brew cask install atom
# This needs to be tested, and only useful on brand new installs...

# Integrated terminal for faster in-place commands
# https://atom.io/packages/platformio-ide-terminal
apm install platformio-ide-terminal

# Pretty File Icons
# https://atom.io/packages/file-icons
apm install file-icons

# Quickly ask Stack Overflow without leaving the editor
# https://atom.io/packages/ask-stack
apm install ask-stack

# Git Plus - Lots of integrated commands, plus toolbar
# https://atom.io/packages/git-plus + https://atom.io/packages/git-plus-toolbar
apm install git-plus
apm install git-plus-toolbar

# Git Time Machine - easy way to visual and search changes over time
# https://atom.io/packages/git-time-machine
apm install git-time-machine

# Project Manager - quick way of quickly accessing different workspaces
# https://atom.io/packages/project-manager
apm install project-manager

# Highlight Selected - simply highlights whatever text you selected
# https://atom.io/packages/highlight-selected
apm install highlight-selected

# Minimap - displays the entire file as a map on the left
# https://atom.io/packages/minimap
apm install minimap

# Exposé - quickly switch between open tabs, with previews
# https://atom.io/packages/expose
apm install expose

# Markdown Writer - better tools for writing markdown + toolbar
# https://atom.io/packages/markdown-writer +
# https://atom.io/packages/tool-bar-markdown-writer +
# https://atom.io/packages/tool-bar
apm install tool-bar
apm install markdown-writer
apm install tool-bar-markdown-writer

# Markdown Image Assistant - a better way to handle images in Markdown
# https://atom.io/packages/markdown-image-assistant
apm install markdown-image-assistant

# Pane Layout Plus - a way to open multiple tabs side by side
# https://atom.io/packages/pane-layout-plus
apm install pane-layout-plus

# Open Recent Files/Folders - add a menu under "File" to open recent
# https://atom.io/packages/open-recent
apm install open-recent

# Auto-update Packages - keep everything up to date automatically
# https://atom.io/packages/auto-update-packages
apm install auto-update-packages


# Calculate the total time it took to run this script, and echo it
termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "This script took $(($difftimelps / 60)) minute(s) and $(($difftimelps % 60)) second(s) to execute." 
