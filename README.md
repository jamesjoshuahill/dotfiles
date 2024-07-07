# dotfiles

This repo tracks the configuration of my personal MacBook.

## Usage

### Pre-requisites

- macOS Sonoma

### Fresh install

- Create a new GitHub issue using the [Fresh install checklist](.github/ISSUE_TEMPLATE/fresh-install-checklist.md) template.
- Work through the checklist.

### Regularly

- Install macOS updates in System Preferences > Software Update.
- Run `~/.dotfiles/install` to update packages.

## Packages

### Installation

Homebrew bundles are used to install and update _most_ software. Many are simply listed in [`Brewfile`](Brewfile).

More `Brewfile`s are located in subdirectories. They are concatenated into one bundle: `~/.Brewfile` for faster updates.

Some subdirectories have `install` scripts. These are run after the Homebrew bundle is installed.

### Configuration

To avoid a junk drawer, config is divided by package in subdirectories.

Stow creates symlinks of config files into the home directory.

Example package structure:

```shell
foo                      # a package called foo
├── .config
│  ├── fish
│  │  ├── conf.d
│  │  │  └── foo.fish    # fish initializer
│  │  └── functions
│  │     └── foo.fish    # fish autoloading function
│  └── foo
│     └── foo.yml        # Config file for foo
├── Brewfile             # Homebrew bundle for foo
└── install              # Package install script
```

Stow is configured to ignore `Brewfile` and `install`.

## Notes

### Checklist or install script?

One-off steps are documented in the fresh install checklist. There is less value in automating them.

The [`install`](install) script is kept to a minimum and can be run repeatedly to update all packages.

### Tracking changes

Stow is used to create symlinks of _almost all_ config files into this `git` repository. Changes show in git status and can be reviewed and committed.

### Consistency

Wherever possible the same colour scheme and font is used:

- [Dracula theme](https://draculatheme.com)
- [SF Mono font](https://developer.apple.com/fonts/)

### Syntax highlighting

Tools that provide syntax highlighting are preferred, such as:

- [fish](http://fishshell.com) shell for the command line
- [delta](https://github.com/dandavison/delta) for `git` diffs
- [bat](https://github.com/sharkdp/bat) to replace `cat`
- [eza](https://github.com/eza-community/eza) to replace `ls`
