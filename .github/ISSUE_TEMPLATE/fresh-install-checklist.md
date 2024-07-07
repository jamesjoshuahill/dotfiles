---
name: Fresh install checklist
about: Steps to set up a fresh Mac
title: Fresh install MAC_NAME
labels: ""
assignees: ""
---

# Fresh install

## Bootstrap

This assumes a clean install of MacOS, connected to wifi and signed into iCloud.

## Secure your Mac

- System Preferences > Security & Privacy > General

  - [ ] Require password after 'immediately'
  - [ ] Tick: Show a message when the screen is locked
  - [ ] Set Lock Message...

    `Found this computer? Please contact NAME on PHONE NUMBER or EMAIL ADDRESS.`

- System Preferences > Security & Privacy > Privacy > Advertising

  - [ ] Tick: Limit Ad Tracking

- System Preferences > Firewall

  - [ ] Turn on Firewall

- System Preferences > Desktop & Screen Saver > Screen Saver
  - [ ] Hot corners: 'Start Screen Saver' (top right)

## Upgrade macOS

- System Preferences > Software Update

  - [ ] Upgrade macOS to the latest minor release

## Install dependencies

1. Install command line tools

   - [ ] `xcode-select --install`

1. Install Homebrew

   - [ ] `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

1. Install GNU Stow

   - [ ] `brew install stow`

1. Install fish

   - [ ] `brew install fish`
   - [ ] `echo /usr/local/bin/fish | sudo tee -a /etc/shells`
   - [ ] `chsh -s /usr/local/bin/fish`

## Install dotfiles

1. Clone this repository

   - [ ] `git clone https://github.com/jamesjoshuahill/DOTFILES_REPO "$HOME/.dotfiles`

1. Run install script:

   - [ ] `~/.dotfiles/install`

### System preferences

- Date & Time

  - [ ] Untick: System Preferences > Date & Time > Clock > Use a 24-hour clock
  - [ ] Tick: System Preferences > Date & Time > Clock > Show am/pm
  - [ ] Tick: System Preferences > Date & Time > Clock > Show the day of the week
  - [ ] Tick: System Preferences > Date & Time > Clock > Show date

- Displays

  - [ ] Scale resolution: System Preferences > Display > Resolution > Scaled
  - [ ] Arrange displays: System Preferences > Display > Arrangement
  - [ ] Relocate menu bar: System Preferences > Display > Arrangement

- Dock

  - [ ] Tick: System Preferences > Dock > Automatically hide and show the Dock
  - [ ] Untick: System Preferences > Dock > Show recent applications in Dock
  - [ ] Remove all icons from Dock: `dockutil --remove all`
  - [ ] Add Downloads icon: `dockutil --add '~/Downloads' --display folder`

- Finder

  - [ ] Go > Computer
  - [ ] Navigate to Macintosh HD > Users
  - [ ] Drag user directory into Favourites in sidebar

- Keyboard

  - [ ] Select 'Fast': System Preferences > Keyboard > Keyboard > Key Repeat
  - [ ] Select 'Short': System Preferences > Keyboard > Keyboard > Delay until Repeat

- Sound

  - [ ] Tick: System Preferences > Sound > Show volume in menu bar

- Trackpad

  - [ ] Tick: System Preferences > Trackpad > Point & Click > Tap to click

- User

  - [ ] Download your profile photo
  - [ ] Import profile photo into Photos app
  - [ ] Tap: System Preferences > Users & Groups > USERNAME > edit (hover over photo)

### App configuration

- 1Password

  - [ ] Unlock vault

- Docker

  - [ ] Select: Preferences > Resources > Memory > 8 GB
  - [ ] Click: Apply & Restart

- FileVault

  - [ ] System Preferences > Security & Privacy > FileVault > Turn on FileVault...
  - [ ] Create a recovery key and do not use my iCloud account
  - [ ] Store recovery key in 1Password

- GitHub

  - [ ] Run `rotate-ssh-key` to generate a new SSH key.
  - [ ] Run `generate-gpg-key` to generate a new GPG key to sign commits.
  - [ ] Run `gh auth login`.

- git-secrets

  - [ ] Run `find . -name ".git" | rev | cut -d'/' -f2- | rev | xargs -n1 git init` to add git-secrets hooks to any existing repositories

- Flycut

  - [ ] Tick: General > Launch Flycut at login
  - [ ] Select: Appearance > Menu item icon > Black scissors

- iTerm

  - [ ] Tick: General > Preferences > Load preferences from a custom folder or URL and type in the `~/.config/iterm` directory.
  - [ ] Tick: General > Preferences > Save changes to folder when iTerm2 quits
  - [ ] Restart iTerm

- Rectangle

  - [ ] Tick: Settings > Launch on login

- Safari

  - [ ] Autofill > Untick all.
  - [ ] Select Search > Search engine > DuckDuckGo
  - [ ] Tick: Advanced > Smart Search Field > Show full website address
  - [ ] Tick: Advanced > Show Develop menu in menu bar
  - [ ] Tap: View menu > Show Status Bar  - [ ] Restore bookmarks
  - [ ] Install extension to auto-close Zoom meeting tabs

- Zoom

  - [ ] Sign in
  - [ ] Configure video
  - [ ] Configure audio
