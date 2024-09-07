/opt/homebrew/bin/brew shellenv | source

fish_add_path -g /opt/homebrew/bin /opt/homebrew/sbin

set -x HOMEBREW_NO_ENV_HINTS 1
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_NO_INSECURE_REDIRECT 1
