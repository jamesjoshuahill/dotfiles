#! /bin/bash

# Git
cp ~/.gitconfig .
cp ~/.gitignore .

# Brew
brew list > brew-list.txt

# Sublime Text 2
cp ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/*.sublime-settings sublime2/
cp ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Default\ \(OSX\).sublime-keymap sublime2/

# Fish shell config
cp ~/.config/fish/config.fish ./fish/
cp ~/.config/fish/fishd.* ./fish/
cp ~/.config/fish/functions/*.fish ./fish/functions/
