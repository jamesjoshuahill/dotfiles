---
name: Fresh install checklist
about: Steps to set up a fresh Mac
title: Fresh install MAC_NAME
labels: ""
assignees: ""
---

# Fresh install

## Bootstrap

This assumes a clean install of MacOS Sonoma.

## Secure your Mac

- System Settings > Lock Screen

  - [ ] Select 'immediately': Require password after screen saver begins or display is turned off
  - [ ] Tick: Show a message when the screen is locked
  - [ ] Set a message to appear on the lock screen...

    `Found this computer? Please contact NAME on PHONE NUMBER or EMAIL ADDRESS.`

- System Settings > Network > Firewall

  - [ ] Turn on Firewall

- System Settings > Desktop & Dock

  - [ ] Hot corners: 'Start Screen Saver' (bottom left)

## Upgrade macOS

- System Settings > General > Software Update

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
   - [ ] `echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells`
   - [ ] `chsh -s /opt/homebrew/bin/fish`

## Install dotfiles

1. Clone this repository

   - [ ] `git clone https://github.com/jamesjoshuahill/dotfiles "$HOME/.dotfiles"`

1. Run install script:

   - [ ] `~/.dotfiles/install`

### System Settings

- Date & Time

  - [ ] Untick: 24-hour time
  - [ ] Untick: Show 24-hour time on Lock Screen

- Displays

  - [ ] Scale resolution
  - [ ] Arrange displays
  - [ ] Relocate menu bar

- Desktop & Dock

  - [ ] Tick: Automatically hide and show the Dock
  - [ ] Untick: Show suggested and recent apps in Dock
  - [ ] Remove all icons from Dock: `dockutil --remove all`
  - [ ] Add Downloads icon: `dockutil --add '~/Downloads' --display folder`

- Keyboard

  - [ ] Select 'Fast': Key repeat rate
  - [ ] Select 'Short': Delay until repeat

- Trackpad

  - [ ] Increase: Tracking speed
  - [ ] Tick: Tap to click

- User

  - [ ] Download your profile photo
  - [ ] Import profile photo into Photos app
  - [ ] Tap: System Preferences > Users & Groups > USERNAME > edit (hover over photo)

### App configuration

- 1Password

  - [ ] Sign in
  - [ ] Install Safari browser extension

- Docker

  - [ ] Select: Preferences > Resources > Memory > 8 GB
  - [ ] Click: Apply & Restart
 
- Finder

  - [ ] Go > Computer
  - [ ] Navigate to Macintosh HD > Users
  - [ ] Drag user directory into Favourites in sidebar

- FileVault

  - [ ] System Settings > Security & Privacy > FileVault > Turn on...
  - [ ] Create a recovery key and do not use my iCloud account
  - [ ] Store recovery key in 1Password

- Flycut

  - [ ] Tick: Preferences > General > Sticky bezel
  - [ ] Tick: Preferences > General > Launch Flycut on login
  - [ ] Select 'Black scissors': Appearance > Menu item icon

- GitHub

  - [ ] Run `rotate-ssh-key` to generate a new SSH key.
  - [ ] Run `generate-gpg-key` to generate a new GPG key to sign commits.
  - [ ] Run `gh auth login`.

- git-secrets

  - [ ] Run `find . -name ".git" | rev | cut -d'/' -f2- | rev | xargs -n1 git init` to add git-secrets hooks to any existing repositories

- iTerm

  - [ ] Tick: General > Preferences > Load preferences from a custom folder or URL and type in the `~/.config/iterm` directory.
  - [ ] Tick: General > Preferences > Save changes to folder when iTerm2 quits
  - [ ] Restart iTerm

- Rectangle

  - [ ] Tick: Settings > Launch on login

- Safari

  - [ ] Autofill > Untick all
  - [ ] Select Search > Search engine > DuckDuckGo
  - [ ] Tick: Advanced > Smart Search Field > Show full website address
  - [ ] Tick: Advanced > Show Develop menu in menu bar
  - [ ] Tap: View menu > Show Status Bar  - [ ] Restore bookmarks
  - [ ] Install extension to auto-close Zoom meeting tabs

- Zoom

  - [ ] Sign in
  - [ ] Configure video
  - [ ] Configure audio
