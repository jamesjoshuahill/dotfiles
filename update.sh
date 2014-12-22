#! /bin/bash

cp ~/.bash_profile .

# Git
cp ~/.git-completion.bash .
cp ~/.gitconfig .
cp ~/.gitignore .

# Bundler
cp ~/.bundle/config ./.bundle/

# rbenv
cp ~/.rbenv/default-gems ./.rbenv/

# Sublime Text 2
cp ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/*.sublime-settings sublime2/

# Brew
brew list > brew-list.txt
