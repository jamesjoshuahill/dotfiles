set -x FZF_DEFAULT_COMMAND 'fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

fish_add_path -g /usr/local/opt/fzf/bin
