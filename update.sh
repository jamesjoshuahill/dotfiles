#! /bin/bash

cp ~/.bash_profile .

# Git
cp ~/.git-completion.bash .
cp ~/.gitconfig .
cp ~/.gitignore .

# Brew
brew list > brew-list.txt

# rbenv
cp ~/.rbenv/default-gems ./.rbenv/

# Rubygems
cp ~/.gemrc .

# Bundler
cp ~/.bundle/config ./.bundle/

# ~/bin
cp ~/bin/* ./bin/

# Sublime Text 2
cp ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/*.sublime-settings sublime2/
